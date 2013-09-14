private ["_missionMarkerName","_missionType","_picture","_vehicleName","_hint","_waypoint","_waypoints","_grouphsq","_vehicles","_marker","_failed","_startTime","_numWaypoints","_ammobox","_createVehicle","_leader","_classKeep"];

#include "mainMissionDefines.sqf"

_missionMarkerName = "HostileHelis_Marker";
_missionType = "Hostile Helicopters";
_classKeep = "fail";

diag_log format["WASTELAND SERVER - Main Mission Started: %1", _missionType];

diag_log format["WASTELAND SERVER - Main Mission Waiting to run: %1", _missionType];
[mainMissionDelayTime] call createWaitCondition;
diag_log format["WASTELAND SERVER - Main Mission Resumed: %1", _missionType];

_grouphsq = createGroup civilian;

_createVehicle = {
    private ["_type","_position","_direction","_grouphsq","_vehicle","_soldier"];
    
    _type = ["O_Heli_Attack_02_black_F","O_Heli_Light_02_F","B_Heli_Transport_01_F","B_Heli_Light_01_armed_F","B_Heli_Transport_01_camo_F"] call BIS_fnc_selectRandom;
    _position = _this select 0;
    _direction = _this select 1;
    _grouphsq = _this select 2;
    
    _vehicle = _type createVehicle _position;
    _vehicle setDir _direction;
_vehicle setVariable["newVehicle",1,true];//call vChecksum 
_vehicle spawn cleanHeliWreck; 
    _grouphsq addVehicle _vehicle;
    
    _soldier = [_grouphsq, _position] call createRandomSoldier; 
    _soldier moveInDriver _vehicle;
    if ((_vehicle isKindOf "B_Heli_Transport_01_camo_F") || (_vehicle isKindOf "B_Heli_Transport_01_F")) then {
		// these choppers have 2 turrets so we need 2 gunners :)
	   _soldier = [_grouphsq, _position] call createRandomSoldier; 
	   _soldier assignAsGunner _vehicle;
       _soldier moveInTurret [_vehicle, [0]];
  	   _soldier = [_grouphsq, _position] call createRandomSoldier; 
	   _soldier assignAsGunner _vehicle;
       _soldier moveInTurret [_vehicle, [1]];
    };
	if ((_vehicle isKindOf "B_Heli_Attack_01_F") || (_vehicle isKindOf "O_Heli_Attack_02_black_F") || (_vehicle isKindOf "O_Heli_Attack_02_F")) then {
		// these choppers need 1 gunner
	   _soldier = [_grouphsq, _position] call createRandomSoldier; 
	   _soldier assignAsGunner _vehicle;
       _soldier moveInTurret [_vehicle, [0]];
    };

	if ("CMFlareLauncher" in getArray (configFile >> "CfgVehicles" >> _type >> "weapons")) then
	{
		{
			if (_x isKindOf "60Rnd_CMFlare_Chaff_Magazine") then
			{
				_vehicle removeMagazinesTurret [_x, [-1]];
			};
		} forEach (_vehicle magazinesTurret [-1]);
	};
	_classKeep = _type;
    _vehicle setVehicleLock "LOCKED";
    _vehicle
};

_vehicles = [];
_vehicles set [0, [[22149.439,14470.274,4.2361035], 285, _grouphsq] call _createVehicle];
_vehicles set [1, [[22148.947,14499.434,4.1567588], 285, _grouphsq] call _createVehicle];
_vehicles set [2, [[22137.807,14425.716,4.8038538], 285, _grouphsq] call _createVehicle];

_leader = driver (_vehicles select 0);
_grouphsq selectLeader _leader;
_leader setRank "LIEUTENANT";

_grouphsq setCombatMode "WHITE";
_grouphsq setBehaviour "AWARE";
_grouphsq setFormation "STAG COLUMN";
_grouphsq setSpeedMode "LIMITED";

_waypoints = [
[23919.207,15579.643,106.2402611],
[23739.738,16179.771,105.23],
[23466.248,17508.693,103.1900001],
[23363.283,18400,103.1900001],
[23149.281,19085.977,103.1900001],
[22464.389,19430.529,147.686817],
[21657.635,19308.676,121.990166],
[21149.213,18699.408,124.469999],
[20750.037,17955.682,146.297714],
[20321.449,16447.225,125.571915],
[19661.76,15052.214,114.788559],
[18128.09,13871.494,120.668196],
[17140.658,12602.539,114.964631],
[15812.875,11110.887,120.460344],
[16796.107,9665.4561,146.074589],
[14564.931,8535.1602,100.31052202],
[12010.213,8501.5459,170.362999],
[11295.9,9686.4648,120.689234],
[9808.4492,9236.8682,133.712719],
[9959.7158,7215.7847,154.66276],
[12560.655,7543.5288,171.00286],
[16535.438,7010.4795,90.15505157],
[19220.117,6837.833,126.246647],
[20281.9,7942.7773,134.18869],
[18374.141,9341.2285,145.738586],
[16716.721,10420.278,119.956533],
[19073.365,10860.53,179.113312],
[20618.566,11378.477,137.804924],
[20696.26,12647.439,165.162689],
[18154.078,13280.362,120.810928],
[17063.982,15129.634,117.856865],
[16100.416,15918.008,90.5330057],
[16535.438,7010.4795,100.15505157],
[23919.207,15579.643,70.2402611]
];
{
    _waypoint = _grouphsq addWaypoint [_x, 0];
    _waypoint setWaypointType "MOVE";
    _waypoint setWaypointCompletionRadius 45;
    _waypoint setWaypointCombatMode "WHITE"; // Defensiv behaviour
    _waypoint setWaypointBehaviour "AWARE"; 
    _waypoint setWaypointFormation "STAG COLUMN";
    _waypoint setWaypointSpeed "LIMITED";
} forEach _waypoints;

