class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions  {
            class GVAR(SelfAction) {
                displayName = CSTRING(Action);
                condition = QUOTE(call FUNC(canShowAction));
                //condition = "((face _player in faces || face _player in faces_bwtarn || face _player in faces_black || face _player in faces_bwstripes || face _player in faces_serbian || face _player in faces_usstripes  || face _player in faces_usstains  || face _player in faces_usflash) && ('BW_Facepaint' in uniformItems _player || 'US_Facepaint' in uniformItems _player || 'Serbian_Facepaint' in uniformItems _player))";
                statement = QUOTE(call FUNC(startDialog));
                showDisabled = 0;
                priority = 4;
                icon = QPATHTOEF(common,data\UI\Icon_camoon_ca.paa);
            };
        };
    };
};
