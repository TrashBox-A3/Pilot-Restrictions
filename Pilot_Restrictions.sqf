///Pilot Restrictions V2///Script by Rodeostar42///

    true spawn {


    ///Vehicles///
    _plane = ["Plane_Base_F"];

    _chopper = ["Helicopter"];

    _armor = ["Tank"];

    /////////////////
    _gear = ["UNS_JP_Helmet","UNS_JP_Helmet2"];

    _crewgear = ["UNS_TC_1"];

    _heligear = ["UNS_HP_Helmet"];


    waitUntil {player == player};

    while{true} do {

        _oldvehicle = vehicle player;
        waitUntil {((vehicle player != _oldvehicle))};


        if(vehicle player != player) then {

            _unit = vehicle player;

            _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true],hint "Connected"},{true}] call ace_interact_menu_fnc_createAction;
            [(typeOf _unit), 1, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_removeActionFromClass;


            ///Plane///
            if(({_unit isKindOf _x} count _plane) > 0  && (!(headgear player in _gear))or(vehicle player == player)) then {
                showHUD [true,false,false,false,false,false,false,true,false];
                _sit = [driver _unit];
                if(player in _sit) then {
                    hint "あなたはジェットパイロットではないので搭乗できません";
                    player action ["getOut", _unit];
                };
                _co = [_unit turretUnit [1]] + [gunner _unit] + [_unit turretUnit [0]] + [_unit turretUnit [2]] + [_unit turretUnit [3]];
                if((player in _co)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                 {hint 'あなたはパイロットでは無いのでこの操作は無効です';true}"];
                };
               };

               if(({_unit isKindOf _x} count _plane)  > 0  && ((headgear player in _gear))) then {
               showHUD [true,false,false,false,false,false,false,true,false];
              _sit = [driver _unit] + [_unit turretUnit [1]] + [gunner _unit] + [_unit turretUnit [0]] + [_unit turretUnit [2]] + [_unit turretUnit [3]];
              if(player in _sit) then {
                _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true],hint "Connected"},{true}] call ace_interact_menu_fnc_createAction;
                [(typeOf _unit), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
              };
             };

            ///Chopper///
            if(({_unit isKindOf _x} count _chopper)  > 0  && (!(headgear player in _heligear))or(vehicle player == player)) then {
                showHUD [true,false,false,false,false,false,false,true,false];

                _sitc =  [driver _unit];
                if(player in _sitc) then {
                    hint "あなたはヘリコプターパイロットではないのでパイロット席に搭乗できません";

                    player action ["getOut", _unit];
                  };
                    _coc = [_unit turretUnit [0]];
                    if((player in _coc)) then {
                     allowFire = false;
                    inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToPilot')) then
                     {hint 'あなたはヘリパイロットでは無いのでこの操作は無効です';true}"];
                  };
                 };

                 if(({_unit isKindOf _x} count _chopper)  > 0  && ((headgear player in _heligear))) then {
                 showHUD [true,false,false,false,false,false,false,true,false];
                _sitc = [_unit turretUnit [0]] + [driver _unit];
                if(player in _sitc) then {
                _action = ["HUDAction 1","Connect HUD",'',{showHUD [true,true,true,true,true,true,true,true,true],hint "Connected"},{true}] call ace_interact_menu_fnc_createAction;
                [(typeOf _unit), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
                };
               };


            ///Crewman///
            if(({_unit isKindOf _x} count _armor) > 0  && (!(headgear player in _crewgear))or(vehicle player == player)) then {
                showHUD [true,false,false,false,false,false,false,true,false];
                _sitt = [driver _unit];
                if(player in _sitt) then {

                    hint "あなたはクルーではないので運転席に搭乗できません";
                    player action ["getOut", _unit];
                };
                _cot = [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
                if((player in _cot)) then {
                inGameUISetEventHandler ["Action", "if ((_this select 3 == 'TakeVehicleControl') or (_this select 3 == 'MoveToDriver')or
                (_this select 3 == 'moveToTurret [0,1]')) then
                 {hint 'あなたはタンククルーでは無いのでこの操作は無効です';true}"];
                };
              };

              if(({_unit isKindOf _x} count _armor)  > 0  && ((headgear player in _crewgear))) then {
              showHUD [true,false,false,false,false,false,false,true,false];
             _sitt = [driver _unit] + [commander _unit] + [_unit turretUnit [0]] + [_unit turretUnit [0,1]] + [_unit turretUnit [0,2]];
             if(player in _sitt) then {
               _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true],hint "Connected"},{true}] call ace_interact_menu_fnc_createAction;
               [(typeOf _unit), 1, ["ACE_SelfActions"], _action] call ace_interact_menu_fnc_addActionToClass;
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
                            (_this select 3 == 'MoveToDriver')or
                            (_this select 3 == 'moveToTurret [0,1]')) then {;false}"];
                            _action = ['HUDAction 1','Connect HUD','',{showHUD [true,true,true,true,true,true,true,true,true],hint "Connected"},{true}] call ace_interact_menu_fnc_createAction;
                            [(typeOf _unit), 1, ['HUDAction 1','Connect HUD'], _action] call ace_interact_menu_fnc_removeActionFromClass;
                      }
                     };
                    };
                   };
