//#include "script_component.hpp"
/*
 * Author: cineafx, modified by Fat_Lurch
 * Renders a new button on the UAV terminal to allow a RTB for refit
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * addMissionEventHandler ["Map", { [] call fatLurch_fnc_renderUI }];
 *
 * Public: [No]
 */

[{
  if (!isNull (findDisplay 160)) then {

    with uiNamespace do
    {
      ctrl807 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl807 ctrlSetPosition [safezoneX - safeZoneX * 1.275, safezoneY - safeZoneY * 0.25, safezoneW * 0.05, safezoneH * 0.02];
      ctrl807 ctrlSetText "RTB for Refit";
      ctrl807 ctrlCommit 0;
      ctrl807 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV player)) then {
          //hint format["Time to refit!"];
          [getConnectedUAV player] call fatLurch_fnc_RTB;
        };
      }];
    };
  };
}, []] call CBA_fnc_execNextFrame;
