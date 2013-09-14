if(!X_Server) exitWith {};

//Admin menu access levels

//replace my ID's with your own in this file
//if you want to give limited admin access add the id to the moderators array
//by changing [] to ["12345678"] (replace the id with your limited-admins arma3 profile id)
//you should only add an ID to 1 group

moderators = [
"76561198027370826", // Dub

]; 
publicVariable "moderators";

administrators = [];
publicVariable "administrators";

serverAdministrators = ["76561198021431816","76561198024488047","76561198015805156","76561198035019570"
]; 
publicVariable "serverAdministrators";
