class CfgVehicles {
    class NATO_Box_Base;
    class GVAR(box): NATO_Box_Base {
        scope = 2;
        vehicleClass = "Ammo";
        displayName = CSTRING(box_displayName);
        model = "\A3\weapons_F\AmmoBoxes\WpnsBox_F";
        icon = "iconCrateWpns";
        class TransportWeapons {};
        class TransportMagazines {};
        class TransportItems {
            MACRO_ADDITEM(GVAR(US_Facepaint),30);
            MACRO_ADDITEM(GVAR(BW_Facepaint),30);
            MACRO_ADDITEM(GVAR(SERBIAN_Facepaint),30);
        };
    };
};
