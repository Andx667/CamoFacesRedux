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
 * [params] call PREFIX_dialog_fnc_onLBCountyChanged
 *
 * Public: No
 */

params ["_lbCountry", "_selItem"];
TRACE_1("fnc_onLBCountyChanged",_this);


disableSerialization;

// lb actions
_lbCamo = (findDisplay 311) displayCtrl 5263;

//first clear box
lbClear _lbCamo;

// fill with options
_camoOptions = [(_lbCountry lbData _selItem)] call EFUNC(common,getCamoOptions);

{
	// text
	_lbCamo lbAdd (_x select 0);
	// data
	_lbCamo lbSetData [_forEachIndex, (_x select 1)];
} forEach _camoOptions;
