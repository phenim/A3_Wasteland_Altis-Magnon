//	@file Version: 1.2
//	@file Name: init.sqf
//	@file Author: [404] Deadbeat, [GoT] JoSchaap
//	@file Created: 20/11/2012 05:13
//	@file Description: The main init.
//	@file Args:

#include "setup.sqf"
StartProgress = false;
enableSaving[false,false];

X_Server = false;
X_Client = false;
X_JIP = false;
hitStateVar = false;
versionName = "1.4";


if(isServer) then { X_Server = true;};
if(!isDedicated) then { X_Client = true;};
if(isNull player) then {X_JIP = true;};

true spawn {
	if(!isDedicated) then {
		titleText ["Welcome to Magnon Wasteland, Have patience your Player will be created!", "BLACK", 0];
		waitUntil {!isNull player};
		client_initEH = player addEventHandler ["Respawn", {removeAllWeapons (_this select 0);}];
	};
};

//init Wasteland Core
[] execVM "config.sqf";
[] execVM "briefing.sqf";
[] execVM "antihack.sqf";
fn_vehicleInit = compile preprocessFileLineNumbers "client\functions\fn_vehicleInit.sqf";


if(!isDedicated) then {
	waitUntil {!isNull player};

	//Wipe Group.
	if(count units group player > 1) then
	{  
		diag_log "Player Group Wiped";
		[player] join grpNull;    
	};

	[] execVM "client\init.sqf";
};

if(X_Server) then {
	diag_log format ["############################# %1 #############################", missionName];
	diag_log format["WASTELAND SERVER - Initilizing Server"];
	[] execVM "server\init.sqf";
	[] execVM "antihack.sqf";
};

//init 3rd Party Scripts
	diag_log format["WASTELAND SERVER - Initilizing R3F"];
[] execVM "addons\R3F_ARTY_AND_LOG\init.sqf";
	diag_log format["WASTELAND SERVER - Initilizing Weather"];
[] execVM "addons\scripts\DynamicWeatherEffects.sqf";

removeNegativeScore = compile preprocessFileLineNumbers "scripts\removeNegativeScore.sqf";
clientRelayHandler = compile preprocessFileLineNumbers "client\functions\clientRelayHandler.sqf";
if (isNil "clientRelaySystem") then { clientRelaySystem = []; };
"clientRelaySystem" addPublicVariableEventHandler {[_this] call clientRelayHandler};

[] execVM "addons\proving_Ground\init.sqf";

if(!isServer) then
{
	clientStarted = player;	
	publicVariableServer "clientStarted";
	execVM "client\functions\removeWatermark.sqf";
};