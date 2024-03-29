local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

join(res.keyCommands,{

-- ff: begin additional buttons
{action = RSI_6K_commands.Mig15_Command_RSI6K_SetReceiverFrequency,		cockpit_device_id = devices.RSI_6K,	name = _('RSI-6K Antenna Control Handle (fvh)'),	category = {_('RSI-6K Radio')}},
-- ff: end additional buttons

-- Cheat
{down = iCommandEnginesStart, name = _('Auto Start'),	category = _('Cheat')},
{down = iCommandEnginesStop,  name = _('Auto Stop') ,	category = _('Cheat')},
{down = device_commands.Button_1, cockpit_device_id = devices.HINTS, value_down = 1.0, name = _('Hints On/Off'), category = _('Cheat')},

-- General
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot body'), category = _('General')},

-- Flight Control
{down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = _('Flight Control')},
{down = iCommandPlaneRightStart,		up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},

{down = iCommandPlaneTrimUp,	up = iCommandPlaneTrimUp,	 value_down = 1, value_up = 0, name = _('Elevator Trimmer Switch, PULL(CLIMB)'),	category = _('Flight Control')},
{down = iCommandPlaneTrimDown,	up = iCommandPlaneTrimDown,	 value_down = 1, value_up = 0, name = _('Elevator Trimmer Switch, PUSH(DESCEND)'),	category = _('Flight Control')},
{down = iCommandPlaneTrimLeft,	up = iCommandPlaneTrimLeft,	 value_down = 1, value_up = 0, name = _('Aileron Trimmer Switch, LEFT'),	category = _('Flight Control')},
{down = iCommandPlaneTrimRight,	up = iCommandPlaneTrimRight, value_down = 1, value_up = 0, name = _('Aileron Trimmer Switch, RIGHT'),	category = _('Flight Control')},

{pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Up'),	category = _('Flight Control')},
{pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Down'),	category = _('Flight Control')},

{down = iCommandPlaneAUTIncreaseRegime, name = _('Thrust Step Up'),	  category = _('Flight Control')},
{down = iCommandPlaneAUTDecreaseRegime, name = _('Thrust Step Down'), category = _('Flight Control')},

-- Systems
{down = iCommandPlaneAirBrake,		up = iCommandPlaneAirBrake,		value_down = 1,	value_up = 0,	name = _('Airbrake Button'),		category = _('Systems')},
{down = control_commands.Mig15_Command_AirBrakeSwitch_EXT, cockpit_device_id = devices.CONTROL_INTERFACE, 	value_down = 1, name = _('Airbrake Switch, Toggle'), category = _('Systems')},
{down = iCommandPlaneAirBrakeOn,	up = iCommandPlaneAirBrakeOn,	value_down = 1,	value_up = 0,	name = _('Airbrake Switch, OPEN'),	category = _('Systems')},
{down = iCommandPlaneAirBrakeOff,	up = iCommandPlaneAirBrakeOff, 	value_down = 1,	value_up = 0,	name = _('Airbrake Switch, CLOSE'),	category = _('Systems')},
{down = iCommandPlaneFlaps,					name = _('Wing Flaps Handle, Up/Down'),	category = _('Systems')},
{down = iCommandPlaneFlapsOn,				name = _('Wing Flaps Handle, Down'),		category = _('Systems')},
{down = iCommandPlaneFlapsOff,				name = _('Wing Flaps Handle, Up'),		category = _('Systems')},
{down = iCommandPlaneGear,					name = _('Landing Gear Handle'),		category = _('Systems')},
{down = iCommandPlaneGearUp,				name = _('Landing Gear Handle, Up'),			category = _('Systems')},
{down = gear_commands.Mig15_Command_LandingGearHandle, cockpit_device_id = devices.GEAR_INTERFACE, value_down = 0.5, name = _('Landing Gear Handle, Neutral'),	category = _('Systems')},
{down = iCommandPlaneGearDown,				name = _('Landing Gear Handle, Down'),			category = _('Systems')},
{down = gear_commands.Mig15_Command_LandingGearHandleCover_EXT,	cockpit_device_id = devices.GEAR_INTERFACE,	value_down = 1,	name = _('Landing Gear Handle Lock'),	category = _('Systems')},
{down = iCommandPlaneWheelBrakeOn,			up = iCommandPlaneWheelBrakeOff,		name = _('Wheel Brake On'),			category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn,		up = iCommandPlaneWheelBrakeOff,		name = _('Forced Wheel Brake On'),	category = _('Systems')},
{pressed = gear_commands.Mig15_Command_ExtendedWheelBrake_EXT,	up = gear_commands.Mig15_Command_ExtendedWheelBrake_EXT,	cockpit_device_id = devices.GEAR_INTERFACE,	value_pressed = 1.0,	value_up = 0.0,	name = _('Forced Axis Wheel Brake'),	category = _('Systems')},
{down = iCommandPlaneFonar, 				name = _('Canopy Open/Close'),			category = _('Systems')},
{down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},
{down = cptmech_commands.Mig15_Command_EmergencyCanopyJettisonHandle_EXT, cockpit_device_id = devices.CPT_MECH, value_down = 1, name = _('Emergency Canopy Jettison Handle'), category = _('Systems')},

{down = aihelper_commands.Mig15_Command_AIHelperOnOff,			cockpit_device_id = devices.AIHelper, value_down = 1, name = _('Toggle AI Helper, On/Off'), category = _('Systems')},
{down = aihelper_commands.Mig15_Command_AIHelperIgnorePrompt,	cockpit_device_id = devices.AIHelper, value_down = 1, name = _('Ignore Current AI Helper Prompt'), category = _('Systems')},

--{down = iCommandPlaneWingtipSmokeOnOff,		name = _('Smoke'),						category = _('Systems')},
--{down = iCommandPlaneJettisonWeapons, up = iCommandPlaneJettisonWeaponsUp, name = _('Weapons Jettison'), category = _('Systems')},
--{down = iCommandPlaneJettisonFuelTanks, up   = iCommandPlaneJettisonFuelTanksUp, name = _('Jettison Fuel Tanks'), category = _('Systems')},

--{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
--{down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
--{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

-- Instrument Panel
{down = device_commands.Button_7, cockpit_device_id = devices.AGK47B, value_down = 1,	name = _('AGK-47B Artificial Horizon Cage'),					category = _('Instrument Panel')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.AGK47B, value_pressed = -1, name = _('AGK-47B Artificial Horizon Zero Pitch Trim Knob, CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.AGK47B, value_pressed =  1, name = _('AGK-47B Artificial Horizon Zero Pitch Trim Knob, CW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER, value_pressed = -1, name = _('Barometric Pressure QFE Knob, CCW'),	category = _('Instrument Panel')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER, value_pressed =  1, name = _('Barometric Pressure QFE Knob, CW'),	category = _('Instrument Panel')},
{down = device_commands.Button_6, cockpit_device_id = devices.RADAR_ALTIMETER, value_down = 1,	name = _('PRV-46 Radar Altimeter Indicator Range Switch'),	category = _('Instrument Panel')},
{down = device_commands.Button_5, cockpit_device_id = devices.RADAR_ALTIMETER, value_down = 1,	name = _('PRV-46 Radar Altimeter Indicator Power Switch'),			category = _('Instrument Panel')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = -1, name = _('Heading Knob, CCW'),					category = _('Instrument Panel')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed =  1, name = _('Heading Knob, CW'),					category = _('Instrument Panel')},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.REMOTE_COMPASS, value_down = 1, value_up = 0, name = _('Fast Slave'), category = _('Instrument Panel')},

{down = navlights_commands.Mig15_Command_NoseLight_EXT, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1, name = _('Nose Light Switch'), category = _('Instrument Panel')},
{down = electric_commands.Mig15_Command_VoltmeterBtn, up = electric_commands.Mig15_Command_VoltmeterBtn, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0, name = _('Ampere- & Voltmeter Button - Push to view Volts'), category = _('Instrument Panel')},
{down = electric_commands.Mig15_Command_Heating_EXT,  cockpit_device_id = devices.ELEC_INTERFACE,	 value_down = 1,	name = _('Pitot and Clock Heater Switch'),	category = _('Instrument Panel')},
{down = gear_commands.Mig15_Command_LampsTestButton,  up = gear_commands.Mig15_Command_LampsTestButton,  cockpit_device_id = devices.GEAR_INTERFACE, value_down = 1, value_up = 0, name = _('Gear Lamps Test Button'),	 category = _('Instrument Panel')},
{down = gear_commands.Mig15_Command_RightEmergencyGearReleaseHandle, up = gear_commands.Mig15_Command_RightEmergencyGearReleaseHandle, cockpit_device_id = devices.GEAR_INTERFACE, value_down = 1, value_up = 0, name = _('Right Emergency Gear Release Handle'), category = _('Instrument Panel')},
{down = gear_commands.Mig15_Command_LeftEmergencyGearReleaseHandle,  up = gear_commands.Mig15_Command_LeftEmergencyGearReleaseHandle,  cockpit_device_id = devices.GEAR_INTERFACE, value_down = 1, value_up = 0, name = _('Left Emergency Gear Release Handle'),  category = _('Instrument Panel')},

{down = iCommandMechClock_LeftLever_Down,  up = iCommandMechClock_LeftLever_Down_up,  name = _('AChS-1 Cockpit Chronograph Left Knob, Push'),	category = _('Instrument Panel')},
{down = iCommandMechClock_LeftLever_Up,				name = _('AChS-1 Cockpit Chronograph Left Knob, Pull'),				category = _('Instrument Panel')},
{pressed = iCommandMechClock_LeftLever_TurnRight,	name = _('AChS-1 Cockpit Chronograph Left Knob, Rotate right'),	category = _('Instrument Panel')},
{pressed = iCommandMechClock_LeftLever_TurnLeft,	name = _('AChS-1 Cockpit Chronograph Left Knob, Rotate left'),	category = _('Instrument Panel')},
{down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down_up, name = _('AChS-1 Cockpit Chronograph Right Knob, Push'),	category = _('Instrument Panel')},
{down = iCommandMechClock_RightLever_Rotate_left,	name = _('AChS-1 Cockpit Chronograph Right Knob, Rotate left'),	category = _('Instrument Panel')},
{down = iCommandMechClock_RightLever_Rotate_right,	name = _('AChS-1 Cockpit Chronograph Right Knob, Rotate right'),	category = _('Instrument Panel')},

-- Central panel
{down = fuel_commands.Mig15_Command_DropTanksSignal_EXT, cockpit_device_id = devices.FUELSYS_INTERFACE, value_down = 1, name = _('Drop Tank Signal Switch'),  category = _('Central Panel')},
{down = device_commands.Button_12,						 cockpit_device_id = devices.WEAPON_SYSTEM,		value_down = 1, name = _('Tactical Release Switch'),  category = _('Central Panel')},
{down = device_commands.Button_11,						 cockpit_device_id = devices.WEAPON_SYSTEM,		value_down = 1, name = _('Emergency Release Button Cover'),  category = _('Central Panel')},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Emergency Release Button'),  category = _('Central Panel')},

-- Left Panel
{down = electric_commands.Mig15_Command_CB_BoosterPump_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Booster Pump Switch'),	category = _('Left Panel')},
{down = engine_commands.Mig15_Command_IsolatingValve_EXT, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, name = _('Isolating Valve Switch'), category = _('Left Panel')},
{down = electric_commands.Mig15_Command_CB_Ignition_EXT, cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1, name = _('Ignition Switch'),		category = _('Left Panel')},
{down = electric_commands.Mig15_Command_CB_LightsAndInstruments_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Instruments and Lights Switch'), category = _('Left Panel')},
{down = electric_commands.Mig15_Command_CB_TransferPump_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Transfer Pump Switch'),	category = _('Left Panel')},
{down = electric_commands.Mig15_Command_AirEngineStartSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Air Start Switch'), category = _('Left Panel')},

{down = fireExting_commands.Mig15_Command_FireExtinguishBtnCover_EXT, cockpit_device_id = devices.FIRE_EXTING_INTERFACE, value_down = 1, name = _('Engine Fire Extinguisher Button Cover'), category = _('Left Panel')},
{down = fireExting_commands.Mig15_Command_FireExtinguishBtn,	up = fireExting_commands.Mig15_Command_FireExtinguishBtn,	 cockpit_device_id = devices.FIRE_EXTING_INTERFACE, value_down = 1,	value_up = 0, name = _('Engine Fire Extinguisher Button'), category = _('Left Panel')},
{down = fireExting_commands.Mig15_Command_FireDetectionTestBtn,	up = fireExting_commands.Mig15_Command_FireDetectionTestBtn, cockpit_device_id = devices.FIRE_EXTING_INTERFACE, value_down = 1, value_up = 0, name = _('Engine Fire Warning Light Test Button'),  category = _('Left Panel')},
{down = navlights_commands.Mig15_Command_PositionLights_EXT, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1, name = _('External Lights Switch'), category = _('Left Panel')},

-- Left Control Pedestal
{down = control_commands.Mig15_Command_HydroGainLever_EXT,	 cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Hydro Booster Lever'), category = _('Left Control Pedestal')},
{down = engine_commands.Mig15_Command_EngineStop_EXT, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, name = _('Engine Stop Lever, CLOSE'), category = _('Left Control Pedestal')},
{down = engine_commands.Mig15_Command_EngineStop_EXT, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1, name = _('Engine Stop Lever, OPEN'), category = _('Left Control Pedestal')},
{pressed = engine_commands.Mig15_Command_EngineStop_ITER, cockpit_device_id = devices.ENGINE_INTERFACE, value_pressed = 0.075,	name = _('Engine Stop Lever, CLOSE SMOOTH'),	category = _('Left Control Pedestal')},
{pressed = engine_commands.Mig15_Command_EngineStop_ITER, cockpit_device_id = devices.ENGINE_INTERFACE, value_pressed = -0.075,	name = _('Engine Stop Lever, OPEN SMOOTH'),	category = _('Left Control Pedestal')},

-- Left Cockpit Side
{down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('N-37D Cannon Reload Button'),			category = _('Left Cockpit Side')},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('NR-23 (Top) Cannon Reload Button'),		category = _('Left Cockpit Side')},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('NR-23 (Bottom) Cannon Reload Button'),	category = _('Left Cockpit Side')},

{pressed = lights_command.Mig15_Command_PanelLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Panels Light Rheostat, CCW'),	category = _('Left Cockpit Side')},
{pressed = lights_command.Mig15_Command_PanelLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed =  1, name = _('Panels Light Rheostat, CW'),	category = _('Left Cockpit Side')},

{down = signalflare_commands.Mig15_Command_SignalFlare_switch_EXT,		cockpit_device_id = devices.SIGNAL_FLARE_DISPENSER, value_down = 1, name = _('Signal Flare Switch'), category = _('Left Cockpit Side')},
{down = signalflare_commands.Mig15_Command_SignalFlare_drop_YELLOW_EXT,	cockpit_device_id = devices.SIGNAL_FLARE_DISPENSER, value_down = 1, name = _('Signal Flare Yellow Button'),	 category = _('Left Cockpit Side')},
{down = signalflare_commands.Mig15_Command_SignalFlare_drop_GREEN_EXT,	cockpit_device_id = devices.SIGNAL_FLARE_DISPENSER, value_down = 1, name = _('Signal Flare Green Button'),	 category = _('Left Cockpit Side')},
{down = signalflare_commands.Mig15_Command_SignalFlare_drop_RED_EXT,	cockpit_device_id = devices.SIGNAL_FLARE_DISPENSER, value_down = 1, name = _('Signal Flare Red Button'),	 category = _('Left Cockpit Side')},
{down = signalflare_commands.Mig15_Command_SignalFlare_drop_WHITE_EXT,	cockpit_device_id = devices.SIGNAL_FLARE_DISPENSER, value_down = 1, name = _('Signal Flare White Button'),	 category = _('Left Cockpit Side')},

{	pressed = oxygen_commands.Mig15_Command_OxygenSupplyValve_EXT,		cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed = -1, name = _('Oxygen Supply Valve, CCW(OPEN)'),		category = _('Left Cockpit Side')},
{	pressed = oxygen_commands.Mig15_Command_OxygenSupplyValve_EXT,		cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed =  1, name = _('Oxygen Supply Valve, CW(CLOSE)'),		category = _('Left Cockpit Side')},
{	pressed = oxygen_commands.Mig15_Command_AirValve_EXT,				cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed = -1, name = _('Air Diluter Valve, CCW(OPEN)'),			category = _('Left Cockpit Side')},
{	pressed = oxygen_commands.Mig15_Command_AirValve_EXT,				cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed =  1, name = _('Air Diluter Valve, CW(CLOSE)'),			category = _('Left Cockpit Side')},
{	pressed = oxygen_commands.Mig15_Command_OxygenEmergencyValve_EXT,	cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed = -1, name = _('Oxygen Emergency Valve, CCW(OPEN)'),	category = _('Left Cockpit Side')},
{	pressed = oxygen_commands.Mig15_Command_OxygenEmergencyValve_EXT,	cockpit_device_id = devices.OXYGEN_INTERFACE, value_pressed =  1, name = _('Oxygen Emergency Valve, CW(CLOSE)'),	category = _('Left Cockpit Side')},

-- Right Switches Panel
{down = electric_commands.Mig15_Command_BatterySw_EXT,		  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Accumulator Switch'),		category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_GeneratorSw_EXT,	  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Generator Switch'),			category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_NoseLight_EXT,	  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Nose Light Master Switch'),	category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_Trimmer_EXT,		  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Trim Master Switch'),		category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_AGK_DGMK_EXT,		  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('AGK-47B Artificial Horizon + DGMK-3 Switch'),	category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_Radio_EXT,		  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Radio Switch'),				category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_Bomb_EXT,			  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Bombs Switch'),				category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_EmergencyDrop_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('Emergency Drop Switch'),	category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_ARC_EXT,			  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('ARC Switch'),				category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_RV2_EXT,			  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('RV-2 Radio Altimeter Switch'),	category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_NR23_EXT,			  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('NR-23 Cannon Switch'),		category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_N37D_EXT,			  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('N-37D Cannon Switch'),		category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_ASP3N_EXT,		  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('ASP-3N Gunsight Switch'),	category = _('Right Switches Panel')},
{down = electric_commands.Mig15_Command_CB_PhotoGun_EXT,	  cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, name = _('S-13 Gun Camera Switch'),	category = _('Right Switches Panel')},

{pressed = hydraulic_commands.Mig15_Command_EmergencyFlapsValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed = -1, name = _('Emergency Flaps Valve, CCW(OPEN)'),		category = _('Right Panel')},
{pressed = hydraulic_commands.Mig15_Command_EmergencyFlapsValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed =  1, name = _('Emergency Flaps Valve, CW(CLOSE)'),		category = _('Right Panel')},
{pressed = hydraulic_commands.Mig15_Command_EmergencyGearsValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed = -1, name = _('Emergency Gears Valve, CCW(OPEN)'),		category = _('Right Panel')},
{pressed = hydraulic_commands.Mig15_Command_EmergencyGearsValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed =  1, name = _('Emergency Gears Valve, CW(CLOSE)'),		category = _('Right Panel')},
{down = hydraulic_commands.Mig15_Command_EmergencyFlapsValveCover_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_down =  1, name = _('Emergency Flaps Valve Cover'),	category = _('Right Panel')},
{down = hydraulic_commands.Mig15_Command_EmergencyGearsValveCover_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_down =  1, name = _('Emergency Gears Valve Cover'),	category = _('Right Panel')},

-- Right Cockpit Side
{pressed = hydraulic_commands.Mig15_Command_EmergencySystemFilling_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed = -1, name = _('Emergency System Filling Valve, CCW(OPEN)'),	category = _('Right Cockpit Side')},
{pressed = hydraulic_commands.Mig15_Command_EmergencySystemFilling_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed =  1, name = _('Emergency System Filling Valve, CW(CLOSE)'),	category = _('Right Cockpit Side')},
{pressed = hydraulic_commands.Mig15_Command_AirNetValve_EXT,			cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed = -1, name = _('Air Net Valve, CCW(OPEN)'),					category = _('Right Cockpit Side')},
{pressed = hydraulic_commands.Mig15_Command_AirNetValve_EXT,			cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed =  1, name = _('Air Net Valve, CW(CLOSE)'),					category = _('Right Cockpit Side')},
{pressed = hydraulic_commands.Mig15_Command_CockpitFillingValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed = -1, name = _('Cockpit Filling Valve, CCW(OPEN)'),			category = _('Right Cockpit Side')},
{pressed = hydraulic_commands.Mig15_Command_CockpitFillingValve_EXT,	cockpit_device_id = devices.HYDROSYS_INTERFACE, value_pressed =  1, name = _('Cockpit Filling Valve, CW(CLOSE)'),			category = _('Right Cockpit Side')},
{pressed = lights_command.Mig15_Command_LeftUVLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Left UV Light Rheostat, CCW'),	category = _('Right Cockpit Side')},
{pressed = lights_command.Mig15_Command_LeftUVLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed =  1, name = _('Left UV Light Rheostat, CW'),	category = _('Right Cockpit Side')},
{pressed = lights_command.Mig15_Command_RightUVLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1, name = _('Right UV Light Rheostat, CCW'),	category = _('Right Cockpit Side')},
{pressed = lights_command.Mig15_Command_RightUVLight_Control_EXT,	cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed =  1, name = _('Right UV Light Rheostat, CW'),	category = _('Right Cockpit Side')},
{pressed = air_commands.Mig15_Command_CockpitAirValve_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed = -1, name = _('Cockpit Air Valve, CCW(OPEN)'),		category = _('Right Cockpit Side')},
{pressed = air_commands.Mig15_Command_CockpitAirValve_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed =  1, name = _('Cockpit Air Valve, CW(CLOSE)'),		category = _('Right Cockpit Side')},
{pressed = air_commands.Mig15_Command_VentilationValve_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed = -1, name = _('Ventilation Valve, CCW(OPEN)'),		category = _('Right Cockpit Side')},
{pressed = air_commands.Mig15_Command_VentilationValve_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed =  1, name = _('Ventilation Valve, CW(CLOSE)'),		category = _('Right Cockpit Side')},

-- ARK-5 Radio Compass
{	pressed = ARC_5_commands.CMD_ARC_5_VOLUME_EXT,										cockpit_device_id = devices.ARC_5, value_pressed = -0.3,			name = _('ARK-5 Audio Volume Knob, DOWN'),			category = _('ARK-5 Radio Compass')},
{	pressed = ARC_5_commands.CMD_ARC_5_VOLUME_EXT,										cockpit_device_id = devices.ARC_5, value_pressed =  0.3,			name = _('ARK-5 Audio Volume Knob, UP'),			category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_BAND_EXT,											cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 Frequency Band Switch, NEXT'),		category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_BAND_EXT,											cockpit_device_id = devices.ARC_5, value_down = -1,					name = _('ARK-5 Frequency Band Switch, PREV'),		category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_MODE_ITER,											cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 Function Selector Switch, NEXT'),	category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_MODE_ITER,											cockpit_device_id = devices.ARC_5, value_down = -1,					name = _('ARK-5 Function Selector Switch, PREV'),	category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_LOOP_L_R, up = ARC_5_commands.CMD_ARC_5_LOOP_L_R,	cockpit_device_id = devices.ARC_5, value_down = -1, value_up = 0,	name = _('ARK-5 LOOP L-R Switch, L'),				category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_LOOP_L_R, up = ARC_5_commands.CMD_ARC_5_LOOP_L_R,	cockpit_device_id = devices.ARC_5, value_down =  1, value_up = 0,	name = _('ARK-5 LOOP L-R Switch, R'),				category = _('ARK-5 Radio Compass')},
{	pressed = ARC_5_commands.CMD_ARC_5_TUNE_FREQUENCY_EXT,								cockpit_device_id = devices.ARC_5, value_pressed = -1,				name = _('ARK-5 Tuning Crank, CCW'),				category = _('ARK-5 Radio Compass')},
{	pressed = ARC_5_commands.CMD_ARC_5_TUNE_FREQUENCY_EXT,								cockpit_device_id = devices.ARC_5, value_pressed =  1,				name = _('ARK-5 Tuning Crank, CW'),					category = _('ARK-5 Radio Compass')},
{	pressed = ARC_5_commands.CMD_ARC_5_LIGHT_EXT,										cockpit_device_id = devices.ARC_5, value_pressed = -0.3,			name = _('ARK-5 Scale Light Knob, CCW'),			category = _('ARK-5 Radio Compass')},
{	pressed = ARC_5_commands.CMD_ARC_5_LIGHT_EXT,										cockpit_device_id = devices.ARC_5, value_pressed =  0.3,			name = _('ARK-5 Scale Light Knob, CW'),				category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_TLF_TLG_EXT,										cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 TLG-TLF Switch'),					category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_CONTROL, up = ARC_5_commands.CMD_ARC_5_CONTROL,		cockpit_device_id = devices.ARC_5, value_down = 1, value_up = 0,	name = _('ARK-5 Take Control Button'),				category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_NearOrFar_EXT,										cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 Near/Far NDB Switch'),				category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_Near1_EXT,											cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 NDB 1 Switch'),						category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_Near2_EXT,											cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 NDB 2 Switch'),						category = _('ARK-5 Radio Compass')},
{	down = ARC_5_commands.CMD_ARC_5_Near3_EXT,											cockpit_device_id = devices.ARC_5, value_down =  1,					name = _('ARK-5 NDB 3 Switch'),						category = _('ARK-5 Radio Compass')},

-- RSI-6K Radio
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_Volume_EXT,				cockpit_device_id = devices.RSI_6K, value_pressed = -1,	name = _('RSI-6K Audio Volume Knob, CCW'), category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_Volume_EXT,				cockpit_device_id = devices.RSI_6K, value_pressed =  1,	name = _('RSI-6K Audio Volume Knob, CW'),  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetTransmitterFrequency_EXT,	cockpit_device_id = devices.RSI_6K, value_pressed = -0.3,	name = _('RSI-6K Wave Control Handle, CCW'),	  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetTransmitterFrequency_EXT,	cockpit_device_id = devices.RSI_6K, value_pressed =  0.3,	name = _('RSI-6K Wave Control Handle, CW'),	  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetAntennaFrequency_EXT,		cockpit_device_id = devices.RSI_6K, value_pressed = -0.3,	name = _('RSI-6K Antenna Control Handle, CCW'),  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetAntennaFrequency_EXT,		cockpit_device_id = devices.RSI_6K, value_pressed =  0.3,	name = _('RSI-6K Antenna Control Handle, CW'),	  category = _('RSI-6K Radio')},
{down = RSI_6K_commands.Mig15_Command_RSI6K_TransmitterFrequencyFix_EXT,	cockpit_device_id = devices.RSI_6K, value_down =  1, 	name = _('RSI-6K Wave Control Handle Lock'),			  category = _('RSI-6K Radio')},
{down = RSI_6K_commands.Mig15_Command_RSI6K_AntennaFrequencyFix_EXT,		cockpit_device_id = devices.RSI_6K, value_down =  1, 	name = _('RSI-6K Antenna Control Handle Lock'),		  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetReceiverFrequency_EXT,	cockpit_device_id = devices.RSI_6K, value_pressed = -1,	name = _('RSI-6K Receiver Tuning Knob, CCW'),  category = _('RSI-6K Radio')},
{pressed = RSI_6K_commands.Mig15_Command_RSI6K_SetReceiverFrequency_EXT,	cockpit_device_id = devices.RSI_6K, value_pressed =  1,	name = _('RSI-6K Receiver Tuning Knob, CW'),	  category = _('RSI-6K Radio')},
{down = RSI_6K_commands.Mig15_Command_RSI6K_ReceiveARC_EXT,	cockpit_device_id = devices.RSI_6K, value_down =  1, 	name = _('RSI-6K Receive/ARC Switch'),				category = _('RSI-6K Radio')},
{down = RSI_6K_commands.Mig15_Command_RSI6K_Forced_EXT,		cockpit_device_id = devices.RSI_6K, value_down =  1, 	name = _('RSI-6K Forced Mode Switch'),		category = _('RSI-6K Radio')},

-- Throttle Grip
{down = electric_commands.Mig15_Command_EngineStartBtn,	up = electric_commands.Mig15_Command_EngineStartBtn, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0, name = _('Engine Start Button'),	category = _('Throttle Grip')},
{down = electric_commands.Mig15_Command_EngineStartBtnCover_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('Engine Start Button Cover'),			category = _('Throttle Grip')},
{down = RSI_6K_commands.Mig15_Command_RSI6K_MicBtn, up = RSI_6K_commands.Mig15_Command_RSI6K_MicBtn, cockpit_device_id = devices.RSI_6K, value_down = 1, value_up = 0, name = _('Microphone Button (call radio menu)'), category = _('Throttle Grip')},

-- VoIP radio global command
-- in case you need to open commands in the cockpit
{down = iCommandVoIPRadioPushToTalkEnableDisableVoice, up = iCommandVoIPRadioPushToTalkEnableDisableVoice, value_down = 1.0, value_up = 0.0, name = _('Microphone Button (VOIP)'), category = _('Throttle Grip')},
--

-- Stick
{									down = device_commands.Button_10, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Guns Safety Cover'), category = _('Stick')},
{combos = {{key = 'JOY_BTN2'}}, 	down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Weapon Release Button'), category = _('Stick')},
{combos = defaultDeviceAssignmentFor("fire"), 	down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('NR-23 Cannon Fire Button'), category = _('Stick')},
{combos = {{key = 'JOY_BTN3'}},		down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('N-37D Cannon Fire Button'), category = _('Stick')},

-- ASP-3N
{down = device_commands.Button_15,		cockpit_device_id = devices.ASP_3N,  value_down = 1, name = _('ASP-3N Gunsight Mode'),  category = _('ASP-3N Gunsight')},
{down = device_commands.Button_13,		cockpit_device_id = devices.ASP_3N,  value_down = 1, name = _('ASP-3N Gunsight Fixed Reticle Mask Lever'),  category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_9,	cockpit_device_id  = devices.ASP_3N, value_pressed = 0.5,	name = _('ASP-3N Gunsight Target Wingspan Adjustment Dial, Increase'),	category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_9,	cockpit_device_id  = devices.ASP_3N, value_pressed = -0.5,	name = _('ASP-3N Gunsight Target Wingspan Adjustment Dial, Decrease'),	category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_5,	cockpit_device_id  = devices.ASP_3N, value_pressed = -1.0,	name = _('ASP-3N Gunsight Brightness Knob, Increase'),					category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_5,	cockpit_device_id  = devices.ASP_3N, value_pressed = 1.0,	name = _('ASP-3N Gunsight Brightness Knob, Decrease'),					category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_10,	cockpit_device_id  = devices.ASP_3N, value_pressed = 0.7,	name = _('ASP-3N Gunsight Target Distance, Increase'),					category = _('ASP-3N Gunsight')},
{pressed = device_commands.Button_10,	cockpit_device_id  = devices.ASP_3N, value_pressed = -0.7,	name = _('ASP-3N Gunsight Target Distance, Decrease'),					category = _('ASP-3N Gunsight')},
{down = device_commands.Button_14,		cockpit_device_id = devices.ASP_3N,	 value_down = 1, name = _('ASP-3N Gunsight Color Filter'),  category = _('ASP-3N Gunsight')},

-- View
{down = device_commands.Button_1, cockpit_device_id = 0, value_down = 1, name = _('Align View to Sight'), category = _('View')}

})

-- joystick axes 
join(res.axisCommands,{

-- Flight Control
{combos = defaultDeviceAssignmentFor("roll"),	action = iCommandPlaneRoll,			name = _('Roll'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("pitch"),	action = iCommandPlanePitch,		name = _('Pitch'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("rudder"),	action = iCommandPlaneRudder,		name = _('Rudder'),	category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("thrust"),	action = iCommandPlaneThrustCommon,	name = _('Thrust'),	category = {_('Flight Control')}},

-- Left Control Pedestal
{action = engine_commands.Mig15_Command_EngineStop_AXIS, cockpit_device_id = devices.ENGINE_INTERFACE, name = _('Engine Stop Lever'),	category = {_('Left Control Pedestal')}},

-- Systems
{action = iCommandWheelBrake,		name = _('Wheel Brake'),	category = {_('Systems')}},

-- ASP-3N
{action = device_commands.Button_7,	cockpit_device_id = devices.ASP_3N,	name = _('ASP-3N Gunsight Target Wingspan Adjustment Dial'),	category = {_('ASP-3N Gunsight')}},
{action = device_commands.Button_6,	cockpit_device_id = devices.ASP_3N,	name = _('ASP-3N Gunsight Target Distance'),					category = {_('ASP-3N Gunsight')}},
{action = device_commands.Button_8,	cockpit_device_id = devices.ASP_3N,	name = _('ASP-3N Gunsight Brightness Knob'),					category = {_('ASP-3N Gunsight')}},

-- Left Cockpit Side
{action = oxygen_commands.Mig15_Command_OxygenSupplyValve_AXIS,		cockpit_device_id = devices.OXYGEN_INTERFACE,	name = _('Oxygen Supply Valve'),	category = {_('Left Cockpit Side')}},
{action = oxygen_commands.Mig15_Command_AirValve_AXIS,				cockpit_device_id = devices.OXYGEN_INTERFACE,	name = _('Air Diluter Valve'),		category = {_('Left Cockpit Side')}},
{action = oxygen_commands.Mig15_Command_OxygenEmergencyValve_AXIS,	cockpit_device_id = devices.OXYGEN_INTERFACE,	name = _('Oxygen Emergency Valve'),	category = {_('Left Cockpit Side')}},
{action = lights_command.Mig15_Command_PanelLight_Control_AXIS,		cockpit_device_id = devices.LIGHT_SYSTEM,		name = _('Panels Light Rheostat'),	category = {_('Left Cockpit Side')}},

-- RSI-6K Radio
{action = RSI_6K_commands.Mig15_Command_RSI6K_Volume_AXIS,					cockpit_device_id = devices.RSI_6K,	name = _('RSI-6K Audio Volume Knob'),		category = {_('RSI-6K Radio')}},
{action = RSI_6K_commands.Mig15_Command_RSI6K_SetTransmitterFrequency_AXIS,	cockpit_device_id = devices.RSI_6K,	name = _('RSI-6K Wave Control Handle'),		category = {_('RSI-6K Radio')}},
{action = RSI_6K_commands.Mig15_Command_RSI6K_SetAntennaFrequency_AXIS,		cockpit_device_id = devices.RSI_6K,	name = _('RSI-6K Antenna Control Handle'),	category = {_('RSI-6K Radio')}},

-- Right Panel
{action = hydraulic_commands.Mig15_Command_EmergencyFlapsValve_AXIS,	cockpit_device_id = devices.HYDROSYS_INTERFACE,	name = _('Emergency Flaps Valve'),	category = {_('Right Panel')}},
{action = hydraulic_commands.Mig15_Command_EmergencyGearsValve_AXIS,	cockpit_device_id = devices.HYDROSYS_INTERFACE,	name = _('Emergency Gears Valve'),	category = {_('Right Panel')}},

-- Right Cockpit Side
{action = hydraulic_commands.Mig15_Command_EmergencySystemFilling_AXIS,	cockpit_device_id = devices.HYDROSYS_INTERFACE,	name = _('Emergency System Filling Valve'),	category = {_('Right Cockpit Side')}},
{action = hydraulic_commands.Mig15_Command_AirNetValve_AXIS,			cockpit_device_id = devices.HYDROSYS_INTERFACE,	name = _('Air Net Valve'),					category = {_('Right Cockpit Side')}},
{action = hydraulic_commands.Mig15_Command_CockpitFillingValve_AXIS,	cockpit_device_id = devices.HYDROSYS_INTERFACE,	name = _('Cockpit Filling Valve'),			category = {_('Right Cockpit Side')}},
{action = air_commands.Mig15_Command_CockpitAirValve_AXIS,				cockpit_device_id = devices.AIR_INTERFACE,		name = _('Cockpit Air Valve'),				category = {_('Right Cockpit Side')}},
{action = air_commands.Mig15_Command_VentilationValve_AXIS,				cockpit_device_id = devices.AIR_INTERFACE,		name = _('Ventilation Valve'),				category = {_('Right Cockpit Side')}},
{action = lights_command.Mig15_Command_LeftUVLight_Control_AXIS,		cockpit_device_id = devices.LIGHT_SYSTEM,		name = _('Left UV Light Rheostat'),			category = {_('Right Cockpit Side')}},
{action = lights_command.Mig15_Command_RightUVLight_Control_AXIS,		cockpit_device_id = devices.LIGHT_SYSTEM,		name = _('Right UV Light Rheostat'),		category = {_('Right Cockpit Side')}},

-- Instrument Panel
{action = device_commands.Button_8, cockpit_device_id = devices.AGK47B, name = _('AGK-47B Artificial Horizon Zero Pitch Trim Knob'),	category = _('Instrument Panel')},

-- ARK-5 Radio Compass
{action = ARC_5_commands.CMD_ARC_5_VOLUME_AXIS,	cockpit_device_id = devices.ARC_5,	name = _('ARK-5 Audio Volume Knob'),	category = _('ARK-5 Radio Compass')},
{action = ARC_5_commands.CMD_ARC_5_LIGHT_AXIS,	cockpit_device_id = devices.ARC_5,	name = _('ARK-5 Scale Light Knob'),		category = _('ARK-5 Radio Compass')},



})

return res
