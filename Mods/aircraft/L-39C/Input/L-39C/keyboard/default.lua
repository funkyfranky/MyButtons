local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")
local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")

-- L-39C

join(res.keyCommands,{

------------------------------------------------
-- Cheat -------------------------------------
------------------------------------------------
{combos = {{key = 'Home',  reformers = {'LWin'}}},	down = iCommandEnginesStart, name = _('Auto Start'),	category = _('Cheat')},
{combos = {{key = 'End' ,  reformers = {'LWin'}}},	down = iCommandEnginesStop,  name = _('Auto Stop') ,	category = _('Cheat')},


------------------------------------------------
-- General -------------------------------------
------------------------------------------------
{combos = {{key = 'P', reformers = {'RShift'}}},            down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},


------------------------------------------------
-- View Cockpit --------------------------------
------------------------------------------------
{combos = {{key = '1'}},	down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Occupy Seat 1'),	category = _('View Cockpit')},
{combos = {{key = '2'}},	down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Occupy Seat 2'),	category = _('View Cockpit')},
{combos = {{key = 'M' }},	down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},


------------------------------------------------
-- Flight Control ------------------------------
------------------------------------------------
{combos = {{key = 'Up'}},		down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = {_('Flight Control')}},
{combos = {{key = 'Down'}},		down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = {_('Flight Control')}},
{combos = {{key = 'Left'}},		down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = {_('Flight Control')}},
{combos = {{key = 'Right'}},	down = iCommandPlaneRightStart,			up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = {_('Flight Control')}},
{combos = {{key = 'Z'}},		down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = {_('Flight Control')}},
{combos = {{key = 'X'}},		down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = {_('Flight Control')}},
-- Trimmer
{combos = {{key = '.', reformers = {'RCtrl'}}},	down = iCommandPlaneTrimDown,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Elevator Trimmer Switch, PULL(CLIMB)'),	category = {_('Flight Control'), _('Stick Grip')}},
{combos = {{key = ';', reformers = {'RCtrl'}}},	down = iCommandPlaneTrimUp,		up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Elevator Trimmer Switch, PUSH(DESCEND)'),	category = {_('Flight Control'), _('Stick Grip')}},
{combos = {{key = ',', reformers = {'RCtrl'}}},	down = iCommandPlaneTrimLeft,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Aileron Trimmer Switch, LEFT'),			category = {_('Flight Control'), _('Stick Grip')}},
{combos = {{key = '/', reformers = {'RCtrl'}}},	down = iCommandPlaneTrimRight,	up = iCommandPlaneTrimStop,	value_down = 1,	value_up = 0,	name = _('Aileron Trimmer Switch, RIGHT'),			category = {_('Flight Control'), _('Stick Grip')}},
{combos = {{key = 'T', reformers = {'LCtrl'}}},	down = iCommandPlaneTrimCancel,																name = _('Trimmer - Reset Position'),				category = {_('Flight Control'), _('Stick Grip')}},
-- Throttle
{combos = {{key = 'Num+'}},							pressed = iCommandThrottleIncrease,	up = iCommandThrottleStop,									name = _('Thrust Smoothly Up'),						category = _('Flight Control')},
{combos = {{key = 'Num-'}},							pressed = iCommandThrottleDecrease,	up = iCommandThrottleStop,									name = _('Thrust Smoothly Down'),					category = _('Flight Control')},
{combos = {{key = 'PageUp'}},						down = iCommandPlaneAUTIncreaseRegime,															name = _('Thrust Step Up'),							category = _('Flight Control')},
{combos = {{key = 'PageDown'}},						down = iCommandPlaneAUTDecreaseRegime,															name = _('Thrust Step Down'),						category = _('Flight Control')},
{combos = {{key = 'Home', reformers = {'RAlt'}}},	down = iCommandLeftEngineStart,																	name = _('Throttle - IDLE'),						category = _('Flight Control')},
{combos = {{key = 'End', reformers = {'RAlt'}}},	down = iCommandLeftEngineStop,																	name = _('Throttle - STOP'),						category = _('Flight Control')},
{combos = {{key = 'Back', reformers = {'RAlt'}}},	down = device_commands.Button_12,	cockpit_device_id  = devices.MECHANICS,	value_down = 1.0,	name = _('Throttle Toggle Position - IDLE/STOP'),	category = _('Flight Control')},
--{													down = iCommandLeftEngineStop,	up = iCommandLeftEngineStart,									name = _("Throttle - Idle/Stop"),					category = _("Engine")},
-- Flaps
{combos = {{key = 'F'}},							down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,		value_down = 1,	value_up = 4,	name = _('Flaps Flight Position'),		category = {_('Flight Control'), _('Left Console')}},
{combos = {{key = 'F', reformers = {'LShift'}}},	down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,		value_down = 2,	value_up = 5,	name = _('Flaps TakeOff Position'),		category = {_('Flight Control'), _('Left Console')}},
{combos = {{key = 'F', reformers = {'LCtrl'}}},		down = iCommandPlaneFlaps,	up = iCommandPlaneFlaps,		value_down = 3,	value_up = 6,	name = _('Flaps Landing Position'),		category = {_('Flight Control'), _('Left Console')}},
-- Air Brake
{combos = {{key = 'B'}},						 	down = iCommandPlaneAirBrake,	up = iCommandPlaneAirBrake,	value_down = 1,	value_up = 0,	name = _('Airbrake Button'),			category = {_('Flight Control'), _('Throttle Grip')}},
{combos = {{key = 'B', reformers = {'LShift'}}},	down = iCommandPlaneAirBrakeOn,								value_down = 1,					name = _('Airbrake Switch - OPEN'),		category = {_('Flight Control'), _('Throttle Grip')}},
{combos = {{key = 'B', reformers = {'LCtrl'}}},		down = iCommandPlaneAirBrakeOff,							value_down = 1,					name = _('Airbrake Switch - CLOSE'),	category = {_('Flight Control'), _('Throttle Grip')}},
--
{combos = {{key = 'J'}},	down = iCommandNetCrewRequestControl,	name = _('Request Aircraft Control'),	category = _('Flight Control')},

------------------------------------------------
-- Systems -------------------------------------
------------------------------------------------
-- Landing Gear
{combos = {{key = 'G'}},							down = iCommandPlaneGear,		name = _('Landing Gear Handle, Up/Down'),	category = {_('Systems')}},
{combos = {{key = 'G', reformers = {'LCtrl'}}},		down = iCommandPlaneGearUp,		name = _('Landing Gear Handle, Up'),		category = {_('Systems')}},
{combos = {{key = 'G', reformers = {'LShift'}}},	down = iCommandPlaneGearDown,	name = _('Landing Gear Handle, Down'),		category = {_('Systems')}},
{combos = {{key = 'G', reformers = {'LAlt'}}},		down = device_commands.Button_15, cockpit_device_id  = devices.CTRL_INTERFACE, value_down = 1,	name = _('Landing Gear Handle, Neutral'),	category = {_('Systems'), _('Only Rear Cockpit')}},
-- Wheel Brake
{combos = {{key = 'W'}},									down = iCommandPlaneWheelBrakeOn,	up = iCommandPlaneWheelBrakeOff,	name = _('Wheel Brake On'),	category = {_('Systems')}},
{combos = {{key = 'W', reformers = {'LCtrl','LShift'}}},	pressed	= device_commands.Button_18,	cockpit_device_id = devices.CTRL_INTERFACE,	value_pressed = 1,	name = _('Emergency Wheel Brake - Up'),		category = {_('Left Console')}},
{combos = {{key = 'W', reformers = {'LCtrl','LAlt'}}},		pressed	= device_commands.Button_18,	cockpit_device_id = devices.CTRL_INTERFACE,	value_pressed = -1,	name = _('Emergency Wheel Brake - Down'),	category = {_('Left Console')}},
{combos = {{key = 'W', reformers = {'LAlt'}}},				down = device_commands.Button_25,		cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 0,		name = _('Parking Brake Off'),				category = {_('Left Console'), _('Only Front Cockpit')}},
-- Spotlight
{combos = {{key = 'S', reformers = {'RCtrl'}}},		down = iCommandPlane_SpotSelect_switch,	value_down = 1.0,	name = _('Spotlight Switch - LANDING'),	category = {_('Systems')}},
{combos = {{key = 'S', reformers = {'RAlt'}}},		down = iCommandPlane_SpotSelect_switch,	value_down = -1.0,	name = _('Spotlight Switch - TAXI'),	category = {_('Systems')}},
{combos = {{key = 'S', reformers = {'RShift'}}},	down = iCommandPlane_SpotSelect_switch,	value_down = 0.0,	name = _('Spotlight Switch - OFF'),		category = {_('Systems')}},
-- Cockpit lights
{combos = {{key = 'Y', reformers = {'RCtrl'}}},			down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Cockpit Lights Switch - RED'),				category = {_('Left Console')}},
{combos = {{key = 'Y', reformers = {'RAlt'}}},			down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Cockpit Lights Switch - WHITE'),				category = {_('Left Console')}},
{combos = {{key = 'Y', reformers = {'RShift'}}},		down = lights_commands.L39C_Command_LightsRedWhite_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Cockpit Lights Switch - OFF'),				category = {_('Left Console')}},
{combos = {{key = 'Y', reformers = {'RAlt','RShift'}}},	pressed = iCommandPlaneConsoleLightsIncrease,																	name = _('Cockpit Lights Brightness Rheostat - CW'),	category = {_('Left Console')}},
{combos = {{key = 'Y', reformers = {'RAlt','RCtrl'}}},	pressed = iCommandPlaneConsoleLightsDecrease,																	name = _('Cockpit Lights Brightness Rheostat - CCW'),	category = {_('Left Console')}},
{combos = {{key = 'Y', reformers = {'LShift'}}},		down = lights_commands.L39C_Command_EmergencyLight_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Emergency Cockpit Light Switch'),				category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
-- Warning lights
{combos = {{key = 'W', reformers = {'RCtrl'}}},			down = lights_commands.L39C_Command_WarningLightsTest_EXT,	up = lights_commands.L39C_Command_WarningLightsTest_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	value_up = 0.0,	name = _('Warning Lights Test Button'),					category = {_('Right Console')}},
{combos = {{key = 'W', reformers = {'RAlt','RShift'}}},	pressed = lights_commands.L39C_Command_WarningLightsBrightness_EXT,														cockpit_device_id = devices.LIGHTS,	value_pressed = 0.5,				name = _('Warning Lights Brightness Rheostat - CW'),	category = {_('Right Console')}},
{combos = {{key = 'W', reformers = {'RAlt','RCtrl'}}},	pressed = lights_commands.L39C_Command_WarningLightsBrightness_EXT,														cockpit_device_id = devices.LIGHTS,	value_pressed = -0.5,				name = _('Warning Lights Brightness Rheostat - CCW'),	category = {_('Right Console')}},
-- Fuel Shut-Off Lever
{combos = {{key = 'S', reformers = {'LAlt'}}},		down = iCommandLeftEngineFuelValveShutOff,	name = _('Fuel Shut-Off Lever - SHUT/OPEN'),	category = {_('Engine'), _('Left Console')}},
-- Pitot heating system
{combos = {{key = 'P', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_LeftPitotHeatingOn_EXT,	up = electric_commands.L39C_Command_LeftPitotHeatingOn_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Left Pitot Heating On Button'),	category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'P', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_RightPitotHeatingOn_EXT,	up = electric_commands.L39C_Command_RightPitotHeatingOn_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Right Pitot Heating On Button'),	category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'P', reformers = {'LAlt'}}},		down = electric_commands.L39C_Command_LeftPitotHeatingOff_EXT,	up = electric_commands.L39C_Command_LeftPitotHeatingOff_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Left Pitot Heating Off Button'),	category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'P', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_RightPitotHeatingOff_EXT,	up = electric_commands.L39C_Command_RightPitotHeatingOff_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Right Pitot Heating Off Button'),	category = {_('Left Console'), _('Only Front Cockpit')}},
-- Canopy
{combos = {{key = 'C', reformers = {'LCtrl'}}},				down = iCommandPlaneFonar, 																		name = _('Canopy Open/Close'),					category = {_('Systems')}},
{combos = {{key = 'C', reformers = {'LCtrl','LShift'}}},	down = iCommandCanopyJettison,	up = iCommandCanopyJettison,	value_down = 1,	value_up = 0,	name = _('Emergency Canopy Jettison Handle'),	category = {_('Systems')}},
{combos = {{key = 'C', reformers = {'LShift'}}},			down = device_commands.Button_13,	cockpit_device_id = devices.MECHANICS,	value_down = 0,		name = _('Canopy Lock Handle - LOCK/OPEN'),		category = {_('Systems')}},
-- Seat
{combos = {{key = 'S', reformers = {'LShift'}}},			down = iCommandPilotSeatAdjustmentUp  ,	up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Up'),	category = {_('Systems')}},
{combos = {{key = 'S', reformers = {'LShift','LAlt'}}},		down = iCommandPilotSeatAdjustmentDown,	up = iCommandPilotSeatAdjustmentStop, name = _('Seat Adjustment Down'),	category = {_('Systems')}},
-- Hood
{combos = {{key = 'S'}},								down = device_commands.Button_11, value_down = -1,	cockpit_device_id = devices.MECHANICS,	name = _('Hood - ON/OFF'),	category = {_('Only Rear Cockpit')}},
-- Emergency Systems Controls
{combos = {{key = 'G', reformers = {'RAlt','RShift'}}},	down = device_commands.Button_11,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Landing Gear Extension Lever - OPEN/CLOSE'),						category = {_('Right Console')}},
{														down = device_commands.Button_12,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Emergency Landing Gear Extension Lever - OPEN'),								category = {_('Right Console')}},
{														down = device_commands.Button_12,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Landing Gear Extension Lever - CLOSE'),								category = {_('Right Console')}},
{combos = {{key = 'F', reformers = {'RAlt','RShift'}}},	down = device_commands.Button_13,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Flaps Extension Lever - OPEN/CLOSE'),								category = {_('Right Console')}},
{														down = device_commands.Button_14,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Emergency Flaps Extension Lever - OPEN'),										category = {_('Right Console')}},
{														down = device_commands.Button_14,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Emergency Flaps Extension Lever - CLOSE'),									category = {_('Right Console')}},
{combos = {{key = 'T', reformers = {'RAlt','RShift'}}},	down = device_commands.Button_15,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('RAT (Emergency Generator) Emergency Lever - OPEN/CLOSE'),						category = {_('Right Console')}},
{														down = device_commands.Button_16,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('RAT (Emergency Generator) Emergency Lever - OPEN'),							category = {_('Right Console')}},
{														down = device_commands.Button_16,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('RAT (Emergency Generator) Emergency Lever - CLOSE'),							category = {_('Right Console')}},
{combos = {{key = 'H', reformers = {'RAlt','RShift'}}},	down = device_commands.Button_9,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - OPEN/CLOSE'),	category = {_('Right Console')}},
{														down = device_commands.Button_10,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - OPEN'),			category = {_('Right Console')}},
{														down = device_commands.Button_10,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,	name = _('Main and Emergency Hydraulic Systems Interconnection Lever - CLOSE'),			category = {_('Right Console')}},
-- Anti-Ice System
{combos = {{key = 'I', reformers = {'LAlt','LShift'}}},	down = device_commands.Button_10,	up = device_commands.Button_10,	cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,	value_up = 0,	name = _('RIO-3 De-Icing Sensor Heating Circuit Check Button'),	category = {_('Right Console'), _('Only Front Cockpit')}},
-- Suit
{combos = {{key = 'U', reformers = {'LAlt','LShift'}}},	pressed = device_commands.Button_17,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,	name = _('Suit Ventilation Air Louvre Rheostat - CW'),	category = {_('Instrument Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'U', reformers = {'LAlt','LCtrl'}}},	pressed = device_commands.Button_17,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,	name = _('Suit Ventilation Air Louvre Rheostat - CCW'),	category = {_('Instrument Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'U', reformers = {'RAlt'}}},			down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,		name = _('Suit Ventilation Mode Switch - AUTO'),		category = {_('Instrument Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'U', reformers = {'RShift'}}},		down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,		name = _('Suit Ventilation Mode Switch - HEAT'),		category = {_('Instrument Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'U', reformers = {'RCtrl'}}},			down = device_commands.Button_18,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,		name = _('Suit Ventilation Mode Switch - COOL'),		category = {_('Instrument Panel'), _('Only Front Cockpit')}},
-- ECS
{combos = {{key = '0', reformers = {'RAlt'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,		name = _('ECS and Pressurization Handle - OFF'),				category = {_('Right Console')}},
{combos = {{key = '0', reformers = {'RCtrl'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.3,		name = _('ECS and Pressurization Handle - CANOPIES SEALED'),	category = {_('Right Console')}},
{combos = {{key = '0', reformers = {'RShift'}}},		down = device_commands.Button_28,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,		name = _('ECS and Pressurization Handle - ECS ON'),				category = {_('Right Console')}},
{combos = {{key = '9', reformers = {'RShift'}}},		pressed = device_commands.Button_14,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,	name = _('ECS and Pressurization Handle - Forward'),			category = {_('Right Console')}},
{combos = {{key = '9', reformers = {'RCtrl'}}},			pressed = device_commands.Button_14,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,	name = _('ECS and Pressurization Handle - Backward'),			category = {_('Right Console')}},
-- Failures
{combos = {{key = 'F', reformers = {'LAlt'}}},			down = device_commands.Button_10,	cockpit_device_id = devices.KPP_1273K,	value_down = 0,			name = _('KPP Pitch Failure Switch - ON/OFF'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = 'F', reformers = {'RAlt'}}},			down = device_commands.Button_11,	cockpit_device_id = devices.KPP_1273K,	value_down = 0,			name = _('KPP Bank Failure Switch - ON/OFF'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = 'F', reformers = {'LAlt','LCtrl'}}},	down = device_commands.Button_4,	cockpit_device_id = devices.NPP,		value_down = 0,			name = _('GMC Failure Switch - ON/OFF'),			category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = 'F', reformers = {'RAlt','RCtrl'}}},	down = RKL_commands.CMD_SET_ARC_FAILURE_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 0,	name = _('ADF Failure Switch - ON/OFF'),			category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = '=', reformers = {'RCtrl'}}},		down = device_commands.Button_3,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1,			name = _('Static Pressure Failure Knob - CW'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = '-', reformers = {'RCtrl'}}},		down = device_commands.Button_3,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = -1,		name = _('Static Pressure Failure Knob - CCW'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.0,		name = _('Static Pressure Failure Knob - ON'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.5,		name = _('Static Pressure Failure Knob - STBY'),	category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_5,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1.0,		name = _('Static Pressure Failure Knob - FAILURE'),	category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = '=', reformers = {'RAlt'}}},		down = device_commands.Button_4,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1,			name = _('Full Pressure Failure Knob - CW'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{combos = {{key = '-', reformers = {'RAlt'}}},		down = device_commands.Button_4,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = -1,		name = _('Full Pressure Failure Knob - CCW'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.0,		name = _('Full Pressure Failure Knob - ON'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 0.5,		name = _('Full Pressure Failure Knob - STBY'),		category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_6,	cockpit_device_id = devices.FAILURES_PANEL,	value_down = 1.0,		name = _('Full Pressure Failure Knob - FAILURE'),	category = {_('Center Pedestal'), _('Only Rear Cockpit')}},
-- Pitot System Selector
{combos = {{key = 'P', reformers = {'LCtrl','LAlt'}}},		down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = -1,	name = _('Pitot Tube Selector Lever - LEFT/RIGHT'),	category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'P', reformers = {'LShift','LAlt'}}},		down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 0,		name = _('Pitot Tube Selector Lever - RIGHT'),		category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'P', reformers = {'LShift','LCtrl'}}},	down = device_commands.Button_23,	cockpit_device_id = devices.CTRL_INTERFACE,	value_down = 1,		name = _('Pitot Tube Selector Lever - LEFT'),		category = {_('Left Console'), _('Only Front Cockpit')}},
-- SARPP
{combos = {{key = 'D', reformers = {'RCtrl','RShift'}}},	down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = -1,	name = _('SARPP Flight Recorder Switch - ON/OFF'),	category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'RAlt','RCtrl'}}},		down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = 0,		name = _('SARPP Flight Recorder Switch - OFF'),		category = {_('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'RAlt','RShift'}}},		down = device_commands.Button_2,	cockpit_device_id = devices.SARPP,	value_down = 1,		name = _('SARPP Flight Recorder Switch - ON'),		category = {_('Left Console'), _('Only Front Cockpit')}},
--
{combos = {{key = 'E', reformers = {'LCtrl'}}},		down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},




-- Stick
{combos = {{key = 'Space', reformers = {'LCtrl'}}},	down = 3022,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1.0,	name = _('Weapon Fire Button Safety'),	category = _('Stick Grip')},
{combos = {{key = 'Space'}},						down = iCommandPlaneFire,	up = iCommandPlaneFireOff,							name = _('Weapon Fire Button'),			category = _('Stick Grip')},


------------------------------------------------
-- ASP-3NMU Gunsight ---------------------------
------------------------------------------------
{combos = {{key = 'J', reformers = {'RShift'}}},	down 	= device_commands.Button_15,	cockpit_device_id  = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Mode, GYRO/FIXED'),								category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'M', reformers = {'LAlt'}}},		down 	= device_commands.Button_13,	cockpit_device_id  = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Fixed Reticle Mask Lever'),						category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = ','}}, 							pressed = device_commands.Button_9,		cockpit_device_id  = devices.ASP_3NM,	value_pressed = 0.5,	name = _('ASP-3NMU Gunsight Target Wingspan Adjustment Dial, Increase'),	category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = '/'}}, 							pressed = device_commands.Button_9,		cockpit_device_id  = devices.ASP_3NM, 	value_pressed = -0.5,	name = _('ASP-3NMU Gunsight Target Wingspan Adjustment Dial, Decrease'),	category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'O', reformers = {'RCtrl'}}}, 	pressed = device_commands.Button_5,		cockpit_device_id  = devices.ASP_3NM, 	value_pressed = 1.0,	name = _('ASP-3NMU Gunsight Brightness Knob, Increase'),					category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'O', reformers = {'RAlt'}}}, 		pressed = device_commands.Button_5,		cockpit_device_id  = devices.ASP_3NM, 	value_pressed = -1.0,	name = _('ASP-3NMU Gunsight Brightness Knob Decrease'),						category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = ';'}}, 							pressed = device_commands.Button_10,	cockpit_device_id  = devices.ASP_3NM, 	value_pressed = 0.7,	name = _('ASP-3NMU Gunsight Target Distance, Increase'),					category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = '.'}}, 							pressed = device_commands.Button_10,	cockpit_device_id  = devices.ASP_3NM, 	value_pressed = -0.7,	name = _('ASP-3NMU Gunsight Target Distance, Decrease'),					category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'RAlt'}}},		down 	= device_commands.Button_14,	cockpit_device_id  = devices.ASP_3NM,	value_down = 1, 		name = _('ASP-3NMU Gunsight Color Filter, ON/OFF'),							category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'H', reformers = {'LShift'}}}, 	pressed = 3001 + 16,					cockpit_device_id  = devices.ASP_3NM, 	value_pressed =  0.1,   name = _('ASP-3NMU Gunsight Glass Raise'),									category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},
{combos = {{key = 'H', reformers = {'LAlt'}}}, 		pressed = 3001 + 16,					cockpit_device_id  = devices.ASP_3NM, 	value_pressed = -0.1,   name = _('ASP-3NMU Gunsight Glass Lower'),									category = {_('ASP-3NMU Gunsight'), _('Only Front Cockpit')}},

