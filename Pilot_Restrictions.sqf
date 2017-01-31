///Pilot Restrictions V2///Script by Rodeostar42///

true spawn {


///Vehicles///
    _plane = [

];

    _gunship = [

];

    _chopper = [
"Helicopter_Base_F",
"Heli_Light_01_base_F"
];

    _attackchopper = [
"Helicopter_Base_H"
];

    _armor = [

];


/////////////////
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




    waitUntil {player == player};


    _chopperpilot = ((headgear player in _heligear)&&(vehicle player == player));
    _jetpilot = ((headgear player in _gear)&&(vehicle player == player));
    _crewman = ((headgear player in _crewgear)&&(vehicle player == player));



    while{true} do {

        _oldvehicle = vehicle player;
        waitUntil {vehicle player != _oldvehicle};


        if(vehicle player != player) then {
            _unit = vehicle player;

            ///Plane///
            if(({_unit isKindOf _x} count _plane) > 0 && (!(headgear player in _gear))or(vehicle player == player))   then {


                _sit = [_unit turretUnit [0]] + [gunner _unit] + [driver _unit] + [_unit turretUnit [2]];
                if(player in _sit) then {
                    systemChat "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _unit];
                };
            };


            ///Gunship///
            if(({_unit isKindOf _x} count _gunship) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {

                _sit = [_unit turretUnit [1]] + [gunner _unit] + [driver _unit] + [_unit turretUnit [0]] + [_unit turretUnit [2]] + [_unit turretUnit [3]];
                if(player in _sit) then {
                    systemChat "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
            };

            ///Chopper///
            if(({_unit isKindOf _x} count _chopper)  > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {

                _sit = [_unit turretUnit [0]] + [driver _unit];
                if(player in _sit) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
            };

            ///Attack Chopper///
            if(({_unit isKindOf _x} count _attackchopper) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {

                _sit = [_unit turretUnit [0]] + [driver _unit] + [gunner _unit] + [_unit turretUnit [2]];
                if(player in _sit) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
           };

            ///Crewman///
            if((({_unit isKindOf _x} count _armor) > 0 && !_crewman)&& (!(headgear player in _crewgear))or(vehicle player == player)) then {

                _sit = [gunner _unit] + [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
                if(player in _sit) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _unit];
                };
            };



        };
    };
};
