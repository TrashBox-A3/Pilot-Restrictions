
true spawn {





    _aircraft = [

];

    _usafc130 = [

];

    _gunship = [

];

    _heli = [
"Helicopter_Base_F",
"Heli_Light_01_base_F"
];

    _attackheli = [
"Helicopter_Base_H"
];
    _armor = [

];

    _mh47ehh60g = [

];

    _cupch47 = [



];

    _ofpheli = [



];

    _ofparmor = [






];

    _apc = [

];

    _ofpjet = [


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
            if(({_veh isKindOf _x} count _aircraft) > 0 && (!(headgear player in _gear))or(vehicle player == player))   then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _usafc130) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [1]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [0]];
                if(player in _forbidden) then {
                    systemChat "あなたはパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _gunship) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [1]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [0]] + [_veh turretUnit [2]] + [_veh turretUnit [3]];
                if(player in _forbidden) then {
                    systemChat "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _heli)  > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _attackheli) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [driver _veh] + [gunner _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _mh47ehh60g) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [driver _veh] + [_veh turretUnit [0]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

                        //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _cupch47) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [driver _veh] + [_veh turretUnit [5]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _ofpheli) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                //Forbidden seats: copilot, gunner, pilot
                _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    systemChat "You are not pilot and not allowed to pilot or gun this helicopter";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if(({_veh isKindOf _x} count _ofparmor) > 0 && !_iamofpcrewman) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if(({_veh isKindOf _x} count _apc) > 0 && !_iamcrewman) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is armor and player is not crewman
            if((({_veh isKindOf _x} count _armor) > 0 && !_iamcrewman)&& (!(headgear player in _crewgear))or(vehicle player == player)) then {
                //Forbidden seats: gunner, driver
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            //Check if vehicle is aircraft and player is not pilot
            if(({_veh isKindOf _x} count _ofpjet) > 0 && !_iamofpjetpilot) then {
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