-- weapon system
{combos = {{key = 'W', reformers = {'LCtrl'}}}, 	down = iCommandPlaneJettisonWeapons, up = iCommandPlaneJettisonWeaponsUp, name = _('Jettison Weapons'), category = _('Emergency')},


------------------------------------------------
-- Instrument Panel ----------------------------
------------------------------------------------
-- Clock
{combos = {{key = 'C', reformers = {'RCtrl','RShift','RAlt'}}},	down = iCommandMechClock_LeftLever_Down, up = iCommandMechClock_LeftLever_Down_up,		name = _('AChS-1 Cockpit Chronograph Left Knob - Push'),			category = {_('Instrument Panel')}},
{combos = {{key = 'M', reformers = {'RShift'}}},				down = iCommandMechClock_LeftLever_Up,													name = _('AChS-1 Cockpit Chronograph Left Knob - Pull'),			category = {_('Instrument Panel')}},
{combos = {{key = '.', reformers = {'LAlt'}}},					pressed = iCommandMechClock_LeftLever_TurnRight,										name = _('AChS-1 Cockpit Chronograph Left Knob - Rotate right'),	category = {_('Instrument Panel')}},
{combos = {{key = ',', reformers = {'LAlt'}}},					pressed = iCommandMechClock_LeftLever_TurnLeft,											name = _('AChS-1 Cockpit Chronograph Left Knob - Rotate left'),		category = {_('Instrument Panel')}},
{combos = {{key = 'C', reformers = {'RShift','RAlt'}}},			down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down_up,	name = _('AChS-1 Cockpit Chronograph Right Knob - Push'),			category = {_('Instrument Panel')}},
{combos = {{key = ',', reformers = {'RCtrl','RShift'}}},		down = iCommandMechClock_RightLever_Rotate_left,										name = _('AChS-1 Cockpit Chronograph Right Knob - Rotate left'),	category = {_('Instrument Panel')}},
{combos = {{key = '.', reformers = {'RCtrl','RShift'}}},		down = iCommandMechClock_RightLever_Rotate_right,										name = _('AChS-1 Cockpit Chronograph Right Knob - Rotate right'),	category = {_('Instrument Panel')}},
-- Barometric Altimeter
{combos = {{key = '0', reformers = {'LCtrl'}}},					pressed = device_commands.Button_2,	cockpit_device_id = devices.VD_20_INPUT,	value_pressed = -1,	name = _('Barometric Pressure QFE Knob - CCW'),	category = {_('Instrument Panel')}},
{combos = {{key = '0', reformers = {'LShift'}}},				pressed = device_commands.Button_2,	cockpit_device_id = devices.VD_20_INPUT,	value_pressed =  1,	name = _('Barometric Pressure QFE Knob - CW'),	category = {_('Instrument Panel')}},
-- KPP
{combos = {{key = 'H', reformers = {'LWin'}}},					down = device_commands.Button_7,	up = device_commands.Button_7,	cockpit_device_id = devices.KPP_INPUT,	value_down = 1,	value_up = 0,	name = _('Artificial Horizon Cage'),						category = {_('Instrument Panel')}},
{combos = {{key = 'H', reformers = {'RShift'}}},				pressed = device_commands.Button_5, cockpit_device_id = devices.KPP_INPUT, value_pressed = -1,												name = _('Artificial Horizon Zero Pitch Trim Knob - CCW'),	category = {_('Instrument Panel')}},
{combos = {{key = 'H', reformers = {'RCtrl'}}},					pressed = device_commands.Button_5, cockpit_device_id = devices.KPP_INPUT, value_pressed =  1,												name = _('Artificial Horizon Zero Pitch Trim Knob - CW'),	category = {_('Instrument Panel')}},
-- NPP
{combos = {{key = 'K', reformers = {'LCtrl'}}},					pressed = device_commands.Button_4, cockpit_device_id = devices.NPP_INSTRUCTOR, value_pressed = -1,		name = _('Heading Knob - CCW'),	category = {_('Instrument Panel')}},
{combos = {{key = 'K', reformers = {'LShift'}}},				pressed = device_commands.Button_4, cockpit_device_id = devices.NPP_INSTRUCTOR, value_pressed =  1,		name = _('Heading Knob - CW'),	category = {_('Instrument Panel')}},
-- Variometer
{combos = {{key = 'V', reformers = {'LAlt','LCtrl'}}},			pressed = device_commands.Button_2,	cockpit_device_id = devices.VARIOMETERS_INPUT, value_pressed = -1,	name = _('Variometer Adjusting Knob - CCW'),	category = {_('Instrument Panel')}},
{combos = {{key = 'V', reformers = {'LAlt','LShift'}}},			pressed = device_commands.Button_2,	cockpit_device_id = devices.VARIOMETERS_INPUT, value_pressed = 1,	name = _('Variometer Adjusting Knob - CW'),		category = {_('Instrument Panel')}},
-- Radar Altimeter RV-5
{combos = {{key = '.', reformers = {'LShift'}}},				pressed = iCommandRALT_DangerousAltitudeRotaryRight,	name = _('Radar altimeter dangerous RALT set rotary right'),	category = {_('Instrument Panel')}},
{combos = {{key = ',', reformers = {'LShift'}}},				pressed = iCommandRALT_DangerousAltitudeRotaryLeft,		name = _('Radar altimeter dangerous RALT set rotary left'),		category = {_('Instrument Panel')}},
{combos = {{key = 'R', reformers = {'LShift','LAlt'}}},			down = iCommandRALT_Test, up = iCommandRALT_Test_up,	name = _('Radar altimeter test button'),						category = {_('Instrument Panel')}},


