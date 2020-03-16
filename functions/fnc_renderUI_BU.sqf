#include "script_component.hpp"
/*
 * Author: cineafx
 * Renders the addtional buttons for the UAV terminal
 *
 * Arguments:
 * none
 *
 * Return Value:
 * nothing
 *
 * Example:
 * addMissionEventHandler ["Map", { [] call CINE_UAVkeybinds_UAV_fnc_renderUI }];
 *
 * Public: [No]
 */

[{
  if (!isNull (findDisplay 160)) then {

    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.25, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "0 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    0 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 0;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.35, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "10 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    10 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 10;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.45, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "100 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    100 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 100;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.55, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "200 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    200 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 200;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.65, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "500 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    500 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 500;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.75, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "750 AGL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    750 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 750;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1000 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1000 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.85, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1000 ctrlSetText "1000 AGL";
      ctrl1000 ctrlCommit 0;
      ctrl1000 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    1000 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 1000;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 0.95, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "1500 AGL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    1500 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 1500;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 1.05, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "2000 AGL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    2000 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 2000;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.75, safezoneY - safeZoneY * 1.15, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "4000 AGL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    4000 AGL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeight 4000;
        };
      }];
    };


    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.25, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "0 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    0 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [0,0,0];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.35, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "10 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    10 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [10,10,10];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.45, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "100 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    100 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [100,100,100];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.55, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "200 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    200 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [200,200,200];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.65, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "500 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    500 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [500,500,500];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.75, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "750 ASL";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    750 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [750,750,750];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1000 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1000 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.85, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1000 ctrlSetText "1000 ASL";
      ctrl1000 ctrlCommit 0;
      ctrl1000 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    1000 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [1000,1000,1000];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 0.95, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "1500 ASL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    1500 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [1500,1500,1500];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 1.05, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "2000 ASL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    2000 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [2000,2000,2000];
        };
      }];
    };
    with uiNamespace do
    {
      ctrl1500 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl1500 ctrlSetPosition [safezoneX - safeZoneX * 0.925, safezoneY - safeZoneY * 1.15, safezoneW * 0.05, safezoneH * 0.02];
      ctrl1500 ctrlSetText "4000 ASL";
      ctrl1500 ctrlCommit 0;
      ctrl1500 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    4000 ASL", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) flyInHeightASL [4000,4000,4000];
        };
      }];
    };


    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 1.1, safezoneY - safeZoneY * 0.25, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "LAND";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        if (!isNull (getConnectedUAV CINE_PLAYER)) then {
          //hint format["%1    LAND", getConnectedUAV CINE_PLAYER];
          (getConnectedUAV CINE_PLAYER) land "LAND";
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 1.1, safezoneY - safeZoneY * 0.35, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "FIX UAV";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        _target = getConnectedUAV CINE_PLAYER;
        if (!isNull (_target)) then {
          //hint format["%1    FIXED", _target];

          [{
            _this setBehaviour "CARELESS";
            _target setCombatMode "BLUE";
            _target setSkill 1;
            _target disableAI "AUTOCOMBAT";
            _target disableAI "SUPPRESSION";
            _target disableAI "AIMINGERROR";
          }, _target, 1] call CBA_fnc_waitAndExecute;
        };
      }];
    };
    with uiNamespace do
    {
      ctrl750 = findDisplay 160 ctrlCreate ["RscButton", -1];
      ctrl750 ctrlSetPosition [safezoneX - safeZoneX * 1.1, safezoneY - safeZoneY * 0.45, safezoneW * 0.05, safezoneH * 0.02];
      ctrl750 ctrlSetText "REPLACE AI";
      ctrl750 ctrlCommit 0;
      ctrl750 ctrlAddEventHandler ["ButtonDown",{
        _target = getConnectedUAV CINE_PLAYER;
        if (!isNull (_target)) then {
          //hint format["%1    REPLACED", _target];

          {vehicle _x deleteVehicleCrew _x} forEach crew _target;
          createVehicleCrew _target;
        };
      }];
    };
  };
}, []] call CBA_fnc_execNextFrame;
