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
 * [params] call PREFIX_common_fnc_setCamo
 *
 * Public: No
 */

params ["_unit", "_face"];
TRACE_1("fnc_setCamo",_this);

_face = (face _unit + "_" + _camo);

if (_face in faces_bwtarn || _face in faces_black || _face in faces_bwstripes || _face in faces_usstripes || _face in faces_serbian || _face in faces_usflash || _face in faces_usstains) then {

	[[_unit,_face], "setFace", true, false] call BIS_fnc_mp;
	_unit setVariable [QGVAR(face), _face, true];
	hint "Tarnung aufgelegt";

} else {
	hint "This Face is not possible!";
}
