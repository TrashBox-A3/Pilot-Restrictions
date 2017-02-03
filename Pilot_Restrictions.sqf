///Pilot Restrictions V2///Script by Rodeostar42///

    true spawn {

    ///Vehicles///
    _plane = ["Plane_Base_F"];

<<<<<<< HEAD
    ///Vehicles///
    _plane = ["Plane_Base_F"];

    _gunship = ["Plane_Base_F"];

    _chopper = ["Helicopter"];

    _attackchopper = ["Helicopter"];
=======
    _gunship = ["Plane_Base_F"];

    _chopper=["Helicopter","Helicopter_Base_F","Heli_Light_01_base_F"];

    _attackchopper = ["Helicopter_Base_H"];
>>>>>>> origin/v2/Dev

    _armor = ["Tank"];

    /////////////////
    _gear = ["UNS_JP_Helmet","UNS_JP_Helmet2"];

    _crewgear = ["UNS_TC_1"];

    _heligear = ["UNS_HP_Helmet"];


    waitUntil {player == player};


    _chopperpilot = ((headgear player in _heligear)&&(vehicle player == player));
    _jetpilot = ((headgear player in _gear)&&(vehicle player == player));
    _crewman = ((headgear player in _crewgear)&&(vehicle player == player));



    while{true} do {

        _oldvehicle = vehicle player;
        waitUntil {((vehicle player != _oldvehicle))};


        if(vehicle player != player) then {
            _unit = vehicle player;

            ///Plane///
            if((({_unit isKindOf _x} count _plane) > 0 && !_jetpilot)&& (!(headgear player in _gear))or(vehicle player == player))   then {

                _sit = [driver _unit];
                if(player in _sit) then {
                    hint "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _unit];
                };
                _co = [_unit turretUnit [0]] + [gunner _unit] + [_unit turretUnit [2]];
                if((player in _co)) then {
                _unit enableCopilot false;
                showHUD [true,false,false,false,false,true,false,true,false];

                inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToPilot') then {hint 'パイロットでは無い';true}"];
                };
               };

            ///Gunship///
            if((({_unit isKindOf _x} count _gunship) > 0 && !_jetpilot)&& (!(headgear player in _gear))) then {

                _sitg = [driver _unit];
                if(player in _sitg) then {
                    hint "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _cog = [_unit turretUnit [1]] + [gunner _unit] + [driver _unit] + [_unit turretUnit [0]] + [_unit turretUnit [2]] + [_unit turretUnit [3]];
                if((player in _cog)) then {
                _unit enableCopilot false;
                showHUD [true,false,false,false,false,true,false,true,false];

                inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToPilot') then {hint 'パイロットでは無い';true}"];
                };
               };

            ///Chopper///
            if((({_unit isKindOf _x} count _chopper)  > 0 && !_chopperpilot) && (!(headgear player in _heligear))) then {

                _sit =  [driver _unit];
                if(player in _sit) then {
                    hint "あなたはヘリコプターパイロットではないのでパイロット席に搭乗できません";
                    showHUD [true,false,false,false,false,true,false,true,false];
                    player action ["getOut", _unit];
                  };
                    _co = [_unit turretUnit [0]];
                    if((player in _co)) then {
                    _unit enableCopilot false;
                    showHUD [true,false,false,false,false,true,false,true,false];

                    inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToPilot') then {hint 'パイロットでは無いので移動できません';true}"];
                  };
                 };

            ///Attack Chopper///
            if((({_unit isKindOf _x} count _attackchopper) > 0 && !_chopperpilot)&& (!(headgear player in _heligear))) then {

                _sita = [driver _unit];
                if(player in _sita) then {
                    hint "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _coa = [_unit turretUnit [0]];
                if((player in _coa)) then {
                _unit enableCopilot false;
                showHUD [true,false,false,false,false,true,false,true,false];

                inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToPilot') then {hint 'パイロットでは無い';true}"];
              };
             };

            ///Crewman///
            if((({_unit isKindOf _x} count _armor) > 0 && !_crewman)&& (!(headgear player in _crewgear))) then {

                _sitt = [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
                if(player in _sitt) then {
                showHUD [true,false,false,false,false,true,false,true,false];
                    hint "あなたはクルーではないので運転席やガンナー席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _cot = [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
                if((player in _cot)) then {
                _unit enableCopilot false;
                showHUD [true,false,false,false,false,true,false,true,false];

                inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToDriver') then {hint 'タンクドライバーでは無い';true}"];
                inGameUISetEventHandler ["Action", "if (_this select 3 == 'moveToTurret [0,1] ') then {hint 'タンクガンナーでは無い';true}"];
                };
              };


            }
              else
            {
            if (vehicle player != _oldvehicle) then {

                            _unit = vehicle player;
                            showHUD [true,true,true,true,true,true,true,true,true];
                            systemChat "地面";

                            inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToPilot') then {hint 'Move Pilot Seat';false}"];
                            inGameUISetEventHandler ["Action", "if (_this select 3 == 'MoveToDriver') then {hint 'Move Driver Seat';false}"];
                            if (!isCopilotEnabled _unit) then {
                                _unit enableCopilot true;
                            };
                      }
                     };
                    };
                   };
