while {alive _this} do
{
	sleep 600;
	_this setVelocity [0,0,0];
	_this setFuel 0;
	_this setVelocity [0,0,0];
	sleep 0.1;
	_this setVelocity [0,0,0];
	sleep 0.1;
	deleteVehicle _this;
};

	deleteVehicle _this;