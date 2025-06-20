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
 * [params] call PREFIX_common_fnc_unsetCamo
 *
 * Public: No
 */

params ["_unit","_face"];
TRACE_1("fnc_unsetCamo",_this);

//Das Abtarnen
if (_face in GVAR(faces_bwtarn)) then {
    _ns = [_face, 0, -14] call BIS_fnc_trimString; //_unit setface _ns;
    //[-2, {unit setface ns}] call CBA_fnc_globalExecute;
    [[_unit,_ns], "setFace", true, false] call BIS_fnc_mp;
    _unit setVariable [QGVAR(face), _ns, true];
    hint "Tarnung abgelegt";
} else {
    if (_face in GVAR(faces_black)) then {
            _ns = [_face, 0, -13] call BIS_fnc_trimString; //_unit setface _ns;
            //[-2, {unit setface ns}] call CBA_fnc_globalExecute;
        [[_unit,_ns], "setFace", true, false] call BIS_fnc_mp;
            _unit setVariable [QGVAR(face), _ns, true];
            hint "Tarnung abgelegt";
    } else {
        if (_face in GVAR(faces_bwstripes) || _face in GVAR(faces_usstripe)) then {
                _ns = [_face, 0, -17] call BIS_fnc_trimString; //_unit setface _ns;
                [[_unit,_ns], "setFace", true, false] call BIS_fnc_mp;
                _unit setVariable [QGVAR(face), _ns, true];
                //[-2, {unit setface ns}] call CBA_fnc_globalExecute;
                hint "Tarnung abgelegt";
        } else {
            if (_face in faces_serbian || _face in faces_usflash) then {
                _ns = [_face, 0, -15] call BIS_fnc_trimString; //_unit setface _ns;
            [[_unit,_ns], "setFace", true, false] call BIS_fnc_mp;
                _unit setVariable [QGVAR(face), _ns, true];
                //[-2, {unit setface ns}] call CBA_fnc_globalExecute;
                hint "Tarnung abgelegt";
            } else {
                if (_face in faces_usstains) then {
                    _ns = [_face, 0, -16] call BIS_fnc_trimString; //_unit setface _ns;
                    [[_unit,_ns], "setFace", true, false] call BIS_fnc_mp;
                    _unit setVariable [QGVAR(face), _ns, true];
                    //[-2, {unit setface ns}] call CBA_fnc_globalExecute;
                    hint "Tarnung abgelegt";
                };
            };
        };
    };
};
