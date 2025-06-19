class CfgWeapons
{
    class ItemCore;
    class InventoryItem_Base_F;
    class Camofaces_ItemCore: ItemCore {
        type = 4096;
        detectRange = -1;
        simulation = "ItemMineDetector";
    };
    class GVAR(US_Facepaint): Camofaces_ItemCore {
        scope = 2;
        displayName = CSTRING(US_Facepaint_DisplayName);//US-Facepaint-Sticks";
        descriptionShort = CSTRING(US_Facepaint_descriptionShort);//"used by the american forces";
        picture = QPATHTOF(data\UI\gear_US_Facepaint.paa);
        model = QPATHTOF(data\US_Facepaint.p3d);

        class ItemInfo: InventoryItem_Base_F {
            mass = 3;
        };
    };
    class GVAR(Serbian_Facepaint): GVAR(US_Facepaint) {
        scope = 2;
        displayName = CSTRING(Serbian_Facepaint_DisplayName);//"Serbian-Facepaint-Sticks";
        descriptionShort = CSTRING(Serbian_Facepaint_descriptionShort);//"used by the Serbian forces";
        picture = QPATHTOF(data\UI\gear_SERBIAN_Facepaint.paa);
        model = QPATHTOF(data\SERBIAN_Facepaint.p3d);

        class ItemInfo: InventoryItem_Base_F {
            mass = 3;
        };
    };
    class GVAR(BW_FacePaint): GVAR(US_Facepaint) {
        scope = 2;
        displayName = CSTRING(BW_FacePaint_DisplayName);
        descriptionShort = CSTRING(BW_FacePaint_descriptionShort);//"used by the german forces";
        picture = QPATHTOF(data\UI\gear_BW_Facepaint.paa);
        model = QPATHTOF(data\BW_Facepaint.p3d);

        class ItemInfo: InventoryItem_Base_F {
            mass = 4;
        };
    };
};