------------------------------------------------
-- Engine Control Panel ------------------------
------------------------------------------------
-- fire
{combos = {{key = 'E', reformers = {'LShift'}}},	down = iCommand_FireExting_ExtinguishersCover,	value_down = -1.0,															name = _('Fire Extinguish Button Cover - OPEN/CLOSE'),	category = {_('Engine'), _('Left Console')}},
{													down = iCommand_FireExting_ExtinguishersCover,	value_down = 1.0,															name = _('Fire Extinguish Button Cover - OPEN'),		category = {_('Engine'), _('Left Console')}},
{													down = iCommand_FireExting_ExtinguishersCover,	value_down = 0.0,															name = _('Fire Extinguish Button Cover - CLOSE'),		category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'E'}},							down = iCommand_FireExting_LeftEngineExting, up = iCommand_FireExting_LeftEngineExting,	value_down = 1.0,	value_up = 0.0,	name = _('Fire Extinguish Button'),						category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'E', reformers = {'RShift'}}},	down = iCommand_FireExting_TestGroups, up = iCommand_FireExting_TestGroups,	value_down = 1.0,	value_up = 0.0,				name = _('Fire Warning Signal Test Switch - I'),		category = {_('Engine'), _('Center Pedestal'), _('Only Front Cockpit')}},
{combos = {{key = 'E', reformers = {'RCtrl'}}},		down = iCommand_FireExting_TestGroups, up = iCommand_FireExting_TestGroups,	value_down = -1.0,	value_up = 0.0,				name = _('Fire Warning Signal Test Switch - II'),		category = {_('Engine'), _('Center Pedestal'), _('Only Front Cockpit')}},
-- vibration
{combos = {{key = 'V', reformers = {'LAlt'}}},		down = iCommand_ENG_INTERF_EngVibrDetectorBIT,	up = iCommand_ENG_INTERF_EngVibrDetectorBIT,	value_down = 1.0,	value_up = 0.0,	name = _('IV-300 Engine Vibration Test Button'),	category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
-- RT-12
{combos = {{key = 'T', reformers = {'LShift'}}},			down = engine_commands.CMD_RT_12_OFF_CVR_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Manual Disable Switch Cover - OPEN/CLOSE'),	category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_OFF_CVR_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Manual Disable Switch Cover - OPEN'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_OFF_CVR_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Manual Disable Switch Cover - CLOSE'),		category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'LAlt'}}},				down = engine_commands.CMD_RT_12_OFF_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Manual Disable Switch - DISABLED/ENABLED'),	category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_OFF_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Manual Disable Switch - DISABLED'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_OFF_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Manual Disable Switch - ENABLED'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'RAlt'}}},				down = engine_commands.CMD_RT_12_POWER_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Power Switch - ON/OFF'),						category = {_('Engine'), _('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_POWER_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Power Switch - ON'),							category = {_('Engine'), _('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_POWER_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Power Switch - OFF'),							category = {_('Engine'), _('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'RShift','RCtrl'}}},	down = engine_commands.CMD_RT_12_CHECK_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('RT-12 JPT Regulator Test Switch - OFF'),							category = {_('Engine'), _('Right Console'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'RShift'}}},			down = engine_commands.CMD_RT_12_CHECK_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Test Switch - I'),							category = {_('Engine'), _('Right Console'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'RCtrl'}}},				down = engine_commands.CMD_RT_12_CHECK_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Test Switch - II'),							category = {_('Engine'), _('Right Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_CHECK_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('RT-12 JPT Regulator Test Switch - CYCLE(UP)'),					category = {_('Engine'), _('Right Console'), _('Only Front Cockpit')}},
{															down = engine_commands.CMD_RT_12_CHECK_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('RT-12 JPT Regulator Test Switch - CYCLE(DOWN)'),					category = {_('Engine'), _('Right Console'), _('Only Front Cockpit')}},
-- EGT indicator
{combos = {{key = 'I', reformers = {'LShift','LCtrl'}}},	down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('EGT Indicator Switch - FRONT/REAR'),	category = {_('Engine'), _('Left Console'), _('Only Rear Cockpit')}},
{															down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('EGT Indicator Switch - FRONT'),		category = {_('Engine'), _('Left Console'), _('Only Rear Cockpit')}},
{															down = engine_commands.CMD_EGT_IND_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('EGT Indicator Switch - REAR'),		category = {_('Engine'), _('Left Console'), _('Only Rear Cockpit')}},
-- emergency fuel
{combos = {{key = 'F', reformers = {'RShift'}}}, 			down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Fuel Switch Cover - OPEN/CLOSE'),	category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Fuel Switch Cover - OPEN'),			category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EmergFuelSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Fuel Switch Cover - CLOSE'),		category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'F', reformers = {'RCtrl'}}},				down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Fuel Switch - ON/OFF'),				category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Fuel Switch - ON'),					category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EmergFuelSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Fuel Switch - OFF'),				category = {_('Engine'), _('Left Console')}},
-- start and stop
{combos = {{key = 'Home', reformers = {'RCtrl'}}}, 			down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,			name = _('Engine Start Button Cover - OPEN/CLOSE'),			category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,			name = _('Engine Start Button Cover - OPEN'),				category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,			name = _('Engine Start Button Cover - CLOSE'),				category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'Home'}},									down = electric_commands.L39C_Command_EngineSw_EXT,	up = electric_commands.L39C_Command_EngineSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	value_up = 0.0,	name = _('Engine Start Button'),	category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'End', reformers = {'RCtrl'}}}, 			down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,		name = _('Engine Stop Switch Cover - OPEN/CLOSE'),			category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,		name = _('Engine Stop Switch Cover - OPEN'),				category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineStopSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,		name = _('Engine Stop Switch Cover - CLOSE'),				category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'End'}},									down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,		name = _('Engine Stop Switch - STOP/OFF'),					category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,		name = _('Engine Stop Switch - STOP'),						category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_EngineStopSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,		name = _('Engine Stop Switch - OFF'),						category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'L', reformers = {'LCtrl','LShift'}}},	down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Engine Launch Method Switch Cover - OPEN/CLOSE'),	category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Engine Launch Method Switch Cover - OPEN'),		category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EngineStartModeSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Engine Launch Method Switch Cover - CLOSE'),		category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'LCtrl','LAlt'}}},		down = iCommandEngineLaunchMethod,	value_down = 0.0,																				name = _('Engine Launch Method Switch - STARTING'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'LCtrl'}}},				down = iCommandEngineLaunchMethod,	value_down = 0.1,																				name = _('Engine Launch Method Switch - PRESERV'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'LShift'}}},			down = iCommandEngineLaunchMethod,	value_down = 0.2,																				name = _('Engine Launch Method Switch - COLD ROTATION'),	category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EngineStartModeSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,		name = _('Engine Launch Method Switch - CYCLE(UP)'),		category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EngineStartModeSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,		name = _('Engine Launch Method Switch - CYCLE(DOWN)'),		category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'Home', reformers = {'LShift'}}},			down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,				name = _('Turbo Start Button Cover - OPEN/CLOSE'),			category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,				name = _('Turbo Start Button Cover - OPEN'),				category = {_('Engine'), _('Left Console')}},
{															down = electric_commands.L39C_Command_TurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,				name = _('Turbo Start Button Cover - CLOSE'),				category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'Home', reformers = {'LCtrl'}}},			down = iCommandPlane_APU_Start,	up = iCommandPlane_APU_Start,	value_down = 1.0,	value_up = 0.0,									name = _('Turbo Start Button'),								category = {_('Engine'), _('Left Console')}},
{combos = {{key = 'End', reformers = {'LShift'}}},			down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,			name = _('Turbo Stop Switch Cover - OPEN/CLOSE'),			category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,			name = _('Turbo Stop Switch Cover - OPEN'),					category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_StopTurboSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,			name = _('Turbo Stop Switch Cover - CLOSE'),				category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'End', reformers = {'LCtrl'}}},			down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,			name = _('Turbo Stop Switch - STOP/OFF'),					category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,			name = _('Turbo Stop Switch - STOP'),						category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_StopTurboSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,			name = _('Turbo Stop Switch - OFF'),						category = {_('Engine'), _('Left Console'), _('Only Front Cockpit')}},


