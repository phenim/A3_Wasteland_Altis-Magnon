
#include "defines.hpp"
#include "dialog\vehstoreDefines.sqf";

#define _DELIVERY_METHOD_SPAWN 1
#define _DELIVERY_METHOD_AIRDROP 2

private ["_switch", "_deliveryMethod", "_playerMoney","_price","_dialog","_playerMoneyText","_colorText","_itemText","_handleMoney","_applyVehProperties","_car","_vehType","_vehPos","_veh"];

disableSerialization;

//Initialize Values
_switch = _this select 0;

// CHANGE THIS TO SWAP BETWEEN SPAWNS AND AIRDROPS
_deliveryMethod = _DELIVERY_METHOD_SPAWN;

if (_deliveryMethod == _DELIVERY_METHOD_AIRDROP && currentOwnerID getVariable "isDeliveringVehicle" == 1) exitWith {
  // Nicer audible error effect
  hintSilent format["Please wait until the previous delivery is complete before ordering more vehicles"];
  player say "FD_CP_Not_Clear_F";
};

_playerMoney = player getVariable "cmoney";
_price = 0;

_vehicleSpawnPosAirdrop = [8471.8867,25191.605,500 + (floor random 500)]; // Spawn it on debug island before moving to the chopper

// Grab access to the controls
_dialog = findDisplay vehshop_DIALOG;
_playerMoneyText = _Dialog displayCtrl vehshop_money;
_colorText = lbText [vehshop_color_list, (lbCurSel vehshop_color_list)];
_itemText = lbText  [vehshop_veh_list, (lbCurSel vehshop_veh_list)];
_handleMoney = 1;

// Our array of arrays
_landVehicleArrays = [landArray, armoredArray, tanksArray, helicoptersArray, jetsArray];
_seaVehicleArrays = [boatsArray, submarinesArray];

_showInsufficientFundsError = 
{
  _itemText = _this select 0;
  hintSilent format["You don't have enought money for %1", _itemText];
  player say "FD_CP_Not_Clear_F";
  _handleMoney = 0;
};

_createAndApplyapplyVehProperties = 
{
    private ["_vehicle", "_colorText","_texturePath", "_type", "_pos"];
	_pos = _this select 0;
	_type = _this select 1;
	_colorText = _this select 2;

	if (_deliveryMethod == _DELIVERY_METHOD_AIRDROP) then {
		_spawnType = "FLY";
	} else {
		_spawnType = "NONE";
	};
	
	_vehicle = createVehicle [_type,_pos, [], 0, _spawnType];
	//_vehicle disableTIEquipment true; // Disable Thermal on bought vehicles. Mission based ones are more powerful
	//_veh setDir _dir;
	_vehicle setVariable ["newVehicle",1,true];
	
	_texturePath = "";

	//if they chose a color set the color
	if(_colorText == "Orange") then { _texturePath = '#(argb,8,8,3)color(0.82,0.2,0,1)';};
	if(_colorText == "Red") then { _texturePath = '#(argb,8,8,3)color(0.79,0.03,0,1)';};
	if(_colorText == "Pink") then { _texturePath = '#(argb,8,8,3)color(0.91,0.53,0.57,1)';};
	if(_colorText == "Yellow") then { _texturePath = '#(argb,8,8,3)color(1,0.97,0.17,1)';};
	if(_colorText == "Purple") then { _texturePath = '#(argb,8,8,3)color(0.43,0.18,0.67,1)';};
	if(_colorText == "Blue") then { _texturePath = '#(argb,8,8,3)color(0,0.1,0.8,1)';};
	if(_colorText == "Dark Blue") then { _texturePath = '#(argb,8,8,3)color(0.03,0.02,0.35,1)';};
	if(_colorText == "Green") then { _texturePath = '#(argb,8,8,3)color(0.01,0.64,0,1)';};
	if(_colorText == "Black") then { _texturePath = '#(argb,8,8,3)color(0,0,0,1)';};
	if(_colorText == "White") then { _texturePath = '#(argb,8,8,3)color(1,1,1,1)';};
	if(_colorText == "Teal") then { _texturePath = '#(argb,8,8,3)color(0,0.93,0.86,1)';};
	_vehicle setVariable ["textureName", _texturePath];
	
	if(_texturePath != "") then
	{
		serverRelaySystem = [MESSAGE_VEHICLE_PROPERTIES_APPLY, _vehicle, _texturePath];
		publicVariable "serverRelaySystem";
	};

	//tell the vehicle to delete itself after dying
	_vehicle addEventHandler ["Killed",{(_this select 0) spawn {sleep 180; deleteVehicle _this}}];
	
	//enable vehicle locking
	_vehicle setVariable ["objectLocked", true, true]; //force lock
	_vehicle addAction ["Unlock / Lock","client\functions\unlocklock.sqf",[],7,true,true,"","(_target distance _this) < 7"];
	_vehicle
};

