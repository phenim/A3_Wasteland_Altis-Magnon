
//	@file Version: 1.0
//	@file Name: sellWeapon.sqf
//	@file Author: [404] Deadbeat, [404] Costlyy
//	@file Created: 20/11/2012 05:13
//	@file Args:

//Initialize Values
private["_primary","_weapon_value","_magSell","_weaponMags","_mag","_magValue"];
_magSell = 0;
_weapon_value = 50; // This is for weapons that aren't in the gunstore stock list.
_primary = currentWeapon player;
if (_primary == "") exitWith {hint "You don't have a current weapon in your hand to sell!";};

{if(_x select 1 == _primary) then {_weapon_value = _x select 3;};}forEach pistolArray;
{if(_x select 1 == _primary) then {_weapon_value = _x select 3;};}forEach rifleArray;
{if(_x select 1 == _primary) then {_weapon_value = _x select 3;};}forEach smgArray;
{if(_x select 1 == _primary) then {_weapon_value = _x select 3;};}forEach shotgunArray;
{if(_x select 1 == _primary) then {_weapon_value = _x select 3;};}forEach launcherArray;
// if(isNil {_weapon_value}) exitWith {hint "The store does not want this item."};

_weaponMags = getArray (configFile >> "Cfgweapons" >> _primary >> "magazines");

{
	_mag = _x;
	
	if (_mag in _weaponMags) then
    {
		_magValue = 10;
		
		{
			if (_x select 1 == _mag) then
			{
				_magValue = (ceil (((_x select 2) / 2) / 5)) * 5;
			};
		} forEach ammoArray;
		
		_weapon_value = _weapon_value + _magValue;
    };
} forEach magazines player;

player removeWeapon _primary;
{ player removeMagazines _x } forEach _weaponMags;

player setVariable ["cmoney", (player getVariable ["cmoney", 0]) + _weapon_value, true];
hint format["You sold your gun and its ammo for $%1", _weapon_value];