params ["_name", "_type", "_loadout"];

//===== GET POSITION TO SPAWN IN AV
_pos = missionNamespace getVariable ["UAVRefitPos", [0,0,3000]];

//===== CREATE NEW VEHICLE, NAME & POSITION
_uav = _type createVehicle _pos;
createVehicleCrew _uav;
_uav setGroupId[_name];
_uav setGroupIdGlobal[_name];

_uav setVehiclePosition [_pos, [], 500, "FLY"];		
_uav setpos[getpos _uav select 0, getpos _uav select 1, _pos select 2];
_uav setVelocityModelSpace [0, 50, 0];
_uav flyinheight (_pos select 2);
_wp = group _uav addWaypoint [_pos, 0];
_wp setWaypointType "LOITER";


//===== SETUP VEHICLE LOADOUT LIKE THE DESPAWNED ASSET
private _pylonPaths = (configProperties [configFile >> "CfgVehicles" >> typeOf _uav >> "Components" >> "TransportPylonsComponent" >> "Pylons", "isClass _x"]) apply {getArray (_x >> "turret")};
{_uav removeWeaponGlobal getText (configFile >> "CfgMagazines" >> _x >> "pylonWeapon") } forEach getPylonMagazines _uav;
{_uav setPylonLoadout [_forEachIndex + 1, _x, true, _pylonPaths select _forEachIndex] } forEach _loadout;


//===== ENUNCIATE BACK ON STATION
[[side _uav, "HQ"],format["%1 is back on station in the AO", groupID (group _uav)]] remoteExec ["sideChat", 0];