------------------------------------------------
-- Communications ------------------------------
------------------------------------------------
-- R-832M
{combos = {{key = 'R', reformers = {'RAlt'}}},				down = iCommandPlaneUHFSquelch,	value_down = -1.0,	name = _('Radio Squelch Switch - ON/OFF'),		category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
{															down = iCommandPlaneUHFSquelch,	value_down = 1.0,	name = _('Radio Squelch Switch - ON'),			category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
{															down = iCommandPlaneUHFSquelch,	value_down = 0.0,	name = _('Radio Squelch Switch - OFF'),			category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
{combos = {{key = 'R', reformers = {'RShift','RCtrl'}}},	down = iCommandPlaneUHFStatus,						name = _('Toggle Radio Control Switch'),		category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
{combos = {{key = 'R', reformers = {'RShift'}}},			down = iCommandPlaneUHFPresetChannelSelectorInc,	name = _('Radio Channel Knob - Next'),			category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
{combos = {{key = 'R', reformers = {'RCtrl'}}},				down = iCommandPlaneUHFPresetChannelSelectorDec,	name = _('Radio Channel Knob - Previous'),		category = {_('Communications'), _('R-832M UHF Radio Control Panel')}},
-- Intercom
{combos = {{key = 'I', reformers = {'RShift'}}},			pressed = iCommandPlaneUHFVolumeInc,								name = _('Radio Volume Knob - Increase'),		category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'RCtrl'}}},				pressed = iCommandPlaneUHFVolumeDec,								name = _('Radio Volume Knob - Decrease'),		category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'LShift'}}},			pressed = iCommandPlaneIntercomVolumeIncrease,						name = _('Intercom Volume Knob - Increase'),	category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'LCtrl'}}},				pressed = iCommandPlaneIntercomVolumeDecrease,						name = _('Intercom Volume Knob - Decrease'),	category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'RAlt'}}},				down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = -1.0,	name = _('ADF Switch - ON/OFF'),				category = {_('Communications'), _('Intercom Control Panel')}},
{															down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = 1.0,	name = _('ADF Switch - ON'),					category = {_('Communications'), _('Intercom Control Panel')}},
{															down = iCommandPlane_R_800_ADF_Sound_switch,	value_down = 0.0,	name = _('ADF Switch - OFF'),					category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'LAlt'}}},				down = iCommandPlane_R_800_Emergency_Radio,		value_down = -1.0,	name = _('Reserve Intercom Switch - ON/OFF'),	category = {_('Communications'), _('Intercom Control Panel')}},
{															down = iCommandPlane_R_800_Emergency_Radio,		value_down = 1.0,	name = _('Reserve Intercom Switch - ON'),		category = {_('Communications'), _('Intercom Control Panel')}},
{															down = iCommandPlane_R_800_Emergency_Radio,		value_down = 0.0,	name = _('Reserve Intercom Switch - OFF'),		category = {_('Communications'), _('Intercom Control Panel')}},
{combos = {{key = 'I', reformers = {'RShift','RCtrl'}}},	down = iCommandPlaneIntercomINT,	up = iCommandPlaneIntercomINT,	value_down = 1.0,	value_up = 0.0,					name = _('INT Button'),				category = {_('Communications'), _('Throttle Grip')}},
{combos = {{key = 'I', reformers = {'RShift','RAlt'}}},		down = iCommandPlaneIntercomVHF,	up = iCommandPlaneIntercomVHF,	value_down = 1.0,	value_up = 0.0,					name = _('Radio Button'),			category = {_('Communications'), _('Throttle Grip')}},
{combos = {{key = 'I', reformers = {'RShift','RCtrl','RAlt'}}},	down = iCommandPlaneIntercomINTPress,	up = iCommandPlaneIntercomINTPress,	value_down = 1.0,	value_up = 0.0,		name = _('INT Button On Stick'),	category = {_('Communications'), _('Stick Grip'), _('Only Rear Cockpit')}},


