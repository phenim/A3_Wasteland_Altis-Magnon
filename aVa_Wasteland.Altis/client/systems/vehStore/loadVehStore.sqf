
#include "dialog\vehstoreDefines.sqf";
disableSerialization;

private ["_vehshopDialog","_Dialog","_playerMoney","_money","_owner"];
_vehshopDialog = createDialog "vehshopd";
gunStoreCart = 0;

_Dialog = findDisplay vehshop_DIALOG;
_playerMoney = _Dialog displayCtrl vehshop_money;
_money = player getVariable "cmoney";
_playerMoney CtrlsetText format["Cash: $%1", _money];
_owner = _this select 0;
currentOwnerName = name _owner;
currentOwnerID = _owner;