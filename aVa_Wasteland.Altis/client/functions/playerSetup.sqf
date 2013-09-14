
//	@file Version: 1.0
//	@file Name: playerSetup.sqf
//	@file Author: [404] Deadbeat
//	@file Created: 20/11/2012 05:19
//	@file Args:

_player = _this;
//Player initialization
_player setskill 0;
{_player disableAI _x} foreach ["move","anim","target","autotarget"];
_player setVariable ["BIS_noCoreConversations", true];

_player addEventHandler ["HandleDamage", {false}];

// Remove stupid blur effects introduced in Beta
ppEffectDestroy BIS_fnc_feedback_fatigueBlur;
ppEffectDestroy BIS_fnc_feedback_damageBlur;

enableSentences false;
_player unassignItem "NVGoggles_INDEP";
_player unassignItem "NVGoggles_OPFOR";
_player unassignItem "NVGoggles";
_player removeItem "NVGoggles_INDEP";
_player removeItem "NVGoggles_OPFOR";
_player removeItem "NVGoggles";
removeAllWeapons _player;
removeUniform _player;
removeVest _player;
removeBackpack _player;
removeHeadgear _player;
removeGoggles _player;

switch (playerSide) do
{
    case west:
    {
		_player addUniform "U_B_CombatUniform_mcam";
		_player addVest "V_PlateCarrier1_rgr";
		_player addHeadgear "H_HelmetB";
    };

    case east:
    {
        _player addUniform "U_O_CombatUniform_ocamo";
		_player addVest "V_PlateCarrier2_rgr";
		_player addHeadgear "H_HelmetO_ocamo";
    };
	
    case independent:
    {
		_player addUniform "U_IG_Guerilla1_1";
		_player addVest "V_Chestrig_rgr";
		_player addHeadgear "H_Shemag_olive";
    };
};

_uid = getPlayerUID player;
if ((_uid in moderators) OR (_uid in administrators) OR (_uid in serverAdministrators)) then {

//_player addBackpack "B_Kitbag_Base";
_player addMagazine "9Rnd_45ACP_Mag";
_player addMagazine "9Rnd_45ACP_Mag";
_player addMagazine "9Rnd_45ACP_Mag";
_player addWeapon "hgun_ACPC2_F";
_player selectWeapon "hgun_ACPC2_F";

} else {

//_player addBackpack "B_Kitbag_Base";
_player addMagazine "16Rnd_9x21_Mag";
_player addMagazine "16Rnd_9x21_Mag";
_player addMagazine "16Rnd_9x21_Mag";
_player addWeapon "hgun_P07_F";
_player selectWeapon "hgun_P07_F";

};
_player addrating 1000000;

thirstLevel = 100;
hungerLevel = 100;
fatigueLevel = 0;
_player setVariable["cmoney",100,true];
_player setVariable["canfood",1,false];
_player setVariable["medkits",1,false];
_player setVariable["water",1,false];
_player setVariable["fuel",0,false];
_player setVariable["repairkits",1,false];
_player setVariable["fuelFull", 0, false];
_player setVariable["fuelEmpty", 1, false];
//_player setVariable["bombs",false,false];
_player setVariable["spawnBeacon",0,false];
_player setVariable["camonet",0,false];

[] execVM "client\functions\playerActions.sqf";

_player groupChat format["Player Initialization Complete"];
_player groupChat format["ADD MAGNON TO YOUR BROWSER FILTER TO FIND US"];
_player groupChat format["OUR TS3IP IS MAGNON.EU FEEL FREE TO JOIN"];
playerSetupComplete = true;
