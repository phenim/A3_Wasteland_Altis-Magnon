#include "gunstoreDefines.sqf"

class gunshopd {

	idd = gunshop_DIALOG;
	movingEnable = true;
	enableSimulation = true;
	onLoad = "[0] execVM 'client\systems\gunStore\populateGunStore.sqf'";

	class controlsBackground {
		
		class MainBackground: w_RscPicture
		{
			idc = -1;
			text = "client\ui\ui_background_controlers_ca.paa";

			x = 0.1875 * safezoneW + safezoneX;
			y = 0.15 * safezoneH + safezoneY;
			w = 0.71 * safezoneW;
			h = 0.661111 * safezoneH;
		};

		class ItemSelectedPrice: w_RscStructuredText
		{
			idc = gunshop_gun_TEXT;
			text = "";

			x = 0.30 * safezoneW + safezoneX;
			y = 0.657 * safezoneH + safezoneY;
			w = 0.0891667 * safezoneW;
			h = 0.068889 * safezoneH;
		};
		
		class AmmoSelectedPrice: w_RscStructuredText
		{
			idc = gunshop_ammo_TEXT;
			text = "";

			x = 0.5 * safezoneW + safezoneX;
			y = 0.657 * safezoneH + safezoneY;
			w = 0.0891667 * safezoneW;
			h = 0.068889 * safezoneH;
		};

		class DialogTitleText: w_RscText
		{
			idc = -1;
			text = "Gun Store Menu";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};

		class PlayerMoneyText: w_RscText
		{
			idc = gunshop_money;
			text = "Cash:";
			font = "PuristaMedium";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			x = 0.638 * safezoneW + safezoneX;
			y = 0.175 * safezoneH + safezoneY;
			w = 0.0844792 * safezoneW;
			h = 0.0448148 * safezoneH;
		};
	};
	
	class controls {
		
		class SelectionList: w_RscListbox
		{
			idc = gunshop_gun_list;
			onLBSelChanged = "[] execvm 'client\systems\gunStore\weaponInfo.sqf'";
			font = "PuristaMedium";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			x = 0.3125 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.18 * safezoneW;
			h = 0.422222 * safezoneH;
			class ScrollBar {
				color[] = {1, 1, 1, 0.6};
				colorActive[] = {1, 1, 1, 1};
				colorDisabled[] = {1, 1, 1, 0.3};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};
		
		class AmmoList: w_RscListbox
		{
			idc = gunshop_ammo_list;
			onLBSelChanged = "[] execvm 'client\systems\gunStore\ammoInfo.sqf'";
			font = "PuristaMedium";
			sizeEx = "(			(			(			((safezoneW / safezoneH) min 1.2) / 1.2) / 25) * 1)";
			x = 0.510 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.18 * safezoneW;
			h = 0.422222 * safezoneH;
			class ScrollBar {
				color[] = {1, 1, 1, 0.6};
				colorActive[] = {1, 1, 1, 1};
				colorDisabled[] = {1, 1, 1, 0.3};
				thumb = "\A3\ui_f\data\gui\cfg\scrollbar\thumb_ca.paa";
				arrowFull = "\A3\ui_f\data\gui\cfg\scrollbar\arrowFull_ca.paa";
				arrowEmpty = "\A3\ui_f\data\gui\cfg\scrollbar\arrowEmpty_ca.paa";
				border = "\A3\ui_f\data\gui\cfg\scrollbar\border_ca.paa";
			};
		};

		class BuyToCrate: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\sellUnif.sqf'";
			text = "Sell Uniform";

			x = 0.425 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.072 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.2,0.90,0.2,1};

		};

        class BuyToCrate2: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\sellVest.sqf'";
			text = "Sell Vest";

			x = 0.5 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.072 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.2,0.90,0.2,1};

		};

		class BuyToPlayer: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\gunStore\buyGuns.sqf'";
			text = "Buy";

			x = 0.412 * safezoneW + safezoneX;
			y = 0.657 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};
		
		class BuyAmmo: w_RscButton
		{
			idc = gunshop_but_butammo;
			onButtonClick = "[0] execVM 'client\systems\gunStore\buyAmmo.sqf'";
			text = "Buy";

			x = 0.612 * safezoneW + safezoneX;
			y = 0.657 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.1,0.95,0.1,1};

		};

		class BuySellEquipment: w_RscButton
		{
			idc = -1;
			onButtonClick = "[] execVM 'client\systems\gunStore\sellWeapon.sqf'";
			text = "Sell Current Weapon";

			x = 0.31 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.096 * safezoneW;
			h = 0.040 * safezoneH;

		};

		class CancelButton: w_RscButton
		{
			idc = -1;
			onButtonClick = "closeDialog 0;";
			text = "Cancel";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.750 * safezoneH + safezoneY;
			w = 0.072 * safezoneW;
			h = 0.040 * safezoneH;
			color[] = {0.95,0.1,0.1,1};

		};

		class StoreButton0: w_RscButton
		{
			idc = -1;
			onButtonClick = "[0] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Pistols";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
	
		};

		class StoreButton1: w_RscButton
		{
			idc = -1;
			onButtonClick = "[1] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Rifles";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.275 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;

		};
		
		class StoreButton2: w_RscButton
		{
			idc = -1;
			onButtonClick = "[2] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "SMGs";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.325 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};
		
		class StoreButton3: w_RscButton
		{
			idc = -1;
			onButtonClick = "[3] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Shotguns";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.375 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class StoreButton4: w_RscButton
		{
			idc = -1;
			onButtonClick = "[4] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "LMGs";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.425 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class StoreButton5: w_RscButton
		{
			idc = -1;
			onButtonClick = "[5] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Sniper";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.475 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};
		
		class StoreButton6: w_RscButton
		{
			idc = -1;
			onButtonClick = "[6] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Launchers";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.525 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};
		
		class StoreButton7: w_RscButton
		{
			idc = -1;
			onButtonClick = "[7] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Throw/Put";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.575 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;
		};

		class StoreButton8: w_RscButton
		{
			idc = -1;
			onButtonClick = "[8] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Items";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.625 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;

		};
		
		class StoreButton9: w_RscButton
		{
			idc = -1;
			onButtonClick = "[9] execVM 'client\systems\gunStore\populateGunStore.sqf'";
			text = "Backpacks";

			x = 0.203125 * safezoneW + safezoneX;
			y = 0.675 * safezoneH + safezoneY;
			w = 0.088 * safezoneW;
			h = 0.040 * safezoneH;

		};
	};
};
