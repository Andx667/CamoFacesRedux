#include "..\script_component.hpp"
/*
 * Authors: Andx, Sk3y
 * Description.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * List of available Camos <ARRAY>
 *
 * Example:
 * [player] call cfr_common_fnc_countryOptions
 *
 * Public: No
 */

params ["_unit"];
TRACE_1("fnc_countryOptions",_this);

private _camolist = [];

if (EGVAR(items,BW_Facepaint) in uniformItems _unit) then {
	private _bwFacepaint = [ELSTRING(items,bw_facepaint_displayname),"bw_select"];
	_camolist pushBack _bwFacepaint;
};


if (EGVAR(items,SERBIAN_Facepaint) in uniformItems _unit) then {
	private _serbianFacepaint = [ELSTRING(items,serbian_facepaint_displayname),"serbian_select"];
	_camolist pushBack _serbianFacepaint;
};


if (EGVAR(items,US_Facepaint) in uniformItems _unit) then {
	private _usFacepaint = [ELSTRING(items,us_facepaint_displayname),"us_select"];
	_camolist pushBack _usFacepaint;
};

// return value
_camolist;
