//	@file Version: 1.0
//	@file Name: playerHud.sqf
//	@file Author: [GoT] JoSchaap
//	@file Created: 11/09/2012 04:23
//	@file Args:

#include "defines.hpp"
disableSerialization;
private["_ui","_fatigue","_hud","_food","_water","_vitals","_hudVehicle","_health","_decimalPlaces","_tempString","_yOffset","_vehicle"];
_counter = 0;
while {true} do
{
    1000 cutRsc ["WastelandHud","PLAIN"];
    _ui = uiNameSpace getVariable "WastelandHud";
    _vitals = _ui displayCtrl 3600;
    _hudVehicle = _ui displayCtrl 3601;
    _runningIconName = 'running.paa';
    _stamina = "100";


    //Calculate Health 0 - 100
    _decimalPlaces = 2;
    _health = 1 - damage player;
    _health = round (_health * 100);
    

    _sprintFatigue = getFatigue player;
    if (_sprintFatigue > 0.5) then {
        _sprintFatigue = 0.5;
    };


_counter = _counter + 1;
_modulo = _counter mod 2;


    // fatigueLevel: -3 = exhausted, -2 = tired, -1 = resting, 0 = fine, 1 = hot n thirsty
    _percentSprintFatigue = round (_sprintFatigue * 200);  // 0 = fine, 100 = no sprint ability


   #ifdef __RUNNING_EXHAUSTION__
    if (fatigueLevel == FATIGUE_EXHAUSTED) then {
        if (_modulo == 0) then {
            _stamina = format ["<t color='#FF0000'>%1</t>", "EXHAUSTED!"];
            _runningIconName = 'running.paa';
        } else {
            _stamina = format ["<t color='#FFFFFF'>%1</t>", "EXHAUSTED!"];
            _runningIconName = 'running_red.paa';
        };
    };

    if (fatigueLevel == FATIGUE_TIRED) then {
        _runningIconName = 'running_red.paa';
        _stamina = format ["%1", "TIRED"];
    };

    if (fatigueLevel == FATIGUE_RESTING) then {
        _runningIconName = 'running_red.paa';
        _stamina = format ["%1", "RESTING"];
    };
#endif
	if (fatigueLevel >= 0) then {
        _runningIconName = 'running.paa';
        _stamina = format ["%1", (100 - _percentSprintFatigue)];
    	};


_vitals ctrlSetStructuredText parseText format ["<br/>%1 <img size='0.8' image='client\icons\%2'/><br/>%3 <img size='0.8' image='client\icons\1.paa'/><br/>%4 <img size='0.8' image='client\icons\water.paa'/><br/>%5 <img size='0.8' image='client\icons\food.paa'/><br/>%6 <img size='0.8' image='client\icons\money.paa'/>", _stamina, _runningIconName, _health, thirstLevel, hungerLevel, (player getVariable "cmoney")];
    _vitals ctrlCommit 0;
        
    if(player != vehicle player) then
    {
        _tempString = "";
        _yOffset = 0.24;
        _vehicle = assignedVehicle player;

        {
            if((driver _vehicle == _x) || (gunner _vehicle == _x)) then
            {
                if(driver _vehicle == _x) then
                {
                    _tempString = format ["%1 %2 <img size='0.7' image='client\icons\driver.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }
                else
                {
                    _tempString = format ["%1 %2 <img size='0.7' image='client\icons\gunner.paa'/><br/>",_tempString, (name _x)];
                    _yOffset = _yOffset + 0.04;
                }; 
            }
            else
            {
                _tempString = format ["%1 %2 <img size='0.7' image='client\icons\cargo.paa'/><br/>",_tempString, (name _x)];
                _yOffset = _yOffset + 0.04;
            };    
        } forEach crew _vehicle;

        if(isStreamFriendlyUIEnabled) then
        {
        	_tempString = format ["<img image='client\icons\logo.paa'/><br/>Magnon Wasteland<br/>"];//<br/>[StreamFriendly:ON]
			_yOffset = _yOffset + 0.20;
        	_hudVehicle ctrlSetStructuredText parseText _tempString;
        } else {
			_tempString = format ["<img image='client\icons\logo.paa'/><br/>Magnon Wasteland<br/>"];
			_yOffset = _yOffset + 0.20;
        	_hudVehicle ctrlSetStructuredText parseText _tempString;
        };
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
    } else {
		_tempString = "";
        _yOffset = 0.26;
		_tempString = format ["<img image='client\icons\logo.paa'/>"];
		_hudVehicle ctrlSetStructuredText parseText _tempString;
        _x = safeZoneX + (safeZoneW * (1 - (0.42 / SafeZoneW)));
        _y = safeZoneY + (safeZoneH * (1 - (_yOffset / SafeZoneH)));
        _hudVehicle ctrlSetPosition [_x, _y, 0.4, 0.65];
        _hudVehicle ctrlCommit 0;
	};
        
    sleep 1;
};
