if(!isServer && !isDedicated) exitWith {};		//Only the server should run this reloader routine



while {true} do {
	//Loop infinitely
	
	//===== CHECK IF TIME TO RELOAD UAV
	
	if(!isNil {UAVName}) then	
	{
		
		if (daytime > UAVTime) then
		{
			
			//===== CALL LOADUAV
			[UAVName, UAVType, UAVLoadout] call fatLurch_fnc_loadUAV;
			
			//===== RESET VARIABLES
			UAVName = nil;
			UAVType = nil;
			UAVLoadout = nil;
			UAVTime = nil;
			
			//===== TRANSMIT PUBLIC VARIABLES
			publicVariable "UAVName";
			publicVariable "UAVType";
			publicVariable "UAVLoadout";
			publicVariable "UAVTime";
		};
	};
	sleep 1;
};