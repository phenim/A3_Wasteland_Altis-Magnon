///////////////////////////////////////////////////////////////////////////
if(!X_Client) exitWith {};
statsLoaded = 0;
mutexScriptInProgress = false;
respawnDialogActive = false;
groupManagmentActive = false;
pvar_PlayerTeamKiller = objNull;
doCancelAction = false;
currentMissionsMarkers = [];
currentRadarMarkers = [];
///////////////////////////////////////////////////////////////////////////
//Initialization Variables
playerCompiledScripts = false;
playerSetupComplete = false;

waitUntil {!isNull player};
player setVariable["SaveOK", 0,true];
removeAllWeapons player;
player switchMove "";
///////////////////////////////////////////////////////////////////////////
//Call client compile list.
player call compile preprocessFileLineNumbers "client\functions\clientCompile.sqf";
///////////////////////////////////////////////////////////////////////////
//Stop people being civ's.
if(!(playerSide in [west, east, resistance])) then {
	endMission "LOSER";
};
///////////////////////////////////////////////////////////////////////////
//Player setup
player call playerSetup;
///////////////////////////////////////////////////////////////////////////
//Setup player events.
if(!isNil "client_initEH") then {player removeEventHandler ["Respawn", client_initEH];};
player addEventHandler ["Respawn", {[_this] call onRespawn;}];
player addEventHandler ["Killed", {[_this] call onKilled;}];
///////////////////////////////////////////////////////////////////////////
//Setup player menu scroll action.
[] execVM "client\clientEvents\onMouseWheel.sqf";
///////////////////////////////////////////////////////////////////////////
//Setup Key Handler
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];
///////////////////////////////////////////////////////////////////////////
"currentDate" addPublicVariableEventHandler {[] call timeSync};
"messageSystem" addPublicVariableEventHandler {[] call serverMessage};
"clientMissionMarkers" addPublicVariableEventHandler {[] call updateMissionsMarkers};
"clientRadarMarkers" addPublicVariableEventHandler {[] call updateRadarMarkers};
"pvar_teamKillList" addPublicVariableEventHandler {[] call updateTeamKiller};
"publicVar_teamkillMessage" addPublicVariableEventHandler {if(local(_this select 1)) then {[] spawn teamkillMessage;};};
"compensateNegativeScore" addPublicVariableEventHandler { (_this select 1) call removeNegativeScore };
///////////////////////////////////////////////////////////////////////////
//client Executes
[] execVM "client\functions\initSurvival.sqf";
[] execVM "client\systems\hud\playerHud.sqf";
[] execVM "client\functions\createTownMarkers.sqf";
[] execVM "client\functions\createGunStoreMarkers.sqf";
[] execVM "client\functions\createGunRunnerMarkers.sqf";
[] execVM "client\functions\createGeneralStoreMarkers.sqf";
//true execVM "client\functions\loadAtmosphere.sqf";
[] execVM "client\functions\createCaptureTriggers.sqf";
[] execVM "client\functions\playerTags.sqf";
[] execVM "client\functions\groupTags.sqf";
[] execVM "client\functions\message.sqf";
[] call updateMissionsMarkers;
[] call updateRadarMarkers;
if (isNil "FZF_IC_INIT") then   {
	call compile preprocessFileLineNumbers "client\functions\newPlayerIcons.sqf";
};
///////////////////////////////////////////////////////////////////////////
sleep 1;
true spawn playerSpawn;
[] spawn FZF_IC_INIT;
///////////////////////////////////////////////////////////////////////////
{
	if (isPlayer _x && {!isNil ("addScore_" + (getPlayerUID _x))}) then
	{
		_x call removeNegativeScore;
	};
} forEach playableUnits; 	
