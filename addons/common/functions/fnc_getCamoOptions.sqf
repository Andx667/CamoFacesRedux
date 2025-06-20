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
 * [params] call PREFIX_common_fnc_getCamoOptions
 *
 * Public: No
 */

params ["_select"];
TRACE_1("fnc_getCamoOptions",_this);

selected = [];

if (face player in faces) then {

	if (_select == "bw_select") then {
		if ((face player + '_cfaces_BWTarn') in faces_bwtarn) then {
			_bw_tarn = [localize "STR_Camofaces_BWTarn","cfaces_BWTarn"];
			selected pushBack _bw_tarn;
		};
		if ((face player + '_cfaces_Black') in faces_black) then {
			_bw_stripes = [localize "STR_Camofaces_Night","cfaces_Black"];
			selected pushBack _bw_stripes;
		};
		if ((face player + '_cfaces_BWStripes') in faces_bwstripes) then {
			_bw_stripes = [localize "STR_Camofaces_Stripes","cfaces_BWStripes"];
			selected pushBack _bw_stripes;
		};
	};

	if (_select == "serbian_select") then {
		if ((face player + '_cfaces_Serbian') in faces_serbian) then {
			_serbian_tarn = [localize "STR_Camofaces_Serbian","cfaces_Serbian"];
			selected pushBack _serbian_tarn;
		};
	};

	if (_select == "us_select") then {
		if ((face player + '_cfaces_USStripes') in faces_usstripes) then {
			_us_stripes = [localize "STR_Camofaces_USStripes","cfaces_USStripes"];
			selected pushBack _us_stripes;
		};
		if ((face player + '_cfaces_USStains') in faces_usstains) then {
			_us_stains = [localize "STR_Camofaces_USStains","cfaces_USStains"];
			selected pushBack _us_stains;
		};
		if ((face player + '_cfaces_USFlash') in faces_usflash) then {
			_us_flash = [localize "STR_Camofaces_USFlash","cfaces_USFlash"];
			selected pushBack _us_flash;
		};
	};

};

//return value
selected;