------------------------------------------------
-- Aft CB Switch Panel ----------------------------
------------------------------------------------
-- toggle commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Conditioning Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Anti-Ice Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Left Pitot Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Right Pitot Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB PT-500 Inverter Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Radio Compass Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SRO Switch - ON/OFF'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Seat & Helmet Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Gears & Balance Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Control Switch - ON/OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Signaling Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Navigation Lights Switch - ON/OFF'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Left Spotlight Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Right Spotlight Switch - ON/OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Red Cockpit Lights Switch - ON/OFF'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB White Cockpit Lights Switch - ON/OFF'),	category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Start Panel Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Pump Switch - ON/OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Ignition 1 Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Ignition 2 Switch - ON/OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Engine Instruments Switch - ON/OFF'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Fire Switch - ON/OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Emergency Jettison Switch - ON/OFF'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SARPP Switch - ON/OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- on commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Conditioning Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Anti-Ice Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Left Pitot Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Right Pitot Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB PT-500 Inverter Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Radio Compass Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SRO Switch - ON'),							category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Seat & Helmet Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Gears & Balance Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Control Switch - ON'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Signaling Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Navigation Lights Switch - ON'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Left Spotlight Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Right Spotlight Switch - ON'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Red Cockpit Lights Switch - ON'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB White Cockpit Lights Switch - ON'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Start Panel Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Pump Switch - ON'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Ignition 1 Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Ignition 2 Switch - ON'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Engine Instruments Switch - ON'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Fire Switch - ON'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Emergency Jettison Switch - ON'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SARPP Switch - ON'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- off commands
-- line 1
{down = electric_commands.L39C_Command_CB_AirConditioning_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Conditioning Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_AntiIce_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Anti-Ice Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Left_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Left Pitot Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PVD_Right_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Right Pitot Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_PT500C_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB PT-500 Inverter Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ARC_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Radio Compass Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SRO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SRO Switch - OFF'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SeatHelmet_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Seat & Helmet Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 2
{down = electric_commands.L39C_Command_CB_Gears_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Gears & Balance Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Control_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Control Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Signaling_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Signaling Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_ANO_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Navigation Lights Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightLeft_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Left Spotlight Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SpotlightRight_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Right Spotlight Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightRed_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Red Cockpit Lights Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_LightWhite_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB White Cockpit Lights Switch - OFF'),		category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
-- line 3
{down = electric_commands.L39C_Command_CB_StartPanel_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Start Panel Switch - OFF'),				category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_BoosterPump_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Pump Switch - OFF'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition1_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Ignition 1 Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Ignition2_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Ignition 2 Switch - OFF'),					category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EngineInstruments_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Engine Instruments Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_Fire_EXT,					cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Fire Switch - OFF'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_EmergJettison_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Emergency Jettison Switch - OFF'),			category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},
{down = electric_commands.L39C_Command_CB_SARPP_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SARPP Switch - OFF'),						category = {_('Aft CB Switch Panel'), _('Only Front Cockpit')}},



------------------------------------------------
-- Main CB Switch Panel -----------------------
------------------------------------------------
{combos = {{key = '1', reformers = {'RShift'}}},	down = electric_commands.L39C_Command_BatterySw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Battery Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_BatterySw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Battery Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_BatterySw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Battery Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '2', reformers = {'RShift'}}},	down = electric_commands.L39C_Command_MainGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Main Generator Switch - ON/OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_MainGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Main Generator Switch - ON'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_MainGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Main Generator Switch - OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '3', reformers = {'RShift'}}},	down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Generator Switch - ON/OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Generator Switch - ON'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_EmergGeneratorSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Generator Switch - OFF'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '4', reformers = {'RShift'}}},	down = electric_commands.L39C_Command_CB_Engine_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Engine Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Engine_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Engine Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Engine_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Engine Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '5', reformers = {'RShift'}}},	down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB AGD-GMK Switch - ON/OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB AGD-GMK Switch - ON'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_AGD_GMK_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB AGD-GMK Switch - OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '1', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Inverter 1 (AC 115 V) Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Inverter 1 (AC 115 V) Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Converter1Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Inverter 1 (AC 115 V) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '2', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Inverter 2 (AC 115 V) Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Inverter 2 (AC 115 V) Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Converter2Sw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Inverter 2 (AC 115 V) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '3', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_CB_RTL_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RDO (ICS and Radio) Switch - ON/OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_RTL_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RDO (ICS and Radio) Switch - ON'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_RTL_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RDO (ICS and Radio) Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '4', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_CB_MRP_RV_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - ON/OFF'),	category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_MRP_RV_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - ON'),		category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_MRP_RV_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB MRP-RV (Marker Beacon Receiver and Radio Altimeter) Switch - OFF'),	category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '5', reformers = {'RCtrl'}}},		down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RSBN (ISKRA) Switch - ON/OFF'),										category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RSBN (ISKRA) Switch - ON'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_ISKRA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RSBN (ISKRA) Switch - OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '1', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB IFF (SRO) Emergency Connection Switch - ON/OFF'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB IFF (SRO) Emergency Connection Switch - ON'),							category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_EMERG_SRO_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB IFF (SRO) Emergency Connection Switch - OFF'),							category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '2', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - ON/OFF'),					category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - ON'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_EMERG_ISKRA_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RSBN (ISKRA) Emergency Connection Switch - OFF'),						category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '3', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Wing Tanks Switch - ON/OFF'),											category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Wing Tanks Switch - ON'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_WingTanks_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Wing Tanks Switch - OFF'),												category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '4', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_CB_RIO_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB RIO-3 De-Icing Signal Switch - ON/OFF'),								category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_RIO_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB RIO-3 De-Icing Signal Switch - ON'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_RIO_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB RIO-3 De-Icing Signal Switch - OFF'),									category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = '5', reformers = {'RAlt'}}},		down = electric_commands.L39C_Command_CB_SDU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB SDU Switch - ON/OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_SDU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB SDU Switch - ON'),														category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},
{													down = electric_commands.L39C_Command_CB_SDU_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB SDU Switch - OFF'),													category = {_('Main CB Switch Panel'), _('Only Front Cockpit')}},


------------------------------------------------
-- Miscellaneous CB Switch Panel --------------
------------------------------------------------
{combos = {{key = '1', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_NetSw_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Net Switch - ON/OFF'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_NetSw_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Net Switch - ON'),										category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_NetSw_EXT,				cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Net Switch - OFF'),										category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{combos = {{key = '2', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Seat Switch - ON/OFF'),								category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Seat Switch - ON'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Seat_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Seat Switch - OFF'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{combos = {{key = '3', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Signal Switch - ON/OFF'),								category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Signal Switch - ON'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Signal_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Signal Switch - OFF'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{combos = {{key = '4', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Arms Switch - ON/OFF'),								category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Arms Switch - ON'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Weapon_Instructor_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Arms Switch - OFF'),									category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{combos = {{key = '5', reformers = {'LCtrl'}}},		down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('CB Intercom Ground Switch - ON/OFF'),						category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('CB Intercom Ground Switch - ON'),							category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = electric_commands.L39C_Command_CB_Ground_SPU_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('CB Intercom Ground Switch - OFF'),						category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_20,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,	name = _('CB Air Conditioning Shutoff Switch Cover - OPEN/CLOSE'),	category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_20,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,	name = _('CB Air Conditioning Shutoff Switch Cover - OPEN'),		category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_20,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,	name = _('CB Air Conditioning Shutoff Switch Cover - CLOSE'),		category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_19,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,	name = _('CB Air Conditioning Shutoff Switch - OPEN'),				category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_19,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,	name = _('CB Air Conditioning Shutoff Switch - OFF'),				category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},
{													down = device_commands.Button_19,								cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,	name = _('CB Air Conditioning Shutoff Switch - CLOSE'),				category = {_('Miscellaneous CB Switch Panel'), _('Only Rear Cockpit')}},


------------------------------------------------
-- Oxygen Control Panel ------------------------
------------------------------------------------
{combos = {{key = 'O', reformers = {'LShift'}}},			down = iCommandPlane_Oxygen_Emergency,	value_down = -1.0,		name = _('Emergency Oxygen Switch - ON/OFF'),		category = {_('Oxygen Control Panel')}},
{															down = iCommandPlane_Oxygen_Emergency,	value_down = 1.0,		name = _('Emergency Oxygen Switch - ON'),			category = {_('Oxygen Control Panel')}},
{															down = iCommandPlane_Oxygen_Emergency,	value_down = 0.0,		name = _('Emergency Oxygen Switch - OFF'),			category = {_('Oxygen Control Panel')}},
{combos = {{key = 'O', reformers = {'LAlt'}}},				down = iCommandPlane_Oxygen_100Oxygen,	value_down = -1.0,		name = _('Oxygen Diluter Switch - 100%/NORMAL'),	category = {_('Oxygen Control Panel')}},
{															down = iCommandPlane_Oxygen_100Oxygen,	value_down = 1.0,		name = _('Oxygen Diluter Switch - 100%'),			category = {_('Oxygen Control Panel')}},
{															down = iCommandPlane_Oxygen_100Oxygen,	value_down = 0.0,		name = _('Oxygen Diluter Switch - NORMAL'),			category = {_('Oxygen Control Panel')}},
{combos = {{key = 'O', reformers = {'LCtrl','LShift'}}},	pressed = iCommandPlane_Oxygen_Supply,	value_pressed = 0.5,	name = _('Oxygen Supply Valve - CCW'),				category = {_('Oxygen Control Panel')}},
{combos = {{key = 'O', reformers = {'LCtrl','LAlt'}}},		pressed = iCommandPlane_Oxygen_Supply,	value_pressed = -0.5,	name = _('Oxygen Supply Valve - CW'),				category = {_('Oxygen Control Panel')}},
{combos = {{key = 'O', reformers = {'RCtrl','RShift'}}},	pressed = oxygen_commands.L39C_Command_OxygenDrainValve_EXT,	cockpit_device_id = devices.OXYGEN,	value_pressed = 0.5,	name = _('Oxygen Bottles Interconnect Valve - CCW'),	category = {_('Oxygen Control Panel'), _('Only Rear Cockpit')}},
{combos = {{key = 'O', reformers = {'RCtrl','RAlt'}}},		pressed = oxygen_commands.L39C_Command_OxygenDrainValve_EXT,	cockpit_device_id = devices.OXYGEN,	value_pressed = -0.5,	name = _('Oxygen Bottles Interconnect Valve - CW'),		category = {_('Oxygen Control Panel'), _('Only Rear Cockpit')}},


------------------------------------------------
-- Auxiliary Switch Panel ----------------------
------------------------------------------------
{combos = {{key = 'E', reformers = {'LAlt'}}},				down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,	name = _('Emergency Engine Instruments Power Switch - ON/OFF'),	category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1.0,	name = _('Emergency Engine Instruments Power Switch - ON'),		category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = electric_commands.L39C_Command_EmergencyEngineInstrumentsPower_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0.0,	name = _('Emergency Engine Instruments Power Switch - OFF'),	category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'B', reformers = {'RShift'}}},			down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Navigation Lights Intensity Control Switch - 100%'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'B', reformers = {'RAlt'}}},				down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.5,	name = _('Navigation Lights Intensity Control Switch - 30%'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'B', reformers = {'RCtrl'}}},				down = lights_commands.L39C_Command_BANO_Brightness_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Intensity Control Switch - 60%'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = lights_commands.L39C_Command_BANO_Brightness_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Intensity Control Switch - CYCLE(UP)'),						category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = lights_commands.L39C_Command_BANO_Brightness_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Navigation Lights Intensity Control Switch - CYCLE(DOWN)'),					category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'RShift'}}},			down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.0,	name = _('Navigation Lights Mode Control Switch - FLICKER'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'RAlt'}}},				down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 0.5,	name = _('Navigation Lights Mode Control Switch - OFF'),								category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'RCtrl'}}},				down = lights_commands.L39C_Command_BANO_SteadyFlash_EXT,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Mode Control Switch - FIXED LIGHTING'),						category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = lights_commands.L39C_Command_BANO_SteadyFlash_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = -1.0,	name = _('Navigation Lights Mode Control Switch - CYCLE(UP)'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = lights_commands.L39C_Command_BANO_SteadyFlash_ITER,	cockpit_device_id = devices.LIGHTS,	value_down = 1.0,	name = _('Navigation Lights Mode Control Switch - CYCLE(DOWN)'),						category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'RShift'}}},			down = device_commands.Button_21,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,				name = _('De-Icing Mode Switch - AUTOMATIC'),											category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'RAlt'}}},				down = device_commands.Button_21,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,				name = _('De-Icing Mode Switch - MANUAL'),												category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'RCtrl'}}},				down = device_commands.Button_21,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,				name = _('De-Icing Mode Switch - OFF'),													category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_26,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,				name = _('De-Icing Mode Switch - CYCLE(UP)'),											category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_26,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,				name = _('De-Icing Mode Switch - CYCLE(DOWN)'),											category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RShift'}}},			down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.0,				name = _('Cabin Air Conditioning Control Switch - AUTOMATIC'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RAlt'}}},				down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.1,				name = _('Cabin Air Conditioning Control Switch - HEAT'),								category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RCtrl'}}},				down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.2,				name = _('Cabin Air Conditioning Control Switch - COOL'),								category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RCtrl','RShift'}}},	down = device_commands.Button_16,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0.05,				name = _('Cabin Air Conditioning Control Switch - OFF'),								category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_27,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1.0,				name = _('Cabin Air Conditioning Control Switch - CYCLE(CW)'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_27,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1.0,				name = _('Cabin Air Conditioning Control Switch - CYCLE(CCW)'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RAlt','RShift'}}},		pressed = device_commands.Button_15,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = 0.5,			name = _('Cabin Air Temperature Controller Rheostat - CW'),								category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RAlt','RCtrl'}}},		pressed = device_commands.Button_15,	cockpit_device_id = devices.AIR_INTERFACE,	value_pressed = -0.5,			name = _('Cabin Air Temperature Controller Rheostat - CCW'),							category = {_('Auxiliary Switch Panel'), _('Only Front Cockpit')}},


