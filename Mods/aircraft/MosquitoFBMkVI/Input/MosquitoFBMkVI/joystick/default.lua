local cockpit = folder .. "../../../Cockpit/Scripts/"
dofile(cockpit .. "devices.lua")
dofile(cockpit .. "command_defs.lua")



local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")
join(res.keyCommands, {

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF begin additional commands
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_4, up = device_commands.Button_4, value_down = 1.0,  value_up =  0.0, name = _("Gear Lever UP/NEUTRAL"),		category = {_('_My Buttons')}},
{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_5, up = device_commands.Button_4, value_down = 1.0,  value_up =  0.0, name = _("Gear Lever DOWN/NEUTRAL"),	category = {_('_My Buttons')}},

{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_6, up = device_commands.Button_6, value_down = 1.0,  value_up =  0.0, name = _("Flaps UP/NEUTRAL"),   		category = {_('_My Buttons')}},
{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_7, up = device_commands.Button_6, value_down = 1.0,  value_up =  0.0, name = _("Flaps DOWN/NEUTRAL"),   		category = {_('_My Buttons')}},

{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_8, up = device_commands.Button_8, value_down = 1.0,  value_up =  0.0, name = _("Bomb Doors UP/NEUTRAL"),   	category = {_('_My Buttons')}},
{cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_9, up = device_commands.Button_8, value_down = 1.0,  value_up =  0.0, name = _("Bomb Doors DOWN/NEUTRAL"),   category = {_('_My Buttons')}},

-- WEAPONS
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_3,  up = device_commands.Button_3,  value_down = 1.0,  value_up =  0.0, name = _("Gun firing master switch ON/OFF"),	category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_63, up = device_commands.Button_63, value_down = 1.0,  value_up =  0.0, name = _("Bomb station #1 Power ON/OFF"),		category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_65, up = device_commands.Button_65, value_down = 1.0,  value_up =  0.0, name = _("Bomb station #2 Power ON/OFF"),		category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_67, up = device_commands.Button_67, value_down = 1.0,  value_up =  0.0, name = _("Bomb station #3 Power ON/OFF"),		category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_69, up = device_commands.Button_69, value_down = 1.0,  value_up =  0.0, name = _("Bomb station #4 Power ON/OFF"),		category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_71, up = device_commands.Button_71, value_down = 1.0,  value_up =  0.0, name = _("Nose Fuze Switch ON/OFF"),   			category = {_('_My Buttons')}},
{cockpit_device_id = devices.WEAPONS, down = device_commands.Button_73, up = device_commands.Button_73, value_down = 1.0,  value_up =  0.0, name = _("Tail Fuze Switch ON/OFF"),   			category = {_('_My Buttons')}},

-- ENGINE_CONTROLS
{cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_9, up = device_commands.Button_9, value_down = 1.0,  value_up =  0.0, name = _("Electric Power Master Switch ON/OFF"),   category = {_('_My Buttons')}},

