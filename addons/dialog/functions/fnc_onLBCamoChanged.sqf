#include "..\script_component.hpp"
/*
 * Authors: You
 * Description.
 *
 * Arguments:
 * 0: Argument (optional, default: value) <OBJECT>
 *
 * Return Value:
 * Return description <NONE>
 *
 * Example:
 * [params] call PREFIX_dialog_fnc_onLBCamoChange
 *
 * Public: No
 */

params ["_lbCountry","_selItem"];
TRACE_1("fnc_onLBCamoChange",_this);

disableSerialization;

// lb actions
// controls for pictures
_face = (face player);

if (!GVAR(hasHelmet) && !GVAR(hasGoggles) && !GVAR(hasNV) && _face in faces) then {
	// allow first button
	_button1 = (findDisplay 311) displayCtrl 5362;
	_button1 ctrlEnable true;
};
