//31.08.2013
//Magnon | Mainfrezzer
//Server Init.sqf

if(!X_Server) exitWith {};

sideMissions = 1;
serverSpawning = 1;
Magnon_Night = 0; 		// set to 1 to have the mission start on evening instead of morning
Magnon_loot = 1;		// set to 0 to disable loot in buildings from spawning



//Execute Server Side Scripts.
[] execVM "server\MagnonStuff.sqf";
[] execVM "server\functions\serverVars.sqf";
_serverCompiledScripts = [] execVM "server\functions\serverCompile.sqf";
[] execVM "server\functions\broadcaster.sqf";
[] execVM "server\functions\relations.sqf";
[] execVM "server\functions\serverTimeSync.sqf";
[] execVM "server\functions\capturePointMonitoring.sqf";

serverRelaySystem = '';
"serverRelaySystem" addPublicVariableEventHandler {[] call serverRelayHandler};


onPlayerConnected "[_id, _name] execVM ""server\functions\onplayerconnected.sqf""";

waitUntil{scriptDone _serverCompiledScripts};
diag_log format["MAGNON SERVER - Server Compile Finished"];
"requestCompensateNegativeScore" addPublicVariableEventHandler { (_this select 1) call removeNegativeScore }; 

if (Magnon_Night == 1) then
{
    setDate [date select 0, date select 1, date select 2, 21, 0];
};

if (serverSpawning == 1) then {
    diag_log format["MAGNON WASTELANDSERVER - Initilizing Server Spawning"];
	_vehSpawn = [] ExecVM "server\functions\vehicleSpawning.sqf";
	//waitUntil{sleep 0.1; scriptDone _vehSpawn};
    _objSpawn = [] ExecVM "server\functions\objectsSpawning3.sqf";
	waitUntil{sleep 0.1; scriptDone _objSpawn};
//    _objSpawn2 = [] ExecVM "server\functions\objectsSpawning2.sqf";
//	waitUntil{sleep 0.1; scriptDone _objSpawn2};
//    _boxSpawn = [] ExecVM "server\functions\boxSpawning.sqf";
//	waitUntil{sleep 0.1; scriptDone _boxSpawn};
    _heliSpawn = [] ExecVM "server\functions\staticHeliSpawning.sqf";
    waitUntil{sleep 0.1; scriptDone _heliSpawn};
    _boatSpawn = [] ExecVM "server\functions\BoatSpawning.sqf";
    waitUntil{sleep 0.1; scriptDone _boatSpawn};
};

//Execute Server Missions.
if (sideMissions == 1) then {
	diag_log format["MAGNON SERVER - Initilizing Missions"];
    [] execVM "server\missions\sideMissionController.sqf";
    sleep 5;
    [] execVM "server\missions\mainMissionController.sqf";
sleep 5;
[] execVM "server\missions\bountyMissionController.sqf";
};

if (!isNil "Magnon_loot" && {Magnon_loot > 0}) then 
{
	diag_log format["MAGNON SERVER - Lootspawner started"];
	execVM "server\spawning\lootCreation.sqf";
};

if (isDedicated) then {
	_id = [] execVM "server\WastelandServClean.sqf";
};