------------------------------------------------
-- RSBN-5 Control Panel ------------------------
------------------------------------------------
{combos = {{key = 'S', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_2,									cockpit_device_id = devices.SDU,	value_down = -1.0,						name = _('SDU Switch - ON/OFF'),								category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{																down = device_commands.Button_2,									cockpit_device_id = devices.SDU,	value_down = 1.0,						name = _('SDU Switch - ON'),									category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{																down = device_commands.Button_2,									cockpit_device_id = devices.SDU,	value_down = 0.0,						name = _('SDU Switch - OFF'),									category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'LShift'}}},				down = device_commands.Button_14,									cockpit_device_id = devices.RSBN_5,	value_down = 0.1,						name = _('RSBN Mode Switch - NAVIGATION'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'LAlt'}}},					down = device_commands.Button_14,									cockpit_device_id = devices.RSBN_5,	value_down = 0.0,						name = _('RSBN Mode Switch - GLIDE PATH'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'LCtrl'}}},					down = device_commands.Button_14,									cockpit_device_id = devices.RSBN_5,	value_down = 0.2,						name = _('RSBN Mode Switch - LANDING'),							category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{																down = device_commands.Button_27,									cockpit_device_id = devices.RSBN_5,	value_down = 1.0,						name = _('RSBN Mode Switch - CYCLE(UP)'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{																down = device_commands.Button_27,									cockpit_device_id = devices.RSBN_5,	value_down = -1.0,						name = _('RSBN Mode Switch - CYCLE(DOWN)'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'I', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_15,	up = device_commands.Button_15,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN Identification Button'),							category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'T', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_16,	up = device_commands.Button_16,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN Test Button'),									category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'RAlt','RShift'}}},			pressed = device_commands.Button_17,								cockpit_device_id = devices.RSBN_5,	value_pressed = 0.5,					name = _('RSBN Control Box Lighting Intensity Knob - CW'),		category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'RAlt','RCtrl'}}},			pressed = device_commands.Button_17,								cockpit_device_id = devices.RSBN_5,	value_pressed = -0.5,					name = _('RSBN Control Box Lighting Intensity Knob - CCW'),		category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_18,									cockpit_device_id = devices.RSBN_5,	value_down = 1.0,						name = _('RSBN Navigation Channel - INCREASE'),					category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_18,									cockpit_device_id = devices.RSBN_5,	value_down = -1.0,						name = _('RSBN Navigation Channel - DECREASE'),					category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'RAlt','RShift'}}},			down = device_commands.Button_19,									cockpit_device_id = devices.RSBN_5,	value_down = 1.0,						name = _('RSBN Landing Channel - INCREASE'),					category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'N', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_19,									cockpit_device_id = devices.RSBN_5,	value_down = -1.0,						name = _('RSBN Landing Channel - DECREASE'),					category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'V', reformers = {'RAlt','RShift'}}},			pressed = device_commands.Button_20,								cockpit_device_id = devices.RSBN_5,	value_pressed = 0.5,					name = _('RSBN Volume Rheostat - CW'),							category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'V', reformers = {'RAlt','RCtrl'}}},			pressed = device_commands.Button_20,								cockpit_device_id = devices.RSBN_5,	value_pressed = -0.5,					name = _('RSBN Volume Rheostat - CCW'),							category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'RShift','RAlt','RCtrl'}}},	down = device_commands.Button_21,	up = device_commands.Button_21,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN-5 Azimuth 0 Setting Button'),					category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_22,	up = device_commands.Button_22,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN Azimuth Initial Setting Switch - INCREASE'),		category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'A', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_22,	up = device_commands.Button_22,	cockpit_device_id = devices.RSBN_5,	value_down = -1.0,	value_up = 0.0,		name = _('RSBN Azimuth Initial Setting Switch - DECREASE'),		category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_23,	up = device_commands.Button_23,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN Distance Initial Setting Switch - INCREASE'),	category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'D', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_23,	up = device_commands.Button_23,	cockpit_device_id = devices.RSBN_5,	value_down = -1.0,	value_up = 0.0,		name = _('RSBN Distance Initial Setting Switch - DECREASE'),	category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'L'}},										down = device_commands.Button_24,	up = device_commands.Button_24,	cockpit_device_id = devices.RSBN_5,	value_down = 1.0,	value_up = 0.0,		name = _('RSBN Listen Callsign Button'),						category = {_('RSBN-5 Control Panel'), _('Left Console'), _('Only Front Cockpit')}},
{combos = {{key = 'H', reformers = {'LAlt','LShift'}}},			pressed = device_commands.Button_25,								cockpit_device_id = devices.RSBN_5,	value_pressed = 0.3,					name = _('RSBN QNH Pressure Knob - CW'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'H', reformers = {'LAlt','LCtrl'}}},			pressed = device_commands.Button_25,								cockpit_device_id = devices.RSBN_5,	value_pressed = -0.3,					name = _('RSBN QNH Pressure Knob - CCW'),						category = {_('RSBN-5 Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'L', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_26,									cockpit_device_id = devices.RSBN_5,	value_down = -1,						name = _('RSBN Emergency Landing Mode On Switch - ON/OFF'),		category = {_('RSBN-5 Control Panel'), _('Only Rear Cockpit')}},
{																down = device_commands.Button_26,									cockpit_device_id = devices.RSBN_5,	value_down = 1,							name = _('RSBN Emergency Landing Mode On Switch - ON'),			category = {_('RSBN-5 Control Panel'), _('Only Rear Cockpit')}},
{																down = device_commands.Button_26,									cockpit_device_id = devices.RSBN_5,	value_down = 0,							name = _('RSBN Emergency Landing Mode On Switch - OFF'),		category = {_('RSBN-5 Control Panel'), _('Only Rear Cockpit')}},
{combos = {{key = 'X', reformers = {'LCtrl'}}},					down = device_commands.Button_3,	up = device_commands.Button_3,	cockpit_device_id = devices.NPP_INSTRUCTOR,	value_down = 1,	value_up = 0,	name = _('RSBN Course Accordance Button'),						category = {_('RSBN-5 Control Panel'), _('Only Rear Cockpit')}},


------------------------------------------------
-- GMK-1AE GMC Control Panel -------------------
------------------------------------------------
{combos = {{key = 'K', reformers = {'RAlt','RShift'}}},	pressed = device_commands.Button_10,								cockpit_device_id = devices.GMK1AE,	value_pressed = 0.1,				name = _('GMK-1AE GMC Latitude Selector Knob - CW'),		category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'K', reformers = {'RAlt','RCtrl'}}},	pressed = device_commands.Button_10,								cockpit_device_id = devices.GMK1AE,	value_pressed = -0.1,				name = _('GMK-1AE GMC Latitude Selector Knob - CCW'),		category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'M', reformers = {'RCtrl','RAlt'}}},	down = device_commands.Button_15,									cockpit_device_id = devices.GMK1AE,	value_down = 0,						name = _('GMK-1AE GMC Mode Switch - MC/GC'),				category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'M', reformers = {'RAlt'}}},			down = device_commands.Button_16,									cockpit_device_id = devices.GMK1AE,	value_down = 1,						name = _('GMK-1AE GMC Mode Switch - MC'),					category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'M', reformers = {'RCtrl'}}},			down = device_commands.Button_16,									cockpit_device_id = devices.GMK1AE,	value_down = -1,					name = _('GMK-1AE GMC Mode Switch - GC'),					category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'Z', reformers = {'RCtrl','RAlt'}}},	down = device_commands.Button_17,									cockpit_device_id = devices.GMK1AE,	value_down = 0,						name = _('GMK-1AE GMC Hemisphere Selection Switch - N/S'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'Z', reformers = {'RAlt'}}},			down = device_commands.Button_9,									cockpit_device_id = devices.GMK1AE,	value_down = 1,						name = _('GMK-1AE GMC Hemisphere Selection Switch - N'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'Z', reformers = {'RCtrl'}}},			down = device_commands.Button_9,									cockpit_device_id = devices.GMK1AE,	value_down = -1,					name = _('GMK-1AE GMC Hemisphere Selection Switch - S'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'X', reformers = {'RAlt'}}},			down = device_commands.Button_18,	up = device_commands.Button_18,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Test Switch - 0/OFF'),				category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'X', reformers = {'RCtrl'}}},			down = device_commands.Button_18,	up = device_commands.Button_18,	cockpit_device_id = devices.GMK1AE,	value_down = -1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Test Switch - 300/OFF'),				category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'C', reformers = {'RAlt'}}},			down = device_commands.Button_19,	up = device_commands.Button_19,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Course Selector Switch - DECREASE'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'C', reformers = {'RCtrl'}}},			down = device_commands.Button_19,	up = device_commands.Button_19,	cockpit_device_id = devices.GMK1AE,	value_down = -1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Course Selector Switch - INCREASE'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = 'S', reformers = {'RAlt','RShift'}}},	down = device_commands.Button_20,	up = device_commands.Button_20,	cockpit_device_id = devices.GMK1AE,	value_down = 1.0,	value_up = 0.0,	name = _('GMK-1AE GMC Synchronization Button'),				category = {_('GMK-1AE GMC Control Panel'), _('Instrument Panel')}},
{combos = {{key = 'M', reformers = {'LAlt','LShift'}}},	pressed = device_commands.Button_21,								cockpit_device_id = devices.GMK1AE,	value_pressed = 0.1,				name = _('GMK-1AE GMC Magnetic Declination Knob - CW'),		category = {_('GMK-1AE GMC Control Panel'), _('Only Rear Cockpit')}},
{combos = {{key = 'M', reformers = {'LAlt','LCtrl'}}},	pressed = device_commands.Button_21,								cockpit_device_id = devices.GMK1AE,	value_pressed = -0.1,				name = _('GMK-1AE GMC Magnetic Declination Knob - CCW'),	category = {_('GMK-1AE GMC Control Panel'), _('Only Rear Cockpit')}},


