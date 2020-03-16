
params ["_uav"];

//===== VARIABLE DECLARATION
_pos = []; 


//===== DELETE ALL CURRENT WAYPOINTS
group _uav call 
{
	for "_i" from count waypoints _this - 1 to 0 step -1 do 
	{
		deleteWaypoint [_this, _i];
	};
};


//===== FLY OFF MAP
_pos = missionNamespace getVariable ["UAVRefitPos", [0,0,0]];
_wp = group _uav addWaypoint [_pos, 0];	
myUAV=_uav;
_wp setWaypointStatements ["true", 
"[myUAV] call fatLurch_fnc_unloadUAV;"
];

//===== ENUNCIATE RTB
//uav sidechat format["%1 is RTB for refit and refuel", groupID (group uav)];
[[side myUAV, "HQ"],format["%1 is RTB at this time", groupID (group myUAV)]] remoteExec ["sideChat", 0];
