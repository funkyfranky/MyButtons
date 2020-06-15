local cockpit = folder .. "../../../Cockpit/Scripts/"
dofile(cockpit .. "devices.lua")
dofile(cockpit .. "command_defs.lua")



local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")
join(res.keyCommands, {

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: begin additional buttons
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.CONTROLS, value_down = -1.0, value_up = 1.0, name = _('Undercarriage Up/Down'), category = {_('_My Buttons')}},

{down = device_commands.Button_33, up = device_commands.Button_32, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Battery On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_25, up = device_commands.Button_24, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Generator On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_27, up = device_commands.Button_26, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Pitot On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_29, up = device_commands.Button_28, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Oil Delution On/Off'), category = {_('_My Buttons')}},


{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down =-1.0, value_up = 0.0, name = _('Wing Tips Nav Lights Dim/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Wing Tips Nav Lights Bright/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down =-1.0, value_up = 0.0, name = _('Tail Nav Lights Dim/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Tail Nav Lights Bright/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down =-1.0, value_up = 0.0, name = _('Landing Lights Dim/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Landing Lights Bright/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.1, value_up = 0.0, name = _('Cockpit Lights (On)/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.3, value_up = 0.2, name = _('Cockpit Lights On/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Air Filter Control Lever Up/Down'), category = {_('_My Buttons')}},

{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.WEAPONS, value_down =-1.0, value_up = 0.0, name = _('Guns Both/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Guns Cam/Off'), category = {_('_My Buttons')}},


{down = device_commands.Button_49, up = device_commands.Button_49, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Cockpit Ventilation On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Defroster On/Off'), category = {_('_My Buttons')}},


------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: end additional buttons
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Tertiary -------------------------------------------------------------------------------
{                                                           down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{                                                           down = iCommandEnginesStop,  name = _('Stop Procedure'),  category = _('Cheat')},
{                                                           down = iCommand_ExplorationStart,                                      name = _('Enable visual recon mode'),               category = _('View Cockpit')},
{                                                           down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Gameplay -------------------------------------------------------------------------------
{                                                           down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{                                                           down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{                                                           down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{                                                           down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
-- ----------------------------------------------------------------------------------------



-- View Cockpit ---------------------------------------------------------------------------
{                                                           down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},
{                                                           down = iCommandCockpitShowPilotOnOff, name = _('Show pilot body'), category = _('General')},
-- ----------------------------------------------------------------------------------------



-- Communications -------------------------------------------------------------------------
{                                                           down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},
-- ----------------------------------------------------------------------------------------



-- Flight Controls ------------------------------------------------------------------------
-- Steer Controls
{                                                           down = iCommandPlaneUpStart,          up = iCommandPlaneUpStop,          name = _("Flight NOSE DOWN"),    category = _('Flight Control')},
{                                                           down = iCommandPlaneDownStart,        up = iCommandPlaneDownStop,        name = _('Flight NOSE UP'),      category = _('Flight Control')},
{                                                           down = iCommandPlaneLeftStart,        up = iCommandPlaneLeftStop,        name = _('Flight BANK LEFT'),    category = _('Flight Control')},
{                                                           down = iCommandPlaneRightStart,       up = iCommandPlaneRightStop,       name = _('Flight BANK RIGHT'),   category = _('Flight Control')},
{                                                           down = iCommandPlaneLeftRudderStart,  up = iCommandPlaneLeftRudderStop,  name = _('Flight RUDDER LEFT'),  category = _('Flight Control')},
{                                                           down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight RUDDER RIGHT'), category = _('Flight Control')},
{                                                           down = device_commands.Button_57, up = device_commands.Button_57, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER LEFT 1 NOTCH'), category = _('Flight Control')},
{                                                           down = device_commands.Button_58, up = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER RIGHT 1 NOTCH'), category = _('Flight Control')},

{                                                           down = iCommandPlaneWheelBrakeOn,      up = iCommandPlaneWheelBrakeOff,      name = _('Wheel brake Both'),           category = {_('Flight Control'), _('Systems')}},
{                                                           down = iCommandPlaneWheelBrakeLeftOn,  up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel brake Left'),           category = {_('Flight Control'), _('Systems')}},
{                                                           down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel brake Right'),          category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Wheel brake Parking'), category = {_('Flight Control'), _('Systems')}},

-- Generic Flight Controls
{                                                           down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- P-47D-30-specific controls start here --------------------------------------------------
-- ----------------------------------------------------------------------------------------



-- Joystick(s) ----------------------------------------------------------------------------
-- Trigger Buttons
{combos = {{key = 'JOY_BTN1'}},                             down = iCommandPlaneFire,     up = iCommandPlaneFireOff,   name = _('Input.P47.trigger_a'),  category = {_('Stick'), _('Weapons')}},
{combos = {{key = 'JOY_BTN2'}},                             down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Input.P47.trigger_b2'), category = {_('Stick'), _('Weapons')}},
-- ----------------------------------------------------------------------------------------



-- Canopy Controls ------------------------------------------------------------------------
-- Cockpit Open/Close Control
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.canopy_e_minus'),      category = _('Systems')},
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.canopy_e_plus'),       category = _('Systems')},
{                                                           down = device_commands.Button_19,                                 cockpit_device_id = devices.CONTROLS, value_down = -1.0,                 name = _('Input.P47.canopy_m_0'),          category = _('Systems')},
{                                                           down = device_commands.Button_19,                                 cockpit_device_id = devices.CONTROLS, value_down = 1.0,                  name = _('Input.P47.canopy_m_1'),          category = _('Systems')},
-- Cockpit Jettison Pull Handle
{                                                           down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Generic.canopy_jettison'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Main Panel(s) --------------------------------------------------------------------------
-- Clock Setter Pinion - Wind-up
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CLOCK, value_pressed = -1.0, name = _('Input.Generic.clock_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CLOCK, value_pressed = 1.0,  name = _('Input.Generic.clock_plus'),  category = _('Front Dash')},
-- Clock Setter Pinion - Pull
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Input.Generic.clock_mode_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.CLOCK, value_down = 0.0, name = _('Input.Generic.clock_mode_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Input.Generic.clock_mode'),   category = _('Front Dash')},

-- Starter Switch
{                                                           down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.starter_picard'), category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.starter_kirk'),   category = {_('Front Dash'), _('Engine Controls')}},

-- Primer Pump
{                                                           pressed = device_commands.Button_24, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 0.0, name = _('Input.P47.primer_lock_0'), category = {_('Front Dash'), _('Engine Controls')}},
{                                                           pressed = device_commands.Button_24, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.P47.primer_lock_1'), category = {_('Front Dash'), _('Engine Controls')}},
{                                                           pressed = device_commands.Button_23, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.P47.primer_lock'),   category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Generic.primer'), category = {_('Front Dash'), _('Engine Controls')}},

-- Cowl Flaps Button
{                                                           down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.cowl_minus'), category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.cowl_plus'),  category = {_('Front Dash'), _('Engine Controls')}},
-- Defroster Knob
{                                                           down = device_commands.Button_47, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.P47.defroster'),   category = {_('Environment System'), _('Front Dash')}},
{                                                           down = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.P47.defroster_0'), category = {_('Environment System'), _('Front Dash')}},
{                                                           down = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.P47.defroster_1'), category = {_('Environment System'), _('Front Dash')}},
-- Cockpit Ventilation Knob
{                                                           down = device_commands.Button_50, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Generic.cockpit_ventilation_knob'),   category = {_('Environment System'), _('Front Dash')}},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.Generic.cockpit_ventilation_knob_0'), category = {_('Environment System'), _('Front Dash')}},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Generic.cockpit_ventilation_knob_1'), category = {_('Environment System'), _('Front Dash')}},

-- Magneto Selector
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.Generic.magnetos_0'),     category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.1,  name = _('Input.Generic.magnetos_left'),  category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.2,  name = _('Input.Generic.magnetos_right'), category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.3,  name = _('Input.Generic.magnetos_both'),  category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_27, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.Generic.magnetos_plus'),  category = {_('Front Dash'), _('Engine Controls')}},
{                                                           down = device_commands.Button_27, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, name = _('Input.Generic.magnetos_minus'), category = {_('Front Dash'), _('Engine Controls')}},

-- DI
{                                                           pressed = device_commands.Button_54, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.Generic.di_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_54, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.Generic.di_plus'),  category = _('Front Dash')},

-- AH
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.AH, value_pressed = -1.0, name = _('Horizon pitch Decrease'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.AH, value_pressed = 1.0,  name = _('Horizon pitch Increase'), category = _('Front Dash')},
{                                                           down = device_commands.Button_8,    cockpit_device_id = devices.AH, value_down = 1.0,     name = _('Horizon Cage'),           category = _('Front Dash')},

-- Altimeter
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.Generic.altimeter_minus'),  category = _('Front Dash')},
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.Generic.altimeter_plus'),   category = _('Front Dash')},
-- Accelerometer
{                                                           down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.ACCELEROMETER, value_down = 1.0, value_up = 0.0, name = _('Input.Generic.accelerometer_reset'), category = _('Front Dash')},

-- Turbine Overspeed Lamp Test Button
{                                                           down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.turbine_test'),   category = _('Front Dash')},
-- Landing Warning Lamp Test Button
--{                                                           down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.ldg_test'),       category = _('Front Dash')},
-- Landing Warning Green Lamp Test Button, D-35 specific
{                                                           down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.ldg_green_test'), category = _('Front Dash')},
-- Landing Warning Red Lamp Test Button, D-35 specific
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.ldg_red_test'),   category = _('Front Dash')},
-- Fuel Pressure Lamp Test Button
{                                                           down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.fuel_test'),      category = _('Front Dash')},

-- Battery Switch
{                                                           down = device_commands.Button_32, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, name = _('Input.P47.battery_1'), category = {_('Front Dash'), _('Systems')}},
{                                                           down = device_commands.Button_32, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0, name = _('Input.P47.battery_0'), category = {_('Front Dash'), _('Systems')}},
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, name = _('Input.P47.battery'),   category = {_('Front Dash'), _('Systems')}},
-- ----------------------------------------------------------------------------------------



-- Drop Ordinance Arming Panel ------------------------------------------------------------
-- Stores Jettison Pull Handles
{                                                           down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.stores_jettison_lh'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.stores_jettison_rh'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.stores_jettison_b'),  category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- LH Wing Bomb Switch
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_lh_cover'),   category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_lh_cover_0'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_lh_cover_1'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_14, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_lh_es'),      category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_lh_es_0'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_lh_es_1'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- RH Wing Bomb Switch
{                                                           down = device_commands.Button_16, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_rh_cover'),   category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_rh_cover_0'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_rh_cover_1'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_rh_es'),      category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_rh_es_0'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_rh_es_1'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- Belly Bomb Switch
{                                                           down = device_commands.Button_20, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_b_cover'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_b_cover_0'),  category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_b_cover_1'),  category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_22, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_b_es'),       category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_bomb_b_es_0'),     category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_bomb_b_es_1'),     category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- LH Chemical Switch
{                                                           down = device_commands.Button_24, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_lh_cover'),   category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_23, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_chem_lh_cover_0'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_23, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_lh_cover_1'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_26, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_lh_es'),      category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_chem_lh_es_0'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_lh_es_1'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- RH Chemical Switch
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_rh_cover'),   category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_27, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_chem_rh_cover_0'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_27, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_rh_cover_1'), category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_30, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_rh_es'),      category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_29, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.oap_chem_rh_es_0'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
{                                                           down = device_commands.Button_29, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.oap_chem_rh_es_1'),    category = {_('Weapons'), _('Input.Generic.drop_ordinance_arming_panel')}},
-- ----------------------------------------------------------------------------------------



-- Port Wall - Throttle Quadrant ----------------------------------------------------------
-- Throttle Lever
{                                                           pressed = device_commands.Button_4,  cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Throttle Up'),                   category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_4,  cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Throttle Down'),                 category = _('Engine Controls')},
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.P47.nos'),      category = {_('Flight Control'), _('Engine Controls')}},
{                                                           down = device_commands.Button_16,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,                 name = _('Input.P47.nos_lock'), category = {_('Flight Control'), _('Engine Controls')}},
-- Airscrew Lever
{                                                           pressed = device_commands.Button_7,  cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Generic.pitch_plus'),      category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_7,  cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Generic.pitch_minus'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_37,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,     name = _('Input.P47.pitch_lock_0'),        category = _('Engine Controls')},
{                                                           down = device_commands.Button_37,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,     name = _('Input.P47.pitch_lock_1'),        category = _('Engine Controls')},
{                                                           down = device_commands.Button_38,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,     name = _('Input.P47.pitch_lock'),          category = _('Engine Controls')},
-- Boost Lever
{                                                           pressed = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.P47.boost_plus'),          category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.P47.boost_minus'),         category = _('Engine Controls')},
{                                                           down = device_commands.Button_39,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,     name = _('Input.P47.boost_lock_0'),        category = _('Engine Controls')},
{                                                           down = device_commands.Button_39,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,     name = _('Input.P47.boost_lock_1'),        category = _('Engine Controls')},
{                                                           down = device_commands.Button_40,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,     name = _('Input.P47.boost_lock'),          category = _('Engine Controls')},
-- Mix Lever
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,     name = _('Input.P47.mix_plus'),            category = _('Engine Controls')},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0,    name = _('Input.P47.mix_minus'),           category = _('Engine Controls')},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,     name = _('Input.P47.mix_0'),               category = _('Engine Controls')},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.1,     name = _('Input.P47.mix_1'),               category = _('Engine Controls')},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.2,     name = _('Input.P47.mix_2'),               category = _('Engine Controls')},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.3,     name = _('Input.P47.mix_3'),               category = _('Engine Controls')},
-- Frictioner Lever
{                                                           pressed = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Generic.friction_plus'),   category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Generic.friction_minus'),  category = _('Engine Controls')},
-- ----------------------------------------------------------------------------------------



-- Port Wall - Propellor Control Box ------------------------------------------------------
-- Propellor Control Switch
{                                                           down = device_commands.Button_31,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,                 name = _('Input.P47.prop_es_fixed'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.1, value_up = 0.0, name = _('Input.P47.prop_es_dec'),       category = _('Engine Controls')},
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.2, value_up = 0.0, name = _('Input.P47.prop_es_inc'),       category = _('Engine Controls')},
{                                                           down = device_commands.Button_31,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.3,                 name = _('Input.P47.prop_es_auto'),      category = _('Engine Controls')},
{                                                           down = device_commands.Button_30,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,                 name = _('Input.P47.prop_es_fa_toggle'), category = _('Engine Controls')},
-- Propellor Control CB
{                                                           down = device_commands.Button_86, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, name = _('Input.P47.cb_prop_1'), category = {_('Main Switch Box'), _('Engine Controls')}},
-- ----------------------------------------------------------------------------------------



-- Port Wall - Recovery Flaps Switch
{                                                           down = device_commands.Button_37, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.P47.crflaps_cover'),   category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_36, cockpit_device_id = devices.CONTROLS, value_down = 0.0,  name = _('Input.P47.crflaps_cover_0'), category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_36, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.P47.crflaps_cover_1'), category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_40, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.P47.crflaps_es'),      category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_39, cockpit_device_id = devices.CONTROLS, value_down = 0.0,  name = _('Input.P47.crflaps_es_up'),   category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_39, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.P47.crflaps_es_down'), category = {_('Flight Control'), _('Systems')}},



-- Port Wall - Main Switch Box ------------------------------------------------------------
-- Gun Sight Rheostat
{                                                           pressed = device_commands.Button_2,  cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = 0.7,  name = _('Gunsight brightness Increase'),     category = {_('Main Switch Box'), _('K-14 gunsight')}},
{                                                           pressed = device_commands.Button_2,  cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = -0.7, name = _('Gunsight brightness Decrease'),     category = {_('Main Switch Box'), _('K-14 gunsight')}},
-- Compass Light Rheostat
{                                                           pressed = device_commands.Button_5,  cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = 0.7,  name = _('Input.P47.compass_rheostat_plus'),  category = {_('Main Switch Box'), _('Environment System')}},
{                                                           pressed = device_commands.Button_5,  cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = -0.7, name = _('Input.P47.compass_rheostat_minus'), category = {_('Main Switch Box'), _('Environment System')}},
-- UV Instruments Light Rheostat
{                                                           pressed = device_commands.Button_2,  cockpit_device_id = devices.LH_C5,           value_pressed = 0.7,  name = _('Input.P47.uv_rheostat_plus'),       category = {_('Main Switch Box'), _('Environment System')}},
{                                                           pressed = device_commands.Button_2,  cockpit_device_id = devices.LH_C5,           value_pressed = -0.7, name = _('Input.P47.uv_rheostat_minus'),      category = {_('Main Switch Box'), _('Environment System')}},
-- Booster Pump(s) Control Rheostat
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = 0.7,  name = _('Input.P47.booster_rheostat_plus'),  category = {_('Main Switch Box'), _('Fuel System')}},
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_pressed = -0.7, name = _('Input.P47.booster_rheostat_minus'), category = {_('Main Switch Box'), _('Fuel System')}},

-- Wing Tips Nav. Lights Switch
{                                                           down = device_commands.Button_15,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.nav1_dim'),               category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_15,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.nav1_0'),                 category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_15,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.nav1_brt'),               category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_14,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.nav1'),                   category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_14,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.nav1_plus'),              category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_14,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.nav1_minus'),             category = {_('Main Switch Box')}},
-- Tail Nav. Light Switch
{                                                           down = device_commands.Button_18,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.nav2_dim'),               category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_18,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.nav2_0'),                 category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_18,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.nav2_brt'),               category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.nav2'),                   category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.nav2_plus'),              category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_17,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.nav2_minus'),             category = {_('Main Switch Box')}},
-- Landing Light Switch
{                                                           down = device_commands.Button_21,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.landing_light_ret'),      category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_21,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.landing_light_0'),        category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_21,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.landing_light_ext'),      category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_20,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,     name = _('Input.P47.landing_light'),          category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_20,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,     name = _('Input.P47.landing_light_plus'),     category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_20,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0,    name = _('Input.P47.landing_light_minus'),    category = {_('Main Switch Box')}},
-- Cockpit Light Switch
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.1,  value_up = 0.0, name = _('Input.P47.cockpit_light_mom'),   category = {_('Main Switch Box'), _('Environment System')}},
{                                                           down = device_commands.Button_23,                                 cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.2,                  name = _('Input.P47.cockpit_light_0'),     category = {_('Main Switch Box'), _('Environment System')}},
{                                                           down = device_commands.Button_23,                                 cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.3,                  name = _('Input.P47.cockpit_light_1'),     category = {_('Main Switch Box'), _('Environment System')}},
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.cockpit_light_plus'),  category = {_('Main Switch Box'), _('Environment System')}},
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, value_up = 0.0, name = _('Input.P47.cockpit_light_minus'), category = {_('Main Switch Box'), _('Environment System')}},