------------------------------------------------
-- RKL-41 ADF Control Panel --------------------
------------------------------------------------
{combos = {{key = 'D', reformers = {'LAlt'}}},					down = iCommandPlane_ADF_Mode_change,				value_down = 0.0,										name = _('RKL-41 ADF Function Switch - OFF'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'D', reformers = {'LShift'}}},				down = iCommandPlane_ADF_Mode_change,				value_down = 0.1,										name = _('RKL-41 ADF Function Switch - ADF(AUTO)'),							category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'D', reformers = {'LCtrl'}}},					down = iCommandPlane_ADF_Mode_change,				value_down = 0.2,										name = _('RKL-41 ADF Function Switch - ADF(MANUAL)'),						category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'D', reformers = {'LCtrl','LShift'}}},		down = iCommandPlane_ADF_Mode_change,				value_down = 0.3,										name = _('RKL-41 ADF Function Switch - ANTENNA'),							category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'D', reformers = {'LCtrl','LAlt','LShift'}}},	down = iCommandPlane_ADF_Mode_change,				value_down = 0.4,										name = _('RKL-41 ADF Function Switch - LOOP'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'L', reformers = {'RCtrl','RShift'}}},		down = iCommandPlane_ADF_Receiver_Mode_change,		value_down = -1.0,										name = _('RKL-41 ADF Mode Switch - TLF/TLG'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'L', reformers = {'RShift'}}},				down = iCommandPlane_ADF_Receiver_Mode_change,		value_down = 0.0,										name = _('RKL-41 ADF Mode Switch - TLF'),									category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'L', reformers = {'RCtrl'}}},					down = iCommandPlane_ADF_Receiver_Mode_change,		value_down = 1.0,										name = _('RKL-41 ADF Mode Switch - TLG'),									category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'C', reformers = {'RShift'}}},				down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = -1.0,	name = _('RKL-41 ADF Control Switch - FRONT/REAR'),							category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'C', reformers = {'RCtrl','RAlt'}}},			down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 0.0,	name = _('RKL-41 ADF Control Switch - FRONT'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'C', reformers = {'RCtrl','RShift'}}},		down = RKL_commands.CMD_RKL_41_TAKE_CONTROL_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 1.0,	name = _('RKL-41 ADF Control Switch - REAR'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'V', reformers = {'LShift'}}},				pressed = iCommandPlane_ADF_Volume_up,																		name = _('RKL-41 ADF Volume Knob - INCREASE'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'V', reformers = {'LCtrl'}}},					pressed = iCommandPlane_ADF_Volume_down,																	name = _('RKL-41 ADF Volume Knob - DECREASE'),								category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'J', reformers = {'LCtrl'}}},					down = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,		up = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	cockpit_device_id = devices.RKL_41,	value_down = -1.0,	value_up = 0.0,	name = _('RKL-41 ADF LOOP Switch - LEFT/OFF'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'J', reformers = {'LAlt'}}},					down = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,		up = RKL_commands.CMD_RKL_41_LOOP_L_R_EXT,	cockpit_device_id = devices.RKL_41,	value_down = 1.0,	value_up = 0.0,	name = _('RKL-41 ADF LOOP Switch - RIGHT/OFF'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'J', reformers = {'RAlt','RShift'}}},			pressed = RKL_commands.CMD_RKL_41_BRIGHTNESS_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.5,	name = _('RKL-41 ADF Brightness Knob - CW'),							category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'J', reformers = {'RAlt','RCtrl'}}},			pressed = RKL_commands.CMD_RKL_41_BRIGHTNESS_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.5,	name = _('RKL-41 ADF Brightness Knob - CCW'),							category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'B', reformers = {'RCtrl','RShift'}}},		down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Dial Selector Switch - FAR/NEAR'),					category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'B', reformers = {'RAlt','RShift'}}},			down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 0.0,		name = _('RKL-41 ADF Dial Selector Switch - FAR'),						category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = 'B', reformers = {'RAlt','RCtrl'}}},			down = RKL_commands.CMD_RKL_41_DIAL_SELECT_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Dial Selector Switch - NEAR'),						category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'LShift','LAlt'}}},			pressed = RKL_commands.CMD_RKL_41_DPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.2,	name = _('RKL-41 ADF Outer Beacon Frequency Tune Knob - CCW'),			category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'LShift','LAlt'}}},			pressed = RKL_commands.CMD_RKL_41_DPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.2,	name = _('RKL-41 ADF Outer Beacon Frequency Tune Knob - CW'),			category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'RCtrl'}}},					down = RKL_commands.CMD_RKL_41_DPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Outer Beacon 100 kHz Frequency Knob - DECREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'RCtrl'}}},					down = RKL_commands.CMD_RKL_41_DPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Outer Beacon 100 kHz Frequency Knob - INCREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'RCtrl','RShift'}}},		down = RKL_commands.CMD_RKL_41_DPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Outer Beacon 10 kHz Frequency Knob - DECREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'RCtrl','RShift'}}},		down = RKL_commands.CMD_RKL_41_DPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Outer Beacon 10 kHz Frequency Knob - INCREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'LShift','LCtrl'}}},		pressed = RKL_commands.CMD_RKL_41_BPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = -0.2,	name = _('RKL-41 ADF Inner Beacon Frequency Tune Knob - CCW'),			category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'LShift','LCtrl'}}},		pressed = RKL_commands.CMD_RKL_41_BPRS_TUNE_EXT,	cockpit_device_id = devices.RKL_41,	value_pressed = 0.2,	name = _('RKL-41 ADF Inner Beacon Frequency Tune Knob - CW'),			category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'RAlt'}}},					down = RKL_commands.CMD_RKL_41_BPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Inner Beacon 100 kHz Frequency Knob - DECREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'RAlt'}}},					down = RKL_commands.CMD_RKL_41_BPRS_100KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Inner Beacon 100 kHz Frequency Knob - INCREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = '[', reformers = {'RAlt','RShift'}}},			down = RKL_commands.CMD_RKL_41_BPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = -1.0,		name = _('RKL-41 ADF Inner Beacon 10 kHz Frequency Knob - DECREASE'),	category = {_('RKL-41 ADF Control Panel')}},
{combos = {{key = ']', reformers = {'RAlt','RShift'}}},			down = RKL_commands.CMD_RKL_41_BPRS_10KHz_EXT,		cockpit_device_id = devices.RKL_41,	value_down = 1.0,		name = _('RKL-41 ADF Inner Beacon 10 kHz Frequency Knob - INCREASE'),	category = {_('RKL-41 ADF Control Panel')}},


