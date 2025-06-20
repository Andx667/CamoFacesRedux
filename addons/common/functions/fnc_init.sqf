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
 * [params] call PREFIX_common_fnc_init
 *
 * Public: No
 */

params [];
TRACE_1("fnc_init",_this);

GVAR(all_faces) = ["PersianHead_A3_01","PersianHead_A3_02","PersianHead_A3_03",
			"AsianHead_A3_01","AsianHead_A3_02","AsianHead_A3_03",
			"AfricanHead_01","AfricanHead_02","AfricanHead_03",
			"GreekHead_A3_01","GreekHead_A3_02","GreekHead_A3_03","GreekHead_A3_04","GreekHead_A3_05","GreekHead_A3_06","GreekHead_A3_07","GreekHead_A3_08","GreekHead_A3_09",
			"WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13","WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_18","WhiteHead_19","WhiteHead_20","WhiteHead_21"];

//mit schema-1-Tarnschminke (Komplett)
GVAR(faces_bwtarn) = ["PersianHead_A3_01_cfaces_BWTarn","PersianHead_A3_02_cfaces_BWTarn","PersianHead_A3_03_cfaces_BWTarn","AfricanHead_01_cfaces_BWTarn","AfricanHead_02_cfaces_BWTarn","AfricanHead_03_cfaces_BWTarn","AsianHead_A3_01_cfaces_BWTarn","AsianHead_A3_02_cfaces_BWTarn","AsianHead_A3_03_cfaces_BWTarn","GreekHead_A3_01_cfaces_BWTarn","GreekHead_A3_02_cfaces_BWTarn","GreekHead_A3_03_cfaces_BWTarn","GreekHead_A3_04_cfaces_BWTarn","GreekHead_A3_05_cfaces_BWTarn","GreekHead_A3_06_cfaces_BWTarn","GreekHead_A3_07_cfaces_BWTarn","GreekHead_A3_08_cfaces_BWTarn","GreekHead_A3_09_cfaces_BWTarn","WhiteHead_01_cfaces_BWTarn","WhiteHead_02_cfaces_BWTarn","WhiteHead_03_cfaces_BWTarn","WhiteHead_04_cfaces_BWTarn","WhiteHead_05_cfaces_BWTarn","WhiteHead_06_cfaces_BWTarn","WhiteHead_07_cfaces_BWTarn","WhiteHead_08_cfaces_BWTarn","WhiteHead_09_cfaces_BWTarn","WhiteHead_10_cfaces_BWTarn","WhiteHead_11_cfaces_BWTarn","WhiteHead_12_cfaces_BWTarn","WhiteHead_13_cfaces_BWTarn","WhiteHead_14_cfaces_BWTarn","WhiteHead_15_cfaces_BWTarn","WhiteHead_16_cfaces_BWTarn","WhiteHead_17_cfaces_BWTarn","WhiteHead_18_cfaces_BWTarn","WhiteHead_19_cfaces_BWTarn","WhiteHead_20_cfaces_BWTarn","WhiteHead_21_cfaces_BWTarn"];

//mit schema-2-Tarnschminke	(Nacht)
GVAR(faces_black) = ["PersianHead_A3_01_cfaces_Black","PersianHead_A3_02_cfaces_Black","PersianHead_A3_03_cfaces_Black","AsianHead_A3_01_cfaces_Black","AsianHead_A3_02_cfaces_Black","AsianHead_A3_03_cfaces_Black","GreekHead_A3_01_cfaces_Black","GreekHead_A3_02_cfaces_Black","GreekHead_A3_03_cfaces_Black","GreekHead_A3_04_cfaces_Black","GreekHead_A3_05_cfaces_Black","GreekHead_A3_06_cfaces_Black","GreekHead_A3_07_cfaces_Black","GreekHead_A3_08_cfaces_Black","GreekHead_A3_09_cfaces_Black","WhiteHead_01_cfaces_Black","WhiteHead_02_cfaces_Black","WhiteHead_03_cfaces_Black","WhiteHead_04_cfaces_Black","WhiteHead_05_cfaces_Black","WhiteHead_06_cfaces_Black","WhiteHead_07_cfaces_Black","WhiteHead_08_cfaces_Black","WhiteHead_09_cfaces_Black","WhiteHead_10_cfaces_Black","WhiteHead_11_cfaces_Black","WhiteHead_12_cfaces_Black","WhiteHead_13_cfaces_Black","WhiteHead_14_cfaces_Black","WhiteHead_15_cfaces_Black","WhiteHead_16_cfaces_Black","WhiteHead_17_cfaces_Black","WhiteHead_18_cfaces_Black","WhiteHead_19_cfaces_Black","WhiteHead_20_cfaces_Black","WhiteHead_21_cfaces_Black"];

