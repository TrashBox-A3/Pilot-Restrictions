waitUntil {alive player};

[player,true] execVM "ADV_gear\loadoutsInit.sqf";

[] execVM "3rdView Restrictions.sqf";

nul=[] execVM "Pilot_Restrictions.sqf";

[] execVM "Talk.sqf";