------------------------------------------------
-- Signal Flares Control Panel -----------------
------------------------------------------------
{combos = {{key = '`', reformers = {'LShift'}}},			down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Signal Flare Dispenser Power Switch - ON/OFF'),	category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '`', reformers = {'LAlt','LCtrl'}}},		down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Signal Flare Dispenser Power Switch - OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '`', reformers = {'LAlt','LShift'}}},		down = device_commands.Button_23,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Power Switch - ON'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 White Signal Flare Launch Button - ON/OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 White Signal Flare Launch Button - OFF'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '1', reformers = {'LShift'}}},			down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 White Signal Flare Launch Button - ON'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Red Signal Flare Launch Button - ON/OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Red Signal Flare Launch Button - OFF'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '2', reformers = {'LShift'}}},			down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Red Signal Flare Launch Button - ON'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Green Signal Flare Launch Button - ON/OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Green Signal Flare Launch Button - OFF'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '3', reformers = {'LShift'}}},			down = device_commands.Button_24,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Green Signal Flare Launch Button - ON'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('EKSR-46 Yellow Signal Flare Launch Button - ON/OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{															down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('EKSR-46 Yellow Signal Flare Launch Button - OFF'),		category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},
{combos = {{key = '4', reformers = {'LShift'}}},			down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('EKSR-46 Yellow Signal Flare Launch Button - ON'),			category = {_('Signal Flares Control Panel'), _('Only Front Cockpit')}},


------------------------------------------------
-- Armament Control Panel -----------------
------------------------------------------------
{combos = {{key = '5', reformers = {'LShift'}}},				down = device_commands.Button_28,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('CB Armament System Power Switch - ON/OFF'),						category = _('Armament Control Panel')},
{combos = {{key = '5', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('CB Armament System Power Switch - OFF'),							category = _('Armament Control Panel')},
{combos = {{key = '5', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_28,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('CB Armament System Power Switch - ON'),							category = _('Armament Control Panel')},
{combos = {{key = '6', reformers = {'LShift'}}},				down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('CB UB-16 Rocket Firing Control Circuit Power Switch - ON/OFF'),	category = _('Armament Control Panel')},
{combos = {{key = '6', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('CB UB-16 Rocket Firing Control Circuit Power Switch - OFF'),		category = _('Armament Control Panel')},
{combos = {{key = '6', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('CB UB-16 Rocket Firing Control Circuit Power Switch - ON'),		category = _('Armament Control Panel')},
{combos = {{key = '7', reformers = {'LShift'}}},				down = device_commands.Button_30,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - ON/OFF'),		category = _('Armament Control Panel')},
{combos = {{key = '7', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_30,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - OFF'),		category = _('Armament Control Panel')},
{combos = {{key = '7', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_30,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('CB ASP-FKP (Gunsight and Gun Camera) Power Switch - ON'),			category = _('Armament Control Panel')},
{combos = {{key = '8', reformers = {'LShift'}}},				down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('CB Missile Seeker Heating Circuit Power Switch - ON/OFF'),		category = _('Armament Control Panel')},
{combos = {{key = '8', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('CB Missile Seeker Heating Circuit Power Switch - OFF'),			category = _('Armament Control Panel')},
{combos = {{key = '8', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_31,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('CB Missile Seeker Heating Circuit Power Switch - ON'),			category = _('Armament Control Panel')},
{combos = {{key = '9', reformers = {'LShift'}}},				down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('CB Missile Seeker Glowing Circuit Power Switch - ON/OFF'),		category = _('Armament Control Panel')},
{combos = {{key = '9', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('CB Missile Seeker Glowing Circuit Power Switch - OFF'),			category = _('Armament Control Panel')},
{combos = {{key = '9', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_32,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('CB Missile Seeker Glowing Circuit Power Switch - ON'),			category = _('Armament Control Panel')},
{combos = {{key = 'R', reformers = {'RShift','RAlt','RCtrl'}}},	down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Missile/Bomb Release Selector Switch - PORT(Left)/STARB-BOTH(Right for Missiles/Both)'),	category = _('Armament Control Panel')},
{combos = {{key = 'R', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Missile/Bomb Release Selector Switch - STARB-BOTH(Right for Missiles/Both)'),				category = _('Armament Control Panel')},
{combos = {{key = 'R', reformers = {'RAlt','RShift'}}},			down = device_commands.Button_34,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Missile/Bomb Release Selector Switch - PORT(Left)'),										category = _('Armament Control Panel')},
{combos = {{key = '-', reformers = {'RShift'}}},				pressed = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -0.5,	name = _('Missile Seeker Tone Volume Knob - CCW'),							category = _('Armament Control Panel')},
{combos = {{key = '=', reformers = {'RShift'}}},				pressed = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 0.5,	name = _('Missile Seeker Tone Volume Knob - CW'),							category = _('Armament Control Panel')},
{combos = {{key = 'J', reformers = {'LAlt','LCtrl','LShift'}}},	down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Switch Cover - OPEN/CLOSE'),					category = _('Armament Control Panel')},
{combos = {{key = 'J', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Switch Cover - CLOSE'),						category = _('Armament Control Panel')},
{combos = {{key = 'J', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Switch Cover - OPEN'),							category = _('Armament Control Panel')},
{combos = {{key = 'K', reformers = {'LAlt','LCtrl','LShift'}}},	down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Emergency Jettison Switch - ON/OFF'),								category = _('Armament Control Panel')},
{combos = {{key = 'K', reformers = {'LAlt','LCtrl'}}},			down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Emergency Jettison Switch - OFF'),								category = _('Armament Control Panel')},
{combos = {{key = 'K', reformers = {'LAlt','LShift'}}},			down = device_commands.Button_38,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Emergency Jettison Switch - ON'),									category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'RCtrl','RShift'}}},		down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - OPEN/CLOSE'),	category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'RAlt','RCtrl'}}},			down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - CLOSE'),			category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'RAlt','RShift'}}},			down = device_commands.Button_35,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Arm/Safe Bombs Emergency Jettison Switch Cover - OPEN'),			category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'LShift'}}},				down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Arm/Safe Bombs Emergency Jettison Switch - LIVE'),				category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'LCtrl'}}},					down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Arm/Safe Bombs Emergency Jettison Switch - BLANK'),				category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'LAlt'}}},					down = device_commands.Button_36,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch - NEUTRAL'),				category = _('Armament Control Panel')},
{combos = {{key = 'U', reformers = {'LCtrl','LShift'}}},		down = device_commands.Button_40,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,			name = _('Arm/Safe Bombs Emergency Jettison Switch - LIVE/BLANK'),			category = _('Armament Control Panel')},
{combos = {{key = 'V', reformers = {'RShift'}}},				down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.1,		name = _('Rockets Firing Mode Selector Switch - AUT.'),						category = _('Armament Control Panel')},
{combos = {{key = 'V', reformers = {'RAlt'}}},					down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.2,		name = _('Rockets Firing Mode Selector Switch - 2RS'),						category = _('Armament Control Panel')},
{combos = {{key = 'V', reformers = {'RCtrl'}}},					down = device_commands.Button_39,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.3,		name = _('Rockets Firing Mode Selector Switch - 4RS'),						category = _('Armament Control Panel')},


})
return res
