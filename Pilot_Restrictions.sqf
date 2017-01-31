
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
            if(({_veh isKindOf _x} count _plane) > 0 && (!(headgear player in _gear))or(vehicle player == player))   then {
                
                
                _forbidden = [_veh turretUnit [0]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            
            ///Gunship///
            if(({_veh isKindOf _x} count _gunship) > 0 && (!(headgear player in _gear))or(vehicle player == player)) then {
                
                _forbidden = [_veh turretUnit [1]] + [gunner _veh] + [driver _veh] + [_veh turretUnit [0]] + [_veh turretUnit [2]] + [_veh turretUnit [3]];
                if(player in _forbidden) then {
                    systemChat "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            ///Chopper///
            if(({_veh isKindOf _x} count _chopper)  > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                
                _forbidden = [_veh turretUnit [0]] + [driver _veh];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席とコパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            ///Attack Chopper///
            if(({_veh isKindOf _x} count _attackchopper) > 0 && (!(headgear player in _heligear))or(vehicle player == player)) then {
                
                _forbidden = [_veh turretUnit [0]] + [driver _veh] + [gunner _veh] + [_veh turretUnit [2]];
                if(player in _forbidden) then {
                    systemChat "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _veh];
                };
           };           

            ///Crewman///
            if((({_veh isKindOf _x} count _armor) > 0 && !_iamcrewman)&& (!(headgear player in _crewgear))or(vehicle player == player)) then {
                
                _forbidden = [gunner _veh] + [driver _veh] + [commander _veh] + [_veh turretUnit [0]] + [_veh turretUnit [0,1]] + [_veh turretUnit [0,2]];
                if(player in _forbidden) then {
                    systemChat "あなたはクルーではないので運転席やガンナー席コマンダー席に搭乗できません";
                    player action ["getOut", _veh];
                };
            };

            

        };
    };
};
