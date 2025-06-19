#include "script_component.hpp"

class CfgPatches {
    class ADDON {
        author = AUTHOR;
        authors[] = {"You!"};
        url = ECSTRING(main,url);
        name = COMPONENT_NAME;
        requiredVersion = REQUIRED_VERSION;
        requiredAddons[] = {
            "cfr_main"
        };
        units[] = {
            QGVAR(box),
        };
        weapons[] = {
            QGVAR(US_Facepaint),
            QGVAR(BW_Facepaint),
            QGVAR(SERBIAN_Facepaint),
        };
        VERSION_CONFIG;
    };
};

#include "CfgEventHandlers.hpp"
#include "CfgWeapons.hpp"
#include "CfgVehicles.hpp"