-- Generator Switch
{                                                           down = device_commands.Button_24,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.generator_1'),       category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_24,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,      name = _('Input.Generic.generator_0'),       category = {_('Main Switch Box')}},
{                                                           down = device_commands.Button_25,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.generator'),         category = {_('Main Switch Box')}},
-- Pitot Heater Switch
{                                                           down = device_commands.Button_26,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.pitot_1'),           category = {_('Main Switch Box'), _('Systems')}},
{                                                           down = device_commands.Button_26,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,      name = _('Input.Generic.pitot_0'),           category = {_('Main Switch Box'), _('Systems')}},
{                                                           down = device_commands.Button_27,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.pitot'),             category = {_('Main Switch Box'), _('Systems')}},
-- Oil Dilution Switch
{                                                           down = device_commands.Button_28,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.diluter_es_1'),      category = {_('Main Switch Box'), _('Engine Controls')}},
{                                                           down = device_commands.Button_28,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,      name = _('Input.Generic.diluter_es_0'),      category = {_('Main Switch Box'), _('Engine Controls')}},
{                                                           down = device_commands.Button_29,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.Generic.diluter_es'),        category = {_('Main Switch Box'), _('Engine Controls')}},

-- LG / FL Test Switch
{                                                           down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, value_up = 0.0, name = _('Input.P47.test1_fl'),  category = {_('Main Switch Box'), _('Systems')}},
{                                                           down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0 , value_up = 0.0, name = _('Input.P47.test1_lg'),  category = {_('Main Switch Box'), _('Systems')}},
-- OXY / TRB Test Switch
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, value_up = 0.0, name = _('Input.P47.test2_trb'), category = {_('Main Switch Box'), _('Systems')}},
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0 , value_up = 0.0, name = _('Input.P47.test2_oxy'), category = {_('Main Switch Box'), _('Systems')}},

-- LH Inboard Guns CB
{                                                           down = device_commands.Button_52,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_guns_li_1'),          category = {_('Main Switch Box')}},
-- LH Outboard Guns CB
{                                                           down = device_commands.Button_54,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_guns_lo_1'),          category = {_('Main Switch Box')}},
-- RH Inboard Guns CB
{                                                           down = device_commands.Button_56,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_guns_ri_1'),          category = {_('Main Switch Box')}},
-- RH Outboard Guns CB
{                                                           down = device_commands.Button_58,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_guns_ro_1'),          category = {_('Main Switch Box')}},
-- Fuel Pumps CB
{                                                           down = device_commands.Button_60,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_fpumps_1'),           category = {_('Main Switch Box')}},
-- Oil Cooler CB
{                                                           down = device_commands.Button_62,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_oil_cooler_1'),       category = {_('Main Switch Box')}},
-- Intercooler CB
{                                                           down = device_commands.Button_64,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_intercooler_1'),      category = {_('Main Switch Box')}},
-- Gun Relay and Gun Camera CB
{                                                           down = device_commands.Button_66,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_guns_relay_1'),       category = {_('Main Switch Box')}},
-- Gun Sight, Camera Heat & Water Injection CB
{                                                           down = device_commands.Button_68,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_gun_sight_1'),        category = {_('Main Switch Box')}},
-- Canopy Motor CB
{                                                           down = device_commands.Button_70,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_canopy_1'),           category = {_('Main Switch Box')}},
-- Landing Light CB
{                                                           down = device_commands.Button_72,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_llight_1'),           category = {_('Main Switch Box')}},
-- Warn. Instruments CB
{                                                           down = device_commands.Button_74,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_warnings_1'),         category = {_('Main Switch Box')}},
-- Internal Lighting CB
{                                                           down = device_commands.Button_76,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_clight_1'),           category = {_('Main Switch Box')}},
-- Pitot & Starter CB
{                                                           down = device_commands.Button_78,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_pitot_1'),            category = {_('Main Switch Box')}},
-- Position Lights + CB
{                                                           down = device_commands.Button_80,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_nlight_1'),           category = {_('Main Switch Box')}},
-- Recognition Lights + CB
{                                                           down = device_commands.Button_82,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_rlight_1'),           category = {_('Main Switch Box')}},
-- Radio CB
{                                                           down = device_commands.Button_84,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_radio_1'),            category = {_('Main Switch Box')}},
-- Drop Ordinance CB
{                                                           down = device_commands.Button_88,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_bombs1_1'),           category = {_('Main Switch Box')}},
-- Recovery Flaps CB
{                                                           down = device_commands.Button_90,    cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,      name = _('Input.P47.cb_crflaps_1'),          category = {_('Main Switch Box')}},
-- ----------------------------------------------------------------------------------------



-- Port Wall - Intercooler Flap Switch
{                                                           down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.intrclr_minus'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.intrclr_plus'),  category = _('Engine Controls')},
-- Port Wall - Oil Cooler Flap Switch
{                                                           down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.P47.oilclr_minus'),  category = _('Engine Controls')},
{                                                           down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.P47.oilclr_plus'),   category = _('Engine Controls')},
-- Port Wall - Guns Switch
{                                                           down = device_commands.Button_4, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.guns_cover'),     category = _('Weapons')},
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.guns_cover_0'),   category = _('Weapons')},
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.guns_cover_1'),   category = _('Weapons')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.WEAPONS, value_down = 1.0,  name = _('Input.P47.guns_es'),        category = _('Weapons')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.WEAPONS, value_down = 0.0,  name = _('Input.P47.guns_es_0'),      category = _('Weapons')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.WEAPONS, value_down = -1.0,  name = _('Input.P47.guns_es_both'),   category = _('Weapons')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.P47.guns_es_camera'), category = _('Weapons')},



-- Port Wall - Trim Control Box ------------------------------------------------------------
-- Aileron Trim Wheel
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Trim Aileron Right'),     category = _('Flight Control')},
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Trim Aileron Left'),      category = _('Flight Control')},
-- Elevator Trim Wheel
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Trim Elevator Up'),       category = _('Flight Control')},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Trim Elevator Down'),     category = _('Flight Control')},
-- Rudder Trim Wheel
{                                                           pressed = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Trim Rudder Left'),       category = _('Flight Control')},
{                                                           pressed = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Trim Rudder Right'),      category = _('Flight Control')},
-- ----------------------------------------------------------------------------------------



-- Port Wall - Undercarriage Extension Lever
{                                                           down = device_commands.Button_34, up = device_commands.Button_34, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Generic.uc'),   category = {_('Systems'), _('Hydraulic system')}},
{                                                           down = device_commands.Button_35,                                 cockpit_device_id = devices.CONTROLS, value_down = -1.0,                 name = _('Input.Generic.uc_0'), category = {_('Systems'), _('Hydraulic system')}},
{                                                           down = device_commands.Button_35,                                 cockpit_device_id = devices.CONTROLS, value_down = 1.0,                  name = _('Input.Generic.uc_1'), category = {_('Systems'), _('Hydraulic system')}},



-- Port Wall - Flaps Lever
{                                                           down = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 0.0,  name = _('Input.Generic.flaps_retract'), category = _('Flight Control')},
{                                                           down = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 0.5,  name = _('Input.Generic.flaps_neutral'), category = _('Flight Control')},
{                                                           down = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Generic.flaps_extend'),  category = _('Flight Control')},
{                                                           down = device_commands.Button_30, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Generic.flaps_plus'),    category = _('Flight Control')},
{                                                           down = device_commands.Button_30, cockpit_device_id = devices.CONTROLS, value_down = -1.0, name = _('Input.Generic.flaps_minus'),   category = _('Flight Control')},
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Generic.flaps'),         category = _('Flight Control')},
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 0.0, value_up = 0.5, name = _('Input.Generic.flaps_retract_hold'), category = _('Flight Control')},
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.5, name = _('Input.Generic.flaps_extend_hold'),  category = _('Flight Control')},



-- Port Wall - LH C5 Assy. Cover
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.LH_C5, value_pressed = 0.7,  name = _('Input.P47.lh_uv_rotating_cap_plus'),  category = {_('Environment System')}},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.LH_C5, value_pressed = -0.7, name = _('Input.P47.lh_uv_rotating_cap_minus'), category = {_('Environment System')}},



-- Starboard Wall - Recognition Lights Control Box ----------------------------------------
{                                                           down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0, value_up = 0.0, name = _('Input.P47.rlb_key'), category = _('Recognition Lights Control Box')},

{                                                           down = device_commands.Button_37, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_white'),     category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, name = _('Input.P47.rlb_white_key'), category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_white_0'),   category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,  name = _('Input.P47.rlb_white_1'),   category = _('Recognition Lights Control Box')},

{                                                           down = device_commands.Button_40, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_red'),       category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, name = _('Input.P47.rlb_red_key'),   category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_red_0'),     category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,  name = _('Input.P47.rlb_red_1'),     category = _('Recognition Lights Control Box')},

{                                                           down = device_commands.Button_43, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_green'),     category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, name = _('Input.P47.rlb_green_key'), category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_green_0'),   category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,  name = _('Input.P47.rlb_green_1'),   category = _('Recognition Lights Control Box')},

{                                                           down = device_commands.Button_46, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_amber'),     category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_47, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = -1.0, name = _('Input.P47.rlb_amber_key'), category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_47, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 0.0,  name = _('Input.P47.rlb_amber_0'),   category = _('Recognition Lights Control Box')},
{                                                           down = device_commands.Button_47, cockpit_device_id = devices.MAIN_SWITCH_BOX, value_down = 1.0,  name = _('Input.P47.rlb_amber_1'),   category = _('Recognition Lights Control Box')},
-- ----------------------------------------------------------------------------------------



-- Starboard Wall - Radio Remote Channel Switcher -----------------------------------------
-- Radio Remote Channel Switcher - Off Button
{                                                           down = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_0'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - A Button
{                                                           down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_a'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - B Button
{                                                           down = device_commands.Button_11, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_b'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - C Button
{                                                           down = device_commands.Button_12, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_c'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - D Button
{                                                           down = device_commands.Button_13, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_d'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Dimmer Toggle
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_0'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Transmit Lock Toggle
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_lock_0'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Mode Selector
{                                                           down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_t'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_r'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_mode_rem'), category = _('VHF Radio')},
-- Volume Knob
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.VHF_RADIO, value_pressed = -1.0, name = _('Input.Generic.radio_volume_minus'), category = {_('VHF Radio')}},
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.VHF_RADIO, value_pressed =  1.0, name = _('Input.Generic.radio_volume_plus'),  category = {_('VHF Radio')}},
-- ----------------------------------------------------------------------------------------


-- Starboard Wall - Detrola receiver ------------------------------------------------------
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.DETROLA, value_pressed = -1.0, name = _('Detrola Frequency Selector Decrease'), category = _('Detrola Receiver')},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.DETROLA, value_pressed = 1.0,  name = _('Detrola Frequency Selector Increase'), category = _('Detrola Receiver')},
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.DETROLA, value_pressed = -1.0, name = _('Detrola Volume Decrease'),             category = _('Detrola Receiver')},
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.DETROLA, value_pressed = 1.0,  name = _('Detrola Volume Increase'),             category = _('Detrola Receiver')},
-- ----------------------------------------------------------------------------------------



-- Starboard Wall - Oxygen Apparatus ------------------------------------------------------
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Oxygen regulator Emergency By-Pass Valve'),       category = _('Systems')},
{                                                           down = device_commands.Button_4, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Oxygen regulator Deluter lever Auto-Mix On-Off'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Starboard Wall - Tail Wheel Lock Lever
{                                                           down = device_commands.Button_43, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Generic.tail_wheel_lock'),   category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.Generic.tail_wheel_lock_0'), category = {_('Flight Control'), _('Systems')}},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Generic.tail_wheel_lock_1'), category = {_('Flight Control'), _('Systems')}},



-- Starboard Wall - RH C5 Assy. Cover
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.RH_C5, value_pressed = 0.7,  name = _('Input.P47.rh_uv_rotating_cap_plus'),  category = {_('Environment System')}},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.RH_C5, value_pressed = -0.7, name = _('Input.P47.rh_uv_rotating_cap_minus'), category = {_('Environment System')}},



-- Secret Radio Destruction Box -----------------------------------------------------------
{                                                          down = device_commands.Button_1, value_down = 1.0, up = device_commands.Button_1, value_up = 0.0, cockpit_device_id = devices.IFF, name = _('Input.P47.iff_button_0'), category = {_('Secret Radio and IFF')}},
{                                                          down = device_commands.Button_2, value_down = 1.0, up = device_commands.Button_2, value_up = 0.0, cockpit_device_id = devices.IFF, name = _('Input.P47.iff_button_1'), category = {_('Secret Radio and IFF')}},
-- ----------------------------------------------------------------------------------------



-- Deck - Main Fuel Tank Selector
{                                                           down = device_commands.Button_48, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, name = _('Input.P47.main_fuel_selector_next'),   category = _('Fuel System')},
{                                                           down = device_commands.Button_48, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.P47.main_fuel_selector_prev'),   category = _('Fuel System')},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.P47.main_fuel_selector_main'),   category = _('Fuel System')},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.25, name = _('Input.P47.main_fuel_selector_ext'),    category = _('Fuel System')},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.5,  name = _('Input.P47.main_fuel_selector_off'),    category = _('Fuel System')},
{                                                           down = device_commands.Button_49, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.75, name = _('Input.P47.main_fuel_selector_aux'),    category = _('Fuel System')},

-- Deck - Droptank Selector
{                                                           down = device_commands.Button_53, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.P47.droptank_selector'),        category = _('Fuel System')},
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0,  name = _('Input.P47.droptank_selector_next'),  category = _('Fuel System')},
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.P47.droptank_selector_prev'),    category = _('Fuel System')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.P47.droptank_selector_belly'),  category = _('Fuel System')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.5,  name = _('Input.P47.droptank_selector_lh'),     category = _('Fuel System')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.P47.droptank_selector_rh'),     category = _('Fuel System')},

-- Deck - Air Filter By-Pass Lever
{                                                           down = device_commands.Button_34, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.P47.airfilter_lever'),   category = _('Engine Controls')},
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.P47.airfilter_lever_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.P47.airfilter_lever_0'), category = _('Engine Controls')},

-- Deck - Hydraulic System Hand Pump
{                                                           down = device_commands.Button_52, up = device_commands.Button_52, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Generic.hydro_hand_pump'), category = {_('Systems'), _('Hydraulic system')}},

-- Deck - Carburettor Heater Lever
{                                                           pressed = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.P47.carb_air_heat_plus'),  category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.P47.carb_air_heat_minus'), category = _('Engine Controls')},



-- K-14 Gun Sight -------------------------------------------------------------------------
{                                                           pressed = device_commands.Button_14, cockpit_device_id = devices.K14_GUNSIGHT, value_pressed = -0.5, name = _('Gunsight target span Increase'),              category = _('K-14 gunsight')},
{                                                           pressed = device_commands.Button_14, cockpit_device_id = devices.K14_GUNSIGHT, value_pressed = 0.5,  name = _('Gunsight target span Decrease'),              category = _('K-14 gunsight')},
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.K14_GUNSIGHT, value_pressed = 0.7,  name = _('Gunsight range to target Increase'),          category = _('K-14 gunsight')},
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.K14_GUNSIGHT, value_pressed = -0.7, name = _('Gunsight range to target Decrease'),          category = _('K-14 gunsight')},
{                                                           down = device_commands.Button_9,     cockpit_device_id = devices.K14_GUNSIGHT, value_down = 1.0,     name = _('Gunsight fixed ring blanc lever'),            category = _('K-14 gunsight')},
{                                                           down = device_commands.Button_19,    cockpit_device_id = devices.K14_GUNSIGHT, value_down = 0.0,     name = _('Gunsight fixed ring blanc lever FIXED RING'), category = _('K-14 gunsight')},
{                                                           down = device_commands.Button_19,    cockpit_device_id = devices.K14_GUNSIGHT, value_down = 1.0,     name = _('Gunsight fixed ring blanc lever NO RING'),    category = _('K-14 gunsight')},
-- ----------------------------------------------------------------------------------------



-- Night Vision Goggles -------------------------------------------------------------------
{                                                           down = iCommandViewNightVisionGogglesOn,       name = _('Night Vision Goggles'),           category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Up,   name = _('Night Vision Goggles Gain Up'),   category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},
-- ----------------------------------------------------------------------------------------

-- FAC ------------------------------------------------------------------------------------
--{                                                           down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
--{                                                           down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
--{                                                           down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
-- ----------------------------------------------------------------------------------------
})

join(res.axisCommands, {
-- Defaults for joystick axes -------------------------------------------------------------
{combos = defaultDeviceAssignmentFor("roll"),               action = iCommandPlaneRoll,   name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch"),              action = iCommandPlanePitch,  name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"),             action = iCommandPlaneRudder, name = _('Rudder')},
-- ----------------------------------------------------------------------------------------

-- Flight Controls ------------------------------------------------------------------------
-- Steer Controls
{                                                           action = device_commands.Button_25, cockpit_device_id = devices.CONTROLS,    name = _('Wheel brake Both (analog)'),  category = {_('Flight Control'), _('Systems')}},
{                                                           action = device_commands.Button_26, cockpit_device_id = devices.CONTROLS,    name = _('Wheel brake Left (analog)'),  category = {_('Flight Control'), _('Systems')}},
{                                                           action = device_commands.Button_27, cockpit_device_id = devices.CONTROLS,    name = _('Wheel brake Right (analog)'), category = {_('Flight Control'), _('Systems')}},
-- ----------------------------------------------------------------------------------------

-- Main Panel(s) --------------------------------------------------------------------------
-- Altimeter
{                                                           action = device_commands.Button_12,  cockpit_device_id = devices.CONTROLS,                       name = _('Input.Generic.altimeter_slider'), category = _('Front Dash')},
-- Cowl Flaps Button
{                                                           action = device_commands.Button_57, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.P47.cowl_slider'), category = {_('Front Dash'), _('Engine Controls')}},
-- ----------------------------------------------------------------------------------------

-- Port Wall - Throttle Quadrant ----------------------------------------------------------
-- Throttle Lever
{                                                           action = device_commands.Button_5, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Throttle (analog)'), category = _('Engine Controls')},
-- Airscrew Lever
{                                                           action = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Generic.pitch_slider'), category = _('Engine Controls')},
-- Boost Lever
{                                                           action = device_commands.Button_11, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.P47.boost_slider'), category = _('Engine Controls')},
-- Mix Lever
{                                                           action = device_commands.Button_14, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.P47.mix_slider'), category = _('Engine Controls')},
-- Frictioner Lever
{                                                           action = device_commands.Button_20, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Generic.friction_slider'), category = _('Engine Controls')},
-- ----------------------------------------------------------------------------------------

-- Port Wall - Main Switch Box ------------------------------------------------------------
-- Gun Sight Rheostat
{                                                           action = device_commands.Button_3,   cockpit_device_id = devices.MAIN_SWITCH_BOX,                       name = _('K-14 Brightness')},
-- Compass Light Rheostat
{                                                           action = device_commands.Button_6,   cockpit_device_id = devices.MAIN_SWITCH_BOX,                       name = _('Input.P47.compass_rheostat_slider')},
-- UV Instruments Light Rheostat
{                                                           action = device_commands.Button_3,   cockpit_device_id = devices.LH_C5,                                 name = _('Input.P47.uv_rheostat_slider')},
-- Booster Pump(s) Control Rheostat
{                                                           action = device_commands.Button_12,  cockpit_device_id = devices.MAIN_SWITCH_BOX,                       name = _('Input.P47.booster_rheostat_slider')},
-- ----------------------------------------------------------------------------------------

-- Port Wall - Trim Control Box ------------------------------------------------------------
-- Aileron Trim Wheel
{                                                           action = device_commands.Button_3,  cockpit_device_id = devices.CONTROLS,                       name = _('Trim Aileron (analog)'),  category = _('Flight Control')},
-- Elevator Trim Wheel
{                                                           action = device_commands.Button_6,  cockpit_device_id = devices.CONTROLS,                       name = _('Trim Elevator (analog)'), category = _('Flight Control')},
-- Rudder Trim Wheel
{                                                           action = device_commands.Button_9,  cockpit_device_id = devices.CONTROLS,                       name = _('Trim Rudder (analog)'),   category = _('Flight Control')},
-- ----------------------------------------------------------------------------------------

-- Port Wall - Undercarriage Extension Lever
{                                                           action = device_commands.Button_56, cockpit_device_id = devices.CONTROLS, name = _('Input.Generic.uc_slider'), category = {_('Systems'), _('Hydraulic system')}},

-- Port Wall - Flaps Lever
{                                                           action = device_commands.Button_32, cockpit_device_id = devices.CONTROLS, name = _('Input.Generic.flaps_slider'), category = _('Flight Control')},

-- Port Wall - LH C5 Assy. Cover
{                                                           action = device_commands.Button_6, cockpit_device_id = devices.LH_C5, name = _('Input.P47.lh_uv_rotating_cap_slider')},

-- Starboard Wall - Radio Remote Channel Switcher -----------------------------------------
-- Volume Knob
{                                                           cockpit_device_id = devices.VHF_RADIO, action = device_commands.Button_19, name = _('Input.Generic.radio_volume_slider'), category = {_('VHF Radio')}},
-- ----------------------------------------------------------------------------------------

-- Starboard Wall - Tail Wheel Lock Lever
{                                                           action = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, name = _('Input.Generic.tail_wheel_lock_slider'), category = {_('Flight Control'), _('Systems')}},

-- Starboard Wall - RH C5 Assy. Cover
{                                                           action = device_commands.Button_6, cockpit_device_id = devices.LH_C5, name = _('Input.P47.rh_uv_rotating_cap_slider')},

-- Deck - Carburettor Heater Lever
{                                                           action = device_commands.Button_56, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.P47.carb_air_heat_slider'), category = _('Engine Controls')},

-- K-14 Gun Sight -------------------------------------------------------------------------
{                                                           action = device_commands.Button_21, cockpit_device_id = devices.K14_GUNSIGHT, name = _('K-14 Range to target')},
{                                                           action = device_commands.Button_12, cockpit_device_id = devices.K14_GUNSIGHT, name = _('K-14 Target span')},
-- ----------------------------------------------------------------------------------------
})

return res
