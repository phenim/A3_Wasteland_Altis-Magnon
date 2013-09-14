private["_handled", "_faceCP", "_faceVP"];

_key     = _this select 1;
_shift   = _this select 2;
_handled = false;

if(isstunned) exitwith

	{

	if(_key == 50)then{_handled = true};
	if(_key == 11)then{_handled = true};

	_handled

	};

switch _key do
{      
    //U key
    case 22:
    {
		execVM "client\systems\adminPanel\checkAdmin.sqf";
    };
    
    //Zirkumflex ~
    case 41:
    {
        [] call loadPlayerMenu;
    };
    
    //E key
	case 18:
    {
    	if (dialog) exitwith { closeDialog 0; }; // Check a current dialog is not already active.
        if(vehicle player != player) exitwith{};  // Check the player is not a car.
        
        private ["_storeInteractionBuffer","_storeInteractionZone","_currPos","_store","_relativeDir","_absoluteDir"];
        
        _storeInteractionBuffer = 10; // The acceptable +/- look direction for interacting with stores. Higher = wider look angle.
        _storeInteractionZone = 3; // The furthest away the player can be from a store to interact with it. Higher = further.
        _currPos = getPosATL player;
        
        _gunStore = nearestObjects [_currPos, ["C_man_1_1_F"], _storeInteractionZone];
		_gunRun = nearestObjects [_currPos, ["C_man_1_2_F"], _storeInteractionZone];    
        if (!isNull (_gunStore select 0)) then {
        	_relativeDir = [player, _gunStore select 0] call BIS_fnc_relativeDirTo;
       		_absoluteDir = abs _relativeDir;
            
            if (_absoluteDir < _storeInteractionBuffer OR _absoluteDir > (360 - _storeInteractionBuffer)) then {
				//Great success! Player is actually looking at the store keeper and is close by.
				[] spawn loadGunStore;
        	};   
        };
		/*
		if (!isNull (_gunRun select 0)) then {
        	_relativeDir1 = [player, _gunRun select 0] call BIS_fnc_relativeDirTo;
       		_absoluteDir1 = abs _relativeDir1;
            
            if (_absoluteDir1 < _storeInteractionBuffer OR _absoluteDir1 > (360 - _storeInteractionBuffer)) then {
				//Great success! Player is actually looking at the store keeper and is close by.
				[] spawn loadGunStore;
        	};   
        };
        */     
    };
	//Q
	case 16:
    {
    	if (dialog) exitwith { closeDialog 0; }; // Check a current dialog is not already active.
        if(vehicle player != player) exitwith{};  // Check the player is not a car.
        
        private ["_storeInteractionBuffer","_storeInteractionZone","_currPos","_store","_relativeDir","_absoluteDir"];
        
        _storeInteractionBuffer = 10; // The acceptable +/- look direction for interacting with stores. Higher = wider look angle.
        _storeInteractionZone = 3; // The furthest away the player can be from a store to interact with it. Higher = further.
        _currPos = getPosATL player;
        
		_genStore = nearestObjects [_currPos, ["C_man_polo_6_F"], _storeInteractionZone];    
		
        if (!isNull (_genStore select 0)) then {
        	_relativeDir2 = [player, _genStore select 0] call BIS_fnc_relativeDirTo;
       		_absoluteDir2 = abs _relativeDir2;
            
            if (_absoluteDir2 < _storeInteractionBuffer OR _absoluteDir2 > (360 - _storeInteractionBuffer)) then {
				//Great success! Player is actually looking at the store keeper and is close by.
				[] spawn loadGeneralStore;
        	};   
        };  
        
    };
};

_handled;



