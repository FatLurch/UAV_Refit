params ["_uav"];


//===== GET REFIT TIME
_time = missionNamespace getVariable["UAVRefitTime", 30];		

//===== ENUNCIATE RTB
//_uav sidechat format["%1 has left the AO. The refit should be complete in approximately %2 minutes", groupID (group _uav), round(_time/60)];
[[side _uav, "HQ"],format["%1 has left the AO. %1 should be back on station in approximately %2 minutes", groupID (group _uav), round(_time)]] remoteExec ["sideChat", 0];

//===== RECORD UAV NAME
UAVName = groupID (group _uav);

//===== RECORD UAV TYPE
UAVType = typeOf _uav;

//===== RECORD LOADOUT
UAVLoadout = getPylonMagazines _uav;

//===== RECORD REFIT TIME
UAVTime = daytime + (_time/60);


//===== TRANSMIT PUBLIC VARIABLES
publicVariable "UAVName";
publicVariable "UAVType";
publicVariable "UAVLoadout";
publicVariable "UAVTime";

//===== DELETE VEHICLE
deleteVehicle _uav;