-- SWITCHBOARD
{cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_1,  up = device_commands.Button_1,  value_down = 1.0,  value_up =  0.0, name = _("Compass Switch 1 ON/OFF"),					category = {_('_My Buttons')}},
{cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_2,  up = device_commands.Button_2,  value_down = 1.0,  value_up =  0.0, name = _("Compass Switch 2 ON/OFF"),   					category = {_('_My Buttons')}},
{cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_62, up = device_commands.Button_62, value_down = 1.0,  value_up =  0.0, name = _("Radiator Flaps Switch Left ON/OFF"),			category = {_('_My Buttons')}},
{cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_64, up = device_commands.Button_64, value_down = 1.0,  value_up =  0.0, name = _("Radiator Flaps Switch Right ON/OFF"),			category = {_('_My Buttons')}},
{cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_66, up = device_commands.Button_66, value_down = 1.0,  value_up =  0.0, name = _("Tropical Air Filter Switch Right ON/OFF"),	category = {_('_My Buttons')}},

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF end additional commands
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Tertiary -----------------------------------------------------------------------------
{                                                           down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{                                                           down = iCommandEnginesStop,  name = _('Stop Procedure'),  category = _('Cheat')},
{                                                           down = iCommand_ExplorationStart,                                      name = _('Enable visual recon mode'),               category = _('View Cockpit')},
{                                                           down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
-- --------------------------------------------------------------------------------------



-- Gameplay -----------------------------------------------------------------------------
{                                                           down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{                                                           down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{                                                           down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{                                                           down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
-- --------------------------------------------------------------------------------------



-- View Cockpit -------------------------------------------------------------------------
{                                                           down = iCommandViewCockpitChangeSeat, value_down = 1, name = _("Occupy Seat 1"), category = {_("View Cockpit"), _("Crew Management")}},
{                                                           down = iCommandViewCockpitChangeSeat, value_down = 2, name = _("Occupy Seat 2"), category = {_("View Cockpit"), _("Crew Management")}},
{                                                           down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},
{                                                           down = iCommandCockpitShowPilotOnOff, name = _('Show pilot body'), category = _('General')},
-- --------------------------------------------------------------------------------------



-- Communications -----------------------------------------------------------------------
{                                                           down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk (call radio menu)'), category = {_("SCR-522 Radio Set"), _("Communications")}},

-- VoIP radio global command
-- in case you need to open commands in the cockpit
{down = iCommandVoIPRadioPushToTalkEnableDisableVoice, up = iCommandVoIPRadioPushToTalkEnableDisableVoice, value_down = 1.0, value_up = 0.0, name = _('COMM Push to talk (VOIP)'), category = {_("SCR-522 Radio Set"), _("Communications")}},
--
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_1, value_down = 1.0, up = device_commands.Button_1, value_up = 0.0, name = _("Input.Generic.T1154.key"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
-- --------------------------------------------------------------------------------------



-- Flight Controls ----------------------------------------------------------------------
-- Steer Controls
{                                                           down = iCommandPlaneUpStart,          up = iCommandPlaneUpStop,                                                                           name = _("Flight NOSE DOWN"),            category = _("Flight Control")},
{                                                           down = iCommandPlaneDownStart,        up = iCommandPlaneDownStop,                                                                         name = _("Flight NOSE UP"),              category = _("Flight Control")},
{                                                           down = iCommandPlaneLeftStart,        up = iCommandPlaneLeftStop,                                                                         name = _("Flight BANK LEFT"),            category = _("Flight Control")},
{                                                           down = iCommandPlaneRightStart,       up = iCommandPlaneRightStop,                                                                        name = _("Flight BANK RIGHT"),           category = _("Flight Control")},
{                                                           down = iCommandPlaneLeftRudderStart,  up = iCommandPlaneLeftRudderStop,                                                                   name = _("Flight RUDDER LEFT"),          category = _("Flight Control")},
{                                                           down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop,                                                                  name = _("Flight RUDDER RIGHT"),         category = _("Flight Control")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_24, value_down = 1.0, up = device_commands.Button_24, value_up = 0.0, name = _("Flight RUDDER LEFT 1 NOTCH"),  category = _("Flight Control")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_25, value_down = 1.0, up = device_commands.Button_25, value_up = 0.0, name = _("Flight RUDDER RIGHT 1 NOTCH"), category = _("Flight Control")},

-- Generic Flight Controls
{                                                           down = iCommandPlaneEject, name = _("Bailout"), category = _("Systems")},
-- --------------------------------------------------------------------------------------



-- --------------------------------------------------------------------------------------
-- DH.98 Mosquito (FB Mk. VI) - specific controls start here ----------------------------
-- --------------------------------------------------------------------------------------



-- Main Pit -----------------------------------------------------------------------------
    -- Joystick(s) ----------------------------------------------------------------------
        -- Trigger Buttons
{                                                           down = iCommandPlaneFire,     up = iCommandPlaneFireOff,                                                                                name = _("Input.SpitfireLFMkIX.trigger_0"),     category = _("Stick")},
{                                                           down = iCommandPlanePickleOn, up = iCommandPlanePickleOff,                                                                              name = _("Input.SpitfireLFMkIX.trigger_1"),     category = _("Stick")},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_7, value_down = 1.0, up = device_commands.Button_7, value_up = 0.0,  name = _("Input.Mosquito.trigger_camera_bomb"), category = _("Stick")},
        -- Wheel Brakes Lever
{                                                           pressed = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff,                                                                   name = _("Input.Yak52.wheel_brakes"),           category = _("Stick")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_2, value_pressed = 1.0,                                          name = _("Input.Yak52.wheel_brakes_plus"),      category = _("Stick")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_2, value_pressed = -1.0,                                         name = _("Input.Yak52.wheel_brakes_minus"),     category = _("Stick")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_4, value_down = 1.0, up = device_commands.Button_4, value_up = 0.0, name = _("Input.Yak52.wheel_brakes_lock"),      category = _('Stick')},
    -- ----------------------------------------------------------------------------------



    -- Canopy Controls ------------------------------------------------------------------
---- Cockpit Open/Close Control
--{combos = {{key = 'C', reformers = {'LCtrl'}}},             down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.canopy_e_minus'),      category = _('Systems')},
--{combos = {{key = 'C', reformers = {'LShift'}}},            down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.canopy_e_plus'),       category = _('Systems')},
--{combos = {{key = 'C', reformers = {'LCtrl', 'LWin'}}},     down = device_commands.Button_19,                                 cockpit_device_id = devices.CONTROLS, value_down = -1.0,                 name = _('Input.P47.canopy_m_0'),          category = _('Systems')},
--{combos = {{key = 'C', reformers = {'LShift', 'LWin'}}},    down = device_commands.Button_19,                                 cockpit_device_id = devices.CONTROLS, value_down = 1.0,                  name = _('Input.P47.canopy_m_1'),          category = _('Systems')},
---- Cockpit Jettison Pull Handle
--{combos = {{key = 'C', reformers = {'LShift', 'LCtrl'}}},   down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Generic.canopy_jettison'), category = _('Systems')},
        -- Left Side Window Open/Close Control
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_22, value_down = 0.0,  name = _("Input.Mosquito.canopy_left_window_close"),  category = {_("Environment System"), _("Systems")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_22, value_down = 1.0,  name = _("Input.Mosquito.canopy_left_window_open"),   category = {_("Environment System"), _("Systems")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_23, value_down = 1.0,  name = _("Input.Mosquito.canopy_left_window"),        category = {_("Environment System"), _("Systems")}},
        -- Right Side Window Open/Close Control
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_63, value_down = 0.0,  name = _("Input.Mosquito.canopy_right_window_close"), category = {_("Environment System"), _("Systems")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_63, value_down = 1.0,  name = _("Input.Mosquito.canopy_right_window_open"),  category = {_("Environment System"), _("Systems")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_64, value_down = 1.0,  name = _("Input.Mosquito.canopy_right_window"),       category = {_("Environment System"), _("Systems")}},
    -- ----------------------------------------------------------------------------------



    -- Reflector Sight ------------------------------------------------------------------
        -- Reflector Sight Setter Rings -------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, pressed = device_commands.Button_46, value_pressed = 1.0,  name = _("Input.SpitfireLFMkIX.gun_sight_range_plus"),  category = {_("Weapons"), _("Gunsight")}},
{                                                           cockpit_device_id = devices.WEAPONS, pressed = device_commands.Button_46, value_pressed = -1.0, name = _("Input.SpitfireLFMkIX.gun_sight_range_minus"), category = {_("Weapons"), _("Gunsight")}},
{                                                           cockpit_device_id = devices.WEAPONS, pressed = device_commands.Button_49, value_pressed = 1.0,  name = _("Input.SpitfireLFMkIX.gun_sight_span_plus"),   category = {_("Weapons"), _("Gunsight")}},
{                                                           cockpit_device_id = devices.WEAPONS, pressed = device_commands.Button_49, value_pressed = -1.0, name = _("Input.SpitfireLFMkIX.gun_sight_span_minus"),  category = {_("Weapons"), _("Gunsight")}},
        -- ------------------------------------------------------------------------------

        -- Reflector Sight Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_10, value_pressed = -0.5, name = _("Input.Mosquito.reflector_sight_minus"), category = {_("Weapons"), _("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_10, value_pressed = 0.5,  name = _("Input.Mosquito.reflector_sight_plus"),  category = {_("Weapons"), _("Environment System"), _("Electrical System")}},
    -- ----------------------------------------------------------------------------------



    -- J.B.A. ---------------------------------------------------------------------------
        -- Master Gate & Magneto Switches -----------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_9,  value_down = 0.0,                                                 name = _("Input.Mosquito.master_switch_0"),        category = {_("Engine Controls"), _("Front Dash"), _("Systems"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_9,  value_down = 1.0,                                                 name = _("Input.Mosquito.master_switch_1"),        category = {_("Engine Controls"), _("Front Dash"), _("Systems"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_10, value_down = 1.0,                                                 name = _("Input.Mosquito.master_switch"),          category = {_("Engine Controls"), _("Front Dash"), _("Systems"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_1,  value_down = 0.0,                                                 name = _("Input.Generic.magneto_port0_0"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_1,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_port0_1"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_2,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_port0"),           category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_3,  value_down = 0.0,                                                 name = _("Input.Generic.magneto_port1_0"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_3,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_port1_1"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_4,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_port1"),           category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_5,  value_down = 0.0,                                                 name = _("Input.Generic.magneto_stbd0_0"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_5,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_stbd0_1"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_6,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_stbd0"),           category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_7,  value_down = 0.0,                                                 name = _("Input.Generic.magneto_stbd1_0"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_7,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_stbd1_1"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_8,  value_down = 1.0,                                                 name = _("Input.Generic.magneto_stbd1"),           category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_45, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.magneto0_0"),       category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_45, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.magneto0_1"),       category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_46, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.magneto0"),         category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_47, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.magneto1_0"),       category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_47, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.magneto1_1"),       category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_48, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.magneto1"),         category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Port Starter Switch Assembly -------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_52, value_down = 0.0,                                                 name = _("Input.Mosquito.port_starter_cover_0"),   category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_52, value_down = 1.0,                                                 name = _("Input.Mosquito.port_starter_cover_1"),   category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_53, value_down = 1.0,                                                 name = _("Input.Mosquito.port_starter_cover"),     category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_54, value_down = 1.0, up = device_commands.Button_54, value_up = 0.0, name = _("Input.Mosquito.port_starter"),           category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Starboard Starter Switch Assembly --------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_55, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_starter_cover_0"),   category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_55, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_starter_cover_1"),   category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_56, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_starter_cover"),     category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_57, value_down = 1.0, up = device_commands.Button_57, value_up = 0.0, name = _("Input.Mosquito.stbd_starter"),           category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Selection Starter Switch Assembly --------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_64, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.starter_cover_0"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_64, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.starter_cover_1"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_65, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.starter_cover"),    category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_66, value_down = 1.0, up = device_commands.Button_66, value_up = 0.0, name = _("Input.SpitfireLFMkIX.starter"),          category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Port Booster Switch Assembly -------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_58, value_down = 0.0,                                                 name = _("Input.Mosquito.port_booster_cover_0"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_58, value_down = 1.0,                                                 name = _("Input.Mosquito.port_booster_cover_1"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_59, value_down = 1.0,                                                 name = _("Input.Mosquito.port_booster_cover"),    category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_60, value_down = 1.0, up = device_commands.Button_60, value_up = 0.0, name = _("Input.Mosquito.port_booster"),          category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Starboard Booster Switch Assembly --------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_61, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_booster_cover_0"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_61, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_booster_cover_1"),  category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_62, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_booster_cover"),    category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_63, value_down = 1.0, up = device_commands.Button_63, value_up = 0.0, name = _("Input.Mosquito.stbd_booster"),          category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Selection Booster Switch Assembly --------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_67, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.booster_cover_0"), category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_67, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.booster_cover_1"), category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_68, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.booster_cover"),   category = {_("Engine Controls"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_69, value_down = 1.0, up = device_commands.Button_69, value_up = 0.0, name = _("Input.SpitfireLFMkIX.booster"),         category = {_("Engine Controls"), _("J.B.A.")}},
        -- ------------------------------------------------------------------------------

        -- Port Feathering Switch
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_81, value_down = 1.0, up = device_commands.Button_81, value_up = 0.0, name = _("Input.Mosquito.port_airscrew_feathering"), category = {_("Engine Controls"), _("J.B.A.")}},

        -- Starboard Feathering Switch
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_82, value_down = 1.0, up = device_commands.Button_82, value_up = 0.0, name = _("Input.Mosquito.stbd_airscrew_feathering"), category = {_("Engine Controls"), _("J.B.A.")}},

        -- Selection Feathering Switch
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_83, value_down = 1.0, up = device_commands.Button_83, value_up = 0.0, name = _("Input.Mosquito.airscrew_feathering"),      category = {_("Engine Controls"), _("J.B.A.")}},

        -- R.H. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_54, value_pressed = -0.5, name = _("Input.Mosquito.rh_flood_light_minus"), category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_54, value_pressed = 0.5,  name = _("Input.Mosquito.rh_flood_light_plus"),  category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},

        -- J.B.B. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_57, value_pressed = -0.5, name = _("Input.Mosquito.box_b_flood_light_minus"), category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_57, value_pressed = 0.5,  name = _("Input.Mosquito.box_b_flood_light_plus"),  category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},

        -- Port Radiator Flap Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_62, value_down = 0.0,  name = _("Input.Mosquito.lh_rad_flap_switch_0"),         category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_62, value_down = 1.0,  name = _("Input.Mosquito.lh_rad_flap_switch_1"),         category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_63, value_down = 1.0,  name = _("Input.Mosquito.lh_rad_flap_switch"),           category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},

        -- Starboard Radiator Flap Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_64, value_down = 0.0,  name = _("Input.Mosquito.rh_rad_flap_switch_0"),         category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_64, value_down = 1.0,  name = _("Input.Mosquito.rh_rad_flap_switch_1"),         category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_65, value_down = 1.0,  name = _("Input.Mosquito.rh_rad_flap_switch"),           category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},

        -- Tropical Air Filter Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_66, value_down = 0.0,  name = _("Input.Mosquito.tropical_air_filter_switch_0"), category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_66, value_down = 1.0,  name = _("Input.Mosquito.tropical_air_filter_switch_1"), category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_67, value_down = 1.0,  name = _("Input.Mosquito.tropical_air_filter_switch"),   category = {_("Engine Controls"), _("Electrical System"), _("J.B.A.")}},

        -- LR Pump Light Cover
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_65, value_down = 0.0,  name = _("Input.Mosquito.lr_fuel_pump_light_cover_close"), category = {_("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_65, value_down = 1.0,  name = _("Input.Mosquito.lr_fuel_pump_light_cover_open"),  category = {_("Electrical System"), _("J.B.A.")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_66, value_down = 1.0,  name = _("Input.Mosquito.lr_fuel_pump_light_cover"),       category = {_("Electrical System"), _("J.B.A.")}},
    -- ----------------------------------------------------------------------------------



    -- Main Panel -----------------------------------------------------------------------
        -- Repeater Compass
{                                                           cockpit_device_id = devices.REPEATER_COMPASS, pressed = device_commands.Button_2, value_pressed = -1.0, name = _("Input.Bf109K4.repeater_compass_minus"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.REPEATER_COMPASS, pressed = device_commands.Button_2, value_pressed = 1.0,  name = _("Input.Bf109K4.repeater_compass_plus"),  category = _("Front Dash")},

        -- Altimeter
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_11, value_pressed = -1.0, name = _("Input.SpitfireLFMkIX.altimeter_minus"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_11, value_pressed =  1.0, name = _("Input.SpitfireLFMkIX.altimeter_plus"),  category = _("Front Dash")},
        -- DI
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_14, value_pressed = -1.0, name = _("Input.SpitfireLFMkIX.di_minus"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_14, value_pressed =  1.0, name = _("Input.SpitfireLFMkIX.di_plus"),  category = _("Front Dash")},

        -- Undercarriage Indicator Blind
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_19, value_pressed =  1.0, name = _("Input.SpitfireLFMkIX.uc_blind_0"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_19, value_pressed = -1.0, name = _("Input.SpitfireLFMkIX.uc_blind_1"), category = _("Front Dash")},

        -- Clock ------------------------------------------------------------------------
            -- Clock Setter Pinion - Wind-up
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_2, value_pressed = -1.0, name = _("Input.Generic.clock_minus"),                   category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_2, value_pressed = 1.0,  name = _("Input.Generic.clock_plus"),                    category = _("Front Dash")},
            -- Clock Setter Pinion - Pull
{                                                           cockpit_device_id = devices.CLOCK, down = device_commands.Button_3, value_down = 1.0,        name = _("Input.Generic.clock_mode_1"),                  category = _('Front Dash')},
{                                                           cockpit_device_id = devices.CLOCK, down = device_commands.Button_3, value_down = 0.0,        name = _("Input.Generic.clock_mode_0"),                  category = _('Front Dash')},
{                                                           cockpit_device_id = devices.CLOCK, down = device_commands.Button_4, value_down = 1.0,        name = _("Input.Generic.clock_mode"),                    category = _('Front Dash')},

            -- Clock Reference Knobs
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_6, value_pressed = -1.0, name = _("Input.Generic.clock_reference_hours_minus"),   category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_6, value_pressed =  1.0, name = _("Input.Generic.clock_reference_hours_plus"),    category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_8, value_pressed = -1.0, name = _("Input.Generic.clock_reference_minutes_minus"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CLOCK, pressed = device_commands.Button_8, value_pressed =  1.0, name = _("Input.Generic.clock_reference_minutes_plus"),  category = _("Front Dash")},
        -- ------------------------------------------------------------------------------

        -- Port Oxygen Regulator --------------------------------------------------------
{                                                           cockpit_device_id = devices.PORT_OXYGEN_REGULATOR, down = device_commands.Button_3, value_down = 1.0, name = _("Input.SpitfireLFMkIX.oxygen_valve_1"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.PORT_OXYGEN_REGULATOR, down = device_commands.Button_3, value_down = 0.0, name = _("Input.SpitfireLFMkIX.oxygen_valve_0"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.PORT_OXYGEN_REGULATOR, down = device_commands.Button_4, value_down = 1.0, name = _("Input.SpitfireLFMkIX.oxygen_valve"),   category = {_("Systems"), _("Environment System")}},
        -- ------------------------------------------------------------------------------

        -- Boost Cut-Off T-Handle
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_49, up = device_commands.Button_49, value_down = 1.0, value_up = 0.0, name = _("Input.Mosquito.boost_cutoff"), category = _("Engine Controls")},

        -- Port Landing Light Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_18, value_down = 0.0, name = _("Input.Mosquito.port_landing_light_0"), category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_18, value_down = 1.0, name = _("Input.Mosquito.port_landing_light_1"), category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_19, value_down = 1.0, name = _("Input.Mosquito.port_landing_light"),   category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},

        -- Starboard Landing Light Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_20, value_down = 0.0, name = _("Input.Mosquito.stbd_landing_light_0"), category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_20, value_down = 1.0, name = _("Input.Mosquito.stbd_landing_light_1"), category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_21, value_down = 1.0, name = _("Input.Mosquito.stbd_landing_light"),   category = {_("Front Dash"), _("Exterior Lights"), _("Electrical System")}},

        -- Three-Way Selector Valve -----------------------------------------------------
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_1, up = device_commands.Button_1, value_down = 1.0,  value_up = 0.0, name = _("Input.Mosquito.bomb_doors_lever_push_up"),   category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_1, up = device_commands.Button_1, value_down = -1.0, value_up = 0.0, name = _("Input.Mosquito.bomb_doors_lever_push_down"), category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_2, up = device_commands.Button_2, value_down = 1.0,  value_up = 0.0, name = _("Input.Mosquito.chassis_lever_push_up"),      category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_2, up = device_commands.Button_2, value_down = -1.0, value_up = 0.0, name = _("Input.Mosquito.chassis_lever_push_down"),    category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_3, up = device_commands.Button_3, value_down = 1.0,  value_up = 0.0, name = _("Input.Mosquito.flaps_lever_push_up"),        category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_3, up = device_commands.Button_3, value_down = -1.0, value_up = 0.0, name = _("Input.Mosquito.flaps_lever_push_down"),      category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_4,                                value_down = 0.0,                  name = _("Input.Mosquito.chassis_gate_0"),             category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_4,                                value_down = 1.0,                  name = _("Input.Mosquito.chassis_gate_1"),             category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_5,                                value_down = 1.0,                  name = _("Input.Mosquito.chassis_gate"),               category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_6,                                value_down = 0.0,                  name = _("Input.Mosquito.flaps_gate_0"),               category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_6,                                value_down = 1.0,                  name = _("Input.Mosquito.flaps_gate_1"),               category = {_("Systems"), _("Hydraulic System")}},
{                                                           cockpit_device_id = devices.THREE_WAY_SELECTOR, down = device_commands.Button_7,                                value_down = 1.0,                  name = _("Input.Mosquito.flaps_gate"),                 category = {_("Systems"), _("Hydraulic System")}},
        -- ------------------------------------------------------------------------------

        -- Gun Firing Master Switch Assembly --------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_1, value_down = 0.0, name = _("Input.Mosquito.gun_firing_master_cover_0"), category = {_("Weapons"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_1, value_down = 1.0, name = _("Input.Mosquito.gun_firing_master_cover_1"), category = {_("Weapons"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_2, value_down = 1.0, name = _("Input.Mosquito.gun_firing_master_cover"),   category = {_("Weapons"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_3, value_down = 0.0, name = _("Input.Mosquito.gun_firing_master_0"),       category = {_("Weapons"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_3, value_down = 1.0, name = _("Input.Mosquito.gun_firing_master_1"),       category = {_("Weapons"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_4, value_down = 1.0, name = _("Input.Mosquito.gun_firing_master"),         category = {_("Weapons"), _("Electrical System")}},
        -- ------------------------------------------------------------------------------

        -- De-Ice Glycol Pump Handle
{                                                           cockpit_device_id = devices.GLYCOL_PUMP, down = device_commands.Button_1, value_down = 1.0, up = device_commands.Button_1, value_up = 0.0, name = _("Input.Generic.operate_de_ice_glycol_pump"), category = {_("Environment System")}},
    -- ----------------------------------------------------------------------------------



    -- Main Panel Auxiliaries -----------------------------------------------------------
        -- Rudder Trim Knob -------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_53, up = device_commands.Button_53, value_down = -1.0, value_up = 0.0, name = _("Trim Rudder Left"),   category = _("Flight Control")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_53, up = device_commands.Button_53, value_down = 1.0,  value_up = 0.0, name = _("Trim Rudder Right"),  category = _("Flight Control")},

        -- Aileron Trim Knob ------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_51, up = device_commands.Button_51, value_down = 1.0, value_up = 0.0, name = _("Trim Aileron Left"),  category = _("Flight Control")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_51, up = device_commands.Button_51, value_down = -1.0,  value_up = 0.0, name = _("Trim Aileron Right"), category = _("Flight Control")},
    -- ----------------------------------------------------------------------------------



    -- Bomb Aimer's Panel ---------------------------------------------------------------
        -- Bomb Panel Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_60, value_pressed = -0.5, name = _("Input.Mosquito.bomb_aimers_panel_flood_light_minus"), category = {_("Environment System"), _("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_60, value_pressed = 0.5,  name = _("Input.Mosquito.bomb_aimers_panel_flood_light_plus"),  category = {_("Environment System"), _("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},

        -- Bomb Doors Light Cover
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_67, value_down = 0.0,  name = _("Input.Mosquito.bomb_doors_light_cover_close"), category = {_("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_67, value_down = 1.0,  name = _("Input.Mosquito.bomb_doors_light_cover_open"),  category = {_("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_68, value_down = 1.0,  name = _("Input.Mosquito.bomb_doors_light_cover"),       category = {_("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},

        -- Containers Jettison Switch Assembly ------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_56, value_down = 0.0,                                                 name = _("Input.Mosquito.containers_jettison_cover_0"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_56, value_down = 1.0,                                                 name = _("Input.Mosquito.containers_jettison_cover_1"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_57, value_down = 1.0,                                                 name = _("Input.Mosquito.containers_jettison_cover"),                   category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_58, value_down = 1.0, up = device_commands.Button_58, value_up = 0.0, name = _("Input.Mosquito.containers_jettison"),                         category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
        -- ------------------------------------------------------------------------------

        -- Protective Cover Trigger -----------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_59, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_protective_cover_close"),    category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_59, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_protective_cover_open"),     category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_60, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_protective_cover"),          category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},

        -- Drop Ordnance Switches Collective --------------------------------------------
            -- Cine Camera Changeover Switch --------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_61, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_trigger_changeover_camera"), category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_61, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_trigger_changeover_bombs"),  category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_62, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_trigger_changeover"),        category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Station 1 Switch ---------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_63, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_1_0"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_63, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_1_1"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_64, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_1"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Station 2 Switch ---------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_65, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_2_0"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_65, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_2_1"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_66, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_2"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Station 3 Switch ---------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_67, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_3_0"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_67, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_3_1"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_68, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_3"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Station 4 Switch ---------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_69, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_4_0"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_69, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_4_1"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_70, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_station_4"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Nose Fusing Switch -------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_71, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_nose_fusing_0"),             category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_71, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_nose_fusing_1"),             category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_72, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_nose_fusing"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
            -- Tail Fusing Switch -------------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_73, value_down = 0.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_tail_fusing_0"),             category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_73, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_tail_fusing_1"),             category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_74, value_down = 1.0,                                                 name = _("Input.Mosquito.bomb_aimers_panel_tail_fusing"),               category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
        -- ------------------------------------------------------------------------------

        -- Footage Indicator ------------------------------------------------------------
{                                                           cockpit_device_id = devices.FOOTAGE_INDICATOR, pressed = device_commands.Button_4, value_pressed = -1.0,                                 name = _("Input.Generic.footage_indicator_scale_minus"),                category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.FOOTAGE_INDICATOR, pressed = device_commands.Button_4, value_pressed = 1.0,                                  name = _("Input.Generic.footage_indicator_scale_plus"),                 category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.FOOTAGE_INDICATOR, down = device_commands.Button_1, value_down = 0.0,                                        name = _("Input.Generic.footage_indicator_exposure_sunny"),             category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.FOOTAGE_INDICATOR, down = device_commands.Button_1, value_down = 1.0,                                        name = _("Input.Generic.footage_indicator_exposure_cloudy"),            category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
{                                                           cockpit_device_id = devices.FOOTAGE_INDICATOR, down = device_commands.Button_2, value_down = 1.0,                                        name = _("Input.Generic.footage_indicator_exposure"),                   category = {_("Weapons"), _("Input.Generic.drop_ordnance_arming_panel")}},
        -- ------------------------------------------------------------------------------
    -- ----------------------------------------------------------------------------------



    -- Port Wall --------------------------------------------------------------------------
        -- Magnetic Compass
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_8, value_pressed = -0.25, name = _("Input.SpitfireLFMkIX.compass_minus"), category = _("Front Dash")},
{                                                           cockpit_device_id = devices.CONTROLS, pressed = device_commands.Button_8, value_pressed = 0.25,  name = _("Input.SpitfireLFMkIX.compass_plus"),  category = _("Front Dash")},

        -- Emergency Light Rheostat
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_7, value_pressed = -0.5, name = _("Input.Mosquito.emergency_flood_light_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_7, value_pressed = 0.5,  name = _("Input.Mosquito.emergency_flood_light_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- Compass Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_13, value_pressed = -0.5, name = _("Input.Mosquito.compass_flood_light_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_13, value_pressed = 0.5,  name = _("Input.Mosquito.compass_flood_light_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- L.H. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_16, value_pressed = -0.5, name = _("Input.Mosquito.lh_flood_light_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_16, value_pressed = 0.5,  name = _("Input.Mosquito.lh_flood_light_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- Wing Tank Jettison Switch Assembly -------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_8,  value_down = 0.0,                                                 name = _("Input.Mosquito.wing_tank_jettison_cover_0"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_8,  value_down = 1.0,                                                 name = _("Input.Mosquito.wing_tank_jettison_cover_1"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_9,  value_down = 1.0,                                                 name = _("Input.Mosquito.wing_tank_jettison_cover"),   category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.WEAPONS, down = device_commands.Button_10, value_down = 1.0, up = device_commands.Button_10, value_up = 0.0, name = _("Input.Mosquito.wing_tank_jettison"),         category = {_("Weapons")}},
        -- ------------------------------------------------------------------------------

        -- UV Exciter Button
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_24, value_down = 1.0, up = device_commands.Button_24, value_up = 0.0, name = _("Input.Generic.uv_exciter"),               category = {_("Environment System"), _("Electrical System")}},

        -- LH UV Lamp Cap
{                                                           cockpit_device_id = devices.LH_5C1878, pressed = device_commands.Button_2, value_pressed = -0.7,                                             name = _("Input.Generic.lh_uv_rotating_cap_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.LH_5C1878, pressed = device_commands.Button_2, value_pressed =  0.7,                                             name = _("Input.Generic.lh_uv_rotating_cap_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- RH UV Lamp Cap
{                                                           cockpit_device_id = devices.RH_5C1878, pressed = device_commands.Button_2, value_pressed = -0.7,                                             name = _("Input.Generic.rh_uv_rotating_cap_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.RH_5C1878, pressed = device_commands.Button_2, value_pressed =  0.7,                                             name = _("Input.Generic.rh_uv_rotating_cap_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- Beam Approach Volume Rheostat
{                                                           cockpit_device_id = devices.SBA, pressed = device_commands.Button_4, value_pressed = -0.5, name = _("Input.Generic.A1271.beam_approach_volume_minus"), category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.SBA, pressed = device_commands.Button_4, value_pressed = 0.5,  name = _("Input.Generic.A1271.beam_approach_volume_plus"),  category = {_("SCR-522 Radio Set"), _("Communications")}},

        -- Radio Remote Channel Switcher ------------------------------------------------
            -- Off Button
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_9,  value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_0"),        category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- A Button
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_10, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_a"),        category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- B Button
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_11, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_b"),        category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- C Button
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_12, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_c"),        category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- D Button
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_13, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_d"),        category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- Dimmer Toggle
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_6,  value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_dimmer_1"), category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_6,  value_down = 0.0,                                                name = _("Input.SpitfireLFMkIX.radio_dimmer_0"), category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_6,  value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_dimmer"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- Transmit Lock Toggle
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_18, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_lock_1"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_18, value_down = 0.0,                                                name = _("Input.SpitfireLFMkIX.radio_lock_0"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_18, value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_lock"),     category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- Mode Selector
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_8, up = device_commands.Button_8, value_down = -1.0, value_up = 0.0, name = _("Input.SpitfireLFMkIX.radio_mode_t"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_7,  value_down = 0.0,                                                name = _("Input.SpitfireLFMkIX.radio_mode_r"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, down = device_commands.Button_7,  value_down = 1.0,                                                name = _("Input.SpitfireLFMkIX.radio_mode_rem"), category = {_("SCR-522 Radio Set"), _("Communications")}},
            -- Volume Knob
{                                                           cockpit_device_id = devices.VHF_RADIO, pressed = device_commands.Button_16, value_pressed = -1.0,                                         name = _("Input.Generic.SCR522.volume_minus"),   category = {_("SCR-522 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.VHF_RADIO, pressed = device_commands.Button_16, value_pressed =  1.0,                                         name = _("Input.Generic.SCR522.volume_plus"),    category = {_("SCR-522 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- Throttle Quadrant ------------------------------------------------------------
            -- Selection Controls -------------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_11, value_down = 1.0, name = _("Input.Generic.motor_select_port"),      category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_12, value_down = 1.0, name = _("Input.Generic.motor_select_all"),       category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_13, value_down = 1.0, name = _("Input.Generic.motor_select_starboard"), category = _("Engine Controls")},
            -- --------------------------------------------------------------------------

            -- Throttles Frictioner
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_31, value_pressed = 1.0,                                           name = _("Input.Generic.friction_plus"),          category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_31, value_pressed = -1.0,                                          name = _("Input.Generic.friction_minus"),         category = _("Engine Controls")},

            -- Throttle Levers ----------------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_21, value_pressed = 1.0,                                           name = _("Port Throttle Up"),                     category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_21, value_pressed = -1.0,                                          name = _("Port Throttle Down"),                   category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_18, up = device_commands.Button_18, value_down = 1.0, value_up = 0.0, name = _("Input.Mosquito.throttle_port_trigger"), category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_24, value_pressed = 1.0,                                           name = _("Starboard Throttle Up"),                category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_24, value_pressed = -1.0,                                          name = _("Starboard Throttle Down"),              category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_19, up = device_commands.Button_19, value_down = 1.0, value_up = 0.0, name = _("Input.Mosquito.throttle_stbd_trigger"), category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_27, value_pressed = 1.0,                                           name = _("Throttle Up"),                          category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_27, value_pressed = -1.0,                                          name = _("Throttle Down"),                        category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_29, up = device_commands.Button_29, value_down = 1.0, value_up = 0.0, name = _("Input.Mosquito.throttle_trigger"),      category = _("Engine Controls")},
            -- --------------------------------------------------------------------------

            -- Prop Levers Frictioner
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_34, value_pressed = 1.0,                                           name = _('Input.Generic.prop_friction_plus'),     category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, pressed = device_commands.Button_34, value_pressed = -1.0,                                          name = _('Input.Generic.prop_friction_minus'),    category = _("Engine Controls")},

            -- Prop Levers --------------------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_37, value_down = 1.0,  up = device_commands.Button_37, value_up = 0.0, name = _("Input.Generic.pitch_port_plus"),       category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_37, value_down = -1.0, up = device_commands.Button_37, value_up = 0.0, name = _("Input.Generic.pitch_port_minus"),      category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_40, value_down = 1.0,  up = device_commands.Button_40, value_up = 0.0, name = _("Input.Generic.pitch_stbd_plus"),       category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_40, value_down = -1.0, up = device_commands.Button_40, value_up = 0.0, name = _("Input.Generic.pitch_stbd_minus"),      category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_43, value_down = 1.0,  up = device_commands.Button_43, value_up = 0.0, name = _("Input.Generic.pitch_plus"),            category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_43, value_down = -1.0, up = device_commands.Button_43, value_up = 0.0, name = _("Input.Generic.pitch_minus"),           category = _("Engine Controls")},
            -- --------------------------------------------------------------------------

            -- Mixture Control
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_86, value_down = 0.0,                                                 name = _("Input.Generic.mix_rich"),               category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_86, value_down = 1.0,                                                 name = _("Input.Generic.mix_weak"),               category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_87, value_down = 1.0,                                                 name = _("Input.Generic.mix"),                    category = _("Engine Controls")},

            -- Supercharger Gear Change Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_22, value_down = 0.0,                                                     name = _("Input.Mosquito.supercharger_gear_auto"),category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_22, value_down = 1.0,                                                     name = _("Input.Mosquito.supercharger_gear_mod"), category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_23, value_down = 1.0,                                                     name = _("Input.Mosquito.supercharger_gear"),     category = _("Engine Controls")},

            -- Rockets Firing Switch
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_6, value_down = 1.0, up = device_commands.Button_6, value_up = 0.0,           name = _("Input.Mosquito.trigger_rockets"),       category = {_("Weapons")}},
        -- ------------------------------------------------------------------------------

        -- Auto-Selector Switch and Accessories -----------------------------------------
            -- Master Switch
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_1, value_down = 0.0,                                                name = _("Input.Mosquito.rockets_master_0"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_1, value_down = 1.0,                                                name = _("Input.Mosquito.rockets_master_1"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_2, value_down = 1.0,                                                name = _("Input.Mosquito.rockets_master"),   category = {_("Weapons")}},
            -- Salvo Selector Switch
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_3, value_down = 0.0,                                                name = _("Input.Mosquito.rockets_salvo_0"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_3, value_down = 1.0,                                                name = _("Input.Mosquito.rockets_salvo_1"), category = {_("Weapons")}},
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_4, value_down = 1.0,                                                name = _("Input.Mosquito.rockets_salvo"),   category = {_("Weapons")}},
            -- Manual Advancement Button
{                                                           cockpit_device_id = devices.ROCKETS, down = device_commands.Button_5, value_down = 1.0, up = device_commands.Button_5, value_up = 0.0, name = _("Input.Mosquito.rockets_manual"),  category = {_("Weapons")}},
        -- ------------------------------------------------------------------------------

        -- Shoulder Switch Box ----------------------------------------------------------
            -- R.I. Compass Switch & R.I. Compass De-ground Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_3, value_down = -1.0, name = _("Input.Mosquito.r_i_compass_0"),   category = {_("Accessories Panel"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_3, value_down = 1.0,  name = _("Input.Mosquito.r_i_compass_1"),   category = {_("Accessories Panel"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_3, value_down = 0.0,  name = _("Input.Mosquito.r_i_compass"),     category = {_("Accessories Panel"), _("Electrical System")}},

            -- Beam Approach Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_4, value_down = 0.0,  name = _("Input.Mosquito.beam_approach_0"), category = {_("Accessories Panel"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_4, value_down = 1.0,  name = _("Input.Mosquito.beam_approach_1"), category = {_("Accessories Panel"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_5, value_down = 1.0,  name = _("Input.Mosquito.beam_approach"),   category = {_("Accessories Panel"), _("Electrical System")}},
        -- ------------------------------------------------------------------------------

        -- Tail Trim Wheel --------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_16, up = device_commands.Button_16, value_down = -0.3, value_up = 0.0, name = _("Trim Elevator Nose Up"),   category = _("Flight Control")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_16, up = device_commands.Button_16, value_down = 0.3,  value_up = 0.0, name = _("Trim Elevator Nose Down"), category = _("Flight Control")},
    -- ----------------------------------------------------------------------------------



    -- Starboard Wall -------------------------------------------------------------------
        -- Door
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_72, value_down = 0.1, up = device_commands.Button_72, value_up = 0.0, name = _("Input.Mosquito.door_close"),    category = _("Systems")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_72, value_down = 0.2, up = device_commands.Button_72, value_up = 0.0, name = _("Input.Mosquito.door_open"),     category = _("Systems")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_72, value_down = 1.0, up = device_commands.Button_72, value_up = 0.0, name = _("Input.Mosquito.door"),          category = _("Systems")},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_73, value_down = 1.0, up = device_commands.Button_73, value_up = 0.0, name = _("Input.Mosquito.door_jettison"), category = _("Systems")},

        -- J.B.B. -----------------------------------------------------------------------
            -- Down Ident Lights Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_76, value_down = -1.0,                                                name = _("Input.Mosquito.id_lamp_down_colour_prev"),       category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_76, value_down = 1.0,                                                 name = _("Input.Mosquito.id_lamp_down_colour_next"),       category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_77, value_down = 0.0,                                                 name = _("Input.Mosquito.id_lamp_down_colour_red"),        category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_77, value_down = 0.5,                                                 name = _("Input.Mosquito.id_lamp_down_colour_green"),      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_77, value_down = 1.0,                                                 name = _("Input.Mosquito.id_lamp_down_colour_amber"),      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},

            -- Camera Gun Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_78, value_down = 0.0,                                                 name = _("Input.Mosquito.camera_gun_0"),                   category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_78, value_down = 1.0,                                                 name = _("Input.Mosquito.camera_gun_1"),                   category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_79, value_down = 1.0,                                                 name = _("Input.Mosquito.camera_gun"),                     category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},

            -- Nav Lights Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_80, value_down = 0.0,                                                 name = _("Input.Generic.nav_lights_0"),                    category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_80, value_down = 1.0,                                                 name = _("Input.Generic.nav_lights_1"),                    category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_81, value_down = 1.0,                                                 name = _("Input.Generic.nav_lights"),                      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights")}},

            -- UV Lighting Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_82, value_down = 0.0,                                                 name = _("Input.Generic.uv_lighting_0"),                   category = {_("J.B.B."), _("Electrical System"), _("Environment System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_82, value_down = 1.0,                                                 name = _("Input.Generic.uv_lighting_1"),                   category = {_("J.B.B."), _("Electrical System"), _("Environment System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_83, value_down = 1.0,                                                 name = _("Input.Generic.uv_lighting"),                     category = {_("J.B.B."), _("Electrical System"), _("Environment System")}},

            -- Pitot Head Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_84, value_down = 0.0,                                                 name = _("Input.Generic.pitot_heat_0"),                    category = {_("J.B.B."), _("Electrical System"), _("Systems")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_84, value_down = 1.0,                                                 name = _("Input.Generic.pitot_heat_1"),                    category = {_("J.B.B."), _("Electrical System"), _("Systems")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_85, value_down = 1.0,                                                 name = _("Input.Generic.pitot_heat"),                      category = {_("J.B.B."), _("Electrical System"), _("Systems")}},

            -- Fuel Pump Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_86, value_down = 0.0,                                                 name = _("Input.Mosquito.lr_fuel_pump_0"),                 category = {_("J.B.B."), _("Electrical System"), _("Fuel System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_86, value_down = 1.0,                                                 name = _("Input.Mosquito.lr_fuel_pump_1"),                 category = {_("J.B.B."), _("Electrical System"), _("Fuel System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_87, value_down = 1.0,                                                 name = _("Input.Mosquito.lr_fuel_pump"),                   category = {_("J.B.B."), _("Electrical System"), _("Fuel System")}},

            -- Reflector Sight Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_51, value_down = 0.0,                                                 name = _("Input.Mosquito.reflector_sight_0"),              category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_51, value_down = 1.0,                                                 name = _("Input.Mosquito.reflector_sight_1"),              category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_52, value_down = 1.0,                                                 name = _("Input.Mosquito.reflector_sight"),                category = {_("J.B.B."), _("Electrical System"), _("Weapons")}},

            -- Nav. Head Lamp Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_49, value_down = -1.0,                                                name = _("Input.Mosquito.id_lamp_head_mode_prev"),         category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_49, value_down = 1.0,                                                 name = _("Input.Mosquito.id_lamp_head_mode_next"),         category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_50, value_down = 0.0,                                                 name = _("Input.Mosquito.id_lamp_head_mode_0"),            category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_50, value_down = 0.5,                                                 name = _("Input.Mosquito.id_lamp_head_mode_steady"),       category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_50, value_down = 1.0,                                                 name = _("Input.Mosquito.id_lamp_head_mode_selector"),     category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},

            -- IFF Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_88, value_down = 0.0,                                                 name = _("Input.Mosquito.iff_radio_0"),                    category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_88, value_down = 1.0,                                                 name = _("Input.Mosquito.iff_radio_1"),                    category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_89, value_down = 1.0,                                                 name = _("Input.Mosquito.iff_radio"),                      category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver"), _("Communications")}},

            -- IFF Detonator Buttons Assembly -------------------------------------------
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_36, value_down = 0.0,                                                 name = _("Input.Mosquito.radio_detonator_cover_0"),        category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_36, value_down = 1.0,                                                 name = _("Input.Mosquito.radio_detonator_cover_1"),        category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_37, value_down = 1.0,                                                 name = _("Input.Mosquito.radio_detonator_cover"),          category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_38, value_down = 1.0, up = device_commands.Button_38, value_up = 0.0, name = _("Input.Mosquito.radio_detonator_l"),              category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_39, value_down = 1.0, up = device_commands.Button_39, value_up = 0.0, name = _("Input.Mosquito.radio_detonator_r"),              category = {_("J.B.B."), _("ARI 5083 / ABK-1 IFF Transceiver")}},
            -- --------------------------------------------------------------------------

            -- Port Extinguisher Switch Assembly ----------------------------------------
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_40, value_down = 0.0,                                                 name = _("Input.Mosquito.port_extignuisher_cover_0"),      category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_40, value_down = 1.0,                                                 name = _("Input.Mosquito.port_extignuisher_cover_1"),      category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_41, value_down = 1.0,                                                 name = _("Input.Mosquito.port_extignuisher_cover"),        category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_42, value_down = 1.0, up = device_commands.Button_42, value_up = 0.0, name = _("Input.Mosquito.port_extignuisher"),              category = {_("J.B.B."), _("Engine Controls")}},
            -- --------------------------------------------------------------------------

            -- Starboard Extinguisher Switch Assembly -----------------------------------
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_43, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_extignuisher_cover_0"),      category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_43, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_extignuisher_cover_1"),      category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_44, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_extignuisher_cover"),        category = {_("J.B.B."), _("Engine Controls")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_45, value_down = 1.0, up = device_commands.Button_45, value_up = 0.0, name = _("Input.Mosquito.stbd_extignuisher"),              category = {_("J.B.B."), _("Engine Controls")}},
            -- --------------------------------------------------------------------------

            -- Windscreen Wiper Rheostat
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_34, value_pressed = -0.5,                                          name = _("Input.Generic.windscreen_wiper_rheostat_minus"), category = {_("J.B.B."), _("Electrical System"), _("Environment System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_34, value_pressed = 0.5,                                           name = _("Input.Generic.windscreen_wiper_rheostat_plus"),  category = {_("J.B.B."), _("Electrical System"), _("Environment System")}},

            -- Resin Lights Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_46, value_down = 0.0,                                                 name = _("Input.Mosquito.resin_lamps_0"),                  category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_46, value_down = 1.0,                                                 name = _("Input.Mosquito.resin_lamps_1"),                  category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_47, value_down = 1.0,                                                 name = _("Input.Mosquito.resin_lamps"),                    category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},


            -- Identification Lights Switchbox and Key ----------------------------------
                -- Morse Key
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_68, value_down = 1.0, up = device_commands.Button_68, value_up = 0.0, name = _("Input.SpitfireLFMkIX.morse_key"),                category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
                -- Downward Lamp Mode Selector
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_70, value_down = -1.0,                                                name = _("Input.SpitfireLFMkIX.id_lamp_down_mode_minus"),  category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_70, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_down_mode_plus"),   category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_71, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_down_mode_2"),      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_71, value_down = 0.5,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_down_mode_0"),      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_71, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_down_mode_1"),      category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
                -- Upward Lamp Mode Selector
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_73, value_down = -1.0,                                                name = _("Input.SpitfireLFMkIX.id_lamp_up_mode_minus"),    category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_73, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_up_mode_plus"),     category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_74, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_up_mode_2"),        category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_74, value_down = 0.5,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_up_mode_0"),        category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_74, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.id_lamp_up_mode_1"),        category = {_("J.B.B."), _("Electrical System"), _("Exterior Lights"), _("Communications")}},
            -- --------------------------------------------------------------------------
        -- ------------------------------------------------------------------------------

        -- Oxygen High Pressure Control Valve
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_55, value_down = 1.0, name = _("Input.Mosquito.oxygen_high_presure_valve_1"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_55, value_down = 0.0, name = _("Input.Mosquito.oxygen_high_presure_valve_0"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_56, value_down = 1.0, name = _("Input.Mosquito.oxygen_high_presure_valve"),   category = {_("Systems"), _("Environment System")}},

        -- Starboard Oxygen Regulator ---------------------------------------------------
{                                                           cockpit_device_id = devices.STBD_OXYGEN_REGULATOR, down = device_commands.Button_3, value_down = 1.0, name = _("Input.Mosquito.stbd_oxygen_valve_1"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.STBD_OXYGEN_REGULATOR, down = device_commands.Button_3, value_down = 0.0, name = _("Input.Mosquito.stbd_oxygen_valve_0"), category = {_("Systems"), _("Environment System")}},
{                                                           cockpit_device_id = devices.STBD_OXYGEN_REGULATOR, down = device_commands.Button_4, value_down = 1.0, name = _("Input.Mosquito.stbd_oxygen_valve"),   category = {_("Systems"), _("Environment System")}},
        -- ------------------------------------------------------------------------------

        -- Chart Table Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_96, value_pressed = -0.5, name = _("Input.Mosquito.chart_flood_light_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_96, value_pressed = 0.5,  name = _("Input.Mosquito.chart_flood_light_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- Aerial Winch -----------------------------------------------------------------
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_1, value_down = 1.0,                                                 name = _("Input.Generic.aerial_winch_brake_0"),    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_1, value_down = 0.0,                                                 name = _("Input.Generic.aerial_winch_brake_1"),    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_2, value_down = 1.0,                                                 name = _("Input.Generic.aerial_winch_brake"),      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_4, value_down = 1.0,  up = device_commands.Button_4, value_up = 0.0, name = _("Input.Generic.aerial_winch_rotary_ccw"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_4, value_down = -1.0, up = device_commands.Button_4, value_up = 0.0, name = _("Input.Generic.aerial_winch_rotary_cw"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.AERIAL_WINCH, down = device_commands.Button_5, value_down = 1.0,  up = device_commands.Button_5, value_up = 0.0, name = _("Input.Generic.aerial_winch_reel_lock"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- T.1154 / R.1155 L.T. Power Unit Switch
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_1, value_down = 0.0, name = _("Input.Generic.T1154.lt_power_unit_0"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_1, value_down = 1.0, name = _("Input.Generic.T1154.lt_power_unit_1"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_2, value_down = 1.0, name = _("Input.Generic.T1154.lt_power_unit"),   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},

        -- T.1154 / R.1155 H.T. Power Unit Switch
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_3, value_down = 0.0, name = _("Input.Generic.T1154.ht_power_unit_0"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_3, value_down = 1.0, name = _("Input.Generic.T1154.ht_power_unit_1"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_POWERUNIT, down = device_commands.Button_4, value_down = 1.0, name = _("Input.Generic.T1154.ht_power_unit"),   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},

        -- Transmitter Type F Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_113, value_down = 0.0, name = _("Input.Mosquito.transmitter_type_f_0"), category = {_("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_113, value_down = 1.0, name = _("Input.Mosquito.transmitter_type_f_1"), category = {_("Electrical System"), _("Exterior Lights"), _("Communications")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_114, value_down = 1.0, name = _("Input.Mosquito.transmitter_type_f"),   category = {_("Electrical System"), _("Exterior Lights"), _("Communications")}},
    -- ----------------------------------------------------------------------------------



    -- Lower Fuselage Part --------------------------------------------------------------
        -- Port Engine Cut-Out Handle
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_71, value_down = 0.0,                                                 name = _("Input.Mosquito.port_engine_cutout_run"),     category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_71, value_down = 1.0,                                                 name = _("Input.Mosquito.port_engine_cutout_cut"),     category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_72, value_down = 1.0,                                                 name = _("Input.Mosquito.port_engine_cutout"),         category = {_("Engine Controls"), _("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_71, value_down = 1.0, up = device_commands.Button_71, value_up = 0.0, name = _("Input.Mosquito.port_engine_cutout"),         category = {_("Engine Controls"), _("Fuel System")}},
        -- Starboard Engine Cut-Out Handle
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_95, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_engine_cutout_run"),     category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_95, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_engine_cutout_cut"),     category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_96, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_engine_cutout"),         category = {_("Engine Controls"), _("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_95, value_down = 1.0, up = device_commands.Button_95, value_up = 0.0, name = _("Input.Mosquito.stbd_engine_cutout"),         category = {_("Engine Controls"), _("Fuel System")}},
        -- Selection Engine Cut-Out Handles Specialty
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_97, value_down = 0.0,                                                 name = _("Input.Mosquito.selection_engine_cutout_run"),category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_97, value_down = 1.0,                                                 name = _("Input.Mosquito.selection_engine_cutout_cut"),category = {_("Engine Controls"), _("Fuel System")}},
--{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_98, value_down = 1.0,                                                 name = _("Input.Mosquito.selection_engine_cutout"),    category = {_("Engine Controls"), _("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_97, value_down = 1.0, up = device_commands.Button_97, value_up = 0.0, name = _("Input.Mosquito.selection_engine_cutout"),    category = {_("Engine Controls"), _("Fuel System")}},
        -- Port Fuel Cock
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_74, value_down = -1.0,                                                name = _("Input.Mosquito.port_fuel_cock_prev"),        category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_74, value_down = 1.0,                                                 name = _("Input.Mosquito.port_fuel_cock_next"),        category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_75, value_down = -1.0,                                                name = _("Input.Mosquito.port_fuel_cock_outer_tanks"), category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_75, value_down = 0.0,                                                 name = _("Input.Mosquito.port_fuel_cock_off"),         category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_75, value_down = 1.0,                                                 name = _("Input.Mosquito.port_fuel_cock_main_supply"), category = {_("Fuel System")}},
        -- Starboard Fuel Cock
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_77, value_down = -1.0,                                                name = _("Input.Mosquito.stbd_fuel_cock_prev"),        category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_77, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_fuel_cock_next"),        category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_78, value_down = -1.0,                                                name = _("Input.Mosquito.stbd_fuel_cock_outer_tanks"), category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_78, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_fuel_cock_off"),         category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_78, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_fuel_cock_main_supply"), category = {_("Fuel System")}},
        -- Transfer Fuel Cock
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_79, value_down = 1.0,                                                 name = _("Input.Mosquito.transfer_cock_1"),            category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_79, value_down = 0.0,                                                 name = _("Input.Mosquito.transfer_cock_0"),            category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_80, value_down = 1.0,                                                 name = _("Input.Mosquito.transfer_cock"),              category = {_("Fuel System")}},
        -- Port Oil Dilution Switch
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_50, value_down = 1.0, up = device_commands.Button_50, value_up = 0.0, name = _("Input.Mosquito.port_oil_dilution"),          category = {_("Engine Controls")}},
        -- Starboard Oil Dilution Switch
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_51, value_down = 1.0, up = device_commands.Button_51, value_up = 0.0, name = _("Input.Mosquito.stbd_oil_dilution"),          category = {_("Engine Controls")}},
        -- Selection Oil Dilution Switches Specialty
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_70, value_down = 1.0, up = device_commands.Button_70, value_up = 0.0, name = _("Input.Mosquito.selection_oil_dilution"),     category = {_("Engine Controls")}},
        -- Tank Pressurizing Lever
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_89, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.tank_pressurizer_1"),   category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_89, value_down = 0.0,                                                 name = _("Input.SpitfireLFMkIX.tank_pressurizer_0"),   category = {_("Fuel System")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_90, value_down = 1.0,                                                 name = _("Input.SpitfireLFMkIX.tank_pressurizer"),     category = {_("Fuel System")}},
        -- Port Auxiliary Oil Supply Lever
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_91, value_down = 1.0,                                                 name = _("Input.Mosquito.port_aux_oil_1"),             category = {_("Engine Controls")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_91, value_down = 0.0,                                                 name = _("Input.Mosquito.port_aux_oil_0"),             category = {_("Engine Controls")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_92, value_down = 1.0,                                                 name = _("Input.Mosquito.port_aux_oil"),               category = {_("Engine Controls")}},
        -- Starboard Auxiliary Oil Supply Lever
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_93, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_aux_oil_1"),             category = {_("Engine Controls")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_93, value_down = 0.0,                                                 name = _("Input.Mosquito.stbd_aux_oil_0"),             category = {_("Engine Controls")}},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, down = device_commands.Button_94, value_down = 1.0,                                                 name = _("Input.Mosquito.stbd_aux_oil"),               category = {_("Engine Controls")}},
        -- Cabin Heater Control
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_57, value_down = 1.0,                                                 name = _("Input.Mosquito.cabin_heater_1"),             category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_57, value_down = 0.0,                                                 name = _("Input.Mosquito.cabin_heater_0"),             category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_58, value_down = 1.0,                                                 name = _("Input.Mosquito.cabin_heater"),               category = {_("Environment System")}},
        -- Gun Heater Control
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_59, value_down = 1.0,                                                 name = _("Input.Mosquito.gun_heater_1"),               category = {_("Environment System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_59, value_down = 0.0,                                                 name = _("Input.Mosquito.gun_heater_0"),               category = {_("Environment System"), _("Weapons")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_60, value_down = 1.0,                                                 name = _("Input.Mosquito.gun_heater"),                 category = {_("Environment System"), _("Weapons")}},

        -- LH Arm Rest
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_20, value_down = 1.0,                                                 name = _("Input.Mosquito.left_arm_rest_up"),           category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_20, value_down = 0.0,                                                 name = _("Input.Mosquito.left_arm_rest_down"),         category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_21, value_down = 1.0,                                                 name = _("Input.Mosquito.left_arm_rest"),              category = {_("Environment System")}},
        -- RH Arm Rest
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_61, value_down = 1.0,                                                 name = _("Input.Mosquito.right_arm_rest_up"),          category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_61, value_down = 0.0,                                                 name = _("Input.Mosquito.right_arm_rest_down"),        category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.CONTROLS,        down = device_commands.Button_62, value_down = 1.0,                                                 name = _("Input.Mosquito.right_arm_rest"),             category = {_("Environment System")}},
        -- Harness Release Lever
{                                                           cockpit_device_id = devices.WEAPONS,         down = device_commands.Button_43, value_down = 0.0,                                                 name = _("Input.Generic.shoulder_harness_release_lock"),    category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.WEAPONS,         down = device_commands.Button_43, value_down = 1.0,                                                 name = _("Input.Generic.shoulder_harness_release_release"), category = {_("Environment System")}},
{                                                           cockpit_device_id = devices.WEAPONS,         down = device_commands.Button_44, value_down = 1.0,                                                 name = _("Input.Generic.shoulder_harness_release"),         category = {_("Environment System")}},
    -- ----------------------------------------------------------------------------------



    -- Quarter --------------------------------------------------------------------------
        -- Roof Dome Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_102, value_pressed = -0.5, name = _("Input.Mosquito.roof_dome_light_minus"),          category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_102, value_pressed = 0.5,  name = _("Input.Mosquito.roof_dome_light_plus"),           category = {_("Environment System"), _("Electrical System")}},

        -- Loop Antenna Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_93,  value_pressed = -0.5, name = _("Input.Mosquito.loop_antenna_flood_light_minus"), category = {_("Environment System"), _("Electrical System")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, pressed = device_commands.Button_93,  value_pressed = 0.5,  name = _("Input.Mosquito.loop_antenna_flood_light_plus"),  category = {_("Environment System"), _("Electrical System")}},

        -- T.1154 -----------------------------------------------------------------------
            -- C2
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_3,  value_pressed = -1.0, name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C2_minus"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_3,  value_pressed = 1.0,  name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C2_plus"),   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C4
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_6,  value_pressed = -1.0, name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C4_minus"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_6,  value_pressed = 1.0,  name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C4_plus"),   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C15
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_9,  value_pressed = -1.0, name = _("Input.Generic.T1154.output_tuning_condenser_C15_minus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_9,  value_pressed = 1.0,  name = _("Input.Generic.T1154.output_tuning_condenser_C15_plus"),             category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C16
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_12, value_pressed = -1.0, name = _("Input.Generic.T1154.output_tuning_condenser_C16_minus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_12, value_pressed = 1.0,  name = _("Input.Generic.T1154.output_tuning_condenser_C16_plus"),             category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C17
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_15, value_pressed = -1.0, name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C17_minus"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_15, value_pressed = 1.0,  name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C17_plus"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C2 Presets Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_18, value_down = -1.0,       name = _("Input.Generic.T1154.condenser_C2_presets_minus"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_18, value_down = 1.0,        name = _("Input.Generic.T1154.condenser_C2_presets_plus"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.0,        name = _("Input.Generic.T1154.condenser_C2_presets_free"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.1,        name = _("Input.Generic.T1154.condenser_C2_presets_a"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.2,        name = _("Input.Generic.T1154.condenser_C2_presets_b"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.3,        name = _("Input.Generic.T1154.condenser_C2_presets_c"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.4,        name = _("Input.Generic.T1154.condenser_C2_presets_d"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.5,        name = _("Input.Generic.T1154.condenser_C2_presets_e"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.6,        name = _("Input.Generic.T1154.condenser_C2_presets_f"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_19, value_down = 0.7,        name = _("Input.Generic.T1154.condenser_C2_presets_g"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C4 Presets Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_21, value_down = -1.0,       name = _("Input.Generic.T1154.condenser_C4_presets_minus"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_21, value_down = 1.0,        name = _("Input.Generic.T1154.condenser_C4_presets_plus"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.0,        name = _("Input.Generic.T1154.condenser_C4_presets_free"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.1,        name = _("Input.Generic.T1154.condenser_C4_presets_j"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.2,        name = _("Input.Generic.T1154.condenser_C4_presets_k"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.3,        name = _("Input.Generic.T1154.condenser_C4_presets_l"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.4,        name = _("Input.Generic.T1154.condenser_C4_presets_m"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.5,        name = _("Input.Generic.T1154.condenser_C4_presets_n"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.6,        name = _("Input.Generic.T1154.condenser_C4_presets_p"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_22, value_down = 0.7,        name = _("Input.Generic.T1154.condenser_C4_presets_q"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C15 Presets Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_24, value_down = -1.0,       name = _("Input.Generic.T1154.condenser_C15_presets_minus"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_24, value_down = 1.0,        name = _("Input.Generic.T1154.condenser_C15_presets_plus"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.0,        name = _("Input.Generic.T1154.condenser_C15_presets_free"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.1,        name = _("Input.Generic.T1154.condenser_C15_presets_a"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.2,        name = _("Input.Generic.T1154.condenser_C15_presets_b"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.3,        name = _("Input.Generic.T1154.condenser_C15_presets_c"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.4,        name = _("Input.Generic.T1154.condenser_C15_presets_d"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.5,        name = _("Input.Generic.T1154.condenser_C15_presets_e"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.6,        name = _("Input.Generic.T1154.condenser_C15_presets_f"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_25, value_down = 0.7,        name = _("Input.Generic.T1154.condenser_C15_presets_g"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C16 Presets Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_27, value_down = -1.0,       name = _("Input.Generic.T1154.condenser_C16_presets_minus"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_27, value_down = 1.0,        name = _("Input.Generic.T1154.condenser_C16_presets_plus"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.0,        name = _("Input.Generic.T1154.condenser_C16_presets_free"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.1,        name = _("Input.Generic.T1154.condenser_C16_presets_j"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.2,        name = _("Input.Generic.T1154.condenser_C16_presets_k"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.3,        name = _("Input.Generic.T1154.condenser_C16_presets_l"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.4,        name = _("Input.Generic.T1154.condenser_C16_presets_m"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.5,        name = _("Input.Generic.T1154.condenser_C16_presets_n"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.6,        name = _("Input.Generic.T1154.condenser_C16_presets_p"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_28, value_down = 0.7,        name = _("Input.Generic.T1154.condenser_C16_presets_q"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C17 Presets Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_30, value_down = -1.0,       name = _("Input.Generic.T1154.condenser_C17_presets_minus"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_30, value_down = 1.0,        name = _("Input.Generic.T1154.condenser_C17_presets_plus"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.0,        name = _("Input.Generic.T1154.condenser_C17_presets_free"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.1,        name = _("Input.Generic.T1154.condenser_C17_presets_s"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.2,        name = _("Input.Generic.T1154.condenser_C17_presets_t"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.3,        name = _("Input.Generic.T1154.condenser_C17_presets_u"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.4,        name = _("Input.Generic.T1154.condenser_C17_presets_v"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.5,        name = _("Input.Generic.T1154.condenser_C17_presets_w"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.6,        name = _("Input.Generic.T1154.condenser_C17_presets_x"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_31, value_down = 0.7,        name = _("Input.Generic.T1154.condenser_C17_presets_y"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C2 Vernier
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_33, value_pressed = -1.0, name = _("Input.Generic.T1154.master_oscillator_C2_vernier_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_33, value_pressed = 1.0,  name = _("Input.Generic.T1154.master_oscillator_C2_vernier_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C4 Vernier
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_36, value_pressed = -1.0, name = _("Input.Generic.T1154.master_oscillator_C4_vernier_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_36, value_pressed = 1.0,  name = _("Input.Generic.T1154.master_oscillator_C4_vernier_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S1 / S2
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_39, value_down = -1.0,       name = _("Input.Generic.T1154.frequency_range_switch_minus"),                 category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_39, value_down = 1.0,        name = _("Input.Generic.T1154.frequency_range_switch_plus"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_40, value_down = 0.0,        name = _("Input.Generic.T1154.frequency_range_switch_r1"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_40, value_down = 0.1,        name = _("Input.Generic.T1154.frequency_range_switch_r2"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_40, value_down = 0.2,        name = _("Input.Generic.T1154.frequency_range_switch_r3"),                    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S3
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_42, value_down = -1.0,       name = _("Input.Generic.T1154.inductance_tapping_switch_S3_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_42, value_down = 1.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_1"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.1,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_2"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.2,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_3"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.3,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_4"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.4,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_5"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.5,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_6"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.6,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_7"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.7,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_8"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_43, value_down = 0.8,        name = _("Input.Generic.T1154.inductance_tapping_switch_S3_9"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S4
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_45, value_down = -1.0,       name = _("Input.Generic.T1154.inductance_tapping_switch_S4_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_45, value_down = 1.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_1"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.1,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_2"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.2,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_3"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.3,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_4"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.4,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_5"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.5,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_6"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.6,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_7"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.7,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_8"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_46, value_down = 0.8,        name = _("Input.Generic.T1154.inductance_tapping_switch_S4_9"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S5
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_48, value_down = -1.0,       name = _("Input.Generic.T1154.master_switch_S5_minus"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_48, value_down = 1.0,        name = _("Input.Generic.T1154.master_switch_S5_plus"),                        category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.0,        name = _("Input.Generic.T1154.master_switch_S5_off"),                         category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.1,        name = _("Input.Generic.T1154.master_switch_S5_stbi"),                        category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.2,        name = _("Input.Generic.T1154.master_switch_S5_tune"),                        category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.3,        name = _("Input.Generic.T1154.master_switch_S5_cw"),                          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.4,        name = _("Input.Generic.T1154.master_switch_S5_mcw"),                         category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_49, value_down = 0.5,        name = _("Input.Generic.T1154.master_switch_S5_rt"),                          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S6
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_51, value_down = -1.0,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_51, value_down = 1.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S6_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.00,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_18"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.05,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_19"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.10,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_20"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.15,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_21"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.20,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_22"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.25,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_23"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.30,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_24"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.35,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_25"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.40,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_26"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.45,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_27"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.50,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_28"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.55,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_29"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.60,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_30"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.65,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_31"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.70,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_32"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.75,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_33"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_52, value_down = 0.80,       name = _("Input.Generic.T1154.inductance_tapping_switch_S6_34"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- S7
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_54, value_down = -1.0,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_54, value_down = 1.0,        name = _("Input.Generic.T1154.inductance_tapping_switch_S7_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.00,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_1"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.05,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_2"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.10,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_3"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.15,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_4"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.20,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_5"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.25,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_6"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.30,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_7"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.35,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_8"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.40,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_9"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.45,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_10"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.50,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_11"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.55,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_12"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.60,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_13"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.65,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_14"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.70,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_15"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.75,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_16"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_55, value_down = 0.80,       name = _("Input.Generic.T1154.inductance_tapping_switch_S7_17"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- L6
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_57, value_pressed = -1.0, name = _("Input.Generic.T1154.output_inductance_control_L6_minus"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_57, value_pressed = 1.0,  name = _("Input.Generic.T1154.output_inductance_control_L6_plus"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- Aerial Selector Switch Type J
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_60, value_down = -1.0, name = _("Input.Generic.T1154R1155.aerial_selector_minus"),       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_60, value_down = 1.0,  name = _("Input.Generic.T1154R1155.aerial_selector_plus"),        category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_61, value_down = -1.0, name = _("Input.Generic.T1154R1155.aerial_selector_df"),          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_61, value_down = -0.5, name = _("Input.Generic.T1154R1155.aerial_selector_mf_fixed"),    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_61, value_down = 0.0,  name = _("Input.Generic.T1154R1155.aerial_selector_normal"),      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_61, value_down = 0.5,  name = _("Input.Generic.T1154R1155.aerial_selector_hf_trailing"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_61, value_down = 1.0,  name = _("Input.Generic.T1154R1155.aerial_selector_earth"),       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},

        -- R.1155 -----------------------------------------------------------------------
            -- Master Selector Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_63, value_down = -1.0,                                                 name = _("Input.Generic.R1155.master_selector_minus"),             category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_63, value_down = 1.0,                                                  name = _("Input.Generic.R1155.master_selector_plus"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_64, value_down = 0.0,                                                  name = _("Input.Generic.R1155.master_selector_omni"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_64, value_down = 0.1,                                                  name = _("Input.Generic.R1155.master_selector_avc"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_64, value_down = 0.2,                                                  name = _("Input.Generic.R1155.master_selector_balance"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_64, value_down = 0.3,                                                  name = _("Input.Generic.R1155.master_selector_visual"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_64, value_down = 0.4,                                                  name = _("Input.Generic.R1155.master_selector_figure_of_8"),       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Frequency Range Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_66, value_down = -1.0,                                                 name = _("Input.Generic.R1155.frequency_range_minus"),             category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_66, value_down = 1.0,                                                  name = _("Input.Generic.R1155.frequency_range_plus"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_67, value_down = 0.0,                                                  name = _("Input.Generic.R1155.frequency_range_r1"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_67, value_down = 0.1,                                                  name = _("Input.Generic.R1155.frequency_range_r2"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_67, value_down = 0.2,                                                  name = _("Input.Generic.R1155.frequency_range_r3"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_67, value_down = 0.3,                                                  name = _("Input.Generic.R1155.frequency_range_r4"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_67, value_down = 0.4,                                                  name = _("Input.Generic.R1155.frequency_range_r5"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Volume Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_69, value_pressed = -0.5,                                           name = _("Input.Generic.R1155.volume_minus"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_69, value_pressed = 0.5,                                            name = _("Input.Generic.R1155.volume_plus"),                       category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Tuning (Fine)
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_72, value_pressed = -1.0,                                           name = _("Input.Generic.R1155.tuning_fine_minus"),                 category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_72, value_pressed = 1.0,                                            name = _("Input.Generic.R1155.tuning_fine_plus"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Tuning (Coarse)
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_75, value_pressed = -1.0,                                           name = _("Input.Generic.R1155.tuning_coarse_minus"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_75, value_pressed = 1.0,                                            name = _("Input.Generic.R1155.tuning_coarse_plus"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Heterodyne Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_77, value_down = 0.0,                                                  name = _("Input.Generic.R1155.heterodyne_0"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_77, value_down = 1.0,                                                  name = _("Input.Generic.R1155.heterodyne_1"),                      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_78, value_down = 1.0,                                                  name = _("Input.Generic.R1155.heterodyne"),                        category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Balance Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_80, value_pressed = -1.0,                                           name = _("Input.Generic.R1155.meter_balance_minus"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_80, value_pressed = 1.0,                                            name = _("Input.Generic.R1155.meter_balance_plus"),                category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Filter Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_82, value_down = 0.0,                                                  name = _("Input.Generic.R1155.filter_0"),                          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_82, value_down = 1.0,                                                  name = _("Input.Generic.R1155.filter_1"),                          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_83, value_down = 1.0,                                                  name = _("Input.Generic.R1155.filter"),                            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Amplitude Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_85, value_pressed = -1.0,                                           name = _("Input.Generic.R1155.meter_amplitude_minus"),             category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_85, value_pressed = 1.0,                                            name = _("Input.Generic.R1155.meter_amplitude_plus"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Deflection Sensitivity Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_87, value_down = 0.0,                                                  name = _("Input.Generic.R1155.meter_deflection_sensitivity_low"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_87, value_down = 1.0,                                                  name = _("Input.Generic.R1155.meter_deflection_sensitivity_high"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_88, value_down = 1.0,                                                  name = _("Input.Generic.R1155.meter_deflection_sensitivity"),      category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Aural Sense Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_89, value_down = -1.0, up = device_commands.Button_89, value_up = 0.0, name = _("Input.Generic.R1155.aural_sense_left"),                  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_89, value_down = 1.0,  up = device_commands.Button_89, value_up = 0.0, name = _("Input.Generic.R1155.aural_sense_right"),                 category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Frequency Switch
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_90, value_down = 0.0,                                                  name = _("Input.Generic.R1155.meter_frequency_high"),              category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_90, value_down = 1.0,                                                  name = _("Input.Generic.R1155.meter_frequency_low"),               category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_91, value_down = 1.0,                                                  name = _("Input.Generic.R1155.meter_frequency"),                   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- Loop Antenna -----------------------------------------------------------------
            -- Lock
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_92, value_down = 0.0,        name = _("Input.Generic.R1155.loop_antenna_lock_lock"),    category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_92, value_down = 1.0,        name = _("Input.Generic.R1155.loop_antenna_lock_unlock"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, down = device_commands.Button_93, value_down = 1.0,        name = _("Input.Generic.R1155.loop_antenna_lock"),         category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Loop Rotation
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_95, value_pressed = -1.0, name = _("Input.Generic.R1155.loop_antenna_rotate_left"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, pressed = device_commands.Button_95, value_pressed = 1.0,  name = _("Input.Generic.R1155.loop_antenna_rotate_right"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- BC966a IFF Mk.3G Transponder -------------------------------------------------
            -- Channel Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_105, value_down = -1.0, name = _("Input.Generic.BC966IFF.channel_selector_minus"), category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_105, value_down = 1.0,  name = _("Input.Generic.BC966IFF.channel_selector_plus"),  category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 0.0,  name = _("Input.Generic.BC966IFF.channel_selector_1"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 0.2,  name = _("Input.Generic.BC966IFF.channel_selector_2"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 0.4,  name = _("Input.Generic.BC966IFF.channel_selector_3"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 0.6,  name = _("Input.Generic.BC966IFF.channel_selector_4"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 0.8,  name = _("Input.Generic.BC966IFF.channel_selector_5"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_106, value_down = 1.0,  name = _("Input.Generic.BC966IFF.channel_selector_6"),     category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},

            -- Detonator Switch Assembly ------------------------------------------------
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_107, value_down = 0.0,  name = _("Input.Generic.BC966IFF.detonator_cover_0"),      category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_107, value_down = 1.0,  name = _("Input.Generic.BC966IFF.detonator_cover_1"),      category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_108, value_down = 1.0,  name = _("Input.Generic.BC966IFF.detonator_cover"),        category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_109, value_down = 0.0,  name = _("Input.Generic.BC966IFF.detonator_0"),            category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_109, value_down = 1.0,  name = _("Input.Generic.BC966IFF.detonator_1"),            category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_110, value_down = 1.0,  name = _("Input.Generic.BC966IFF.detonator"),              category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
            -- --------------------------------------------------------------------------

            -- Power Switch
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_111, value_down = 0.0,  name = _("Input.Generic.BC966IFF.power_0"),                category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_111, value_down = 1.0,  name = _("Input.Generic.BC966IFF.power_1"),                category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
{                                                           cockpit_device_id = devices.SWITCHBOARD, down = device_commands.Button_112, value_down = 1.0,  name = _("Input.Generic.BC966IFF.power"),                  category = {_("ARI 5083 / ABK-1 IFF Transceiver")}},
        -- ------------------------------------------------------------------------------

        -- Armor Headrest
{                                                           cockpit_device_id = devices.CONTROLS, down = device_commands.Button_71, value_down = 1.0, up = device_commands.Button_71, value_up = 0.0, name = _("Input.Mosquito.armor_hadrest"), category = _("Systems")},
    -- ----------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------



-- Night Vision Goggles -----------------------------------------------------------------
--{                                                           down = iCommandViewNightVisionGogglesOn,       name = _('Night Vision Goggles'),           category = _('Sensors')},
--{                                                           pressed = iCommandPlane_Helmet_Brightess_Up,   name = _('Night Vision Goggles Gain Up'),   category = _('Sensors')},
--{                                                           pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},
-- --------------------------------------------------------------------------------------

-- FAC ----------------------------------------------------------------------------------
--{                                                           down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
--{                                                           down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
--{                                                           down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
-- --------------------------------------------------------------------------------------
})
join(res.axisCommands, {
-- Defaults for joystick axes -----------------------------------------------------------
{combos = defaultDeviceAssignmentFor("roll"),               action = iCommandPlaneRoll,   name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch"),              action = iCommandPlanePitch,  name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"),             action = iCommandPlaneRudder, name = _('Rudder')},
-- --------------------------------------------------------------------------------------



-- Main Pit -----------------------------------------------------------------------------
    -- Joystick(s) ----------------------------------------------------------------------
        -- Wheel Brakes Lever
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_3, name = _("Input.Yak52.wheel_brakes_slider"), category = _("Stick")},
    -- ----------------------------------------------------------------------------------



    -- Reflector Sight ------------------------------------------------------------------
        -- Reflector Sight Setter Rings -------------------------------------------------
{                                                           cockpit_device_id = devices.WEAPONS, action = device_commands.Button_47, name = _("Input.SpitfireLFMkIX.gun_sight_range_slider"), category = {_("Weapons"), _("Gunsight")}},
{                                                           cockpit_device_id = devices.WEAPONS, action = device_commands.Button_50, name = _("Input.SpitfireLFMkIX.gun_sight_span_slider"),  category = {_("Weapons"), _("Gunsight")}},
        -- ------------------------------------------------------------------------------

        -- Reflector Sight Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_11, name = _("Input.Mosquito.reflector_sight_slider"), category = {_("Weapons"), _("Environment System"), _("Electrical System")}},
    -- ----------------------------------------------------------------------------------



    -- J.B.A. ---------------------------------------------------------------------------
        -- R.H. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_55, name = _("Input.Mosquito.rh_flood_light_slider"), category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},

        -- J.B.B. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_58, name = _("Input.Mosquito.box_b_flood_light_slider"), category = {_("Environment System"), _("Electrical System"), _("J.B.A.")}},
    -- ----------------------------------------------------------------------------------



    -- Main Panel -----------------------------------------------------------------------
        -- Repeater Compass
{                                                           cockpit_device_id = devices.REPEATER_COMPASS, action = device_commands.Button_3, name = _("Input.Bf109K4.repeater_compass_slider"), category = _("Front Dash")},

        -- Altimeter
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_12, name = _("Input.SpitfireLFMkIX.altimeter_slider"), category = _("Front Dash")},
    -- ----------------------------------------------------------------------------------



    -- Main Panel Auxiliaries -----------------------------------------------------------
        -- Rudder Trim Knob -------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_54, name = _("Trim Rudder"),  category = _("Flight Control")},

        -- Aileron Trim Knob ------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_52, name = _("Trim Aileron"), category = _("Flight Control")},
    -- ----------------------------------------------------------------------------------



    -- Bomb Aimer's Panel ---------------------------------------------------------------
        -- Bomb Panel Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_61, name = _("Input.Mosquito.bomb_aimers_panel_flood_light_slider"), category = {_("Environment System"), _("Electrical System"), _("Input.Generic.drop_ordnance_arming_panel")}},
    -- ----------------------------------------------------------------------------------



    -- Port Wall ------------------------------------------------------------------------
        -- Emergency Light Rheostat
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_8, name = _("Input.Mosquito.emergency_flood_light_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- Compass Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_14, name = _("Input.Mosquito.compass_flood_light_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- L.H. Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_17, name = _("Input.Mosquito.lh_flood_light_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- Beam Approach Volume Rheostat
{                                                           cockpit_device_id = devices.SBA, action = device_commands.Button_5, name = _("Input.Generic.A1271.beam_approach_volume_slider"), category = {_("SCR-522 Radio Set"), _("Communications")}},

        -- LH UV Lamp Cap
{                                                           cockpit_device_id = devices.LH_5C1878, action = device_commands.Button_3, name = _("Input.Generic.lh_uv_rotating_cap_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- RH UV Lamp Cap
{                                                           cockpit_device_id = devices.RH_5C1878, action = device_commands.Button_3, name = _("Input.Generic.rh_uv_rotating_cap_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- Radio Remote Channel Switcher ------------------------------------------------
            -- Volume Knob
{                                                           cockpit_device_id = devices.VHF_RADIO, action = device_commands.Button_19, name = _("Input.Generic.SCR522.volume_slider"), category = {_("SCR-522 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- Throttle Quadrant ------------------------------------------------------------
            -- Throttles Frictioner
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_32, name = _("Input.Generic.friction_slider"), category = _("Engine Controls")},

            -- Throttle Levers ----------------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_22, name = _("Input.Generic.throttle_port_slider"), category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_25, name = _("Input.Generic.throttle_stbd_slider"), category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_28, name = _("Input.Generic.throttle_slider"),      category = _("Engine Controls")},
            -- --------------------------------------------------------------------------

            -- Prop Levers Frictioner
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_35, name = _('Input.Generic.prop_friction_slider'), category = _('Engine Controls')},

            -- Prop Levers --------------------------------------------------------------
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_38, name = _("Input.Generic.pitch_port_slider"),    category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_41, name = _("Input.Generic.pitch_stbd_slider"),    category = _("Engine Controls")},
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_44, name = _("Input.Generic.pitch_slider"),         category = _("Engine Controls")},
            -- --------------------------------------------------------------------------

            -- Mixture Control
{                                                           cockpit_device_id = devices.ENGINE_CONTROLS, action = device_commands.Button_88, name = _("Input.Generic.mix_slider"),           category = _("Engine Controls")},
        -- ------------------------------------------------------------------------------

        -- Tail Trim Wheel --------------------------------------------------------------
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_17, name = _("Trim Elevator"), category = _("Flight Control")},
    -- ----------------------------------------------------------------------------------



    -- Starboard Wall -------------------------------------------------------------------
        -- J.B.B. -----------------------------------------------------------------------
            -- Windscreen Wiper Rheostat
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_35, name = _("Input.Generic.windscreen_wiper_rheostat_slider"), category = {_("J.B.B."), _("Environment System"), _("Electrical System")}},
        -- ------------------------------------------------------------------------------

        -- Chart Table Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_97, name = _("Input.Mosquito.chart_flood_light_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- Aerial Winch -----------------------------------------------------------------
{                                                           cockpit_device_id = devices.AERIAL_WINCH, action = device_commands.Button_3, name = _("Input.Generic.aerial_winch_brake_slider"), category = {_("Radio"), _("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------
    -- ----------------------------------------------------------------------------------



    -- Quarter --------------------------------------------------------------------------
        -- Roof Dome Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_103, name = _("Input.Mosquito.roof_dome_light_slider"),          category = {_("Environment System"), _("Electrical System")}},

        -- Loop Antenna Flood Light Dimmer Type D
{                                                           cockpit_device_id = devices.SWITCHBOARD, action = device_commands.Button_94,  name = _("Input.Mosquito.loop_antenna_flood_light_slider"), category = {_("Environment System"), _("Electrical System")}},

        -- T.1154 -----------------------------------------------------------------------
            -- C2
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_4,  name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C2_slider"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C4
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_7,  name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C4_slider"),  category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C15
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_10, name = _("Input.Generic.T1154.output_tuning_condenser_C15_slider"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C16
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_13, name = _("Input.Generic.T1154.output_tuning_condenser_C16_slider"),            category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C17
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_16, name = _("Input.Generic.T1154.master_oscillator_tuning_condenser_C17_slider"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C2 Vernier
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_34, name = _("Input.Generic.T1154.master_oscillator_C2_vernier_slider"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- C4 Vernier
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_37, name = _("Input.Generic.T1154.master_oscillator_C4_vernier_slider"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- L6
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_58, name = _("Input.Generic.T1154.output_inductance_control_L6_slider"),           category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- R.1155 -----------------------------------------------------------------------
            -- Volume Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_70, name = _("Input.Generic.R1155.volume_slider"),          category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Balance Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_81, name = _("Input.Generic.R1155.meter_balance_slider"),   category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
            -- Meter Amplitude Knob
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_86, name = _("Input.Generic.R1155.meter_amplitude_slider"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------

        -- Loop Antenna -----------------------------------------------------------------
            -- Loop Rotation
{                                                           cockpit_device_id = devices.RADIO_INTERFACE, action = device_commands.Button_96, name = _("Input.Generic.R1155.loop_antenna_rotation_slider"), category = {_("T.1154/R.1155 Radio Set"), _("Communications")}},
        -- ------------------------------------------------------------------------------
    -- ----------------------------------------------------------------------------------
-- --------------------------------------------------------------------------------------
})
return res
