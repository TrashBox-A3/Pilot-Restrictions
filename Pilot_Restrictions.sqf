//Script by Sa-Matra
true spawn {
    //List of pilot classes, crewman classes, affected aircraft classes and affected vehicle classes

    _jetpilots = [
"JET1",
"JET2",
"JET3",
"JET4",
"JET5",
"JET6",
"JET7",
"JET8"
];

    _pilots = [
"HELI1",
"HELI2",
"HELI3",
"HELI4",
"HELI5",
"HELI6",
"HELI7",
"HELI8"
];

    _crewmen = [
"CR1",
"CR2",
"CR3",
"CR4",
"CR5",
"CR6",
"CR7",
"CR8"

];

    _ofppilots = [
"OFPJET1",
"OFPJET2",
"OFPJET3",
"OFPJET4"
];

    _ofpcrewmen = [
"OFPCR1",
"OFPCR2",
"OFPCR3",
"OFPCR4",
"OFPCR5",
"OFPCR6",
"OFPCR7",
"OFPCR8"

];

    _ofpjetpilot = [
"OFPJET1",
"OFPJET2",
"OFPJET3",
"OFPJET4",
"OFPJET5",
"OFPJET6",
"OFPJET7",
"OFPJET8"

];


    _aircraft = [

///unsung///
"uns_A4B_skyhawk_BMB",
"uns_A4B_skyhawk_CAP",
"uns_A4B_skyhawk_CAS",
"uns_A4B_skyhawk_MR",
"uns_A4E_skyhawk_AGM",
"uns_A4E_skyhawk_BMB",
"uns_A4E_skyhawk_CAP",
"uns_A4E_skyhawk_CAS",
"uns_A4E_skyhawk_CBU",
"uns_A4E_skyhawk_HBMB",
"uns_A4E_skyhawk_LRBMB",
"uns_A4E_skyhawk_MR",
"uns_A4E_skyhawk_SEAD",
"uns_A6_Intruder_AGM",
"uns_A6_Intruder_BMB",
"uns_A6_Intruder_CAS",
"uns_A6_Intruder_CBU",
"uns_A6_Intruder_CAP",
"uns_A6_Intruder_GBU",
"uns_A6_Intruder_HBMB",
"uns_A6_Intruder_LBMB",
"uns_A6_Intruder_LRBMB",
"uns_A6_Intruder_MBMB",
"uns_A6_Intruder_MR",
"uns_A6_Intruder_SEAD",
"uns_A7N_AGM",
"uns_A7N_BMB",
"uns_A7N_CAP",
"uns_A7N_CAS",
"uns_A7N_CBU",
"uns_A7N_GBU",
"uns_A7N_HBMB",
"uns_A7N_LBMB",
"uns_A7N_LRBMB",
"uns_A7N_MBMB",
"uns_A7N_MR",
"uns_A7N_SEAD",
"uns_F4J_AGM",
"uns_F4J_BMB",
"uns_F4J_CAP",
"uns_F4J_CAS",
"uns_F4J_CBU",
"uns_F4J_GBU",
"uns_F4J_HBMB",
"uns_F4J_LBMB",
"uns_F4J_LRBMB",
"uns_F4J_MBMB",
"uns_F4J_MR",
"uns_F4J_SEAD",
"uns_A1J_AGM",
"uns_A1J_BMB",
"uns_A1J_CAS",
"uns_A1J_CBU",
"uns_A1J_CMU",
"uns_A1J",
"uns_A1J_HBMB",
"uns_A1J_HCAS",
"uns_A1J_LBMB",
"uns_A1J_MR",
"uns_A7_AGM",
"uns_A7_BMB",
"uns_A7_CAP",
"uns_A7_CAS",
"uns_A7_CBU",
"uns_A7_GBU",
"uns_A7_HBMB",
"uns_A7_LBMB",
"uns_A7_LRBMB",
"uns_A7_MBMB",
"uns_A7_MBMB",
"uns_A7_SEAD",
"uns_F4E_CHICO",
"uns_f100b_AGM",
"uns_f100b_BMB",
"uns_f100b_CAP",
"uns_f100b_CAS",
"uns_f100b_CBU",
"uns_f100b_HBMB",
"uns_f100b_LBMB",
"uns_f100b_LRBMB",
"uns_f100b_MBMB",
"uns_f100b_MR",
"uns_f100b_SEAD",
"uns_f105D_AGM",
"uns_f105D_BMB",
"uns_f105D_CAP",
"uns_f105D_CAS",
"uns_f105D_CBU",
"uns_f105D_HCAS",
"uns_f105D_MR",
"uns_f105F_AGM",
"uns_f105F_BMB",
"uns_f105F_GBU",
"uns_f105F_MR",
"uns_f105F_SEAD",
"UNS_F111_D_AGM",
"UNS_F111_D_BMB",
"UNS_F111_D_CAP",
"UNS_F111_D_CAS",
"UNS_F111_D_CBU",
"UNS_F111_D_HBMB",
"UNS_F111_D_HCAS",
"UNS_F111_D_LBMB",
"UNS_F111_D_LGB",
"UNS_F111_D_MR",
"UNS_F111_D_SEAD",
"uns_F4E_AGM",
"uns_F4E_BMB",
"uns_F4E_CAP",
"uns_F4E_CAS",
"uns_F4E_CBU",
"uns_F4E_GBU",
"uns_F4E_HBMB",
"uns_F4E_LBMB",
"uns_F4E_LRBMB",
"uns_F4E_MBMB",
"uns_F4E_MR",
"uns_F4E_SEAD",
"UNS_skymaster_CBU",
"UNS_skymaster_CAS",
"UNS_skymaster_FAC",
"UNS_skymaster_OBS"


];

    _usafc130 = [

///unsung///
"uns_c1a6",
"uns_c1a7cargo",
"uns_c1a3cargo",
"uns_c1a5cargo",
"uns_c1a5cargo",
"uns_c1a4cargo",
"uns_c1a2cargo",
"UNS_Hawkeye",
"uns_AC47",
"uns_AC47_cias"

];

    _gunship = [

///unsung///
"uns_a3avah1",
"uns_a3avah11",
"uns_a3avah2",
"uns_a3avah4",
"uns_a3avah6",
"uns_a3a",
"uns_a3bvah1",
"uns_a3bvah11",
"uns_a3bvah2",
"uns_a3bvah4",
"uns_a3bvah6",
"uns_a3b",
"uns_a3bcamo1"


];

    _heli = [

///unsung///
"uns_H13_gunship_CAV",
"uns_H13_gunship_Army",
"uns_h21c",
"uns_h21c_mg",
"uns_ch34_army",
"uns_ch34_army_M60",
"uns_H13_amphib_CAV",
"uns_H13_amphib_Army",
"uns_H13_transport_CAV",
"uns_H13_transport_Army",
"UNS_UH1B_TOW",
"uns_UH1C_M21_M200_1AC",
"uns_UH1C_M21_M158",
"uns_UH1C_M21_M158_M134",
"uns_UH1C_M21_M200",
"UNS_UH1C_M3_ARA",
"uns_UH1C_M6_M200_1AC",
"uns_UH1C_M6_M158",
"uns_UH1C_M6_M200",
"uns_UH1C_M6_M200_M134",
"uns_UH1D_m60",
"uns_ch34_sog",
"uns_ch34_sog_M60",
"uns_H13_gunship_USN",
"uns_H13_amphib_USN",
"uns_H13_transport_USN",
"uns_H13_gunship_USAF",
"uns_H13_amphib_USAF",
"uns_H13_transport_USAF",
"uns_UH1F_M6_M158_Hornet",
"uns_UH1F_M21_M158_Hornet",
"uns_H13_gunship_USMC",
"uns_H13_amphib_USMC",
"uns_H13_transport_USMC",
"uns_ch34_USMC",
"uns_ch34_USMC_M60",
"uns_H13_medevac_CAV",
"uns_H13_medevac_Army",
"uns_H13_medevac_USAF",
"uns_H13_medevac_USMC",
"uns_H13_medevac_USN",
"uns_uh1d_med"



];

    _attackheli = [

///unsung///
"UNS_AH1G_FFAR",
"UNS_AH1G_M158",
"UNS_AH1G_M195",
"UNS_AH1G",
"UNS_AH1G_SUU11"
];
    _armor = [
///RHS///
"uns_m48a3",
"uns_m551",
"uns_M67A"
];

    _mh47ehh60g = [
///unsung///
"uns_ch47_m60_army",
"uns_ch47_m60_1AC",
"uns_ch47_m60_usmc",
"uns_ch47a_medevac"
];

    _cupch47 = [
///unsung///
"uns_ach47_m134",
"uns_ach47_m200"


];

    _ofpheli = [

    ///RHS///

];

    _ofparmor = [

    ///RHS///




];

    _apc = [

];

    _ofpjet = [
    ///RHS///

];



_unit = player;
_uniform = uniform player;
_gear = [

///Head gear///
"UNS_JP_Helmet",
"UNS_JP_Helmet2"

///Uniform///

];

_crewgear = [
"UNS_TC_1"
];
_heligear = [
"UNS_HP_Helmet"
];



    //Wait until player is fully loaded
    waitUntil {player == player};

    //Check if player is pilot or crewman, you can add more classes into arrays
    _iampilot = ((headgear player in _heligear)&&(vehicle player == player));
    _iamjetpilot = ((headgear player in _gear)&&(vehicle player == player));
    _iamcrewman = ((headgear player in _crewgear)&&(vehicle player == player));
    _iamofppilot = ({str player == _x} count _ofppilots) > 0;
    _iamofpcrewman = ({str player == _x} count _crewmen) > 0;
    _iamofpjetpilot = ({str player == _x} count _ofpjetpilot) > 0;

    //Never ending cycle
    while{true} do {
        //Wait until player's vehicle changed
        _oldvehicle = vehicle player;
        waitUntil {vehicle player != _oldvehicle};

        //If player is inside vehicle and not on foot
        if(vehicle player != player) then {
            _veh = vehicle player;

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _aircraft) > 0 && (!(headgear player in _gear))or(vehicle player == player))   then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _usafc130) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [1]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [0]];
                if(player in _forbidden) then {
                    systemChat "あなたはパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _gunship) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [1]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [0]] + [_veh turretUnit [2]] + [_veh turretUnit [3]];
                if(player in _forbidden) then {
                    systemChat "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _heli) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _attackheli) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [driver _veh] + [gunner _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _mh47ehh60g) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [driver _veh] + [_veh turretUnit [0]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

                        //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _cupch47) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [driver _veh] + [_veh turretUnit [5]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _ofpheli) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    systemChat "You are not pilot and not allowed to pilot or gun this helicopter";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if(({typeOf _veh == _x} count _ofparmor) > 0 && !_iamofpcrewman) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if(({typeOf _veh == _x} count _apc) > 0 && !_iamcrewman) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if((({typeOf _veh == _x} count _armor) > 0 && !_iamcrewman)&& (!(headgear player in _crewgear))or(vehicle player == player)) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({typeOf _veh == _x} count _ofpjet) > 0 && !_iamofpjetpilot) then {
                //Forbidden seats: gunner, driver
                 _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _veh];
                };
            };

        };
    };
};
