/*
	Last edited 2020-03-14 by Erik Kofahl for TSOG

*/



class CfgPatches
{
	class UAV_Refit
	{
		units[] = {};
		weapons[] = {};
		requiredVersion = 1.8;
		requiredAddons[] = {"cba_common","cba_xeh","cba_settings"};
		version = "0.1";
		author = "Fat_Lurch";
	};
};

class Extended_PostInit_EventHandlers
{
	class fatLurch_UAV_Refit_EH
	{
		init = "call compile preProcessFileLineNumbers 'UAV_Refit\XEH_postInit.sqf'";
	};
};

class CfgFunctions
{
	class fatLurch
	{
		class UAV_Refit_Functions
		{
			class renderUI
			{
				file = "UAV_Refit\functions\fnc_renderUI.sqf";
			};
			
			class RTB
			{
				file = "UAV_Refit\functions\fnc_RTB.sqf";			
			};
			
			class unloadUAV
			{
				file = "UAV_Refit\functions\fnc_unloadUAV.sqf";			
			};
			class uavReloader
			{
				file = "UAV_Refit\functions\fnc_uavReloader.sqf";			
			};
			class loadUAV
			{
				file = "UAV_Refit\functions\fnc_loadUAV.sqf";			
			};
			
		};
	};
};



