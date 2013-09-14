_acc = 0;
while{true} do
{
sleep 3;
_acc = player getVariable "AccountExists";
if(isNil "_acc") then {_acc = 0;};
if(_acc == 1) then {Deutschesreinheitsgebot = 1};
if(_acc == 2) then {Deutschesreinheitsgebot = 2};
};
diag_log format ["Account geladen? %1",_acc];