_deliverPos = nil;
_veh = nil;
_spawnType = "";

switch(_switch) do 
{
	//Buy To Player
	case 0: 
	{
		// LAND VEHICLES
		{
			_vehicleArray = _x;
			{
				if(_itemText == _x select 0) then
				{
					_price = _x select 2;
					if ( _price > parseNumber str(_playerMoney)) then {[_itemText] call _showInsufficientFundsError; breakTo "main"};
					_vehType = _x select 1;
					_deliverPos = (getMarkerPos format ["land_spawn_%1", currentOwnerID]);
					_spawnType = "land";

					if (_deliveryMethod == _DELIVERY_METHOD_SPAWN) then {
						_veh = [_deliverPos, _vehType, _colorText] call _createAndApplyapplyVehProperties;
					} else {
						_veh = [_vehicleSpawnPosAirdrop, _vehType, _colorText] call _createAndApplyapplyVehProperties;
					};

				};
			} forEach _vehicleArray;
		} forEach _landVehicleArrays;
		
		// SEA VEHICLES
		{
			_vehicleArray = _x;
			{
				if(_itemText == _x select 0) then
				{
					_price = _x select 2;
					if ( _price > parseNumber str(_playerMoney)) then {[_itemText] call _showInsufficientFundsError;;breakTo "main"};				
					_vehType = _x select 1;
					_deliverPos = (getMarkerPos format ["sea_spawn_%1", currentOwnerID]);
					_spawnType = "sea";

					if (_deliveryMethod == _DELIVERY_METHOD_SPAWN) then {
						_veh = [_deliverPos, _vehType, _colorText] call _createAndApplyapplyVehProperties;
					} else {
						_veh = [_vehicleSpawnPosAirdrop, _vehType, _colorText] call _createAndApplyapplyVehProperties;
					};
				};
			}forEach _vehicleArray;
		} foreach _seaVehicleArrays;
	};
};

// Pick a sound to play

if(_handleMoney == 1) then
{

	if (_deliveryMethod == _DELIVERY_METHOD_AIRDROP) then {
		diag_log "Calling airdrop script";
		serverVehicleHeliDrop = [_veh, _deliverPos, player, _price, currentOwnerID];
		publicVariableServer "serverVehicleHeliDrop";

		_ambientRadioSound = ["RadioAmbient2", "RadioAmbient6", "RadioAmbient8"] call BIS_fnc_selectRandom;
		currentOwnerID say _ambientRadioSound;

		if (_veh isKindOf "Helicopter") then {
				player globalChat format["A transport helicopter is en route with your %1. It will be dropped in the shallows nearest the store.", _itemText];
		} else {
			if (_veh isKindOf "Ship") then {
				player globalChat format["A transport helicopter is en route with your %1. It will be dropped in the shallows nearest the store.", _itemText];
			} else {
				player globalChat format["A transport helicopter is en route with your %1. Keep well clear of the LZ and stand by....", _itemText];
			};
		};

		currentOwnerID setVariable['isDeliveringVehicle', 1, true];
	} else {
		player globalChat format["Your %1 has spawned outside.", _itemText];
	};

	player setVariable["cmoney",_playerMoney - _price,true];
	_playerMoneyText CtrlsetText format["Cash: $%1", player getVariable "cmoney"];
};
