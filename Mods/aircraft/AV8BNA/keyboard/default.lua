local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")
local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

join(res.keyCommands,{
	
	-- Master Modes
	{combos = {{key = '1', reformers = {'LAlt'}}},	down = iCommandHelicopter_PPR_button_K,	name = _('Master Mode NAV'),				category = _('Master Modes')},
	{combos = {{key = '2', reformers = {'LAlt'}}},	down = iCommandHelicopter_PPR_button_H,	name = _('Master Mode VSTOL'),				category = _('Master Modes')},
	{combos = {{key = '3', reformers = {'LAlt'}}},	down = iCommandHelicopter_PPR_button_T,	name = _('Master Mode AG'),					category = _('Master Modes')},
	
	-- HUD Controls
	{combos = {{key = 'Num1', reformers = {'LCtrl', 'LWin'}}},	down = iCommandPlane_ABRIS_BT_1, name = _('HUD Reject Mode Down (NORM - REJ1 - REJ2)'),	category = _('HUD Control')},
	{combos = {{key = 'Num2', reformers = {'LCtrl', 'LWin'}}},	down = iCommandPlane_ABRIS_BT_2, name = _('HUD Reject Mode Up (REJ2 - REJ1 - NORM)'),	category = _('HUD Control')},
	{combos = {{key = 'Num3', reformers = {'LCtrl', 'LWin'}}},	down = iCommandPlane_ABRIS_BT_3, name = _('HUD Display Mode Down DAY - AUTO - NIGHT'),	category = _('HUD Control')},
	{combos = {{key = 'Num4', reformers = {'LCtrl', 'LWin'}}},	down = iCommandPlane_ABRIS_BT_5, name = _('HUD Display Mode Up NIGHT - AUTO - DAY'),	category = _('HUD Control')},
	{combos = {{key = 'Num5', reformers = {'LCtrl', 'LWin'}}},	down = iCommandPlane_ABRIS_BT_4, name = _('HUD Altimeter Selector'),					category = _('HUD Control')},
	{pressed = iCommandHUDBrightnessUp,		up = iCommandHUDTest_up,	name = _('HUD On - Brightness Increase'),	category = _('HUD Control')},
	{pressed = iCommandHUDBrightnessDown,	up = iCommandHUDTest_up,	name = _('HUD Brightness Decrease - Off'),	category = _('HUD Control')},
	
	-- VSTOL Controls
	{combos = {{key = '1', reformers = {'LCtrl'}}},	down = iCommandPlane_ABRIS_Axis_Increase,		name = _('Flaps Mode Up (STOL - AUTO - CRUISE)'),	category = _('VSTOL Controls')},
	{combos = {{key = '2', reformers = {'LCtrl'}}},	down = iCommandPlane_ABRIS_Axis_Decrease,		name = _('Flaps Mode Down (CRUISE - AUTO - STOL)'),	category = _('VSTOL Controls')},
	{combos = {{key = '3', reformers = {'LCtrl'}}},	down = iCommandPlaneFlapsOn, 					name = _('Flaps Power Left (OFF - ON - RESET)'),	category = _('VSTOL Controls')},
	{combos = {{key = '4', reformers = {'LCtrl'}}},	down = iCommandPlaneFlapsOff,					name = _('Flaps Power Right (RESET - ON - OFF)'),	category = _('VSTOL Controls')},
	{combos = {{key = '5', reformers = {'LCtrl'}}},	down = iCommandPlane_ABRIS_Brightness_Increase,	name = _('Water Mode Up (LDG - OFF - TO)'),			category = _('VSTOL Controls')},
	{combos = {{key = '6', reformers = {'LCtrl'}}},	down = iCommandPlane_ABRIS_Brightness_Decrease,	name = _('Water Mode Down (TO - OFF - LDG)'),		category = _('VSTOL Controls')},
	
	-- Flight Control
	{combos = {{key = 'Up'}},    							pressed = iCommandPlaneUpStart,    						up = iCommandPlaneUpStop,    		name = _('Aircraft Pitch DOWN'),	category = _('Flight Control')},
	{combos = {{key = 'Down'}},  							pressed = iCommandPlaneDownStart,  						up = iCommandPlaneDownStop,  		name = _('Aircraft Pitch UP'),		category = _('Flight Control')},
	{combos = {{key = 'Left'}},  							pressed = iCommandPlaneLeftStart,  						up = iCommandPlaneLeftStop,  		name = _('Aircraft Bank LEFT'),		category = _('Flight Control')},
	{combos = {{key = 'Right'}}, 							pressed = iCommandPlaneRightStart, 						up = iCommandPlaneRightStop, 		name = _('Aircraft Bank RIGHT'),	category = _('Flight Control')},
	{combos = {{key = 'Z'}},     							pressed = iCommandPlaneLeftRudderStart,  				up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder LEFT'),	category = _('Flight Control')},
	{combos = {{key = 'X'}},     							pressed = iCommandPlaneRightRudderStart, 				up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder RIGHT'),	category = _('Flight Control')},
	{combos = {{key = 'Num+'}},								pressed = iCommandThrottleIncrease,						up = iCommandThrottleStop,			name = _('Throttle UP'),			category = _('Flight Control')},
	{combos = {{key = 'Num-'}},								pressed = iCommandThrottleDecrease,						up = iCommandThrottleStop,			name = _('Throttle DOWN'),			category = _('Flight Control')},
	{combos = {{key = 'Num+',   reformers = {'LShift'}}},	pressed = iCommandPlaneCollectiveIncrease,				up = iCommandPlaneCollectiveStop,	name = _('Nozzle Rotation UP'),		category = _('Flight Control')},
	{combos = {{key = 'Num-',   reformers = {'LShift'}}},	pressed = iCommandPlaneCollectiveDecrease,				up = iCommandPlaneCollectiveStop,	name = _('Nozzle Rotation DOWN'),	category = _('Flight Control')},
	{combos = {{key = 'Num+',   reformers = {'RShift'}}},	down = iCommandHelicopter_CollectiveStopper_Up,			up = iCommandPlaneCollectiveStop,	name = _('STO STOP UP'),			category = _('Flight Control')},
	{combos = {{key = 'Num-',   reformers = {'RShift'}}},	down = iCommandHelicopter_CollectiveStopper_Down,		up = iCommandPlaneCollectiveStop,	name = _('STO STOP DOWN'),			category = _('Flight Control')},
	{combos = {{key = 'Z',		reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimLeftRudder,					up = iCommandPlaneTrimStop,			name = _('Trim RUDDER LEFT'),		category = _('Flight Control')},
	{combos = {{key = 'X',		reformers = {'RCtrl'}}},	pressed = iCommandPlaneTrimRightRudder,					up = iCommandPlaneTrimStop,			name = _('Trim RUDDER RIGHT'),		category = _('Flight Control')},	
	
	-- SAAHS
	{combos = {{key = 'A'}},						down = iCommandPlaneAutopilot,		name = _('Automatic Flight Control On/Off Toggle'),	category = _('Stability Augmentation & Autopilot')},
	{combos = {{key = 'H'}},						down = iCommandPlaneSAUHBarometric,	name = _('Altitude Hold On/Off Toggle'),			category = _('Stability Augmentation & Autopilot')},
	{combos = {{key = 'Q',	reformers = {'RWin'}}},	down = iCommandPlaneAUTOnOff,		name = _('Q Feel On/Off Toggle'),					category = _('Stability Augmentation & Autopilot')},
	{combos = {{key = 'P',	reformers = {'RWin'}}},	down = iCommandPlaneSAUHRadio,		name = _('Stability Augmentation - Pitch'),			category = _('Stability Augmentation & Autopilot')},
	{combos = {{key = 'Y',	reformers = {'RWin'}}},	down = iCommandPlaneSAUAutomatic,	name = _('Stability Augmentation - Yaw'),			category = _('Stability Augmentation & Autopilot')},
	{combos = {{key = 'R',	reformers = {'RWin'}}},	down = iCommandPlaneSAUHorizon,		name = _('Stability Augmentation - Roll'),			category = _('Stability Augmentation & Autopilot')},
	
	-- Hydraulic & Mechanical
    {combos = {{key = 'W'}},                           down = iCommandPlaneWheelBrakeOn,      up = iCommandPlaneWheelBrakeOff,      name = _('Wheel Brakes'),			category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'W',   reformers = {'LShift'}}}, down = iCommandPlaneWheelBrakeLeftOn,  up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel Brake LEFT'),		category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'W',   reformers = {'LAlt'}}},   down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake RIGHT'),		category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'G'}},                           down = iCommandPlaneGear,     												name = _('Landing Gear TOGGLE'),	category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'G',   reformers = {'LCtrl'}}},  down = iCommandPlaneGearUp,   												name = _('Landing Gear UP'),		category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'G',   reformers = {'LShift'}}}, down = iCommandPlaneGearDown, 												name = _('Landing Gear DOWN'),		category = _('Hydraulic & Mechanical')},
    {combos = {{key = 'C',   reformers = {'LCtrl'}}},  down = iCommandPlaneFonar,													name = _('Canopy Open/Close'),		category = _('Hydraulic & Mechanical')},
	{down = fcs_commands.Handle_PARKING_BRAKE,	cockpit_device_id = devices.FLIGHTCONTROLS,	value_down= 0,	name = _('Parking Brake ON'),	category = _('Hydraulic & Mechanical')},
    {down = fcs_commands.Handle_PARKING_BRAKE,	cockpit_device_id = devices.FLIGHTCONTROLS,	value_down= 1,	name = _('Parking Brake OFF'),	category = _('Hydraulic & Mechanical')},
	
	-- Engine & Fuel
	{combos = {{key = 'Home', reformers = {'RShift'}}},	down = iCommandLeftEngineStart,	name = _('Engines START'),						category = _('Engine & Fuel')},
	{combos = {{key = 'End', reformers = {'RShift'}}},	down = iCommandLeftEngineStop,	name = _('Engines STOP'),						category = _('Engine & Fuel')},	
	{combos = {{key = 'A', reformers = {'LWin'}}},		down = iCommandPlaneHook,		name = _('Air Refueling Probe Toggle IN/OUT'),	category = _('Engine & Fuel')},
	{combos = {{key = 'F', reformers = {'LWin'}}},		down = iCommandThrottle1Stop,	name = _('Fuel Shutoff Lever lock release'),	category = _('Engine & Fuel')},
	
	-- Pilot & Seat Controls 
	{combos = {{key = 'M',	reformers = {'LShift'}}},			down = iCommandToggleMirrors,				name = _('Mirrors TOGGLE'),				category = _('Pilot & Seat Controls')},
    {combos = {{key = 'E',	reformers = {'LCtrl'}}},			down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Pilot & Seat Controls')},	
	{combos = {{key = 'P',	reformers = {'RCtrl', 'RWin'}}},	down = iCommandCockpitShowPilotOnOff,		name = _('Hide/Show Pilot Body'),		category = _('Pilot & Seat Controls')},
	{combos = {{key = 'S',	reformers = {'RCtrl', 'RWin'}}},	down = iCommandPlaneCircuitBreaker_10,		name = _('Hide/Show Control Stick'),	category = _('Pilot & Seat Controls')},
	{combos = {{key = 'T',	reformers = {'RCtrl', 'RWin'}}},	down = iCommandPlaneCircuitBreaker_11,		name = _('Hide/Show Throttle'),			category = _('Pilot & Seat Controls')},
	{combos = {{key = 'N',	reformers = {'LShift'}}},			down = iCommandViewNightVisionGogglesOn,	name = _('Helmet Visor/NVG Toggle'),	category = _('Pilot & Seat Controls')},
	{															down = iCommandPlaneModeFI0,				name = _('Switch the Helmet Visor for NVG and viceversa'),	category = _('Pilot & Seat Controls')},
	
	-- HOTAS
	-- Stick
	{combos = {{key = 'Space'}},							down = iCommandPlaneFire,         up = iCommandPlaneFireOff,   name = _('Trigger: Fire Gun/Launch Sidewinder, Sidearm'),     		category = _('HOTAS')},
	{combos = {{key = 'Space', reformers = {'RAlt'}}},		down = iCommandPlanePickleOn,     up = iCommandPlanePickleOff, name = _('Bomb Pickle: Release Bombs/Launch Rockets, Mavericks'),	category = _('HOTAS')},
	{combos = {{key = 'D'}},								down = iCommandPlane_HOTAS_BoatSwitchForward,                  name = _('A/A Mode FWD: Sidewinder (Boresight)'),					category = _('HOTAS')},
	{combos = {{key = 'D',     reformers = {'LShift'}}},	down = iCommandPlane_HOTAS_BoatSwitchAft,                      name = _('A/A Mode AFT: Sidewinder (SEAM)'),							category = _('HOTAS')},
	{combos = {{key = 'C'}},								down = iCommandPlane_HOTAS_BoatSwitchCenter,                   name = _('A/A Mode DOWN: Gun'),										category = _('HOTAS')},
	
	{combos = {{key = 'Up',    reformers = {'RCtrl'}}},		pressed = iCommandPlaneTrimUp,    up = iCommandPlaneTrimStop,  name = _('Trim Pitch DOWN'),	category = _('HOTAS')},
	{combos = {{key = 'Down',  reformers = {'RCtrl'}}},		pressed = iCommandPlaneTrimDown,  up = iCommandPlaneTrimStop,  name = _('Trim Pitch UP'),	category = _('HOTAS')},
	{combos = {{key = 'Left',  reformers = {'RCtrl'}}},		pressed = iCommandPlaneTrimLeft,  up = iCommandPlaneTrimStop,  name = _('Trim Bank LEFT'),	category = _('HOTAS')},
	{combos = {{key = 'Right', reformers = {'RCtrl'}}},		pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop,  name = _('Trim Bank RIGHT'),	category = _('HOTAS')},
	
	{combos = {{key = 'W', reformers = {'RWin'}}},	down = iCommandPlane_HOTAS_PinkySwitchCenter,																	name = _('WP Increment'),									category = _('HOTAS')},
	{												down = iCommandPlaneAutopilotOverrideOn,				up = iCommandPlaneAutopilotOverrideOff,					name = _('Emergency SAAHS Disconnect'),						category = _('HOTAS')},
	{combos = {{key = 'U', reformers = {'LWin'}}},	down = iCommandPlane_HOTAS_DataManagementSwitchUp,		up = iCommandPlane_HOTAS_DataManagementSwitchOff,		name = _('Sensor Select FWD: INS, IRMV/EOMV'),  			category = _('HOTAS')},
	{combos = {{key = 'J', reformers = {'LWin'}}},	down = iCommandPlane_HOTAS_DataManagementSwitchDown,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,		name = _('Sensor Select AFT: DMT: LST/TV'),  				category = _('HOTAS')},
	{combos = {{key = 'Y', reformers = {'LWin'}}},	down = iCommandPlane_HOTAS_DataManagementSwitchLeft,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,		name = _('Sensor Select LEFT: MAP Center/Decenter'),		category = _('HOTAS')},
	{combos = {{key = 'I', reformers = {'LWin'}}},	down = iCommandPlane_HOTAS_DataManagementSwitchRight,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,		name = _('Sensor Select RIGHT: FLIR/HUD-BH/WH'),			category = _('HOTAS')},
	{combos = {{key = 'N', reformers = {'LWin'}}},	down = iCommandPlane_HOTAS_ChinaHatForward,				up = iCommandPlane_HOTAS_DataManagementSwitchOff,		name = _('Sensor Select DOWN: HUD Scene Reject/TGP'),		category = _('HOTAS')},
	{combos = {{key = 'N', reformers = {'RWin'}}},	down = iCommandPlane_HOTAS_NoseWheelSteeringButton,		up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff,	name = _('AG Target Undesignate / NWS / FOV Toggle'),		category = _('HOTAS')},
	
	-- Throttle
	{combos = {{key = '8'}},	down = iCommandPlaneDropChaffOnce,	name = _('ECM Dispense AFT: Chaff'),		category = _('HOTAS')},
	{combos = {{key = '7'}},	down = iCommandPlaneDropFlareOnce,	name = _('ECM Dispense FWD: Flares'),		category = _('HOTAS')},
	{combos = {{key = '0'}},	down = iCommandPlaneCMDDispenceOff,	name = _('ECM Dispense RIGHT: All'),		category = _('HOTAS')},
	{combos = {{key = '9'}},	down = iCommandPlaneCMDDispence,	name = _('ECM Dispense LEFT: Mini Jammer'),	category = _('HOTAS')},
	
	{combos = {{key = 'C', reformers = {'LWin'}}},	down = iCommandPlane_ABRIS_Axis_Push,					name = _('Cage/Uncage'),					category = _('HOTAS')},
	
	{down = iCommandPlane_HOTAS_CMS_Up,						name = _('Engine Air Start'),				category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_CMS_Down,					name = _('Emergency Flap Retraction'),		category = _('HOTAS')},
	
	{combos = {{key = 'Num-', reformers = {'LCtrl'}}},	down = iCommandPlane_HOTAS_MIC_SwitchUp,				name = _('COMM FWD: Select COMM 1'),		category = _('HOTAS')},
	{combos = {{key = 'Num+', reformers = {'LCtrl'}}},	down = iCommandPlane_HOTAS_MIC_SwitchDown,				name = _('COMM AFT: Select COMM 2'),		category = _('HOTAS')},
	-- Missing COMM CENTER
	
	{combos = {{key = 'B'}},								down = iCommandPlaneAirBrake,				name = _('Airbrake TOGGLE'),				category = _('HOTAS')},
	{combos = {{key = 'B',   reformers = {'LShift'}}},		down = iCommandPlaneAirBrakeOn,				name = _('Airbrake ON'),					category = _('HOTAS')},
	{combos = {{key = 'B',   reformers = {'LCtrl'}}},		down = iCommandPlaneAirBrakeOff,			name = _('Airbrake OFF'),					category = _('HOTAS')},
	
	{combos = {{key = 'U'}},	pressed = iCommandPlane_HOTAS_CoolieUp,				up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Forward'),					category = _('HOTAS')},
	{combos = {{key = 'J'}},	pressed = iCommandPlane_HOTAS_CoolieDown,  			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Aft'),						category = _('HOTAS')},
	{combos = {{key = 'Y'}},	pressed = iCommandPlane_HOTAS_CoolieLeft,  			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Left'),						category = _('HOTAS')},
	{combos = {{key = 'I'}},	pressed = iCommandPlane_HOTAS_CoolieRight, 			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Right'),						category = _('HOTAS')},
	{combos = {{key = 'N'}},	down = iCommandPlane_HOTAS_TDC_depress_on,			up = iCommandPlane_HOTAS_TDC_depress_off,	name = _('TDC Down (Action Position)'),		category = _('HOTAS')},
	{							down = iCommandPlane_HOTAS_TriggerSecondStage_Off,												name = _('TDC Action/No Action Toggle'),	category = _('HOTAS')},
	{combos = {{key = 'T', reformers = {'RWin'}}},	down = engine_commands.Handle_THROTTLE_CUTOFF, up = engine_commands.Handle_THROTTLE_CUTOFF,
	 cockpit_device_id = devices.DECS, value_down = 1, value_up = 0, name = _('Throttle Cutoff'),     category = _('HOTAS')},
	
	-- Left MPCD
	{down = iCommandPlaneLeftMFD_OSB1 , up = iCommandPlaneLeftMFD_OSB1_Off,  name = _('Left MPCD OSB 01'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB2 , up = iCommandPlaneLeftMFD_OSB2_Off,  name = _('Left MPCD OSB 02'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB3 , up = iCommandPlaneLeftMFD_OSB3_Off,  name = _('Left MPCD OSB 03'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB4 , up = iCommandPlaneLeftMFD_OSB4_Off,  name = _('Left MPCD OSB 04'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB5 , up = iCommandPlaneLeftMFD_OSB5_Off,  name = _('Left MPCD OSB 05'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB6 , up = iCommandPlaneLeftMFD_OSB6_Off,  name = _('Left MPCD OSB 06'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB7 , up = iCommandPlaneLeftMFD_OSB7_Off,  name = _('Left MPCD OSB 07'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB8 , up = iCommandPlaneLeftMFD_OSB8_Off,  name = _('Left MPCD OSB 08'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB9 , up = iCommandPlaneLeftMFD_OSB9_Off,  name = _('Left MPCD OSB 09'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB10, up = iCommandPlaneLeftMFD_OSB10_Off, name = _('Left MPCD OSB 10'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB11, up = iCommandPlaneLeftMFD_OSB11_Off, name = _('Left MPCD OSB 11'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB12, up = iCommandPlaneLeftMFD_OSB12_Off, name = _('Left MPCD OSB 12'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB13, up = iCommandPlaneLeftMFD_OSB13_Off, name = _('Left MPCD OSB 13'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB14, up = iCommandPlaneLeftMFD_OSB14_Off, name = _('Left MPCD OSB 14'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB15, up = iCommandPlaneLeftMFD_OSB15_Off, name = _('Left MPCD OSB 15'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB16, up = iCommandPlaneLeftMFD_OSB16_Off, name = _('Left MPCD OSB 16'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB17, up = iCommandPlaneLeftMFD_OSB17_Off, name = _('Left MPCD OSB 17'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB18, up = iCommandPlaneLeftMFD_OSB18_Off, name = _('Left MPCD OSB 18'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB19, up = iCommandPlaneLeftMFD_OSB19_Off, name = _('Left MPCD OSB 19'), category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_OSB20, up = iCommandPlaneLeftMFD_OSB20_Off, name = _('Left MPCD OSB 20'), category = _('Left MPCD')},
	
	{pressed = iCommandPlaneLeftMFD_SYM_Up,			up = iCommandPlaneLeftMFD_SYM_Stop,		name = _('Left MPCD SYM Increase'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_SYM_Dn,			up = iCommandPlaneLeftMFD_SYM_Stop,		name = _('Left MPCD SYM Decrease'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_CON_Increase,	up = iCommandPlaneLeftMFD_CON_Stop,		name = _('Left MPCD CON Increase'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_CON_Decrease,	up = iCommandPlaneLeftMFD_CON_Stop,		name = _('Left MPCD CON Decrease'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_BRT_Increase,	up = iCommandPlaneLeftMFD_BRT_Stop,		name = _('Left MPCD BRT Increase'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_BRT_Decrease,	up = iCommandPlaneLeftMFD_BRT_Stop,		name = _('Left MPCD BRT Decrease'),		category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_DSP_Increase,	up = iCommandPlaneLeftMFD_DSP_Stop,		name = _('Left MPCD GAIN Increase'),	category = _('Left MPCD')},
	{pressed = iCommandPlaneLeftMFD_DSP_Decrease,	up = iCommandPlaneLeftMFD_DSP_Stop,		name = _('Left MPCD GAIN Decrease'),	category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_BRTMODE_NIGHT,		up = iCommandPlaneLeftMFD_BRTMODE_OFF,	name = _('Left MPCD Night Mode'),		category = _('Left MPCD')},
	{down = iCommandPlaneLeftMFD_BRTMODE_DAY,		up = iCommandPlaneLeftMFD_BRTMODE_OFF,	name = _('Left MPCD Day Mode'),			category = _('Left MPCD')},
	
	{down = iCommand_UV26_PowerCover,													name = _('Left MPCD Export View ON/OFF'),	category = _('Left MPCD')},
	
	-- Right MPCD
	{down = iCommandPlaneRightMFD_OSB1 , up = iCommandPlaneRightMFD_OSB1_Off,  name = _('Right MFCD OSB 01'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB2 , up = iCommandPlaneRightMFD_OSB2_Off,  name = _('Right MFCD OSB 02'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB3 , up = iCommandPlaneRightMFD_OSB3_Off,  name = _('Right MFCD OSB 03'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB4 , up = iCommandPlaneRightMFD_OSB4_Off,  name = _('Right MFCD OSB 04'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB5 , up = iCommandPlaneRightMFD_OSB5_Off,  name = _('Right MFCD OSB 05'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB6 , up = iCommandPlaneRightMFD_OSB6_Off,  name = _('Right MFCD OSB 06'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB7 , up = iCommandPlaneRightMFD_OSB7_Off,  name = _('Right MFCD OSB 07'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB8 , up = iCommandPlaneRightMFD_OSB8_Off,  name = _('Right MFCD OSB 08'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB9 , up = iCommandPlaneRightMFD_OSB9_Off,  name = _('Right MFCD OSB 09'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB10, up = iCommandPlaneRightMFD_OSB10_Off, name = _('Right MFCD OSB 10'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB11, up = iCommandPlaneRightMFD_OSB11_Off, name = _('Right MFCD OSB 11'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB12, up = iCommandPlaneRightMFD_OSB12_Off, name = _('Right MFCD OSB 12'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB13, up = iCommandPlaneRightMFD_OSB13_Off, name = _('Right MFCD OSB 13'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB14, up = iCommandPlaneRightMFD_OSB14_Off, name = _('Right MFCD OSB 14'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB15, up = iCommandPlaneRightMFD_OSB15_Off, name = _('Right MFCD OSB 15'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB16, up = iCommandPlaneRightMFD_OSB16_Off, name = _('Right MFCD OSB 16'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB17, up = iCommandPlaneRightMFD_OSB17_Off, name = _('Right MFCD OSB 17'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB18, up = iCommandPlaneRightMFD_OSB18_Off, name = _('Right MFCD OSB 18'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB19, up = iCommandPlaneRightMFD_OSB19_Off, name = _('Right MFCD OSB 19'), category = _('Right MFCD')},
	{down = iCommandPlaneRightMFD_OSB20, up = iCommandPlaneRightMFD_OSB20_Off, name = _('Right MFCD OSB 20'), category = _('Right MFCD')},
	
	{pressed = iCommandPlaneRightMFD_SYM_Up,		up = iCommandPlaneRightMFD_SYM_Stop,	name = _('Right MPCD SYM Increase'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_SYM_Dn,		up = iCommandPlaneRightMFD_SYM_Stop,	name = _('Right MPCD SYM Decrease'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_CON_Increase,	up = iCommandPlaneRightMFD_CON_Stop,	name = _('Right MPCD CON Increase'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_CON_Decrease,	up = iCommandPlaneRightMFD_CON_Stop,	name = _('Right MPCD CON Decrease'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_BRT_Increase,	up = iCommandPlaneRightMFD_BRT_Stop,	name = _('Right MPCD BRT Increase'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_BRT_Decrease,	up = iCommandPlaneRightMFD_BRT_Stop,	name = _('Right MPCD BRT Decrease'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_DSP_Increase,	up = iCommandPlaneRightMFD_DSP_Stop,	name = _('Right MPCD GAIN Increase'),	category = _('Right MPCD')},
	{pressed = iCommandPlaneRightMFD_DSP_Decrease,	up = iCommandPlaneRightMFD_DSP_Stop,	name = _('Right MPCD GAIN Decrease'),	category = _('Right MPCD')},
	{down = iCommandPlaneRightMFD_BRTMODE_NIGHT,	up = iCommandPlaneRightMFD_BRTMODE_OFF,	name = _('Right MPCD Night Mode'),		category = _('Right MPCD')},
	{down = iCommandPlaneRightMFD_BRTMODE_DAY,		up = iCommandPlaneRightMFD_BRTMODE_OFF,	name = _('Right MPCD Day Mode'),		category = _('Right MPCD')},
	
	{down = iCommand_UV26_BITCover,															name = _('Right MPCD Export View ON/OFF'),	category = _('Right MPCD')},
	
	-- ARMAMENT CONTROL PANEL
	{combos = {{key = 'M', reformers = {'LCtrl'}}},	down = iCommandSwitchMasterArm,					name = _('Master Arm Switch'), 						category = _('Armament Control')},
	{combos = {{key = 'F', reformers = {'LCtrl'}}},	pressed = iCommandPlaneCMDChangeBurstAmount,	name = _('Launch Flare Salvo'),						category = _('Armament Control')},
	
	{down = iCommandPlaneCDU_A,						name = _('Armament Mode Control Up'),				category = _('Armament Control')},
	{down = iCommandPlaneCDU_B,						name = _('Armament Mode Control Down'),				category = _('Armament Control')},
	{down = iCommandPlaneCDU_C,						name = _('Weapons Fuze Control Up'),				category = _('Armament Control')},
	{down = iCommandPlaneCDU_D,						name = _('Weapons Fuze Control Down'),				category = _('Armament Control')},
	{down = iCommandPlaneCDU_E,						name = _('Release Quantity (10s) Control Up'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_F,						name = _('Release Quantity (10s) Control Down'),	category = _('Armament Control')},
	{down = iCommandPlaneCDU_G,						name = _('Release Quantity (1s) Control Up'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_H,						name = _('Release Quantity (1s) Control Down'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_I,						name = _('Multiple Release Control Up'),			category = _('Armament Control')},
	{down = iCommandPlaneCDU_J,						name = _('Multiple Release Control Down'),			category = _('Armament Control')},
	{down = iCommandPlaneCDU_K,						name = _('Release Interval (100s) Control Up'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_L,						name = _('Release Interval (100s) Control Down'),	category = _('Armament Control')},
	{down = iCommandPlaneCDU_M,						name = _('Release Interval (10s) Control Up'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_N,						name = _('Release Interval (10s) Control Down'),	category = _('Armament Control')},
	{down = iCommandPlaneCDU_O,						name = _('Release Interval (1s) Control Up'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_P,						name = _('Release Interval (1s) Control Down'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_Q,						name = _('Manual Release Control Left'),			category = _('Armament Control')},
	{down = iCommandPlaneCDU_R,						name = _('Manual Release Control Right'),			category = _('Armament Control')},
	{down = iCommandPlaneCDU_S,						name = _('Selective Jettison Selector Left'),		category = _('Armament Control')},
	{down = iCommandPlaneCDU_T,						name = _('Selective Jettison Selector Right'),		category = _('Armament Control')},
	{down = iCommandPlaneJettisonWeapons,			name = _('Jettison Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB1,					name = _('Station 1 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB2,					name = _('Station 2 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB3,					name = _('Station 3 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB4,					name = _('Station 4 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB5,					name = _('Station 5 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB6,					name = _('Station 6 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB7,					name = _('Station 7 Pushbutton'),					category = _('Armament Control')},
	{down = iCommandPlaneNav_PB8,					name = _('IR Cooling control'),						category = _('Armament Control')},
	
	{down = iCommandPlaneJettisonFuelTanks,			name = _('Emergency Jettison Pushbutton'),			category = _('Armament Control')},

	-- UFC
	{down = iCommandPlaneUFC_1,						name = _('UFC 1 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_2,						name = _('UFC 2/N Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_3,						name = _('UFC 3 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_4,						name = _('UFC 4/W Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_5,						name = _('UFC 5 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_6,						name = _('UFC 6/E Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_7,						name = _('UFC 7 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_8,						name = _('UFC 8/S Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_9,						name = _('UFC 9 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneUFC_0,						name = _('UFC 0 Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_PNT,					name = _('UFC . Button'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_SLASH,					name = _('UFC - Button'),								category = _('Up Front Control')},
	
	{down = iCommandPlaneUFC_HACK,					name = _('UFC Timer Function Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_STEER_UP,				name = _('UFC Target-Of-Opportunity Function Button'),	category = _('Up Front Control')},
	{down = iCommandPlaneUFC_CLR,					name = _('UFC Clear Button'),							category = _('Up Front Control')},
	{down = iCommandPlaneUFC_SPC,					name = _('UFC Save Button'),							category = _('Up Front Control')},
	{down = iCommandPlaneUFC_ENT,					name = _('UFC Enter Button'),							category = _('Up Front Control')},
	{down = iCommandPlaneUFC_SEL_UP,				name = _('UFC ON/OFF Toggle Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_LTR,					name = _('UFC IFF Function Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_DATA_UP,				name = _('UFC TACAN Function Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_DATA_DOWN,				name = _('UFC AWLS Function Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_FUNC,					name = _('UFC Weapons Function Button'),				category = _('Up Front Control')},
	{down = iCommandPlaneUFC_STEER_DOWN,			name = _('UFC Wpt Over Fly Function Button'),			category = _('Up Front Control')},
	{down = iCommandPlaneUFC_MK,					name = _('UFC RDR Beacon Function Button'),				category = _('Up Front Control')},
	{down = iCommandPlaneUFC_ALT,					name = _('UFC Altimeter Function Button'),				category = _('Up Front Control')},
	{down = iCommandPlaneUFC_SEL_DOWN,				name = _('UFC EMCON Toggle Button'),					category = _('Up Front Control')},
	{down = iCommandPlaneUFC_DEPR_DOWN, up = iCommandPlaneUFC_DEPR_UP,	name = _('UFC I/P Button'),			category = _('Up Front Control')},
	{press = iCommandPlaneUFC_INTEN_INCREASE, 		name = _('UFC Display Brightness Increase'),			category = _('Up Front Control')},
	{press = iCommandPlaneUFC_INTEN_DECREASE, 		name = _('UFC Display Brightness Decrease'),			category = _('Up Front Control')},
	
	-- ODU
	{down = iCommandPlaneCDU_1,						name = _('ODU Option 1'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_2,						name = _('ODU Option 2'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_3,						name = _('ODU Option 3'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_4,						name = _('ODU Option 4'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_5,						name = _('ODU Option 5'),								category = _('Up Front Control')},
	
	-- MISCELLANEOUS PANEL
	{combos = {{key = ',', reformers = {'RWin'}}},	down = iCommandPlaneNavChangePanelModeLeft,		name = _('INS Mode Left  (NAV - ALIGN  - OFF)'),				category = _('Miscellaneous Controls')},
	{combos = {{key = '.', reformers = {'RWin'}}},	down = iCommandPlaneNavChangePanelModeRight,	name = _('INS Mode Right (OFF - ALIGN  - NAV)'),				category = _('Miscellaneous Controls')},
	{combos = {{key = 'D', reformers = {'RWin'}}},	down = iCommandPlaneNightTVOnOff,				name = _('DMT On/Off Toggle'),									category = _('Miscellaneous Controls')},
	{combos = {{key = 'F', reformers = {'RWin'}}},	down = iCommandPlaneRadarOnOff,					name = _('FLIR On/Off Toggle'),									category = _('Miscellaneous Controls')},
	{down = iCommandPlaneRadarUp,					name = _('Mission Computer Mode Up (OFF - AUTO - OVRD)'),		category = _('Miscellaneous Controls')},
	{down = iCommandPlaneRadarDown,					name = _('Mission Computer Mode Down (OVRD - AUTO  - OFF)'),	category = _('Miscellaneous Controls')},
	{down = iCommandPlaneCMSC_PRI,					name = _('Stopwatch Start/Stop toggle'),						category = _('Miscellaneous Controls')},
	{down = iCommandPlaneCMSC_SEP,					name = _('Stopwatch Lap/Reset toggle'),							category = _('Miscellaneous Controls')},
	
	-- INTERNAL LIGHTS
	{												down = iCommandPlaneMasterCaution,		name = _('Master Warning/Caution Reset'),	category = _('Internal Lights')},
	
	--EXTERNAL LIGHTS
	{down = iCommandPlaneLightsOnOff,					name = _('Exterior Lights Toggle'),							category = _('Exterior Lights')},
	{down = iCommandPlaneNavLights_CodeModeOn,			name = _('Exterior Lights Master Switch OFF-NVG-NORM'),		category = _('Exterior Lights')},
	{down = iCommandPlaneNavLights_CodeModeOff,			name = _('Exterior Lights Master Switch NORM-NVG-OFF'),		category = _('Exterior Lights')},
	{pressed = iCommandPlaneFormationLightsIncrease,	name = _('Formation Lights Knob Brightness Increase'),		category = _('Exterior Lights')},
	{pressed = iCommandPlaneFormationLightsDecrease,	name = _('Formation Lights Knob Brightness Increase'),		category = _('Exterior Lights')},
	{down = iCommandPlanePositionLightsSteady,			name = _('Position Lights Switch OFF-DIM-BRT'),				category = _('Exterior Lights')},
	{down = iCommandPlanePositionLightsOff,				name = _('Position Lights Switch BRT-DIM-OFF'),				category = _('Exterior Lights')},
	{down = iCommandPlaneAntiCollisionLights,			name = _('Anti-Collision Lights Toggle'),					category = _('Exterior Lights')},
	{down = iCommandPlaneLGPTaxiLight,					name = _('Auxiliary (Taxi) Light Toggle'),					category = _('Exterior Lights')},
	{down = iCommandPlaneLGPLandLight,					name = _('Landing Light Switch OFF-HVR-APP'),				category = _('Exterior Lights')},
	{down = iCommandPlaneLGPLightsOff,					name = _('Landing Light Switch APP-HVR-OFF'),				category = _('Exterior Lights')},
	{down = iCommandPlaneRotorTipLights,				name = _('Air Refueling Probe Light Toggle'),				category = _('Exterior Lights')},
	
	-- DEBUG
	{down = iCommandADI_ZeroPitchTrimLeft,	up = iCommandADI_Test_up,	name = _('AOA Indicator Up'),	category = _('DEBUG')},
	{down = iCommandADI_ZeroPitchTrimRight,	up = iCommandADI_Test_up,	name = _('AOA Indicator Down'),	category = _('DEBUG')},
	
	}
) return res