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
 * [params] call PREFIX_dialog_fnc_unsetCamo
 *
 * Public: No
 */

params [
    ["_unit", player, [player]],
    ["_face", face _unit, ""]
];
TRACE_1("fnc_unsetCamo",_this);

if (_face in faces_bwtarn || _face in faces_black || _face in faces_bwstripes ||
 _face in faces_serbian || _face in faces_usstripes || _face in faces_usflash ||
 _face in faces_usstains) then {
	[_unit, _face] call EFUNC(common,unsetCamo);
	hint "camo face removed";
} else {
	hint "no camo face applied";

};
