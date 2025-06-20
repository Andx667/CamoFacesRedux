#include "..\script_component.hpp"
/*
 * Authors: You
 * Description.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * BOOLEAN
 *
 * Example:
 * [player] call cfr_dialog_fnc_canShowAction
 *
 * Public: No
 */

params ["_player"];
TRACE_1("fnc_showAction",_this);

if (
    (
    face _player in GVAR(faces) ||
    face _player in GVAR(faces_bwtarn) ||
    face _player in GVAR(faces_black) ||
    face _player in GVAR(faces_bwstripes) ||
    face _player in GVAR(faces_serbian) ||
    face _player in GVAR(faces_usstripes) ||
    face _player in GVAR(faces_usstains) ||
    face _player in GVAR(faces_usflash)
    ) && (
        'BW_Facepaint' in uniformItems _player ||
        'US_Facepaint' in uniformItems _player ||
        'Serbian_Facepaint' in uniformItems _player
        )
        ) exitWith {true;};

false;
