_GunRunner = ["GunRunner1","GunRunner2","GunRunner3","GunRunner4","GunRunner5","GunRunner6"];

//Creates the markers around general stores.
waitUntil {{!isNull(missionNamespace getVariable _x) && ((getPos(missionNamespace getVariable _x) distance [0,0,0]) > 100)} count _GunRunner == count _GunRunner};
{
	_unit = missionNamespace getVariable _x;

	// General store title    
    _markerName = format["marker_shop_title_%1",_x];
    deleteMarkerLocal _markerName;
	_marker = createMarkerLocal [_markerName, getPos _unit];
	_markerName setMarkerShapeLocal "ICON";
    _markerName setMarkerTypeLocal "mil_dot";
    _markerName setMarkerColorLocal "ColorGreen";
	_markerName setMarkerSizeLocal [1,1];
	_markerName setMarkerTextLocal "Gun Runner";

} forEach _GunRunner;