//mit schema-3-Tarnschminke	(Streifen)
GVAR(faces_bwstripes) = ["PersianHead_A3_01_cfaces_BWStripes","PersianHead_A3_02_cfaces_BWStripes","PersianHead_A3_03_cfaces_BWStripes","AfricanHead_01_cfaces_BWStripes","AfricanHead_02_cfaces_BWStripes","AfricanHead_03_cfaces_BWStripes","AsianHead_A3_01_cfaces_BWStripes","AsianHead_A3_02_cfaces_BWStripes","AsianHead_A3_03_cfaces_BWStripes","GreekHead_A3_01_cfaces_BWStripes","GreekHead_A3_02_cfaces_BWStripes","GreekHead_A3_03_cfaces_BWStripes","GreekHead_A3_04_cfaces_BWStripes","GreekHead_A3_05_cfaces_BWStripes","GreekHead_A3_06_cfaces_BWStripes","GreekHead_A3_07_cfaces_BWStripes","GreekHead_A3_08_cfaces_BWStripes","GreekHead_A3_09_cfaces_BWStripes","WhiteHead_01_cfaces_BWStripes","WhiteHead_02_cfaces_BWStripes","WhiteHead_03_cfaces_BWStripes","WhiteHead_04_cfaces_BWStripes","WhiteHead_05_cfaces_BWStripes","WhiteHead_06_cfaces_BWStripes","WhiteHead_07_cfaces_BWStripes","WhiteHead_08_cfaces_BWStripes","WhiteHead_09_cfaces_BWStripes","WhiteHead_10_cfaces_BWStripes","WhiteHead_11_cfaces_BWStripes","WhiteHead_12_cfaces_BWStripes","WhiteHead_13_cfaces_BWStripes","WhiteHead_14_cfaces_BWStripes","WhiteHead_15_cfaces_BWStripes","WhiteHead_16_cfaces_BWStripes","WhiteHead_17_cfaces_BWStripes","WhiteHead_18_cfaces_BWStripes","WhiteHead_19_cfaces_BWStripes","WhiteHead_20_cfaces_BWStripes","WhiteHead_21_cfaces_BWStripes"];

GVAR(faces_serbian) = ["PersianHead_A3_01_cfaces_Serbian","PersianHead_A3_02_cfaces_Serbian","PersianHead_A3_03_cfaces_Serbian","AfricanHead_01_cfaces_Serbian","AfricanHead_02_cfaces_Serbian","AfricanHead_03_cfaces_Serbian","AsianHead_A3_01_cfaces_Serbian","AsianHead_A3_02_cfaces_Serbian","AsianHead_A3_03_cfaces_Serbian","GreekHead_A3_01_cfaces_Serbian","GreekHead_A3_02_cfaces_Serbian","GreekHead_A3_03_cfaces_Serbian","GreekHead_A3_04_cfaces_Serbian","GreekHead_A3_05_cfaces_Serbian","GreekHead_A3_06_cfaces_Serbian","GreekHead_A3_07_cfaces_Serbian","GreekHead_A3_08_cfaces_Serbian","GreekHead_A3_09_cfaces_Serbian","WhiteHead_01_cfaces_Serbian","WhiteHead_02_cfaces_Serbian","WhiteHead_03_cfaces_Serbian","WhiteHead_04_cfaces_Serbian","WhiteHead_05_cfaces_Serbian","WhiteHead_06_cfaces_Serbian","WhiteHead_07_cfaces_Serbian","WhiteHead_08_cfaces_Serbian","WhiteHead_09_cfaces_Serbian","WhiteHead_10_cfaces_Serbian","WhiteHead_11_cfaces_Serbian","WhiteHead_12_cfaces_Serbian","WhiteHead_13_cfaces_Serbian","WhiteHead_14_cfaces_Serbian","WhiteHead_15_cfaces_Serbian","WhiteHead_16_cfaces_Serbian","WhiteHead_17_cfaces_Serbian","WhiteHead_18_cfaces_Serbian","WhiteHead_19_cfaces_Serbian","WhiteHead_20_cfaces_Serbian","WhiteHead_21_cfaces_Serbian"];

GVAR(faces_usstripes) = ["PersianHead_A3_01_cfaces_USStripes","PersianHead_A3_02_cfaces_USStripes","PersianHead_A3_03_cfaces_USStripes","AfricanHead_01_cfaces_USStripes","AfricanHead_02_cfaces_USStripes","AfricanHead_03_cfaces_USStripes","AsianHead_A3_01_cfaces_USStripes","AsianHead_A3_02_cfaces_USStripes","AsianHead_A3_03_cfaces_USStripes","GreekHead_A3_01_cfaces_USStripes","GreekHead_A3_02_cfaces_USStripes","GreekHead_A3_03_cfaces_USStripes","GreekHead_A3_04_cfaces_USStripes","GreekHead_A3_05_cfaces_USStripes","GreekHead_A3_06_cfaces_USStripes","GreekHead_A3_07_cfaces_USStripes","GreekHead_A3_08_cfaces_USStripes","GreekHead_A3_09_cfaces_USStripes","WhiteHead_01_cfaces_USStripes","WhiteHead_02_cfaces_USStripes","WhiteHead_03_cfaces_USStripes","WhiteHead_04_cfaces_USStripes","WhiteHead_05_cfaces_USStripes","WhiteHead_06_cfaces_USStripes","WhiteHead_07_cfaces_USStripes","WhiteHead_08_cfaces_USStripes","WhiteHead_09_cfaces_USStripes","WhiteHead_10_cfaces_USStripes","WhiteHead_11_cfaces_USStripes","WhiteHead_12_cfaces_USStripes","WhiteHead_13_cfaces_USStripes","WhiteHead_14_cfaces_USStripes","WhiteHead_15_cfaces_USStripes","WhiteHead_16_cfaces_USStripes","WhiteHead_17_cfaces_USStripes","WhiteHead_18_cfaces_USStripes","WhiteHead_19_cfaces_USStripes","WhiteHead_20_cfaces_USStripes","WhiteHead_21_cfaces_USStripes"];

