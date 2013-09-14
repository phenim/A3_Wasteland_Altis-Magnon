private ["_side"];

playerSpawning = true;
playerUID = getPlayerUID(player);
townSearch = 0;
beaconSearch = 0;

doKickTeamKiller = false;
doKickTeamSwitcher = false;

//Check Teamkiller
{
	if(_x select 0 == playerUID) then {
        
		if((_x select 1) >= 2) then {
			if(playerSide in [west, east]) then {
				doKickTeamKiller = true;
			};
		};
	};
} forEach pvar_teamKillList;

//Check Teamswitcher
{
	if(_x select 0 == playerUID) then
    {
        if(playerSide != (_x select 1) && str(playerSide) != "GUER") then{
        	doKickTeamSwitcher = true;
			_side = str(_x select 1);
        };	
	};
} forEach pvar_teamSwitchList;

//Kick to lobby for appropriate reason
//Teamkiller Kick
if(doKickTeamKiller) exitWith {
	titleText ["", "BLACK IN", 0];
	titleText [localize "STR_WL_Loading_Teamkiller", "black"]; titleFadeOut 9999;
	[] spawn {sleep 20; endMission "LOSER";};
};

//Teamswitcher Kick
if(doKickTeamSwitcher) exitWith {
	titleText ["", "BLACK IN", 0];
	titleText [format[localize "STR_WL_Loading_Teamswitched", localize format ["STR_WL_Gen_Team%1_2", _side]], "black"]; titleFadeOut 9999;
	[] spawn {sleep 20; endMission "LOSER";};
};

if(isNil{client_firstSpawn}) then {
	client_firstSpawn = true;
	[] execVM "client\functions\welcomeMessage.sqf";
    
    true spawn {      
        _startTime = floor(time);
        _result = 0;
		waitUntil
		{ 
		    _currTime = floor(time);
		    if(_currTime - _startTime >= 180) then 
		    {
		    	_result = 1;    
		    };
		    (_result == 1)
		};
		if(playerSide in [west, east]) then {
			_found = false;
			{
				if(_x select 0 == playerUID) then {_found = true;};
			} forEach pvar_teamSwitchList;
			if(!_found) then {
				pvar_teamSwitchList set [count pvar_teamSwitchList, [playerUID, playerSide]];
				publicVariable "pvar_teamSwitchList";
                
                _side = "";
                if(str(playerSide) == "WEST") then {
                    _side = "Blufor";
                };
                
                if(str(playerSide) == "EAST") then {
                    _side = "Opfor";
                };
                
				titleText [format["You have been locked to %1",_side],"PLAIN",0];
			};
		};
	};
};