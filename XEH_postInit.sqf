//UAVterminal button
addMissionEventHandler ["Map", {
  	params ["_mapIsOpened", "_mapIsForced"];
  	[] call fatLurch_fnc_renderUI;
}];

//Call "listener" function to reload a UAV when appropriate
[]spawn fatLurch_fnc_uavReloader;
