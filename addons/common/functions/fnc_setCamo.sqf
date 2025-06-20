#include "..\script_component.hpp"
/*
 * Authors: Andx, Sk3y
 * Description.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 * 1: Face <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, "BW_stripe"] call cfr_common_fnc_setCamo
 *
 * Public: No
 */

params ["_unit", "_camo"];
TRACE_1("fnc_setCamo",_this);

private _face = (face _unit + "_" + _camo);

if (
    _face in GVAR(faces_bwtarn) ||
    _face in GVAR(faces_black) ||
    _face in GVAR(faces_bwstripes) ||
    _face in GVAR(faces_usstripes) ||
    _face in GVAR(faces_serbian) ||
    _face in GVAR(faces_usflash) ||
    _face in GVAR(faces_usstains)) then {

	[[_unit,_face], "setFace", true, false] call BIS_fnc_mp;
	_unit setVariable [QGVAR(face), _face, true];
	hint "Tarnung aufgelegt";

} else {
	hint "This Face is not possible!";
}
