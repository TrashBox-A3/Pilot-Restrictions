///Pilot Restrictions V2///Script by Rodeostar42///

    true spawn {


    ///Vehicles///
    _plane = ["Plane_Base_F"];

    _gunship = ["Plane_Base_F"];

    _chopper = ["Helicopter"];

    _attackchopper = ["Helicopter"];

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
            if((({_unit isKindOf _x} count _plane) > 0 ) && (!_jetpilot))   then {

                _sit = [driver _unit];
                if(player in _sit) then {
                    hint "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _unit];
                };
                _co = [_unit turretUnit [0]] + [gunner _unit] + [_unit turretUnit [2]];
                if((player in _co)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                 {hint 'あなたはパイロットでは無いのでこの操作は不能です';true}"];
                showHUD [true,false,false,false,false,true,false,true,false];

                };
               };

            ///Gunship///
            if((({_unit isKindOf _x} count _gunship) > 0 ) && (!_jetpilot)) then {

                _sitg = [driver _unit];
                if(player in _sitg) then {
                    hint "あなたはパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _cog = [_unit turretUnit [1]] + [gunner _unit] + [driver _unit] + [_unit turretUnit [0]] + [_unit turretUnit [2]] + [_unit turretUnit [3]];
                if((player in _cog)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                 {hint 'あなたはパイロットでは無いのでこの操作は不能です';true}"];
                showHUD [true,false,false,false,false,true,false,true,false];

                };
               };

            ///Chopper///
            if((({_unit isKindOf _x} count _chopper)  > 0 ) && (!_chopperpilot)) then {

                _sit =  [driver _unit];
                if(player in _sit) then {
                    hint "あなたはヘリコプターパイロットではないのでパイロット席に搭乗できません";
                    showHUD [true,false,false,false,false,true,false,true,false];
                    player action ["getOut", _unit];
                  };
                    _co = [_unit turretUnit [0]];
                    if((player in _co)) then {
                    inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                     {hint 'あなたはヘリパイロットでは無いのでこの操作は不能です';true}"];
                    showHUD [true,false,false,false,false,true,false,true,false];

                }
              else
                {
                   _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true];},{true}] call ace_interact_menu_fnc_createAction;
                   [player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToObject;
                  };
                 };

            ///Attack Chopper///
            if((({_unit isKindOf _x} count _attackchopper) > 0 ) && (!_chopperpilot)) then {

                _sita = [driver _unit];
                if(player in _sita) then {
                    hint "あなたはヘリコプターパイロットではないのでパイロット席やガンナー席コパイロット席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _coa = [_unit turretUnit [0]];
                if((player in _coa)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                 {hint 'あなたはヘリパイロットでは無いのでこの操作は不能です';true}"];
                showHUD [true,false,false,false,false,true,false,true,false];

              };
             };

            ///Crewman///
            if((({_unit isKindOf _x} count _armor) > 0 ) && (!_crewman)) then {

                _sitt = [driver _unit];
                if(player in _sitt) then {
                showHUD [true,false,false,false,false,true,false,true,false];
                    hint "あなたはクルーではないので運転席やガンナー席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _cot = [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
                if((player in _cot)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToDriver')) then
                 {hint 'あなたはタンククルーでは無いのでこの操作は不能です';true}"];
                showHUD [true,false,false,false,false,true,false,true,false];

                };
              };


            }
              else
            {
            if (vehicle player != _oldvehicle) then {

                            _unit = vehicle player;
                            showHUD [true,true,true,true,true,true,true,true,true];
                            systemChat "Loop Restart";
                            inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or
                            (_this select 3 == 'MoveToPilot')or
                            (_this select 3 == 'MoveToDriver')) then {;false}"];

                    _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true];},{true}] call ace_interact_menu_fnc_createAction;
                    [vehicle player, 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_removeActionFromObject;

                      }
                     };
                    };
                   };
