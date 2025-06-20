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
 * [params] call PREFIX_common_fnc_countryOptions
 *
 * Public: No
 */

params [];
TRACE_1("fnc_countryOptions",_this);

camolist = [];

if (EGVAR(items,BW_Facepaint) in uniformItems player) then {
	private _bwFacepaint = [ELSTRING(items,bw_facepaint_displayname),"bw_select"];
	camolist pushBack _bwFacepaint;
};


if (EGVAR(items,SERBIAN_Facepaint)  in uniformItems player) then {
	private _serbianFacepaint = [ELSTRING(items,serbian_facepaint_displayname),"serbian_select"];
	camolist pushBack _serbianFacepaint;
};


if (EGVAR(items,US_Facepaint)  in uniformItems player) then {
	private _usFacepaint = [ELSTRING(items,us_facepaint_displayname),"us_select"];
	camolist pushBack _usFacepaint;
};

// return value
camolist;