GVAR(faces_usstains) = ["PersianHead_A3_01_cfaces_USStains","PersianHead_A3_02_cfaces_USStains","PersianHead_A3_03_cfaces_USStains","AfricanHead_01_cfaces_USStains","AfricanHead_02_cfaces_USStains","AfricanHead_03_cfaces_USStains","AsianHead_A3_01_cfaces_USStains","AsianHead_A3_02_cfaces_USStains","AsianHead_A3_03_cfaces_USStains","GreekHead_A3_01_cfaces_USStains","GreekHead_A3_02_cfaces_USStains","GreekHead_A3_03_cfaces_USStains","GreekHead_A3_04_cfaces_USStains","GreekHead_A3_05_cfaces_USStains","GreekHead_A3_06_cfaces_USStains","GreekHead_A3_07_cfaces_USStains","GreekHead_A3_08_cfaces_USStains","GreekHead_A3_09_cfaces_USStains","WhiteHead_01_cfaces_USStains","WhiteHead_02_cfaces_USStains","WhiteHead_03_cfaces_USStains","WhiteHead_04_cfaces_USStains","WhiteHead_05_cfaces_USStains","WhiteHead_06_cfaces_USStains","WhiteHead_07_cfaces_USStains","WhiteHead_08_cfaces_USStains","WhiteHead_09_cfaces_USStains","WhiteHead_10_cfaces_USStains","WhiteHead_11_cfaces_USStains","WhiteHead_12_cfaces_USStains","WhiteHead_13_cfaces_USStains","WhiteHead_14_cfaces_USStains","WhiteHead_15_cfaces_USStains","WhiteHead_16_cfaces_USStains","WhiteHead_17_cfaces_USStains","WhiteHead_18_cfaces_USStains","WhiteHead_19_cfaces_USStains","WhiteHead_20_cfaces_USStains","WhiteHead_21_cfaces_USStains"];

GVAR(faces_usflash) = ["PersianHead_A3_01_cfaces_USFlash","PersianHead_A3_02_cfaces_USFlash","PersianHead_A3_03_cfaces_USFlash","AfricanHead_01_cfaces_USFlash","AfricanHead_02_cfaces_USFlash","AfricanHead_03_cfaces_USFlash","AsianHead_A3_01_cfaces_USFlash","AsianHead_A3_02_cfaces_USFlash","AsianHead_A3_03_cfaces_USFlash","GreekHead_A3_01_cfaces_USFlash","GreekHead_A3_02_cfaces_USFlash","GreekHead_A3_03_cfaces_USFlash","GreekHead_A3_04_cfaces_USFlash","GreekHead_A3_05_cfaces_USFlash","GreekHead_A3_06_cfaces_USFlash","GreekHead_A3_07_cfaces_USFlash","GreekHead_A3_08_cfaces_USFlash","GreekHead_A3_09_cfaces_USFlash","WhiteHead_01_cfaces_USFlash","WhiteHead_02_cfaces_USFlash","WhiteHead_03_cfaces_USFlash","WhiteHead_04_cfaces_USFlash","WhiteHead_05_cfaces_USFlash","WhiteHead_06_cfaces_USFlash","WhiteHead_07_cfaces_USFlash","WhiteHead_08_cfaces_USFlash","WhiteHead_09_cfaces_USFlash","WhiteHead_10_cfaces_USFlash","WhiteHead_11_cfaces_USFlash","WhiteHead_12_cfaces_USFlash","WhiteHead_13_cfaces_USFlash","WhiteHead_14_cfaces_USFlash","WhiteHead_15_cfaces_USFlash","WhiteHead_16_cfaces_USFlash","WhiteHead_17_cfaces_USFlash","WhiteHead_18_cfaces_USFlash","WhiteHead_19_cfaces_USFlash","WhiteHead_20_cfaces_USFlash","WhiteHead_21_cfaces_USFlash"];


{
  _face = _x getVariable [QGVAR(face), ""];
  if (_face != "") then {
    _x setFace _face;
  };
} forEach (allUnits + allDead);