_marker = createMarker [_missionMarkerName, position leader _grouphsq];
_marker setMarkerType "mil_destroy";
_marker setMarkerSize [1.25, 1.25];
_marker setMarkerColor "ColorRed";
_marker setMarkerText "HostileHelis";

_picture = getText (configFile >> "CfgVehicles" >> _classKeep >> "picture");
_vehicleName = getText (configFile >> "cfgVehicles" >> _classKeep >> "displayName");
_hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>! AIR ALARM !</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>Hostile AirSquad</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>A formation of a <t color='%4'>%3</t>, and <t color='%4'>2 other helicopters</t> classified: <t color='%4'>(Armed-Dangerous)</t> are patroling the island, transporting two weapon crates. Take them out before they kill you!</t>", _missionType, _picture, _vehicleName, mainMissionColor, subTextColor];
messageSystem = _hint;
if (!isDedicated) then { call serverMessage };
publicVariable "messageSystem";

diag_log format["WASTELAND SERVER - Main Mission Waiting to be Finished: %1", _missionType];

_failed = false;
_startTime = floor(time);
_numWaypoints = count waypoints _grouphsq;
waitUntil
{
    private ["_unitsAlive"];
    
    sleep 10; 
    
    _marker setMarkerPos (position leader _grouphsq);
    
    if ((floor time) - _startTime >= mainMissionTimeout) then { _failed = true };
    if (currentWaypoint _grouphsq >= _numWaypoints) then { _failed = true }; // HostileHelis got successfully to the target location
    _unitsAlive = { alive _x } count units _grouphsq;
    
    _unitsAlive == 0 || _failed
};

if(_failed) then
{
    // Mission failed
    if not(isNil "_vehicle") then {deleteVehicle _vehicle;};
	{if (vehicle _x != _x) then { deleteVehicle vehicle _x; }; deleteVehicle _x;}forEach units _grouphsq;
	{deleteVehicle _x;}forEach units _grouphsq;
	deleteGroup _grouphsq; 
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Failed</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>Hostile AirSquad</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The enemy has got away, better luck next time!</t>", _missionType, _picture, _vehicleName, failMissionColor, subTextColor];
    messageSystem = _hint;
    if (!isDedicated) then { call serverMessage };
    publicVariable "messageSystem";
    diag_log format["WASTELAND SERVER - Main Mission Failed: %1",_missionType];
} else {
    // Mission complete
	if not(isNil "_vehicle") then {_vehicle setVehicleLock "UNLOCKED";};
    _ammobox = "Box_NATO_Wps_F" createVehicle getMarkerPos _marker;
    clearMagazineCargoGlobal _ammobox;
    clearWeaponCargoGlobal _ammobox; 
    [_ammobox,"mission_USSpecial2"] call fn_refillbox;
    _ammobox2 = "Box_NATO_Wps_F" createVehicle getMarkerPos _marker;
    clearMagazineCargoGlobal _ammobox2;
    clearWeaponCargoGlobal _ammobox2; 
    [_ammobox2,"mission_USLaunchers2"] call fn_refillbox;
    _ammobox3 = "Box_NATO_Wps_F" createVehicle getMarkerPos _marker;
    clearMagazineCargoGlobal _ammobox3;
    clearWeaponCargoGlobal _ammobox3; 
    [_ammobox3,"mission_Side_USSpecial"] call fn_refillbox;
    _hint = parseText format ["<t align='center' color='%4' shadow='2' size='1.75'>Objective Complete</t><br/><t align='center' color='%4'>------------------------------</t><br/><t align='center' color='%5' size='1.25'>Hostile AirSquad</t><br/><t align='center'><img size='5' image='%2'/></t><br/><t align='center' color='%5'>The Hostile AirSquad has been taken down! The weapon crates have survived the crash and are near the wreck!</t>", _missionType, _picture, _vehicleName, successMissionColor, subTextColor];
    messageSystem = _hint;
    if (!isDedicated) then { call serverMessage };
    publicVariable "messageSystem";
    diag_log format["WASTELAND SERVER - Main Mission Success: %1",_missionType];
};

deleteMarker _marker;
