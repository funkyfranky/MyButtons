local cockpit = folder .. "../../../Cockpit/Scripts/"
dofile(cockpit .. "devices.lua")
dofile(cockpit .. "command_defs.lua")



local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")
join(res.keyCommands, {

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- _MyButtons v1.0 by FF: begin additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- CONTROLS
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.CONTROLS, value_down =-1.0, value_up = 0.0, name = _('Undercarriage RETRACT/NEUTRAL'), category = {_('Systems'), _('_My Buttons')}},
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Undercarriage EXTEND/NEUTRAL'), category = {_('Systems'), _('_My Buttons')}},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, value_down = 0.0, value_up = 0.5, name = _('Landing Flaps RETRACT/NEUTRAL'), category = {_('Flight Control'), _('_My Buttons')}},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.5, name = _('Landing Flaps EXTEND/NEUTRAL'), category = {_('Flight Control'), _('_My Buttons')}},
{down = device_commands.Button_42, up = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Brakes Purge ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_58, up = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Canopy OPEN/CLOSE'), category = {_('Systems'), _('_My Buttons')}},

-- ENGINE_CONTROLS
{down = device_commands.Button_1,  up = device_commands.Button_1,  cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Ignition Control Switch FORWARD/REAR Cabin'), category = {_('Engine Controls'), _('_My Buttons')}},
{down = device_commands.Button_1,  up = device_commands.Button_1,  cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Ignition Control Switch REAR/FORWARD Cabin'), category = {_('Engine Controls'), _('_My Buttons')}},
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Primer Selector CYLINDERS/OFF'), category = {_('Engine Controls'), _('_My Buttons')}},
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id = devices.ENGINE_CONTROLS, value_down =-1.0, value_up = 0.0, name = _('Primer Selector TRUNK/OFF'), category = {_('Engine Controls'), _('_My Buttons')}},
{down = device_commands.Button_62, up = device_commands.Button_62, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Carb. Heat ON/OFF'), category = {_('Engine Controls'), _('_My Buttons')}},  -- seemed to be reversed _1=0, _0=1
{down = device_commands.Button_50, up = device_commands.Button_50, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Main Fuel Cock ON/OFF'), category = {_('Engine Controls'), _('_My Buttons')}},
--{down = device_commands.Button_38, up = device_commands.Button_38, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Starter Cover OPEN/CLOSE'), category = {_('Engine Controls'), _('_My Buttons')}}, -- not working atm.

-- NAVIGATIONAL_CONTROLS
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Gyro-magnetic Compass Hemisphere SOUTHERN/NORTHERN'), category = {_('Right Side Panel'), _('GMC Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Gyro-magnetic Compass Hemisphere NORTHERN/SOUTHERN'), category = {_('Right Side Panel'), _('GMC Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_4,  up = device_commands.Button_4,  cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down =-1.0, value_up = 0.0, name = _('Gyro-magnetic Compass Mode MAGNETIC/GYRO'), category = {_('Right Side Panel'), _('GMC Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_4,  up = device_commands.Button_4,  cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0, value_up =-1.0, name = _('Gyro-magnetic Compass Mode GYRO/MAGNETIC'), category = {_('Right Side Panel'), _('GMC Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Radio-compass Listen Mode TELEPHONE/TELEGRAPH'), category = {_('Right Side Panel'), _('RDF Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Radio-compass Mode COMPASS/ANTENNA'), category = {_('Right Side Panel'), _('RDF Control Panel'), _('_My Buttons')}},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Marker Beacon OUTER/INNER'), category = {_('RDF Control Panel'), _('Front Dash'), _('_My Buttons')}},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Marker Beacon INNER/OUTER'), category = {_('RDF Control Panel'), _('Front Dash'), _('_My Buttons')}},

-- ELECTRICAL_CONTROLS
{down = device_commands.Button_3,  up = device_commands.Button_3,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0, value_up = 0.5, name = _('Battery Selector EXTERNAL/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_3,  up = device_commands.Button_3,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.5, name = _('Battery Selector BATTERY/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Generator ON/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Ignition ON/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Pitot Heating ON/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_15, up = device_commands.Button_14, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Engine Instruments ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Stall Warning System Heater ON/OFF'),category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Stall Warning System ON/OFF'), category = {_('Front Dash'), _('Right Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('VHF Radio ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Intercom ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('PAG-1F Converter ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Warning ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_38, up = device_commands.Button_38, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('PT-200 Converter ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Radio-compass ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Gyro-magnetic Compass ON/OFF'), category = {_('Left Circuit Breakers Panel'), _('_My Buttons')}},
{down = device_commands.Button_53, up = device_commands.Button_53, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Instruments Failure Simulation ON/OFF'),  category = {_('Front Dash'), _('Trainer Panel'), _('_My Buttons')}},
{down = device_commands.Button_56, up = device_commands.Button_56, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Instruments Failure - Horizon ON/OFF'),  category = {_('Front Dash'), _('Trainer Panel'), _('_My Buttons')}},
{down = device_commands.Button_59, up = device_commands.Button_59, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Instruments Failure - Speedometer ON/OFF'),  category = {_('Front Dash'), _('Trainer Panel'), _('_My Buttons')}},
{down = device_commands.Button_62, up = device_commands.Button_62, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Instruments Failure - Altitude And Variometer ON/OFF'),  category = {_('Front Dash'), _('Trainer Panel'), _('_My Buttons')}},

-- VHF_RADIO
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF Radio Squelch ON/OFF'), category = {_('Front Dash'), _('VHF Radio'), _('_My Buttons')}},

-- TERTIARY_CONTROLS
{down = device_commands.Button_38, up = device_commands.Button_38, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Fuel Quantity Indicator - Dimmer NIGHT/DAY'), category = {_('Front Dash'), _('_My Buttons')}},
{down = device_commands.Button_39, up = device_commands.Button_39, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Smoke Apparatus ON/OFF'), category = {_('Stick'), _('_My Buttons')}},

-- CHANGE SEAT
{down = iCommandViewCockpitChangeSeat, up = iCommandViewCockpitChangeSeat, value_down = 1, value_up = 2, name = _('Occupy Seat 1/2'), category = {_('View Cockpit'), _('_My Buttons')}},
{down = iCommandViewCockpitChangeSeat, up = iCommandViewCockpitChangeSeat, value_down = 2, value_up = 1, name = _('Occupy Seat 2/1'), category = {_('View Cockpit'), _('_My Buttons')}},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- _MyButtons by FF: end of additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- Temporary ------------------------------------------------------------------------------
{combos = {{key = 'Home', reformers = {'RWin'}}}, down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{combos = {{key = 'End', reformers = {'RWin'}}}, down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},
{                                                           down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
{combos = {{key = 'F1', reformers = {'LShift'}}},           down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Gameplay -------------------------------------------------------------------------------
{combos = {{key = '\'', reformers = {'RShift'}}},           down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{                                                           down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RShift'}}},        down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{combos = {{key = 'P', reformers = {'RShift'}}},            down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl', 'RWin'}}}, down = device_commands.Button_1, cockpit_device_id = devices.CREWE, value_down = 1.0, name = _('Show crew indicator'), category = _('General')},
-- ----------------------------------------------------------------------------------------



-- View Cockpit ---------------------------------------------------------------------------
{combos = {{key = '1'}},	down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Occupy Seat 1'),	category = _('View Cockpit')},
{combos = {{key = '2'}},	down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Occupy Seat 2'),	category = _('View Cockpit')},
{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Communications -------------------------------------------------------------------------
-- TODO move down and implement - Made Dragon
{combos = {{key = '\\', reformers = {'RAlt'}}},             down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},
-- ----------------------------------------------------------------------------------------



-- Flight Controls ------------------------------------------------------------------------
-- Steer Controls
{combos = {{key = 'Up'}},                                   down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _("Flight NOSE DOWN"), category = _('Flight Control')},
{combos = {{key = 'Down'}},                                 down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight NOSE UP'), category = _('Flight Control')},
{combos = {{key = 'Left'}},                                 down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight BANK LEFT'), category = _('Flight Control')},
{combos = {{key = 'Right'}},                                down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight BANK RIGHT'), category = _('Flight Control')},
{combos = {{key = 'Z'}},                                    down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight RUDDER LEFT'), category = _('Flight Control')},
{combos = {{key = 'X'}},                                    down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight RUDDER RIGHT'), category = _('Flight Control')},
{combos = {{key = ',', reformers = {'RShift'}}},            down = device_commands.Button_99, up = device_commands.Button_99, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER LEFT 1 NOTCH'), category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RShift'}}},            down = device_commands.Button_100, up = device_commands.Button_100, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER RIGHT 1 NOTCH'), category = _('Flight Control')},

-- Generic Flight Controls
{combos = {{key = 'E', reformers = {'LCtrl'}}},             down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},

-- Net-Specific Controls
{combos = {{key = 'J'}},                                    down = iCommandNetCrewRequestControl, name = _('Request Aircraft Control'), category = _('Flight Control')},
-- ----------------------------------------------------------------------------------------



-- ----------------------------------------------------------------------------------------
-- Yak-52-specific controls start here ----------------------------------------------------
-- ----------------------------------------------------------------------------------------



-- Joystick(s) ----------------------------------------------------------------------------
-- Wheel Brakes Lever
{combos = {{key = 'W'}},                                    pressed = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Input.Yak52.wheel_brakes'), category = _('Stick')},
{                                                           pressed = device_commands.Button_26, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.wheel_brakes_plus'),  category = _('Stick')},
{                                                           pressed = device_commands.Button_26, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.wheel_brakes_minus'), category = _('Stick')},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_27, name = _('Input.Yak52.wheel_brakes_slider', 'Wheel Brakes (analog)'), category = _('Stick')},
-- Wheel Brakes Lock
{                                                           down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.wheel_brakes_lock'), category = _('Stick')},
-- Wheel Brakes Purge
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.wheel_brakes_purge'), category = _('Stick')},
-- Smoke Apparatus Button
{                                                           down = device_commands.Button_39, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.Yak52.smoke_apparatus_1'), category = _('Stick')},
{                                                           down = device_commands.Button_39, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.Yak52.smoke_apparatus_0'), category = _('Stick')},
{                                                           down = device_commands.Button_40, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.Yak52.smoke_apparatus'),   category = _('Stick')},
-- ----------------------------------------------------------------------------------------



-- Main Panel(s) --------------------------------------------------------------------------
-- Magnetos Switch
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.magnetos_0'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.1,  name = _('Input.Yak52.magnetos_1'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.2,  name = _('Input.Yak52.magnetos_2'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.3,  name = _('Input.Yak52.magnetos_3'),     category = _('Engine Controls')},
{combos = {{key = 'End', reformers = {'LShift'}}},          down = device_commands.Button_9,  cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.magnetos_plus'),  category = _('Engine Controls')},
{combos = {{key = 'End', reformers = {'LCtrl'}}},           down = device_commands.Button_9,  cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0, name = _('Input.Yak52.magnetos_minus'), category = _('Engine Controls')},

-- Lamps Test Button
{                                                           down = device_commands.Button_50, up = device_commands.Button_50, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.lamps_test'), category = {_('Front Dash')}},

-- Stall Warning Control Button - Fore Pit
{                                                           down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.SSKUA1, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.stall_warning_test'), category = {_('Front Dash')}},

-- Ignition Source Selector Switch - Aft Pit
{                                                           down = device_commands.Button_1, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.ignitionsource_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_1, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.Yak52.ignitionsource_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_2, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.ignitionsource'),   category = _('Engine Controls')},

-- Starter Button Cover
{combos = {{key = 'Home', reformers = {'LShift'}}},         down = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.starter_cover'),   category = _('Engine Controls')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.Yak52.starter_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.starter_cover_1'), category = _('Engine Controls')},
-- Starter Button
{combos = {{key = 'Home'}},                                 down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.starter'), category = _('Engine Controls')},

-- Undercarriage Extension Lever
{combos = {{key = 'G'}},                                    down = device_commands.Button_7, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.uc'),         category = _('Systems')},
{                                                           down = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.uc_plus'),    category = _('Systems')},
{                                                           down = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_down = -1.0, name = _('Input.Yak52.uc_minus'),   category = _('Systems')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = -1.0, name = _('Input.Yak52.uc_retract'), category = _('Systems')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 0.0,  name = _('Input.Yak52.uc_0'),       category = _('Systems')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.uc_extend'),  category = _('Systems')},

-- Accelerometer
{                                                           down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.accelerometer'), category = _('Front Dash')},

-- Altimeter
{                                                           pressed = device_commands.Button_10, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.altimeter_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_10, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed =  1.0, name = _('Input.Yak52.altimeter_plus'),  category = _('Front Dash')},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.TERTIARY_CONTROLS, action = device_commands.Button_11, name = _('Input.Yak52.altimeter_slider', 'Altimeter Pressure Set (analog)'), category = _('Front Dash')},

-- AH
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.ah_zeroing_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed =  1.0, name = _('Input.Yak52.ah_zeroing_plus'),  category = _('Front Dash')},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.TERTIARY_CONTROLS, action = device_commands.Button_19, name = _('Input.Yak52.ah_zeroing_slider'), category = _('Front Dash')},
{                                                           down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.ah_arretir'), category = _('Front Dash')},

-- Clock Setter Pinion - Push /Pull
{                                                           down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.Yak52.clock_adjuster_pull'), category = _('Front Dash')},
{combos = {{key = 'Q', reformers = {'RShift'}}},            down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Yak52.clock_adjuster_push'), category = _('Front Dash')},
-- Clock Setter Pinion - Rotation
{combos = {{key = 'Q', reformers = {'RCtrl'}}},             pressed = device_commands.Button_32, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.clock_adjuster_minus'), category = _('Front Dash')},
{combos = {{key = 'Q', reformers = {'RAlt'}}},              pressed = device_commands.Button_32, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.clock_adjuster_plus'),  category = _('Front Dash')},
-- Clock Stopwatch Pinion - Push
{                                                           down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.clock_stopwatch_push'), category = _('Front Dash')},
-- Clock Stopwatch Pinion - Rotation
{                                                           down = device_commands.Button_34, up = device_commands.Button_34, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.clock_run'), category = _('Front Dash')},

-- Primer Pump
{                                                           down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.primer_pump'),      category = _('Engine Controls')},
{                                                           down = device_commands.Button_43,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.primer_next'),      category = _('Engine Controls')},
{                                                           down = device_commands.Button_43,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0,                name = _('Input.Yak52.primer_prev'),      category = _('Engine Controls')},
{                                                           down = device_commands.Button_44,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,                 name = _('Input.Yak52.primer_off'),       category = _('Engine Controls')},
{                                                           down = device_commands.Button_44,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = -1.0,                name = _('Input.Yak52.primer_trunk'),     category = _('Engine Controls')},
{                                                           down = device_commands.Button_44,                                 cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.primer_cylinders'), category = _('Engine Controls')},

-- HSI
{combos = {{key = 'H', reformers = {'LCtrl'}}},             pressed = device_commands.Button_8, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed = -0.1, name = _('Input.Yak52.hsi_minus'), category = _('Front Dash')},
{combos = {{key = 'H', reformers = {'LShift'}}},            pressed = device_commands.Button_8, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed = 0.1,  name = _('Input.Yak52.hsi_plus'),  category = _('Front Dash')},

-- Voltamperemeter
{                                                           down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.voltamperemeter'), category = _('Front Dash')},

-- Fuel Level Gauge Assy.
{                                                           down = device_commands.Button_36, up = device_commands.Button_36, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.fuel_gauge_test'),         category = _('Front Dash')},
{                                                           down = device_commands.Button_37,                                 cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.fuel_gauge_dimmer'),       category = _('Front Dash')},
{                                                           down = device_commands.Button_38,                                 cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0,                 name = _('Input.Yak52.fuel_gauge_dimmer_day'),   category = _('Front Dash')},
{                                                           down = device_commands.Button_38,                                 cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.fuel_gauge_dimmer_night'), category = _('Front Dash')},

-- BAKLAN-5 - Volume Knob
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.VHF_RADIO, value_pressed = -1.0, name = _('Input.Yak52.radio_volume_minus'),   category = {_('Front Dash'), _('VHF Radio')}},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.VHF_RADIO, value_pressed =  1.0, name = _('Input.Yak52.radio_volume_plus'),    category = {_('Front Dash'), _('VHF Radio')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.VHF_RADIO, action = device_commands.Button_4, name = _('Input.Yak52.radio_volume_slider'), category = {_('Front Dash'), _('VHF Radio')}},
-- BAKLAN-5 - LR/KHz Knob
{                                                           down = device_commands.Button_8,    cockpit_device_id = devices.VHF_RADIO, value_down = -0.1,    name = _('Input.Yak52.radio_tune_khz_minus'), category = {_('Front Dash'), _('VHF Radio')}},
{                                                           down = device_commands.Button_8,    cockpit_device_id = devices.VHF_RADIO, value_down =  0.1,    name = _('Input.Yak52.radio_tune_khz_plus'),  category = {_('Front Dash'), _('VHF Radio')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.VHF_RADIO, action = device_commands.Button_10, name = _('Input.Yak52.radio_tune_khz_slider'), category = {_('Front Dash'), _('VHF Radio')}},
-- BAKLAN-5 - HR/MHz Knob
{                                                           down = device_commands.Button_11,   cockpit_device_id = devices.VHF_RADIO, value_down = -0.1,    name = _('Input.Yak52.radio_tune_mhz_minus'), category = {_('Front Dash'), _('VHF Radio')}},
{                                                           down = device_commands.Button_11,   cockpit_device_id = devices.VHF_RADIO, value_down =  0.1,    name = _('Input.Yak52.radio_tune_mhz_plus'),  category = {_('Front Dash'), _('VHF Radio')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.VHF_RADIO, action = device_commands.Button_13, name = _('Input.Yak52.radio_tune_mhz_slider'), category = {_('Front Dash'), _('VHF Radio')}},
-- BAKLAN-5 - Squelch Toggle
{                                                           down = device_commands.Button_21,   cockpit_device_id = devices.VHF_RADIO, value_down = 1.0,     name = _('Input.Yak52.radio_squelch'),        category = {_('Front Dash'), _('VHF Radio')}},
{                                                           down = device_commands.Button_22,   cockpit_device_id = devices.VHF_RADIO, value_down = 0.0,     name = _('Input.Yak52.radio_squelch_0'),      category = {_('Front Dash'), _('VHF Radio')}},
{                                                           down = device_commands.Button_22,   cockpit_device_id = devices.VHF_RADIO, value_down = 1.0,     name = _('Input.Yak52.radio_squelch_1'),      category = {_('Front Dash'), _('VHF Radio')}},

    -- SPU-9 ------------------------------------------------------------------------------
    -- Intercom Volume Knob
    {                                                       pressed = device_commands.Button_21,                              cockpit_device_id = devices.INTERCOM, value_pressed = -1.0,             name = _('Input.Generic.intercom_volume_minus'),              category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       pressed = device_commands.Button_21,                              cockpit_device_id = devices.INTERCOM, value_pressed =  1.0,             name = _('Input.Generic.intercom_volume_plus'),               category = {_('Front Dash'), _('Intercom Control Panel')}},
    -- Radio Volume Knob
    {                                                       pressed = device_commands.Button_23,                              cockpit_device_id = devices.INTERCOM, value_pressed = -1.0,             name = _('Input.Generic.radio_volume_minus'),                 category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       pressed = device_commands.Button_23,                              cockpit_device_id = devices.INTERCOM, value_pressed =  1.0,             name = _('Input.Generic.radio_volume_plus'),                  category = {_('Front Dash'), _('Intercom Control Panel')}},
    -- Standby Distributive Amplifier Toggle
    {                                                       down = device_commands.Button_26,                                 cockpit_device_id = devices.INTERCOM, value_down = 1.0,                 name = _('Input.Generic.intercom_stby_distributive_cycle'),   category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_25,                                 cockpit_device_id = devices.INTERCOM, value_down = 0.0,                 name = _('Input.Generic.intercom_stby_distributive_set_off'), category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_25,                                 cockpit_device_id = devices.INTERCOM, value_down = 1.0,                 name = _('Input.Generic.intercom_stby_distributive_set_on'),  category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _('Input.Generic.intercom_stby_distributive_hon'),     category = {_('Front Dash'), _('Intercom Control Panel')}},
    -- Standby Distributive Amplifier Toggle
    {                                                       down = device_commands.Button_28,                                 cockpit_device_id = devices.INTERCOM, value_down = 1.0,                 name = _('Input.Generic.intercom_rdf_cycle'),                 category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_27,                                 cockpit_device_id = devices.INTERCOM, value_down = 0.0,                 name = _('Input.Generic.intercom_rdf_set_off'),               category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_27,                                 cockpit_device_id = devices.INTERCOM, value_down = 1.0,                 name = _('Input.Generic.intercom_rdf_set_on'),                category = {_('Front Dash'), _('Intercom Control Panel')}},
    {                                                       down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _('Input.Generic.intercom_rdf_hon'),                   category = {_('Front Dash'), _('Intercom Control Panel')}},
    -- ------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------



-- Starboard Circuit Breakers Panel (Fore) ------------------------------------------------
-- Battery Selector
{                                                           down = device_commands.Button_2,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_battery_plus'),  category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_2,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = -1.0, name = _('Input.Yak52.cb_battery_minus'), category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_3,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_battery_ext'),   category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_3,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.5,  name = _('Input.Yak52.cb_battery_off'),   category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_3,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_battery_batt'),  category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- Generator CB
{                                                           down = device_commands.Button_5,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_generator'),     category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_6,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_generator_0'),   category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_6,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_generator_1'),   category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- Ignition CB
{                                                           down = device_commands.Button_8,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_ignition'),      category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_9,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_ignition_0'),    category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_9,  cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_ignition_1'),    category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- Pitot Heater CB
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pitot'),         category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_pitot_0'),       category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pitot_1'),       category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- Oil Dilution Button
{                                                           down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.cb_oil_dilution'),          category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- SSKUA-1 Heater CB
{                                                           down = device_commands.Button_19,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.cb_stall_warning_heater'),  category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_20,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,                 name = _('Input.Yak52.cb_stall_warning_heater_0'),category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_20,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.cb_stall_warning_heater_1'),category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- SSKUA-1 CB
{                                                           down = device_commands.Button_22,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.cb_stall_warning'),         category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_23,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,                 name = _('Input.Yak52.cb_stall_warning_0'),       category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_23,                                 cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,                 name = _('Input.Yak52.cb_stall_warning_1'),       category = {_('Front Dash'), _('Right Circuit Breakers Panel')}},
-- ----------------------------------------------------------------------------------------



-- Starboard Trainer Panel (Aft) ----------------------------------------------------------
-- Master
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_master'),    category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_53, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_trainer_master_0'),  category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_53, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_master_1'),  category = {_('Front Dash'), _('Trainer Panel')}},
-- US-450
{                                                           down = device_commands.Button_55, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_speedo'),    category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_56, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_trainer_speedo_0'),  category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_56, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_speedo_1'),  category = {_('Front Dash'), _('Trainer Panel')}},
-- AGI-1
{                                                           down = device_commands.Button_58, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_ah'),        category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_trainer_ah_0'),      category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_ah_1'),      category = {_('Front Dash'), _('Trainer Panel')}},
-- DA-30 VD-10
{                                                           down = device_commands.Button_61, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_statics'),   category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_62, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_trainer_statics_0'), category = {_('Front Dash'), _('Trainer Panel')}},
{                                                           down = device_commands.Button_62, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_trainer_statics_1'), category = {_('Front Dash'), _('Trainer Panel')}},
-- ----------------------------------------------------------------------------------------



-- Port Circuit Breakers Panel (Fore) -----------------------------------------------------
-- Radio CB
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_radio'),                     category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_26, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_radio_0'),                   category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_26, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_radio_1'),                   category = {_('Left Circuit Breakers Panel')}},
-- Intercom CB
{                                                           down = device_commands.Button_28, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_intercom'),                  category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_29, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_intercom_0'),                category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_29, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_intercom_1'),                category = {_('Left Circuit Breakers Panel')}},
-- PAG-1 CB
{                                                           down = device_commands.Button_31, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pag1'),                      category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_32, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_pag1_0'),                    category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_32, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pag1_1'),                    category = {_('Left Circuit Breakers Panel')}},
-- U/C CB
{                                                           down = device_commands.Button_34, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_uc_indication'),             category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_uc_indication_0'),           category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_uc_indication_1'),           category = {_('Left Circuit Breakers Panel')}},
-- PT-200 CB
{                                                           down = device_commands.Button_37, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pt200'),                     category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_pt200_0'),                   category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_pt200_1'),                   category = {_('Left Circuit Breakers Panel')}},
-- Engine Instrumentation CB
{                                                           down = device_commands.Button_14, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_engine_instrumentation'),    category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_engine_instrumentation_0'),  category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_engine_instrumentation_1'),  category = {_('Left Circuit Breakers Panel')}},
-- RDF CB
{                                                           down = device_commands.Button_40, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_rdf'),                       category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_rdf_0'),                     category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_rdf_1'),                     category = {_('Left Circuit Breakers Panel')}},
-- SDG CB
{                                                           down = device_commands.Button_43, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_sdg'),                       category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.cb_sdg_0'),                     category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.ELECTRICAL_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.cb_sdg_1'),                     category = {_('Left Circuit Breakers Panel')}},
-- ----------------------------------------------------------------------------------------



-- Throttle Quadrant(s) -------------------------------------------------------------------
-- Throttle Lever
{combos = {{key = 'Num+'}},                                 pressed = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.throttle_plus'),  category = _('Engine Controls')},
{combos = {{key = 'Num-'}},                                 pressed = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.throttle_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_18, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.throttle_slider', 'Throttle (analog)'), category = _('Engine Controls')},

-- Pitch Lever
{combos = {{key = 'PageUp'}},                               pressed = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.pitch_plus'),  category = _('Engine Controls')},
{combos = {{key = 'PageDown'}},                             pressed = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.pitch_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_26, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.pitch_slider', 'Engine RPM (analog)'), category = _('Engine Controls')},

-- Frictioner Lever
{                                                           pressed = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.friction_plus'),  category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.friction_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_34, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.friction_slider'), category = _('Engine Controls')},
-- ----------------------------------------------------------------------------------------



-- Port Wall ------------------------------------------------------------------------------
-- Flaps Lever
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, value_down = 0.0,  name = _('Input.Yak52.flaps_retract'), category = _('Flight Control')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, value_down = 0.5,  name = _('Input.Yak52.flaps_neutral'), category = _('Flight Control')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.flaps_extend'),  category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LShift'}}},            down = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.flaps_plus'),    category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LCtrl'}}},             down = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_down = -1.0, name = _('Input.Yak52.flaps_minus'),   category = _('Flight Control')},
{combos = {{key = 'F'}},                                    down = device_commands.Button_18, cockpit_device_id = devices.CONTROLS, value_down = 1.0,  name = _('Input.Yak52.flaps'),         category = _('Flight Control')},

-- Fuel Cock
{combos = {{key = 'T'}},                                    down = device_commands.Button_49, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.fuel_cock'),   category = _('Engine Controls')},
{combos = {{key = 'T', reformers = {'LShift'}}},            down = device_commands.Button_50, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.Yak52.fuel_cock_1'), category = _('Engine Controls')},
{combos = {{key = 'T', reformers = {'LCtrl'}}},             down = device_commands.Button_50, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.Yak52.fuel_cock_0'), category = _('Engine Controls')},

-- Elevator Trim Wheel
{combos = {{key = '.', reformers = {'RCtrl'}}},             pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.trim_elevator_minus'), category = _('Flight Control')},
{combos = {{key = ';', reformers = {'RCtrl'}}},             pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.trim_elevator_plus'),  category = _('Flight Control')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_39, cockpit_device_id = devices.CONTROLS, name = _('Input.Yak52.trim_elevator_slider'), category = _('Flight Control')},

-- Pneumatic System Master Valve
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.pneumatics_valve_minus'), category = {_('Systems')}},
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed =  1.0, name = _('Input.Yak52.pneumatics_valve_plus'),  category = {_('Systems')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.TERTIARY_CONTROLS, action = device_commands.Button_43, name = _('Input.Yak52.pneumatics_valve_slider'), category = {_('Systems')}},

-- Wheel Brakes Purge Circuit Breaker
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Yak52.cb_wheel_brakes_purge'),   category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.Yak52.cb_wheel_brakes_purge_0'), category = {_('Left Circuit Breakers Panel')}},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Yak52.cb_wheel_brakes_purge_1'), category = {_('Left Circuit Breakers Panel')}},
-- ----------------------------------------------------------------------------------------



-- Starboard Wall -------------------------------------------------------------------------
-- Cooling Flaps Lever
{                                                           pressed = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.cooling_louvers_plus'),  category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.cooling_louvers_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_53, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.cooling_louvers_slider'), category = _('Engine Controls')},
-- Oil Radiator Lever
{                                                           pressed = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.oil_radiator_plus'),  category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.oil_radiator_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_56, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.oil_radiator_slider'), category = _('Engine Controls')},
-- Frictioner Lever
{                                                           pressed = device_commands.Button_58, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0,  name = _('Input.Yak52.rh_friction_plus'),  category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_58, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.rh_friction_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_59, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.Yak52.rh_friction_slider'), category = _('Engine Controls')},

-- Carburettor Heater Lever
{                                                           down = device_commands.Button_61, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.mix_heat'),   category = {_('Engine Controls')}},
{                                                           down = device_commands.Button_62, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0,  name = _('Input.Yak52.mix_heat_1'), category = {_('Engine Controls')}},
{                                                           down = device_commands.Button_62, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,  name = _('Input.Yak52.mix_heat_0'), category = {_('Engine Controls')}},

-- Pneumatic Emergency Valve 1 / 2
{                                                           pressed = device_commands.Button_50, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.emergency_valve_minus'), category = {_('Systems')}},
{                                                           pressed = device_commands.Button_50, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed =  1.0, name = _('Input.Yak52.emergency_valve_plus'),  category = {_('Systems')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.TERTIARY_CONTROLS, action = device_commands.Button_51, name = _('Input.Yak52.emergency_valve_slider'), category = {_('Systems')}},

-- SDG GMK-1A
{combos = {{key = 'U', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_1,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,                  name = _('Input.Yak52.sdg_hemisphere'),       category = {_('Right Side Panel'), _('GMC Control Panel')}},
{                                                           down = device_commands.Button_2,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,                  name = _('Input.Yak52.sdg_hemisphere_north'), category = {_('Right Side Panel'), _('GMC Control Panel')}},
{                                                           down = device_commands.Button_2,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,                  name = _('Input.Yak52.sdg_hemisphere_south'), category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'I', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_3,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,                  name = _('Input.Yak52.sdg_mode'),             category = {_('Right Side Panel'), _('GMC Control Panel')}},
{                                                           down = device_commands.Button_4,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = -1.0,                 name = _('Input.Yak52.sdg_mode_magnetic'),    category = {_('Right Side Panel'), _('GMC Control Panel')}},
{                                                           down = device_commands.Button_4,                                   cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,                  name = _('Input.Yak52.sdg_mode_gyro'),        category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'G', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_5,    up = device_commands.Button_5, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.Yak52.sdg_checkup_0'),        category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'Y', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_5,    up = device_commands.Button_5, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Yak52.sdg_checkup_300'),      category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'T', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_6,    up = device_commands.Button_6, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = -1.0, value_up = 0.0, name = _('Input.Yak52.sdg_course_minus'),     category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'M', reformers = {'RCtrl', 'RShift'}}},   down = device_commands.Button_6,    up = device_commands.Button_6, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,  value_up = 0.0, name = _('Input.Yak52.sdg_course_plus'),      category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'H', reformers = {'RCtrl', 'RShift'}}},   pressed = device_commands.Button_7,                                cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed = -0.2,              name = _('Input.Yak52.sdg_latitude_minus'),   category = {_('Right Side Panel'), _('GMC Control Panel')}},
{combos = {{key = 'J', reformers = {'RCtrl', 'RShift'}}},   pressed = device_commands.Button_7,                                cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed = 0.2,               name = _('Input.Yak52.sdg_latitude_plus'),    category = {_('Right Side Panel'), _('GMC Control Panel')}},

--- RDF ARK-15M
{                                                           down = device_commands.Button_10,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = -1.0,    name = _('Input.Yak52.rdf_channel_minus'),         category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_10,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.rdf_channel_plus'),          category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_11,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,     name = _('Input.Yak52.rdf_channel_1'),             category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_11,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.1,     name = _('Input.Yak52.rdf_channel_2'),             category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_11,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.2,     name = _('Input.Yak52.rdf_channel_3'),             category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_11,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.3,     name = _('Input.Yak52.rdf_channel_4'),             category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_11,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.4,     name = _('Input.Yak52.rdf_channel_p'),             category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_12,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.rdf_listen_mode'),           category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_13,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,     name = _('Input.Yak52.rdf_listen_mode_telegraph'), category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_13,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.rdf_listen_mode_telephone'), category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_14,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.rdf_mode'),                  category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_15,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,     name = _('Input.Yak52.rdf_mode_antenna'),          category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_15,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.rdf_mode_compass'),          category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed = -1.0, name = _('Input.Yak52.rdf_volume_minus'),          category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_pressed =  1.0, name = _('Input.Yak52.rdf_volume_plus'),           category = {_('Right Side Panel'), _('RDF Control Panel')}},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, action = device_commands.Button_17, name = _('Input.Yak52.rdf_volume_slider'), category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.rdf_loop'),    category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.Yak52.rdf_control'), category = {_('Right Side Panel'), _('RDF Control Panel')}},
{                                                           down = device_commands.Button_20,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.adf_marker'),                category = {_('RDF Control Panel'), _('Front Dash')}},
{                                                           down = device_commands.Button_21,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 0.0,     name = _('Input.Yak52.adf_marker_outer'),          category = {_('RDF Control Panel'), _('Front Dash')}},
{                                                           down = device_commands.Button_21,    cockpit_device_id = devices.NAVIGATIONAL_CONTROLS, value_down = 1.0,     name = _('Input.Yak52.adf_marker_inner'),          category = {_('RDF Control Panel'), _('Front Dash')}},
-- ----------------------------------------------------------------------------------------



-- Canopy Controls ------------------------------------------------------------------------
-- Canopy Movement Controls
{                                                           down = device_commands.Button_57, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Yak52.canopy'),   category = _('Systems')},
{combos = {{key = 'C', reformers = {'LCtrl'}}},             down = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.Yak52.canopy_0'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LShift'}}},            down = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.Yak52.canopy_1'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LCtrl', 'LShift'}}},   down = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 0.5, name = _('Input.Yak52.canopy_v'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Night Vision Goggles -------------------------------------------------------------------
{combos = {{key = 'H', reformers = {'RShift'}}},            down = iCommandViewNightVisionGogglesOn, name = _('Night Vision Goggles'), category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Up, name = _('Night Vision Goggles Gain Up'), category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},
-- ----------------------------------------------------------------------------------------

-- FAC ------------------------------------------------------------------------------------
--{combos = {{key = 'B', reformers = {'LWin'}}},              down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
--{combos = {{key = 'L', reformers = {'LAlt'}}},              down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
--{combos = {{key = 'Z', reformers = {'LWin'}}},              down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
-- ----------------------------------------------------------------------------------------



{                                                           down = device_commands.Button_53, up = device_commands.Button_53, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, value_up = 0.0, name = _('Radio Button'), category = {_('VHF Radio'), _('Communications'), _('Throttle Grip')}},
{                                                           down = device_commands.Button_54, up = device_commands.Button_54, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, value_up = 0.0, name = _('INT Button'), category = {_('VHF Radio'), _('Communications'), _('Throttle Grip')}},
})

return res
