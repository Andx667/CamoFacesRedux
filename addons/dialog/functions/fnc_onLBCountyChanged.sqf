#include "..\script_component.hpp"
/*
 * Authors: Andx, Sk3y
 * Description.
 *
 * Arguments:
 * 0: Button <BUTTON>
 * 1: Selected Item <STRING>
 *
 * Return Value:
 * None
 *
 * Example:
 * [my_button] call cfr_dialog_fnc_onLBCountyChanged
 *
 * Public: No
 */

params ["_lbCountry", "_selItem"];
TRACE_1("fnc_onLBCountyChanged",_this);


disableSerialization;

// lb actions
private _lbCamo = (findDisplay 311) displayCtrl 5263;

//first clear box
lbClear _lbCamo;

// fill with options
private _camoOptions = [(_lbCountry lbData _selItem)] call EFUNC(common,getCamoOptions);

{
	// text
	_lbCamo lbAdd (_x select 0);
	// data
	_lbCamo lbSetData [_forEachIndex, (_x select 1)];
} forEach _camoOptions;
