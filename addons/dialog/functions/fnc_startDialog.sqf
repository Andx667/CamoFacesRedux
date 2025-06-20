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
 * [params] call PREFIX_dialog_fnc_startDialog
 *
 * Public: No
 */

params [];
TRACE_1("fnc_startDialog",_this);

createDialog QGVAR(Dialog);
