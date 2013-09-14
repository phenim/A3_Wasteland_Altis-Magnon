if(player != leader group player) exitWith {player globalChat format["you are not the leader and can't promote people"];};

#define groupManagementDialog 55510
#define groupManagementGroupList 55512

disableSerialization;

private["_dialog","_playerListBox","_groupInvite","_target","_index","_playerData","_check","_unitCount","_isLeader"];

_dialog = findDisplay groupManagementDialog;
_groupListBox = _dialog displayCtrl groupManagementGroupList;

_index = lbCurSel _groupListBox;
_playerData = _groupListBox lbData _index;
_isLeader = false;
_check = 0;

//Check selected data is valid
{if (str(_x) == _playerData) then {_target = _x;_check = 1;};}forEach playableUnits;
_check=1;
diag_log "Promote to leader: Before the checks";

//Checks
_cont = 1;
if(_check == 0) then
{
	player globalChat "You must select someone to promote first.";
	_cont = 0;
};
if(_target == player) then 
{
	player globalChat "You can't promote yourself.";
	_cont = 0;
};

if(_cont == 1) then
{
	//check to see how close to the enemy the target leader is
	_side1 = side _target;
	_side2 = side _target;
	_dist = _target distance _target;
	{
		_side1 = side _x;
		_dist = _x distance _target;
		if((_side1 != _side2) AND (_dist <=100)) exitWith{player globalChat "This player is in combat. You can't make them leader.";};
	}forEach playableUnits;
	
	diag_log "Promote to leader: After the checks";
	[player] join grpNull;
	(group _target) selectLeader _target;
	[player] join (group _target);
	
	//notify the clients
	[nil,_target,"loc", rTITLETEXT, "You have been promoted to group leader.", "PLAIN", 0] call RE;
	player globalChat format["You have promoted %1 to group leader",name _target];
};