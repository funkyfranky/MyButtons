local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

join(
	res.keyCommands,
	{
		---------------------------------------------
		-- Cheat ------------------------------------
		---------------------------------------------
		{down = iCommandEnginesStart,					name = _('Auto Start'),												category = _('Cheat')},
		{down = iCommandEnginesStop,					name = _('Auto Stop'),												category = _('Cheat')},
		
		---------------------------------------------
		-- DCS Communications -----------------------
		---------------------------------------------
		{down = iCommandPlaneRefuelingReadyPreContact,	name = _('A/A refueling - "Ready for precontact" radio call'),		category = _('Communications')},
		
		---------------------------------------------
		-- Flight Control ---------------------------
		---------------------------------------------
		{down = iCommandNetCrewRequestControl,																														name = _('Request Aircraft Control'),	category = {_('Multi Crew'), _('Flight Control')}},
		{pressed = iCommandPlaneUpStart,		 	up = iCommandPlaneUpStop,																						name = _('Aircraft Pitch Down'),		category = {_('Control Stick'), _('Flight Control')}},
		{pressed = iCommandPlaneDownStart,		 	up = iCommandPlaneDownStop,																						name = _('Aircraft Pitch Up'),			category = {_('Control Stick'), _('Flight Control')}},
		{pressed = iCommandPlaneLeftStart,		 	up = iCommandPlaneLeftStop,																						name = _('Aircraft Bank Left'),			category = {_('Control Stick'), _('Flight Control')}},
		{pressed = iCommandPlaneRightStart,		 	up = iCommandPlaneRightStop,																					name = _('Aircraft Bank Right'),		category = {_('Control Stick'), _('Flight Control')}},
		{pressed = iCommandPlaneLeftRudderStart, 	up = iCommandPlaneLeftRudderStop,																				name = _('Aircraft Rudder Left'),		category = {_('Pedals'), _('Flight Control')}},
		{pressed = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,																				name = _('Aircraft Rudder Right'),		category = {_('Pedals'), _('Flight Control')}},
		{down = iCommandPlaneFlaps,																																	name = _('Flaps Toggle Up/Down'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlane_FLAPS_UP,																																name = _('Flaps Up'),					category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlane_FLAPS_DN,																																name = _('Flaps Down'),					category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = fltctrl_commands.rudder_trim_sw,	up = fltctrl_commands.rudder_trim_sw,	cockpit_device_id = devices.FLCTRL,		value_down = -1, value_up = 0,	name = _('Trim Rudder Left'),			category = {_('Throttle Quadrant'), _('Flight Control'), _('Trim Controls')}},
		{down = fltctrl_commands.rudder_trim_sw,	up = fltctrl_commands.rudder_trim_sw,	cockpit_device_id = devices.FLCTRL,		value_down =  1, value_up = 0,	name = _('Trim Rudder Right'),			category = {_('Throttle Quadrant'), _('Flight Control'), _('Trim Controls')}},
				
		---------------------------------------------
		-- Throttle Quadrant ------------------------
		---------------------------------------------
		{pressed = iCommandThrottleIncrease,		up = iCommandThrottleStop,		name = _('Throttle Smoothly (Both) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{pressed = iCommandThrottleDecrease,		up = iCommandThrottleStop,		name = _('Throttle Smoothly (Both) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{pressed = iCommandThrottle1Increase,		up = iCommandThrottle1Stop,		name = _('Throttle Smoothly (Left) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{pressed = iCommandThrottle1Decrease,		up = iCommandThrottle1Stop,		name = _('Throttle Smoothly (Left) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{pressed = iCommandThrottle2Increase,		up = iCommandThrottle2Stop,		name = _('Throttle Smoothly (Right) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{pressed = iCommandThrottle2Decrease,		up = iCommandThrottle2Stop,		name = _('Throttle Smoothly (Right) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTIncreaseRegime,										name = _('Throttle Step (Both) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTDecreaseRegime,										name = _('Throttle Step (Both) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTIncreaseRegimeLeft,									name = _('Throttle Step (Left) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTDecreaseRegimeLeft,									name = _('Throttle Step (Left) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTIncreaseRegimeRight,								name = _('Throttle Step (Right) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		{down = iCommandPlaneAUTDecreaseRegimeRight,								name = _('Throttle Step (Right) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
		--
		{down = iCommandLeftEngineStart,											name = _('Throttle (Left) - IDLE'),													category = _('Throttle Quadrant')},
		{down = iCommandLeftEngineStop,												name = _('Throttle (Left) - OFF'),													category = _('Throttle Quadrant')},
		{down = iCommandRightEngineStart,											name = _('Throttle (Right) - IDLE'),												category = _('Throttle Quadrant')},
		{down = iCommandRightEngineStop,											name = _('Throttle (Right) - OFF'),													category = _('Throttle Quadrant')},
		{down = iCommandLeftEngineStop, 		up = iCommandLeftEngineStart,		value_down = 1, value_up = 0,		name = _("Throttle (Left) - OFF/IDLE"),			category = _('Throttle Quadrant')},
		{down = iCommandRightEngineStop,		up = iCommandRightEngineStart,		value_down = 1, value_up = 0,		name = _("Throttle (Right) - OFF/IDLE"),		category = _('Throttle Quadrant')},
		
		---------------------------------------------
		-- HOTAS - Stick ----------------------------
		---------------------------------------------
		{down = hotas_cmds.FC_STICK_CASTLE_FWD,		up = hotas_cmds.FC_STICK_CASTLE_FWD,	cockpit_device_id = devices.HOTASCTRL,	value_down = -1,	value_up = 0,	name = _('Castle Switch FWD'),				category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_CASTLE_AFT,		up = hotas_cmds.FC_STICK_CASTLE_AFT,	cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('Castle Switch AFT'),				category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_CASTLE_LEFT,	up = hotas_cmds.FC_STICK_CASTLE_LEFT,	cockpit_device_id = devices.HOTASCTRL,	value_down = -1,	value_up = 0,	name = _('Castle Switch LEFT'),				category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_CASTLE_RIGHT,	up = hotas_cmds.FC_STICK_CASTLE_RIGHT,	cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('Castle Switch RIGHT'),			category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_CASTLE_PRESS,	up = hotas_cmds.FC_STICK_CASTLE_PRESS,	cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('Castle Switch PRESS'),			category = {_('Control Stick'), _('HOTAS')}},
		
		{down = hotas_cmds.FC_STICK_AACQ_FWD,		up = hotas_cmds.FC_STICK_AACQ_FWD,		cockpit_device_id = devices.HOTASCTRL,	value_down = -1,	value_up = 0,	name = _('Auto Acquisition Switch FWD'),	category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_AACQ_AFT,		up = hotas_cmds.FC_STICK_AACQ_AFT,		cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('Auto Acquisition Switch AFT'),	category = {_('Control Stick'), _('HOTAS')}},
		{down = hotas_cmds.FC_STICK_AACQ_PRESS,		up = hotas_cmds.FC_STICK_AACQ_PRESS,	cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('Auto Acquisition Switch PRESS'),	category = {_('Control Stick'), _('HOTAS')}},
		
		{down = hotas_cmds.FC_NWS,								up = hotas_cmds.FC_NWS,		cockpit_device_id = devices.HOTASCTRL,	value_down =  1,	value_up = 0,	name = _('NWS/Weapons Button'),				category = {_('Control Stick'), _('HOTAS')}},
		{down = iCommandPlane_HOTAS_MasterModeControlButton,	up = iCommandPlane_HOTAS_MasterModeControlButtonUP,														name = _('Paddle Switch'),					category = {_('Control Stick'), _('HOTAS')}},
		
		{down = iCommandPlaneFire,								up = iCommandPlaneFireOff,								name = _('Trigger'),							category = {_('Control Stick'), _('HOTAS')}},
		{down = iCommandPlanePickleOn,							up = iCommandPlanePickleOff,							name = _('Weapon Release (Pickle)'),			category = {_('Control Stick'), _('HOTAS')}},
		
		{pressed = iCommandPlaneTrimLeft,						up = iCommandPlaneTrimStop,								name = _('Trim Left Wing Down'),				category = {_('Control Stick'), _('HOTAS'), _('Flight Control'), _('Trim Controls')}},
		{pressed = iCommandPlaneTrimRight,						up = iCommandPlaneTrimStop,								name = _('Trim Right Wing Down'),				category = {_('Control Stick'), _('HOTAS'), _('Flight Control'), _('Trim Controls')}},
		{pressed = iCommandPlaneTrimUp,							up = iCommandPlaneTrimStop,								name = _('Trim Nose Up'),						category = {_('Control Stick'), _('HOTAS'), _('Flight Control'), _('Trim Controls')}},
		{pressed = iCommandPlaneTrimDown,						up = iCommandPlaneTrimStop,								name = _('Trim Nose Down'),						category = {_('Control Stick'), _('HOTAS'), _('Flight Control'), _('Trim Controls')}},
		
		---------------------------------------------
		-- HOTAS - Throttle -------------------------
		---------------------------------------------
		{down = hotas_cmds.FC_TDC_FWD,				up = hotas_cmds.FC_TDC_FWD,				value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('TDC Switch UP'),			category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_TDC_AFT,				up = hotas_cmds.FC_TDC_AFT,				value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('TDC Switch DOWN'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_TDC_LEFT,				up = hotas_cmds.FC_TDC_LEFT,			value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('TDC Switch LEFT'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_TDC_RIGHT,			up = hotas_cmds.FC_TDC_RIGHT,			value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('TDC Switch RIGHT'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_TDC_PRESS,			up = hotas_cmds.FC_TDC_PRESS,			value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('TDC Switch PRESS'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	

		{down = hotas_cmds.FC_COOLIE_UP,			up = hotas_cmds.FC_COOLIE_UP,			value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Coolie Switch UP'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_COOLIE_DOWN,			up = hotas_cmds.FC_COOLIE_DOWN,			value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Coolie Switch DOWN'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_COOLIE_LEFT,			up = hotas_cmds.FC_COOLIE_LEFT,			value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Coolie Switch LEFT'),		category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_COOLIE_RIGHT,			up = hotas_cmds.FC_COOLIE_RIGHT,		value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Coolie Switch RIGHT'),	category = {_('Throttle Quadrant'), _('HOTAS')}},	

		{down = hotas_cmds.FC_BOAT_FWD,				up = hotas_cmds.FC_BOAT_FWD,			value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Boat Switch FWD'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_BOAT_AFT,				up = hotas_cmds.FC_BOAT_AFT,			value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Boat Switch AFT'),		category = {_('Throttle Quadrant'), _('HOTAS')}},					
		
		{down = hotas_cmds.FC_RDR_ANT_UP,			up = hotas_cmds.FC_RDR_ANT_UP,			value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Radar Antenna Elevation UP'),				category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_RDR_ANT_DOWN,			up = hotas_cmds.FC_RDR_ANT_DOWN,		value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Radar Antenna Elevation DOWN'),			category = {_('Throttle Quadrant'), _('HOTAS')}},	

		{down = hotas_cmds.FC_WSS,					up = hotas_cmds.FC_WSS,					value_down = 1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Weapons/Mode Switch MRM else SRM'),					category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_WSS,					up = hotas_cmds.FC_WSS,					value_down =-1,	value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Weapons/Mode Switch GUN else SRM'),					category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_WSS,															value_down = 1,					cockpit_device_id = devices.HOTASCTRL,	name = _('Weapons/Mode Switch FWD (MRM)'),						category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_WSS,															value_down = 0,					cockpit_device_id = devices.HOTASCTRL,	name = _('Weapons/Mode Switch CNT (SRM)'),						category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_WSS,															value_down =-1,					cockpit_device_id = devices.HOTASCTRL,	name = _('Weapons/Mode Switch AFT (GUN)'),						category = {_('Throttle Quadrant'), _('HOTAS')}},	
		{down = hotas_cmds.FC_WSS_CYCLE,													value_down = 1,					cockpit_device_id = devices.ACC,		name = _('Weapons/Mode Switch Cycle FWD (GUN-SRM-MRM)'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_WSS_CYCLE,													value_down =-1,					cockpit_device_id = devices.ACC,		name = _('Weapons/Mode Switch Cycle AFT (MRM-SRM-GUN)'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_WSS_LOOP,														value_down =-1,					cockpit_device_id = devices.ACC,		name = _('Weapons/Mode Switch Cycle Loop (GUN-SRM-MRM-GUN)'),	category = {_('Throttle Quadrant'), _('HOTAS')}},

		{down = hotas_cmds.FC_LEFT_MF,				up = hotas_cmds.FC_LEFT_MF,				value_down = 1, value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('Left Multifunction Switch'),				category = {_('Throttle Quadrant'), _('HOTAS')}},	

		{down = hotas_cmds.FC_CMD_UP,				up = hotas_cmds.FC_CMD_UP,				value_down = 1, value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('CMD Switch UP (Manual 2 Dispense)'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_CMD_DOWN,				up = hotas_cmds.FC_CMD_DOWN,			value_down =-1, value_up = 0,	cockpit_device_id = devices.HOTASCTRL,	name = _('CMD Switch DOWN (Manual 1 Dispense)'),	category = {_('Throttle Quadrant'), _('HOTAS')}},
         		
		{down = hotas_cmds.FC_THROTTLE_MIC_FWD,		up = hotas_cmds.FC_THROTTLE_MIC_FWD,	value_down = 1, value_up = 0,	cockpit_device_id = devices.HOTASCTRL,  name = _('MIC Switch FWD (Call Radio 1 Menu)'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = hotas_cmds.FC_THROTTLE_MIC_AFT,		up = hotas_cmds.FC_THROTTLE_MIC_AFT,	value_down =-1, value_up = 0,	cockpit_device_id = devices.HOTASCTRL,  name = _('MIC Switch AFT (Call Radio 2 Menu)'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = iCommandVoIPRadioPushToTalkEnableDisableVoice,		up = iCommandVoIPRadioPushToTalkEnableDisableVoice,												name = _('MIC Switch FWD (Radio 1 VOIP)'),			category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = iCommandVoIPRadioPushToTalkEnableDisableVoice_1,	up = iCommandVoIPRadioPushToTalkEnableDisableVoice_1,											name = _('MIC Switch AFT (Radio 2 VOIP)'),			category = {_('Throttle Quadrant'), _('HOTAS')}},

		{down = iCommandHelicopter_Left_Engine_Lock,				up = iCommandHelicopter_Left_Engine_Lock,	value_down = 1.0,	value_up = 0.0,					name = _('Finger Lift LEFT'),						category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = iCommandHelicopter_Right_Engine_Lock,				up = iCommandHelicopter_Right_Engine_Lock,	value_down = 1.0,	value_up = 0.0,					name = _('Finger Lift RIGHT'),						category = {_('Throttle Quadrant'), _('HOTAS')}},	
		
		{down = iCommandPlaneAirBrake,																										name = _('Speed Brake Switch - Toggle On/Off'),		category = {_('Throttle Quadrant'), _('HOTAS')}},
		{pressed = iCommandPlane_HOTAS_SpeedBrakeSwitchForward,		up = iCommandPlane_HOTAS_SpeedBrakeSwitchCenter,						name = _('Speed Brake FWD (Retract)'),				category = {_('Throttle Quadrant'), _('HOTAS')}},
		{pressed = iCommandPlane_HOTAS_SpeedBrakeSwitchAft,			up = iCommandPlane_HOTAS_SpeedBrakeSwitchCenter,						name = _('Speed Brake AFT (Extend)'),				category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = iCommandPlaneAirBrakeOn,							up = iCommandPlaneAirBrakeOn,		value_down = 1,	value_up = 0,		name = _('Speed Brake Switch - Step Aft'),			category = {_('Throttle Quadrant'), _('HOTAS')}},
		{down = iCommandPlaneAirBrakeOff,							up = iCommandPlaneAirBrakeOff,		value_down = 1,	value_up = 0,		name = _('Speed Brake Switch - Step Fwd'),			category = {_('Throttle Quadrant'), _('HOTAS')}},
		
		---------------------------------------------
		-- Systems ----------------------------------
		---------------------------------------------
		{down = iCommandPlaneWheelBrakeOn,			up = iCommandPlaneWheelBrakeOff,		name = _('Wheel Brake - ON/OFF'),				category = {_('Pedals'), _('Systems')}},
		{down = iCommandPlaneWheelBrakeLeftOn,		up = iCommandPlaneWheelBrakeLeftOff,	name = _('Wheel Brake Left - ON/OFF'),			category = {_('Pedals'), _('Systems')}},
		{down = iCommandPlaneWheelBrakeRightOn,		up = iCommandPlaneWheelBrakeRightOff,	name = _('Wheel Brake Right - ON/OFF'),			category = {_('Pedals'), _('Systems')}},
		{down = iCommandPlaneFonar, 														name = _('Canopy - OPEN/CLOSE'),				category = _('Systems')},
		{down = iCommandPlaneEject,															name = _('Eject'),								category = _('Systems')},
		{down = cnp_commands.cnpy_lever,			up = cnp_commands.cnpy_lever,			cockpit_device_id = devices.CNPYSYST,	value_down = 1.0,	value_up = 0.0,	name = _('Canopy_Handle'),				category = _('Systems')},
		{down = cnp_commands.em_cnpy_jett_lever,	up = cnp_commands.em_cnpy_jett_lever,	cockpit_device_id = devices.CNPYSYST,	value_down = 1.0,	value_up = 0.0,	name = _('Emergency Canopy Jettison'),	category = _('Systems')},
		{down = misc_commands.service_door_cycle,											cockpit_device_id = devices.CNPYSYST,	value_down = 0.0,					name = _('Service hatches open/close'), category = _('Systems')},
		{down = misc_commands.service_door_open,											cockpit_device_id = devices.CNPYSYST,	value_down = 0.0,					name = _('Service hatches open'), category = _('Systems')},
		{down = misc_commands.service_door_close,											cockpit_device_id = devices.CNPYSYST,	value_down = 0.0,					name = _('Service hatches close'), category = _('Systems')},
		
		---------------------------------------------
		-- Up Front Control -------------------------
		---------------------------------------------
		{down = ufc_commands.UFC_PB_1,				up = ufc_commands.UFC_PB_1,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 1'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_2,				up = ufc_commands.UFC_PB_2,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 2'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_3,				up = ufc_commands.UFC_PB_3,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 3'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_4,				up = ufc_commands.UFC_PB_4,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 4'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_5,				up = ufc_commands.UFC_PB_5,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 5'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_6,				up = ufc_commands.UFC_PB_6,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 6'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_7,				up = ufc_commands.UFC_PB_7,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 7'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_8,				up = ufc_commands.UFC_PB_8,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 8'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_9,				up = ufc_commands.UFC_PB_9,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 9'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PB_0,				up = ufc_commands.UFC_PB_0,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Push button 10'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_LEFT_CCW,											cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Left UHF Preset Channel Selector CCW'),			category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_LEFT_CW,											cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Left UHF Preset Channel Selector CW'),			category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_RIGHT_CCW,											cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Right UHF Preset Channel Selector CCW'),			category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_RIGHT_CW,											cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Right UHF Preset Channel Selector CW'),			category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R1_CCW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Radio 1 Volume CCW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R1_CW,													cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Radio 1 Volume CW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R2_CCW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Radio 2 Volume CCW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R2_CW,													cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Radio 2 Volume CW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R3_CCW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Radio 3 Volume CCW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R3_CW,													cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Radio 3 Volume CW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R4_CCW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('Radio 4 Volume CCW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_VOL_R4_CW,													cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('Radio 4 Volume CW'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_UHF_1_3_SWITCH,	up = ufc_commands.UFC_UHF_1_3_SWITCH,	cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Radio 1 and Radio 3 Toggle'),						category = _('Up Front Control')},
		{down = ufc_commands.UFC_UHF_2_4_SWITCH,	up = ufc_commands.UFC_UHF_2_4_SWITCH,	cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Radio 2 and Radio 4 Toggle'),						category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_A1,			up = ufc_commands.UFC_KEY_A1,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 1/A Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_N2,			up = ufc_commands.UFC_KEY_N2,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 2/N Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_B3,			up = ufc_commands.UFC_KEY_B3,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 3/B Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_W4,			up = ufc_commands.UFC_KEY_W4,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 4/W Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_M5,			up = ufc_commands.UFC_KEY_M5,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 5/M Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_E6,			up = ufc_commands.UFC_KEY_E6,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 6/E Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY__7,			up = ufc_commands.UFC_KEY__7,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 7/: Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_S8,			up = ufc_commands.UFC_KEY_S8,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 8/S Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY_C9,			up = ufc_commands.UFC_KEY_C9,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 9/C Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_KEY__0,			up = ufc_commands.UFC_KEY__0,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC 0/- Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_GREC_CM_LEFT,		up = ufc_commands.UFC_GREC_CM_LEFT,		cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Left Guard Receiver Channel/Manual (GREC C/M)'),	category = _('Up Front Control')},
		{down = ufc_commands.UFC_GREC_CM_RIGHT,		up = ufc_commands.UFC_GREC_CM_RIGHT,	cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Right Guard Receiver Channel/Manual (GREC C/M)'),	category = _('Up Front Control')},
		{down = ufc_commands.UFC_EMIS_LMT,			up = ufc_commands.UFC_EMIS_LMT,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Emission Limiter'),								category = _('Up Front Control')},
		{down = ufc_commands.UFC_MARK,				up = ufc_commands.UFC_MARK,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Mark Key'),										category = _('Up Front Control')},
		{down = ufc_commands.UFC_I_P,				up = ufc_commands.UFC_I_P,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('IFF Identification (I/P) Key'),					category = _('Up Front Control')},
		{down = ufc_commands.UFC_DOT,				up = ufc_commands.UFC_DOT,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Decimal Point (.) Key'),						category = _('Up Front Control')},
		{down = ufc_commands.UFC_SHF,				up = ufc_commands.UFC_SHF,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Shift (SHF) Key'),							category = _('Up Front Control')},
		{down = ufc_commands.UFC_A_P,				up = ufc_commands.UFC_A_P,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Autopilot (A/P) Key'),						category = _('Up Front Control')},
		{down = ufc_commands.UFC_CLEAR,				up = ufc_commands.UFC_CLEAR,			cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC Clear (CLR) Key'),							category = _('Up Front Control')},
		{down = ufc_commands.UFC_DATA,				up = ufc_commands.UFC_DATA,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC DATA Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_MENU,				up = ufc_commands.UFC_MENU,				cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('UFC MENU Key'),									category = _('Up Front Control')},
		{down = ufc_commands.UFC_BRT_CTRL_CCW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = -0.01499,				name = _('UFC Bright Control CCW'),							category = _('Up Front Control')},
		{down = ufc_commands.UFC_BRT_CTRL_CW,												cockpit_device_id = devices.UFCCTRL_FRONT,	value_down =  0.01499,				name = _('UFC Bright Control CW'),							category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_SW_LEFT,	up = ufc_commands.UFC_PRESET_SW_LEFT,	cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Left UHF Preset Push Button'),					category = _('Up Front Control')},
		{down = ufc_commands.UFC_PRESET_SW_RIGHT,	up = ufc_commands.UFC_PRESET_SW_RIGHT,	cockpit_device_id = devices.UFCCTRL_FRONT,	value_down = 1.0,	value_up = 0.0,	name = _('Right UHF Preset Push Button'),					category = _('Up Front Control')},
		
		---------------------------------------------
		-- HUD Control ------------------------------
		---------------------------------------------
		{down = hudctrl_commands.MM_AA_Switch,		up = hudctrl_commands.MM_AA_Switch,		cockpit_device_id = devices.ACC,			value_down = 1.0,	value_up = 0.0,	name = _('Master Mode A/A Selector'),						category = _('HUD Control')},
		{down = hudctrl_commands.MM_AG_Switch,		up = hudctrl_commands.MM_AG_Switch,		cockpit_device_id = devices.ACC,			value_down = 1.0,	value_up = 0.0,	name = _('Master Mode A/G Selector'),						category = _('HUD Control')},
		{down = hudctrl_commands.MM_NAV_Switch,		up = hudctrl_commands.MM_NAV_Switch,	cockpit_device_id = devices.ACC,			value_down = 1.0,	value_up = 0.0,	name = _('Master Mode NAV Selector'),						category = _('HUD Control')},
		{down = hudctrl_commands.MM_INST_Switch,	up = hudctrl_commands.MM_INST_Switch,	cockpit_device_id = devices.ACC,			value_down = 1.0,	value_up = 0.0,	name = _('Master Mode INST Selector'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_BRT_Knob_KB,											cockpit_device_id = devices.HUDCTRL,		value_down = 0.1,					name = _('HUD Brightness +10%'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_BRT_Knob_KB,											cockpit_device_id = devices.HUDCTRL,		value_down =-0.1,					name = _('HUD Brightness -10%'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_REJ_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down = 0.0,					name = _('HUD Symbology Reject REJ 2'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_REJ_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down = 0.5,					name = _('HUD Symbology Reject REJ 1'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_REJ_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down = 1.0,					name = _('HUD Symbology Reject NORM'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_REJ_Switch_KB,											cockpit_device_id = devices.HUDCTRL,		value_down =-0.5,					name = _('HUD Symbology Reject DOWN'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_REJ_Switch_KB,											cockpit_device_id = devices.HUDCTRL,		value_down = 0.5,					name = _('HUD Symbology Reject UP'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_MODE_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down =-1.0,					name = _('HUD Display Mode NIGHT'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_MODE_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down = 0.0,					name = _('HUD Display Mode AUTO'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_MODE_Switch,											cockpit_device_id = devices.HUDCTRL,		value_down = 1.0,					name = _('HUD Display Mode DAY'),							category = _('HUD Control')},	
		{down = hudctrl_commands.HUD_MODE_Switch_KB,										cockpit_device_id = devices.HUDCTRL,		value_down =-1.0,					name = _('HUD Display Mode DOWN'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_MODE_Switch_KB,										cockpit_device_id = devices.HUDCTRL,		value_down = 1.0,					name = _('HUD Display Mode UP'),							category = _('HUD Control')},
		{down = hudctrl_commands.HUD_VIDEO_BRT_Knob_KB,										cockpit_device_id = devices.HUDCTRL,		value_down = 0.1,					name = _('HUD Video Brightness +10%'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_VIDEO_BRT_Knob_KB,										cockpit_device_id = devices.HUDCTRL,		value_down =-0.1,					name = _('HUD Video Brightness -10%'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_VIDEO_CONT_Knob_KB,									cockpit_device_id = devices.HUDCTRL,		value_down = 0.1,					name = _('HUD Video Contrast +10%'),						category = _('HUD Control')},
		{down = hudctrl_commands.HUD_VIDEO_CONT_Knob_KB,									cockpit_device_id = devices.HUDCTRL,		value_down =-0.1,					name = _('HUD Video Contrast -10%'),						category = _('HUD Control')},
		
		---------------------------------------------
		-- Multi Function Displays ------------------
		---------------------------------------------
		-- LEFT MPD
		{down = mfdg_commands.Button_01,				up = mfdg_commands.Button_01,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  1'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_02,				up = mfdg_commands.Button_02,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  2'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_03,				up = mfdg_commands.Button_03,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  3'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_04,				up = mfdg_commands.Button_04,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  4'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_05,				up = mfdg_commands.Button_05,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  5'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_06,				up = mfdg_commands.Button_06,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  6'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_07,				up = mfdg_commands.Button_07,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  7'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_08,				up = mfdg_commands.Button_08,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  8'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_09,				up = mfdg_commands.Button_09,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button  9'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_10,				up = mfdg_commands.Button_10,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 10'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_11,				up = mfdg_commands.Button_11,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 11'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_12,				up = mfdg_commands.Button_12,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 12'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_13,				up = mfdg_commands.Button_13,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 13'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_14,				up = mfdg_commands.Button_14,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 14'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_15,				up = mfdg_commands.Button_15,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 15'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_16,				up = mfdg_commands.Button_16,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 16'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_17,				up = mfdg_commands.Button_17,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 17'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_18,				up = mfdg_commands.Button_18,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 18'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_19,				up = mfdg_commands.Button_19,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 19'),							category = _('MPD Left')},
		{down = mfdg_commands.Button_20,				up = mfdg_commands.Button_20,		cockpit_device_id = devices.MPD_FLEFT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDL Push Button 20'),							category = _('MPD Left')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPD_FLEFT,		value_down = -1.0,					name = _('MPDL Power Switch ON'),							category = _('MPD Left')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPD_FLEFT,		value_down =  1.0,					name = _('MPDL Power Switch OFF'),							category = _('MPD Left')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPD_FLEFT,		value_pressed = -1.0,	value_up = 0.0,	name = _('MPDL Display Brightness Increase'),			category = _('MPD Left')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPD_FLEFT,		value_pressed =  1.0,	value_up = 0.0,	name = _('MPDL Display Brightness Decrease'),			category = _('MPD Left')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPD_FLEFT,		value_pressed = -1.0,	value_up = 0.0,	name = _('MPDL Display Contrast Increase'),				category = _('MPD Left')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPD_FLEFT,		value_pressed =  1.0,	value_up = 0.0,	name = _('MPDL Display Contrast Decrease'),				category = _('MPD Left')},
		
		-- CENTER MPCD
		{down = mfdg_commands.Button_01,				up = mfdg_commands.Button_01,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  1'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_02,				up = mfdg_commands.Button_02,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  2'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_03,				up = mfdg_commands.Button_03,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  3'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_04,				up = mfdg_commands.Button_04,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  4'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_05,				up = mfdg_commands.Button_05,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  5'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_06,				up = mfdg_commands.Button_06,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  6'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_07,				up = mfdg_commands.Button_07,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  7'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_08,				up = mfdg_commands.Button_08,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  8'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_09,				up = mfdg_commands.Button_09,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button  9'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_10,				up = mfdg_commands.Button_10,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 10'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_11,				up = mfdg_commands.Button_11,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 11'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_12,				up = mfdg_commands.Button_12,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 12'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_13,				up = mfdg_commands.Button_13,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 13'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_14,				up = mfdg_commands.Button_14,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 14'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_15,				up = mfdg_commands.Button_15,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 15'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_16,				up = mfdg_commands.Button_16,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 16'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_17,				up = mfdg_commands.Button_17,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 17'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_18,				up = mfdg_commands.Button_18,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 18'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_19,				up = mfdg_commands.Button_19,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 19'),							category = _('MPCD Front')},
		{down = mfdg_commands.Button_20,				up = mfdg_commands.Button_20,		cockpit_device_id = devices.MPCD_FCENTER,	value_down = 1.0,	value_up = 0.0,	name = _('MPCD Push Button 20'),							category = _('MPCD Front')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPCD_FCENTER,	value_down = -1.0,					name = _('MPCD Power Switch ON'),							category = _('MPCD Front')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPCD_FCENTER,	value_down =  1.0,					name = _('MPCD Power Switch OFF'),							category = _('MPCD Front')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPCD_FCENTER,	value_pressed = -1.0,	value_up = 0.0,	name = _('MPCD Display Brightness Increase'),			category = _('MPCD Front')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPCD_FCENTER,	value_pressed =  1.0,	value_up = 0.0,	name = _('MPCD Display Brightness Decrease'),			category = _('MPCD Front')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPCD_FCENTER,	value_pressed = -1.0,	value_up = 0.0,	name = _('MPCD Display Contrast Increase'),				category = _('MPCD Front')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPCD_FCENTER,	value_pressed =  1.0,	value_up = 0.0,	name = _('MPCD Display Contrast Decrease'),				category = _('MPCD Front')},
		
		-- RIGHT MPD
		{down = mfdg_commands.Button_01,				up = mfdg_commands.Button_01,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  1'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_02,				up = mfdg_commands.Button_02,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  2'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_03,				up = mfdg_commands.Button_03,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  3'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_04,				up = mfdg_commands.Button_04,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  4'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_05,				up = mfdg_commands.Button_05,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  5'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_06,				up = mfdg_commands.Button_06,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  6'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_07,				up = mfdg_commands.Button_07,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  7'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_08,				up = mfdg_commands.Button_08,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  8'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_09,				up = mfdg_commands.Button_09,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button  9'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_10,				up = mfdg_commands.Button_10,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 10'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_11,				up = mfdg_commands.Button_11,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 11'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_12,				up = mfdg_commands.Button_12,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 12'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_13,				up = mfdg_commands.Button_13,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 13'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_14,				up = mfdg_commands.Button_14,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 14'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_15,				up = mfdg_commands.Button_15,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 15'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_16,				up = mfdg_commands.Button_16,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 16'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_17,				up = mfdg_commands.Button_17,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 17'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_18,				up = mfdg_commands.Button_18,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 18'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_19,				up = mfdg_commands.Button_19,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 19'),							category = _('MPD Right')},
		{down = mfdg_commands.Button_20,				up = mfdg_commands.Button_20,		cockpit_device_id = devices.MPD_FRIGHT,		value_down = 1.0,	value_up = 0.0,	name = _('MPDR Push Button 20'),							category = _('MPD Right')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPD_FRIGHT,		value_down = -1.0,					name = _('MPDR Power Switch ON'),							category = _('MPD Right')},
		{down = mfdg_commands.Switch_Power,													cockpit_device_id = devices.MPD_FRIGHT,		value_down =  1.0,					name = _('MPDR Power Switch OFF'),							category = _('MPD Right')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPD_FRIGHT,		value_pressed = -1.0,	value_up = 0.0,	name = _('MPDR Display Brightness Increase'),			category = _('MPD Right')},
		{pressed = mfdg_commands.Switch_BRT,			up = mfdg_commands.Switch_BRT,		cockpit_device_id = devices.MPD_FRIGHT,		value_pressed =  1.0,	value_up = 0.0,	name = _('MPDR Display Brightness Decrease'),			category = _('MPD Right')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPD_FRIGHT,		value_pressed = -1.0,	value_up = 0.0,	name = _('MPDR Display Contrast Increase'),				category = _('MPD Right')},
		{pressed = mfdg_commands.Switch_Cont,			up = mfdg_commands.Switch_Cont,		cockpit_device_id = devices.MPD_FRIGHT,		value_pressed =  1.0,	value_up = 0.0,	name = _('MPDR Display Contrast Decrease'),				category = _('MPD Right')},
		
		---------------------------------------------
		-- Instrument Panel -------------------------
		---------------------------------------------
		{down = fltinst_commands.fuelqty_totalizer_kb,		cockpit_device_id = devices.FLINST,	value_down = 0.1,	name = _('Fuel Totalizer Selector CW'),					category = {_('Instrument Panel')}},
		{down = fltinst_commands.fuelqty_totalizer_kb,		cockpit_device_id = devices.FLINST,	value_down = -0.1,	name = _('Fuel Totalizer Selector CCW'),				category = {_('Instrument Panel')}},		
		{down = misc_commands.jfs_lever,					cockpit_device_id = devices.EPSS,	value_down = 1.0,	name = _('JFS Control Handle Handle PULL'),				category = {_('Instrument Panel')}},
		{down = misc_commands.jfs_lever,					cockpit_device_id = devices.EPSS,	value_down = 0.0,	name = _('JFS Control Handle Handle RESET'),			category = {_('Instrument Panel')}},
		{down = misc_commands.jfs_handle_turn,				cockpit_device_id = devices.EPSS,	value_down = 1.0,	name = _('JFS Control Handle Handle ROTATE 45 Deg.'),	category = {_('Instrument Panel')}},
		{down = misc_commands.jfs_handle_turn,				cockpit_device_id = devices.EPSS,	value_down = 0.0,	name = _('JFS Control Handle Handle ROTATE VERTICAL'),	category = {_('Instrument Panel')}},
		{down = misc_commands.park_brake_sw_toggle,			cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Parking Brake Switch Toggle'),				category = {_('Instrument Panel')}},
		{down = misc_commands.park_brake_sw,				cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Parking Brake Switch ON'),					category = {_('Instrument Panel')}},
		{down = misc_commands.park_brake_sw,				cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Parking Brake Switch OFF'),					category = {_('Instrument Panel')}},
		{down = misc_commands.em_bk_steer_lever,			cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Emergency Brake/Steering Handle Handle PULL'),	category = {_('Instrument Panel')}},
		{down = misc_commands.em_bk_steer_lever,			cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Emergency Brake/Steering Handle Handle RESET'),	category = {_('Instrument Panel')}},
		
		-- Landing Gear
		{down = iCommandPlaneGear,				name = _('Landing Gear Lever Toggle: LG UP/LG DOWN'),	category = {_('Landing Gear Panel')}},
		{down = iCommandPlaneGearUp,			name = _('Landing Gear Lever - LG UP'),					category = {_('Landing Gear Panel')}},
		{down = iCommandPlaneGearDown,			name = _('Landing Gear Lever - LG DOWN'),				category = {_('Landing Gear Panel')}},
		{down = ldg_commands.em_gear_lever,					cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Emergency Landing Gear Handle PULL'),			category = {_('Landing Gear Panel')}},
		{down = ldg_commands.em_gear_lever,					cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Emergency Landing Gear Handle RESET'),		category = {_('Landing Gear Panel')}},
		{down = ldg_commands.em_gear_lever_rotate,			cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Emergency Landing Gear Handle ROTATE CW'),	category = {_('Landing Gear Panel')}},
		{down = ldg_commands.em_gear_lever_rotate,			cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Emergency Landing Gear Handle ROTATE CCW'),	category = {_('Landing Gear Panel')}},
		{down = misc_commands.arr_hook_lever,	cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Arresting Hook Handle DOWN'),		category = {_('Landing Gear Panel')}},
		{down = misc_commands.arr_hook_lever,	cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Arresting Hook Handle UP'),		category = {_('Landing Gear Panel')}},
		{down = iCommandPlaneHook,				name = _('Arresting Hook Handle Toggle'),	            category = {_('Landing Gear Panel')}},
		{down = ldg_commands.warn_tone_sil_btn,	up = ldg_commands.warn_tone_sil_btn,	 cockpit_device_id = devices.WCAS,	value_down = 1.0, value_up = 0.0, name = _('Landing Gear Warning Tone Silence'), category = {_('Landing Gear Panel')}},
		{down = fltinst_commands.pitch_ratio_sw,			cockpit_device_id = devices.FLCTRL,	value_down = 1.0,	name = _('Pitch Ratio Switch AUTO'),					category = {_('Flight Control')}},
		{down = fltinst_commands.pitch_ratio_sw,			cockpit_device_id = devices.FLCTRL,	value_down = 0.0,	name = _('Pitch Ratio Switch EMERG'),					category = {_('Flight Control')}},		
		{pressed = misc_commands.rud_adj_lever, up = misc_commands.rud_adj_lever,		cockpit_device_id = devices.FLCTRL,	value_pressed = 1.0,	value_up = 0.0,	name = _('Rudder Pedal Adjust Handle PULL'),	category = {_('Instrument Panel')}},
		
		---------------------------------------------
		-- Fire Panel ----------------------------
		---------------------------------------------
		{pressed = amadctrl_commands.fire_ext_sw, up = amadctrl_commands.fire_ext_sw,	cockpit_device_id = devices.DEEC,	value_pressed = 1.0,	value_up = 0.0,	name = _('Fire Extinguisher Switch DISCHARGE'),	category = {_('Instrument Panel')}},
		{pressed = amadctrl_commands.fire_ext_sw, up = amadctrl_commands.fire_ext_sw,	cockpit_device_id = devices.DEEC,	value_pressed = -1.0,	value_up = 0.0,	name = _('Fire Extinguisher Switch TEST'),		category = {_('Instrument Panel')}},
		{down = amadctrl_commands.amad_sw_cover,										cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('AMAD Fire Switch Cover OPEN'),							category = {_('Instrument Panel')}},
		{down = amadctrl_commands.amad_sw_cover,										cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('AMAD Fire Switch Cover CLOSE'),							category = {_('Instrument Panel')}},
		{down = amadctrl_commands.left_eng_fire_cover,									cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Left Engine Fire Switch Cover OPEN'),						category = {_('Instrument Panel')}},
		{down = amadctrl_commands.left_eng_fire_cover,									cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Left Engine Fire Switch Cover CLOSE'),					category = {_('Instrument Panel')}},
		{down = amadctrl_commands.right_eng_fire_cover,									cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Right Engine Fire Switch Cover OPEN'),					category = {_('Instrument Panel')}},
		{down = amadctrl_commands.right_eng_fire_cover,									cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Right Engine Fire Switch Cover CLOSE'),					category = {_('Instrument Panel')}},
		{down = amadctrl_commands.amad_sw,												ockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('AMAD Fire Switch PUSH'),									category = {_('Instrument Panel')}},
		{down = amadctrl_commands.amad_sw,												cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('AMAD Fire Switch RESET'),									category = {_('Instrument Panel')}},
		{down = amadctrl_commands.left_eng_fire_sw,										cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Left Engine Fire Cover PUSH'),							category = {_('Instrument Panel')}},
		{down = amadctrl_commands.left_eng_fire_sw,										cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Left Engine Fire Cover RESET'),							category = {_('Instrument Panel')}},
		{down = amadctrl_commands.right_eng_fire_sw,									cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Right Engine Fire Cover PUSH'),							category = {_('Instrument Panel')}},
		{down = amadctrl_commands.right_eng_fire_sw,									cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Right Engine Fire Cover RESET'),							category = {_('Instrument Panel')}},
		
		---------------------------------------------
		-- Circuit Panel ----------------------------
		---------------------------------------------
		
		---------------------------------------------
		-- Armament ---------------------------------
		---------------------------------------------
		{down = iCommandSwitchMasterArm,																																		name = _('Master Arm Switch Toggle'),				category = _('Armament Control')},
		{down = armtctrl_commands.Master_Arm_SW,													cockpit_device_id = devices.PACS,		value_down = 1.0,					name = _('Master Arm Switch ARM'),					category = _('Armament Control')},
		{down = armtctrl_commands.Master_Arm_SW,													cockpit_device_id = devices.PACS,		value_down = 0.0,					name = _('Master Arm Switch SAFE'),					category = _('Armament Control')},
		{down = iCommandPlaneNavChangePanelModeRight,																															name = _('Armament Jettison Selector - CW'),		category = _('Armament Control')},
		{down = iCommandPlaneNavChangePanelModeLeft,																															name = _('Armament Jettison Selector - CCW'),		category = _('Armament Control')},
		{down = armtctrl_commands.JETT_Button,			up = armtctrl_commands.JETT_Button,			cockpit_device_id = devices.PACS,		value_down =  1.0,	value_up = 0.0,	name = _('Armament Jettison Button'),				category = _('Armament Control')},
		{down = armtctrl_commands.EMER_JETT_Button,		up = armtctrl_commands.EMER_JETT_Button,	cockpit_device_id = devices.PACS,		value_down =  1.0,	value_up = 0.0,	name = _('Emergency Jettison Button'),				category = _('Armament Control')},
		{down = armtctrl_commands.Master_Arm_SW,		up = armtctrl_commands.Master_Arm_SW,		cockpit_device_id = devices.PACS,		value_down = 1.0,	value_up = 0.0,	name = _('Master Arm Switch ARM else SAFE'),		category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down = -0.9,					name = _('Armament Jettison Selector - MAN FF'),	category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down = -0.6,					name = _('Armament Jettison Selector - MAN RET'),	category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down = -0.3,					name = _('Armament Jettison Selector - ALTN REL'),	category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down =  0.0,					name = _('Armament Jettison Selector - OFF'),		category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down =  0.3,					name = _('Armament Jettison Selector - COMBAT'),	category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down =  0.6,					name = _('Armament Jettison Selector - A/A'),		category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		{down = armtctrl_commands.JETT_Selector_Knob,												cockpit_device_id = devices.PACS,		value_down =  0.9,					name = _('Armament Jettison Selector - A/G'),		category = {_('Armament Control'), _('Joystick Switch Abstractions')}},
		
		--------------------------------------------------------------------------------------------
		-- Left Side -------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------				
		{down = misc_commands.flyup_cover,	cockpit_device_id = devices.FLINST,	value_down = 1.0,	name = _('Flyup Enable Switch Cover OPEN'),		category = {_('Left Console')}},
		{down = misc_commands.flyup_cover,	cockpit_device_id = devices.FLINST,	value_down = 0.0,	name = _('Flyup Enable Switch Cover CLOSED'),	category = {_('Left Console')}},
		{down = misc_commands.flyup_sw,		cockpit_device_id = devices.FLINST,	value_down = 1.0,	name = _('Flyup Enable Switch ENABLE'),			category = {_('Left Console')}},
		{down = misc_commands.flyup_sw,		cockpit_device_id = devices.FLINST,	value_down = 0.0,	name = _('Flyup Enable Switch DISABLE'),		category = {_('Left Console')}},
		{down = misc_commands.nctr_sw,			cockpit_device_id = devices.FLINST,		value_down = 1.0,	name = _('NCTR Enable Switch ON'),				category = {_('Left Console')}},
		{down = misc_commands.nctr_sw,			cockpit_device_id = devices.FLINST,		value_down = 0.0,	name = _('NCTR Enable Switch OFF'),				category = {_('Left Console')}},
		{down = engctrl_commands.vmax_cover,	cockpit_device_id = devices.DEEC,		value_down = 1.0,	name = _('VMAX Enable Switch Cover OPEN'),		category = {_('Left Console')}},
		{down = engctrl_commands.vmax_cover,	cockpit_device_id = devices.DEEC,		value_down = 0.0,	name = _('VMAX Enable Switch Cover CLOSED'),	category = {_('Left Console')}},
		{down = engctrl_commands.vmax_sw,		cockpit_device_id = devices.DEEC,		value_down = 1.0,	name = _('VMAX Enable Switch ENABLE'),			category = {_('Left Console')}},
		{down = engctrl_commands.vmax_sw,		cockpit_device_id = devices.DEEC,		value_down = 0.0,	name = _('VMAX Enable Switch DISABLE'),			category = {_('Left Console')}},
		{down = misc_commands.seat_arm_handle,	cockpit_device_id = devices.CNPYSYST,	value_down = 1.0,	name = _('Seat Arm Handle ARMED'),				category = {_('Left Console')}},
		{down = misc_commands.seat_arm_handle,	cockpit_device_id = devices.CNPYSYST,	value_down = 0.0,	name = _('Seat Arm Handle SAFE'),				category = {_('Left Console')}},
		{pressed = misc_commands.seat_adj_sw,	up = misc_commands.seat_adj_sw,	cockpit_device_id = devices.CNPYSYST,	value_pressed =  1.0,	value_up = 0.0,	name = _('Seat Adjust Switch UP'),		category = {_('Left Console')}},
		{pressed = misc_commands.seat_adj_sw,	up = misc_commands.seat_adj_sw,	cockpit_device_id = devices.CNPYSYST,	value_pressed = -1.0,	value_up = 0.0,	name = _('Seat Adjust Switch DOWN'),	category = {_('Left Console')}},
		{down = iffctrl_commands.iff_ant_sel_sw, cockpit_device_id = devices.FLINST, 	value_down = -1.0, 	name = _('IFF Antenna Select Switch LOWER'),	category = {_('Left Console')}},
		{down = iffctrl_commands.iff_ant_sel_sw, cockpit_device_id = devices.FLINST, 	value_down =  0.0, 	name = _('IFF Antenna Select Switch BOTH'),		category = {_('Left Console')}},
		{down = iffctrl_commands.iff_ant_sel_sw, cockpit_device_id = devices.FLINST, 	value_down =  1.0, 	name = _('IFF Antenna Select Switch UPPER'),	category = {_('Left Console')}},
		{down = misc_commands.ewws_cover,		cockpit_device_id = devices.FLINST,		value_down = 1.0,	name = _('EWWS Enable Switch Cover OPEN'),		category = {_('Left Console')}},
		{down = misc_commands.ewws_cover,		cockpit_device_id = devices.FLINST,		value_down = 0.0,	name = _('EWWS Enable Switch Cover CLOSED'),	category = {_('Left Console')}},
		{down = misc_commands.ewws_sw,			cockpit_device_id = devices.FLINST,		value_down = 1.0,	name = _('EWWS Enable Switch ENABLE'),			category = {_('Left Console')}},
		{down = misc_commands.ewws_sw,			cockpit_device_id = devices.FLINST,		value_down = 0.0,	name = _('EWWS Enable Switch DISABLE'),			category = {_('Left Console')}},
		{down = misc_commands.em_ar_cover,		cockpit_device_id = devices.AFSS,		value_down = 1.0,	name = _('Emergency A/R Switch Cover OPEN'),	category = {_('Left Console')}},
		{down = misc_commands.em_ar_cover,		cockpit_device_id = devices.AFSS,		value_down = 0.0,	name = _('Emergency A/R Switch Cover CLOSED'),	category = {_('Left Console')}},
		{down = misc_commands.em_ar_sw,			cockpit_device_id = devices.AFSS,		value_down = 1.0,	name = _('Emergency A/R Switch OPEN'),			category = {_('Left Console')}},
		{down = misc_commands.em_ar_sw,			cockpit_device_id = devices.AFSS,		value_down = 0.0,	name = _('Emergency A/R Switch NORM'),			category = {_('Left Console')}},
		{down = armtctrl_commands.arm_safety_override_sw,	cockpit_device_id = devices.FLINST,		value_down = 1.0,	name = _('Armament Safety Override Switch ENABLE'),		category = {_('Left Console')}},
		{down = armtctrl_commands.arm_safety_override_sw,	cockpit_device_id = devices.FLINST,		value_down = 0.0,	name = _('Armament Safety Override Switch DISABLE'),	category = {_('Left Console')}},
		
		------------------------------------------------
		-- Ground Power Panel --------------------------
		------------------------------------------------
		{down = gndpwrctrl_commands.gnd_pwr_2_sw,	cockpit_device_id = devices.EPSS,	value_down = 1.0,	name = _('Ground Power Switch 2 ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_2_sw,	cockpit_device_id = devices.EPSS,	value_down = 0.0,	name = _('Ground Power Switch 2 AUTO'),		category = {_('Left Console'), _('Ground Power Panel')}},		
		{down = gndpwrctrl_commands.gnd_pwr_3_sw,	cockpit_device_id = devices.EPSS,	value_down = 1.0,	name = _('Ground Power Switch 3 ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_3_sw,	cockpit_device_id = devices.EPSS,	value_down = 0.0,	name = _('Ground Power Switch 3 AUTO'),		category = {_('Left Console'), _('Ground Power Panel')}},			
		{down = gndpwrctrl_commands.gnd_pwr_4_sw,	cockpit_device_id = devices.EPSS,	value_down = 1.0,	name = _('Ground Power Switch 4 ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_4_sw,	cockpit_device_id = devices.EPSS,	value_down = 0.0,	name = _('Ground Power Switch 4 AUTO'),		category = {_('Left Console'), _('Ground Power Panel')}},	
		{down = gndpwrctrl_commands.pacs_sw, 		cockpit_device_id = devices.EPSS, 	value_down = -1.0, 	name = _('PACS Power Switch OFF'),			category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.pacs_sw, 		cockpit_device_id = devices.EPSS, 	value_down =  0.0, 	name = _('PACS Power Switch AUTO'),			category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.pacs_sw, 		cockpit_device_id = devices.EPSS, 	value_down =  1.0, 	name = _('PACS Power Switch ON'),			category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.mpdp_A1U_sw, 	cockpit_device_id = devices.EPSS, 	value_down = -1.0, 	name = _('MPDP/AIU Power Switch OFF'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.mpdp_A1U_sw, 	cockpit_device_id = devices.EPSS, 	value_down =  0.0, 	name = _('MPDP/AIU Power Switch AUTO'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.mpdp_A1U_sw, 	cockpit_device_id = devices.EPSS, 	value_down =  1.0, 	name = _('MPDP/AIU Power Switch ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_1_sw, 	cockpit_device_id = devices.EPSS, 	value_down = -1.0, 	name = _('Ground Power 1 Switch B ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_1_sw, 	cockpit_device_id = devices.EPSS, 	value_down =  0.0, 	name = _('Ground Power 1 Switch AUTO'),		category = {_('Left Console'), _('Ground Power Panel')}},
		{down = gndpwrctrl_commands.gnd_pwr_1_sw, 	cockpit_device_id = devices.EPSS, 	value_down =  1.0, 	name = _('Ground Power 1 Switch A ON'),		category = {_('Left Console'), _('Ground Power Panel')}},
		
		---------------------------------------------
		-- Fuel Panel -------------------------------
		---------------------------------------------
		{down = fuelctrl_commands.fuel_AIR_sw_KB,		up = fuelctrl_commands.fuel_AIR_sw_KB,		cockpit_device_id = devices.AFSS,		value_down =   1.0,	value_up = 0.0,	name = _('Air-To-Air Door Slipway: CLOSE/OPEN/ORRIDE'),	category = _('Fuel Control')},
		{down = fuelctrl_commands.fuel_AIR_sw_KB,		up = fuelctrl_commands.fuel_AIR_sw_KB,		cockpit_device_id = devices.AFSS,		value_down =  -1.0,	value_up = 0.0,	name = _('Air-To-Air Door Slipway: ORRIDE/OPEN/CLOSE'),	category = _('Fuel Control')},
		{down = fuelctrl_commands.fuel_AIR_sw_KB_toggle,											cockpit_device_id = devices.AFSS,		value_down =   1.0,					name = _('Air-To-Air Door Slipway: CLOSE/OPEN Toggle'),	category = _('Fuel Control')},
		{down = fuelctrl_commands.fuel_AIR_sw,														cockpit_device_id = devices.AFSS,		value_down =   0.0,					name = _('Air-To-Air Door Slipway: CLOSE'),				category = _('Joystick Switch Abstractions')},
		{down = fuelctrl_commands.fuel_AIR_sw,														cockpit_device_id = devices.AFSS,		value_down =   0.5,					name = _('Air-To-Air Door Slipway: OPEN'),				category = _('Joystick Switch Abstractions')},
		{down = fuelctrl_commands.fuel_AIR_sw,														cockpit_device_id = devices.AFSS,		value_down =   1.0,					name = _('Air-To-Air Door Slipway: OVERRIDE'),			category = _('Joystick Switch Abstractions')},
		{down = fuelctrl_commands.fuel_AIR_sw,			up = fuelctrl_commands.fuel_AIR_sw,			cockpit_device_id = devices.AFSS,		value_down =   0.5, value_up = 0.0,	name = _('Air-To-Air Door Slipway: OPEN else CLOSE'),	category = _('Joystick Switch Abstractions')},
		{down = fuelpnl_commands.fueltrnfr_wing_sw, cockpit_device_id = devices.AFSS, value_down = -1.0, name = _('Fuel Control: WING Tank STOP REFUEL'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_wing_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('Fuel Control: WING Tank NORM'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_wing_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('Fuel Control: WING Tank STOP TRANS'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_ctr_sw, cockpit_device_id = devices.AFSS, value_down = -1.0, name = _('Fuel Control: CTR Tank STOP REFUEL'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_ctr_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('Fuel Control: CTR Tank NORM'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_ctr_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('Fuel Control: CTR Tank STOP TRANS'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_cft_sw, cockpit_device_id = devices.AFSS, value_down = -1.0, name = _('Fuel Control: CONF Tank STOP REFUEL'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_cft_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('Fuel Control: CONF Tank NORM'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fueltrnfr_cft_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('Fuel Control: CONF Tank STOP TRANS'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_dump_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('Fuel Dump NORM'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_dump_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('Fuel Dump DUMP'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_cft_emergtrf_sw, cockpit_device_id = devices.AFSS, value_down = -1.0, name = _('Conformal Tanks Emergency Transfer L'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_cft_emergtrf_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('Conformal Tanks Emergency Transfer NORM'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_cft_emergtrf_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('Conformal Tanks Emergency Transfer R'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_ext_trfr_sw, cockpit_device_id = devices.AFSS, value_down =  0.0, name = _('External Fuel Transfer WING CTR'),	category = _('Fuel Control')},
		{down = fuelpnl_commands.fuel_ext_trfr_sw, cockpit_device_id = devices.AFSS, value_down =  1.0, name = _('External Fuel Transfer CONF TANK'),	category = _('Fuel Control')},
		
		---------------------------------------------
		-- Volume Panel -----------------------------
		---------------------------------------------
		{pressed = volctrl_commands.caution_keyb_vol,	up = volctrl_commands.caution_keyb_vol,	cockpit_device_id = devices.TEWS,		value_pressed =  1.0,	value_up = 0.0,	name = _('TEWS Caution Warning Volume INCR'),	category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.caution_keyb_vol,	up = volctrl_commands.caution_keyb_vol,	cockpit_device_id = devices.TEWS,		value_pressed = -1.0,	value_up = 0.0,	name = _('TEWS Caution Warning Volume DECR'),	category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.launch_keyb_vol,	up = volctrl_commands.launch_keyb_vol,	cockpit_device_id = devices.TEWS,		value_pressed =  1.0,	value_up = 0.0,	name = _('TEWS Launch Warning Volume INCR'),	category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.launch_keyb_vol,	up = volctrl_commands.launch_keyb_vol,	cockpit_device_id = devices.TEWS,		value_pressed = -1.0,	value_up = 0.0,	name = _('TEWS Launch Warning Volume DECR'),	category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.ics_keyb_vol,		up = volctrl_commands.ics_keyb_vol,		cockpit_device_id = devices.ICS,		value_pressed =  1.0,	value_up = 0.0,	name = _('Intercom Volume INCR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.ics_keyb_vol,		up = volctrl_commands.ics_keyb_vol,		cockpit_device_id = devices.ICS,		value_pressed = -1.0,	value_up = 0.0,	name = _('Intercom Volume DECR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.wpn_keyb_vol,		up = volctrl_commands.wpn_keyb_vol,		cockpit_device_id = devices.AAWCTRL,	value_pressed =  1.0,	value_up = 0.0,	name = _('Weapons Tone Volume INCR'),			category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.wpn_keyb_vol,		up = volctrl_commands.wpn_keyb_vol,		cockpit_device_id = devices.AAWCTRL,	value_pressed = -1.0,	value_up = 0.0,	name = _('Weapons Tone Volume DECR'),			category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.ils_keyb_vol,		up = volctrl_commands.ils_keyb_vol,		cockpit_device_id = devices.ILS,		value_pressed =  1.0,	value_up = 0.0,	name = _('ILS Tone Volume INCR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.ils_keyb_vol,		up = volctrl_commands.ils_keyb_vol,		cockpit_device_id = devices.ILS,		value_pressed = -1.0,	value_up = 0.0,	name = _('ILS Tone Volume DECR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.tacan_keyb_vol,		up = volctrl_commands.tacan_keyb_vol,	cockpit_device_id = devices.TACAN,		value_pressed =  1.0,	value_up = 0.0,	name = _('TACAN Tone Volume INCR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{pressed = volctrl_commands.tacan_keyb_vol,		up = volctrl_commands.tacan_keyb_vol,	cockpit_device_id = devices.TACAN,		value_pressed = -1.0,	value_up = 0.0,	name = _('TACAN Tone Volume DECR'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.crypto_sw,													cockpit_device_id = devices.ICS,		value_down = -1.0,					name = _('CRYPTO Switch ZERO'),					category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.crypto_sw,													cockpit_device_id = devices.ICS,		value_down =  0.0,					name = _('CRYPTO Switch NORMAL'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.crypto_sw,													cockpit_device_id = devices.ICS,		value_down =  1.0,					name = _('CRYPTO Switch HOLD'),					category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.mic_sw,														cockpit_device_id = devices.ICS,		value_down =  0.0,					name = _('MIC Switch OFF'),						category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.mic_sw,														cockpit_device_id = devices.ICS,		value_down =  0.5,					name = _('MIC Switch ON'),						category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.mic_sw,														cockpit_device_id = devices.ICS,		value_down =  1.0,					name = _('MIC Switch RAD ORIDE'),				category = {_('Left Console'), _('Volume Control Panel')}},
		{down = micsctrl_commands.vw_tone_sw,			up = micsctrl_commands.vw_tone_sw,		cockpit_device_id = devices.WCAS,		value_down =  1.0,	value_up = 0.0,	name = _('Voice Warning and Tone Silence'),		category = {_('Left Console'), _('Volume Control Panel')}},
		
		---------------------------------------------
		-- IFF Panel --------------------------------
		---------------------------------------------
		{down = radioctrl_commands.uhf_ant_sw, 		cockpit_device_id = devices.FLINST, value_down =  1.0, 	name = _('UHF Antenna Switch UPPER'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.uhf_ant_sw, 		cockpit_device_id = devices.FLINST, value_down =  0.0, 	name = _('UHF Antenna Switch LOWER'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.vhf_ant_sw, 		cockpit_device_id = devices.FLINST, value_down =  1.0, 	name = _('VHF Antenna Switch UPPER'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.vhf_ant_sw, 		cockpit_device_id = devices.FLINST, value_down =  0.0, 	name = _('VHF Antenna Switch LOWER'),	category = {_('Left Console'), _('IFF Panel')}},		
		{down = radioctrl_commands.tone_sw, 		cockpit_device_id = devices.FLINST, value_down =  1.0, 	name = _('Tone Switch UHF2'),			category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.tone_sw, 		cockpit_device_id = devices.FLINST, value_down =  0.0, 	name = _('Tone Switch UHF1'),			category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.cypher_txt_sw, 	cockpit_device_id = devices.FLINST, value_down =  1.0, 	name = _('Cipher Text Switch ONLY'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = radioctrl_commands.cypher_txt_sw, 	cockpit_device_id = devices.FLINST, value_down =  0.0, 	name = _('Cipher Text Switch NORM'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.mode_sw,			cockpit_device_id = devices.FLINST,	value_down =  1.0,	name = _('IFF Mode Switch B'),			category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.mode_sw,			cockpit_device_id = devices.FLINST,	value_down =  0.0,	name = _('IFF Mode Switch A'),			category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.mode_sw,			cockpit_device_id = devices.FLINST,	value_down = -1.0,	name = _('IFF Mode Switch OUT'),		category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.rec_sw,			cockpit_device_id = devices.FLINST,	value_down =  1.0,	name = _('IFF Reply Switch LIGHT'),		category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.rec_sw,			cockpit_device_id = devices.FLINST,	value_down =  0.5,	name = _('IFF Reply Switch AUDIO REC'),	category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.rec_sw,			cockpit_device_id = devices.FLINST,	value_down =  0.0,	name = _('IFF Reply Switch OFF'),		category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.master_sw,			cockpit_device_id = devices.FLINST,	value_down =  1.0,	name = _('IFF Master Switch LOW'),		category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.master_sw,			cockpit_device_id = devices.FLINST,	value_down =  0.0,	name = _('IFF Master Switch NORM'),		category = {_('Left Console'), _('IFF Panel')}},
		{down = iffctrl_commands.master_sw,			cockpit_device_id = devices.FLINST,	value_down = -1.0,	name = _('IFF Master Switch EMERG'),	category = {_('Left Console'), _('IFF Panel')}},
		
		---------------------------------------------
		-- MISC Panel -------------------------------
		---------------------------------------------		
		{down = misc_commands.roll_ratio_sw,		cockpit_device_id = devices.FLCTRL,	value_down = 1.0,	name = _('Roll Ratio Switch AUTO'),				category = {_('Left Console'), _('Flight Control'), _('Misc Panel')}},
		{down = misc_commands.roll_ratio_sw,		cockpit_device_id = devices.FLCTRL,	value_down = 0.0,	name = _('Roll Ratio Switch EMERG'),			category = {_('Left Console'), _('Flight Control'), _('Misc Panel')}},
		{down = misc_commands.left_inlet_sw,		cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Left Inlet Ramp Switch AUTO'),		category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.left_inlet_sw,		cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Left Inlet Ramp Switch EMERG'),		category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.right_inlet_sw,		cockpit_device_id = devices.DEEC,	value_down = 0.0,	name = _('Right Inlet Ramp Switch AUTO'),		category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.right_inlet_sw,		cockpit_device_id = devices.DEEC,	value_down = 1.0,	name = _('Right Inlet Ramp Switch EMERG'),		category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.anti_skid_sw,			cockpit_device_id = devices.LGS,	value_down = 0.0,	name = _('Anti-Skid OFF'),						category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.anti_skid_sw,			cockpit_device_id = devices.LGS,	value_down = 0.5,	name = _('Anti-Skid PULSER'),					category = {_('Left Console'), _('Misc Panel')}},
		{down = misc_commands.anti_skid_sw,			cockpit_device_id = devices.LGS,	value_down = 1.0,	name = _('Anti-Skid NORM'),						category = {_('Left Console'), _('Misc Panel')}},
		
		---------------------------------------------
		-- NUC Panel -------------------------------
		---------------------------------------------	
		{down = nuc_commands.nuc_cover,		cockpit_device_id = devices.FLINST,	value_down = 1.0,	name = _('Nuclear Consent Cover OPEN'),					category = {_('Left Console'), _('NUC Panel')}},
		{down = nuc_commands.nuc_cover,		cockpit_device_id = devices.FLINST,	value_down = 0.0,	name = _('Nuclear Consent Cover CLOSED'),				category = {_('Left Console'), _('NUC Panel')}},
		{down = nuc_commands.nuc_sw,		cockpit_device_id = devices.FLINST,	value_down =-1.0,	name = _('Nuclear Consent Switch JETT ENABLE'),			category = {_('Left Console'), _('NUC Panel')}},
		{down = nuc_commands.nuc_sw,		cockpit_device_id = devices.FLINST,	value_down = 0.0,	name = _('Nuclear Consent Switch SAFE'),				category = {_('Left Console'), _('NUC Panel')}},
		{down = nuc_commands.nuc_sw,		cockpit_device_id = devices.FLINST,	value_down = 1.0,	name = _('Nuclear Consent Switch ARM'),					category = {_('Left Console'), _('NUC Panel')}},		
		
		---------------------------------------------
		-- Sensors Panel ----------------------------
		---------------------------------------------
		{down = snsrctrl_commands.tf_rdr_kb,											cockpit_device_id = devices.TFR,		value_down =  0.50,					name = _('Terrain Follow Radar: OFF/STBY/ON'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.tf_rdr_kb,											cockpit_device_id = devices.TFR,		value_down = -0.50,					name = _('Terrain Follow Radar: ON/STBY/OFF'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.rdr_alt_kb,											cockpit_device_id = devices.CARA,		value_down =  0.50,					name = _('Radar Altimeter: OFF/ON/OVERRIDE'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.rdr_alt_kb,											cockpit_device_id = devices.CARA,		value_down = -0.50,					name = _('Radar Altimeter: OVERRIDE/ON/OFF'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.rdr_kb,												cockpit_device_id = devices.AN_APG70,	value_down =  0.33,					name = _('AN/APG-70 Radar: OFF/STBY/ON/EMERG'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.rdr_kb,												cockpit_device_id = devices.AN_APG70,	value_down = -0.33,					name = _('AN/APG-70 Radar: EMERG/ON/STBY/OFF'),		category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.ins_kb,												cockpit_device_id = devices.INS,		value_down =  0.33,					name = _('INS: OFF/STORE/ALIGN GC/NAV'),			category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.ins_kb,												cockpit_device_id = devices.INS,		value_down = -0.33,					name = _('INS: NAV/ALIGN GC/STORE/OFF'),			category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_gain_kb,										cockpit_device_id = devices.NAVPOD,		value_down =  0.05,					name = _('NAV FLIR GAIN INCREASE'),					category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_gain_kb,										cockpit_device_id = devices.NAVPOD,		value_down = -0.05,					name = _('NAV FLIR GAIN DECREASE'),					category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_level_kb,									cockpit_device_id = devices.NAVPOD,		value_down =  0.05,					name = _('NAV FLIR LEVEL INCREASE'),				category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_level_kb,									cockpit_device_id = devices.NAVPOD,		value_down = -0.05,					name = _('NAV FLIR LEVEL DECREASE'),				category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_KB,											cockpit_device_id = devices.NAVPOD,		value_down =  0.5,					name = _('NAV FLIR: OFF/STBY/ON'),					category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.nav_flir_KB,											cockpit_device_id = devices.NAVPOD,		value_down = -0.5,					name = _('NAV FLIR: ON/STBY/OFF'),					category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.jtids_kb,												cockpit_device_id = devices.RDRCTRL_AA,	value_down =  0.25,					name = _('JTIDS: OFF/POLL/NORM/SIL/HOLD'),			category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.jtids_kb,												cockpit_device_id = devices.RDRCTRL_AA,	value_down = -0.25,					name = _('JTIDS: HOLD/SIL/NORM/POLL/OFF'),			category = {_('Left Console'), _('Sensors Panel')}},
		{down = snsrctrl_commands.cc_reset_btn,	up = snsrctrl_commands.cc_reset_btn,	cockpit_device_id = devices.RDRCTRL_AA,	value_down = 1.0,	value_up = 0.0,	name = _('CC RESET'),								category = {_('Left Console'), _('Sensors Panel')}},
		
		---------------------------------------------
		-- CAS Panel --------------------------------
		---------------------------------------------
		{down = cas_commands.yaw_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.5,	name = _('Yaw CAS Switch ON'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.yaw_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.25,	name = _('Yaw CAS Switch RESET'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.yaw_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.0,	name = _('Yaw CAS Switch OFF'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.roll_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.5,	name = _('Roll CAS Switch ON'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.roll_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.25,	name = _('Roll CAS Switch RESET'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.roll_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.0,	name = _('Roll CAS Switch OFF'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.pitch_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.5,	name = _('Pitch CAS Switch ON'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.pitch_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.25,	name = _('Pitch CAS Switch RESET'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.pitch_sw,		cockpit_device_id = devices.FLCTRL,	value_down =  0.0,	name = _('Pitch CAS Switch OFF'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.bit_button,	up = cas_commands.bit_button, cockpit_device_id = devices.FLCTRL,	value_down = 1.0,	value_up = 0.0, name = _('CAS BIT Button'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.to_button,		up = cas_commands.to_button, cockpit_device_id = devices.FLCTRL,	value_down = 1.0,	value_up = 0.0, name = _('T/O Trim Button'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.tf_couple_sw,	cockpit_device_id = devices.FLCTRL,	value_down =  1.0,	name = _('TF Couple Switch ON'), category = {_('Left Console'), _('CAS Panel')}},
		{down = cas_commands.tf_couple_sw,	cockpit_device_id = devices.FLCTRL,	value_down =  0.0,	name = _('TF Couple Switch OFF'), category = {_('Left Console'), _('CAS Panel')}},
		
		--------------------------------------------------------------------------------------------
		-- Right Side ------------------------------------------------------------------------------
		--------------------------------------------------------------------------------------------		
		{down = misc_commands.em_vent_lever,			cockpit_device_id = devices.ECS,	value_down = 1.0,	name = _('Emergency Vent Handle PULL'),			category = {_('Right Console')}},
		{down = misc_commands.em_vent_lever,			cockpit_device_id = devices.ECS,	value_down = 0.0,	name = _('Emergency Vent Handle RESET'),		category = {_('Right Console')}},
		
		---------------------------------------------
		-- Engine Panel -----------------------------
		---------------------------------------------
		{down = engctrl_commands.left_eng_ctrl_sw,		cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Left Engine Control Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.left_eng_ctrl_sw,		cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Left Engine Control Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_ctrl_sw,		cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Right Engine Control Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_ctrl_sw,		cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Right Engine Control Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.left_eng_master_cover,	cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Left Engine Master Switch Cover UP'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.left_eng_master_cover,	cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Left Engine Master Switch Cover DOWN'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_master_cover,cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Right Engine Master Switch Cover UP'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_master_cover,cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Right Engine Master Switch Cover DOWN'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.left_eng_master_sw,	cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Left Engine Master Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.left_eng_master_sw,	cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Left Engine Master Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_master_sw,	cockpit_device_id = devices.DEEC,	value_down =  1.0,	name = _('Right Engine Master Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engctrl_commands.right_eng_master_sw,	cockpit_device_id = devices.DEEC,	value_down =  0.0,	name = _('Right Engine Master Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_left_sw,		cockpit_device_id = devices.EPSS,	value_down =  1.0,	name = _('Left Generator Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_left_sw,		cockpit_device_id = devices.EPSS,	value_down =  0.0,	name = _('Left Generator Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_right_sw,		cockpit_device_id = devices.EPSS,	value_down =  1.0,	name = _('Right Generator Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_right_sw,		cockpit_device_id = devices.EPSS,	value_down =  0.0,	name = _('Right Generator Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_emerg_sw,		cockpit_device_id = devices.EPSS,	value_down =  0.0,	name = _('Emergency Generator Switch AUTO'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_emerg_sw,		cockpit_device_id = devices.EPSS,	value_down =  0.5,	name = _('Emergency Generator Switch MAN'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.generator_emerg_sw,		cockpit_device_id = devices.EPSS,	value_down =  1.0,	name = _('Emergency Generator Switch ISOLATE'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.starter_gen_sw,			cockpit_device_id = devices.EPSS,	value_down =  1.0,	name = _('Jet Starter Switch ON'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.starter_gen_sw,			cockpit_device_id = devices.EPSS,	value_down =  0.0,	name = _('Jet Starter Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.ground_power_sw,		cockpit_device_id = devices.EPSS,	value_down =  1.0,	name = _('External Power Switch RESET'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.ground_power_sw,		cockpit_device_id = devices.EPSS,	value_down =  0.0,	name = _('External Power Switch NORM'), category = {_('Right Console'), _('Engine Panel')}},
		{down = engpnl_commands.ground_power_sw,		cockpit_device_id = devices.EPSS,	value_down = -1.0,	name = _('External Power Switch OFF'), category = {_('Right Console'), _('Engine Panel')}},
		
		---------------------------------------------
		-- Oxygen ------------------
		---------------------------------------------
		{down = oxyctrl_commands.oxy_emer_norm_test_sw,		cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Oxygen Mode Switch EMER'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_emer_norm_test_sw,		cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Oxygen Mode Switch NORM'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_emer_norm_test_sw,		cockpit_device_id = devices.ECS,	value_down = -1.0,	name = _('Oxygen Mode Switch TEST MASK'), category = {_('Right Console'), _('Oxygen Panel')}},	
		{down = oxyctrl_commands.oxy_100_norm_sw,			cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Oxygen Supply Switch 100% O2'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_100_norm_sw,			cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Oxygen Supply Switch NORM'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_pbg_on_off_sw,			cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Oxygen Supply Control Switch OFF'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_pbg_on_off_sw,			cockpit_device_id = devices.ECS,	value_down =  0.5,	name = _('Oxygen Supply Control Switch ON'), category = {_('Right Console'), _('Oxygen Panel')}},
		{down = oxyctrl_commands.oxy_pbg_on_off_sw,			cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Oxygen Supply Control Switch PBG'), category = {_('Right Console'), _('Oxygen Panel')}},	
		
		---------------------------------------------
		-- ECS Panels and Anti-Ice ------------------
		---------------------------------------------		 		
		{down = ecs_commands.anti_fog_sw,					cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Anti-Fog Switch HOT'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.anti_fog_sw,					cockpit_device_id = devices.ECS,	value_down =  0.5,	name = _('Anti-Fog Switch NORM'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.anti_fog_sw,					cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Anti-Fog Switch COLD'), category = {_('Right Console'), _('ECS Panel')}},
		{down = oxyctrl_commands.oxy_test_btn,	up = oxyctrl_commands.oxy_test_btn, cockpit_device_id = devices.ECS,	value_down = 1.0,	value_up = 0.0, name = _('Oxygen Test Button'), category = {_('Right Console'), _('Engine Panel')}},
		{down = ecs_commands.windshield_anti_ice_sw,		cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Windshield Anti-Ice Switch ON'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.windshield_anti_ice_sw,		cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Windshield Anti-Ice Switch OFF'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.pitot_heat_sw,					cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Pitot Heat Switch ON'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.pitot_heat_sw,					cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Pitot Heat Switch OFF'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.eng_heat_sw,					cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Engine Heat Switch ON'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.eng_heat_sw,					cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Engine Heat Switch OFF'), category = {_('Right Console'), _('ECS Panel')}},
		{down = ecs_commands.eng_heat_sw,					cockpit_device_id = devices.ECS,	value_down = -1.0,	name = _('Engine Heat Switch TEST'), category = {_('Right Console'), _('ECS Panel')}},		
		{down = aircoctrl_commands.airco_auto_man_off_sw,	cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Air Conditioning Mode AUTO'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_auto_man_off_sw,	cockpit_device_id = devices.ECS,	value_down =  0.5,	name = _('Air Conditioning Mode MAN'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_auto_man_off_sw,	cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Air Conditioning Mode OFF'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_max_norm_min_sw,	cockpit_device_id = devices.ECS,	value_down =  1.0,	name = _('Air Conditioning Gain MAX'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_max_norm_min_sw,	cockpit_device_id = devices.ECS,	value_down =  0.5,	name = _('Air Conditioning Gain NORM'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_max_norm_min_sw,	cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Air Conditioning Gain MIN'), category = {_('Right Console'), _('ECS Panel')}},		
		{down = aircoctrl_commands.airco_eng_knob,			cockpit_device_id = devices.ECS,	value_down =  0.75,	name = _('Air Conditioning Source R ENG'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_eng_knob,			cockpit_device_id = devices.ECS,	value_down =  0.5,	name = _('Air Conditioning Source BOTH'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_eng_knob,			cockpit_device_id = devices.ECS,	value_down =  0.25,	name = _('Air Conditioning Source L ENG'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_eng_knob,			cockpit_device_id = devices.ECS,	value_down =  0.0,	name = _('Air Conditioning Source OFF'), category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_cold_hot_knob_kb,	cockpit_device_id = devices.ECS,	value_down =  0.05,	name = _('Air Conditioning Temp Increase'),	category = {_('Right Console'), _('ECS Panel')}},
		{down = aircoctrl_commands.airco_cold_hot_knob_kb,	cockpit_device_id = devices.ECS,	value_down = -0.05,	name = _('Air Conditioning Temp Decrease'),	category = {_('Right Console'), _('ECS Panel')}},
		
		---------------------------------------------
		-- Interior Lights --------------------------
		---------------------------------------------
		{down = misc_commands.master_caution_btn,	up = misc_commands.master_caution_btn,	cockpit_device_id = devices.WCAS,	value_down = 1.0,	value_up = 0.0, name = _('Master Caution Reset'),			category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.lights_test_sw,		up = intlt_commands.lights_test_sw,		cockpit_device_id = devices.INTLT,	value_down =  1.0,	value_up = 0.0,	name = _('Warning/Caution Lights Test'),	category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.compass_lt_tgl,		cockpit_device_id = devices.INTLT,	value_down =  1.0,	name = _('Compass Lights ON/OFF'),						category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.compass_lt_sw,		cockpit_device_id = devices.INTLT,	value_down =  0.0,	name = _('Compass Lights OFF'),							category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.compass_lt_sw,		cockpit_device_id = devices.INTLT,	value_down =  1.0,	name = _('Compass Lights ON'),							category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.daynite_mode_tgl,	cockpit_device_id = devices.INTLT,	value_down =  1.0,	name = _('Display Mode DAY/NIGHT'),						category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.daynite_mode_sw,		cockpit_device_id = devices.INTLT,	value_down =  0.0,	name = _('Display Mode NIGHT'),							category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.daynite_mode_sw,		cockpit_device_id = devices.INTLT,	value_down =  1.0,	name = _('Display Mode DAY'),							category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.flood_lt_kb,			cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Storm Flood Lights BRT Increase'),			category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.flood_lt_kb,			cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Storm Flood Lights BRT Decrease'),			category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.console_lt_kb,		cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Console Lights BRT Increase'),				category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.console_lt_kb,		cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Console Lights BRT Decrease'),				category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.inst_pnl_lt_kb,		cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Instruments Panel Lights BRT Increase'),		category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.inst_pnl_lt_kb,		cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Instruments Panel Lights BRT Decrease'),		category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.inst_bklt_kb,		cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Gauges/UFC Backlights BRT Increase'),			category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.inst_bklt_kb,		cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Gauges/UFC Backlights BRT Decrease'),			category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.chart_lt_kb,			cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Charts Spot Light BRT Increase'),				category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.chart_lt_kb,			cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Charts Spot Light BRT Decrease'),				category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.wac_bklt_kb,			cockpit_device_id = devices.INTLT,	value_down =  0.05,	name = _('Warning/Caution Lights BRT Increase'),		category = {_('Right Console'), _('Lights: Interior')}},
		{down = intlt_commands.wac_bklt_kb,			cockpit_device_id = devices.INTLT,	value_down = -0.05,	name = _('Warning/Caution Lights BRT Decrease'),		category = {_('Right Console'), _('Lights: Interior')}},
		
		---------------------------------------------
		-- Exterior Lights --------------------------
		---------------------------------------------
		{down = extlt_commands.anticoll_lt_kb,		cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Anti-collision Lights ON/OFF'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.ldg_taxi_light_kb,	cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Landing/Taxi Light TAXI/OFF/LNDG'),	category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.ldg_taxi_light_kb,	cockpit_device_id = devices.EXTLT,	value_down = -1.0,	name = _('Landing/Taxi Light LNDG/OFF/TAXI'),	category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.formation_lt_kb,		cockpit_device_id = devices.EXTLT,	value_down =  0.17,	name = _('Formation Lights BRT Increase'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.formation_lt_kb,		cockpit_device_id = devices.EXTLT,	value_down = -0.17,	name = _('Formation Lights BRT Decrease'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.pos_lt_kb,			cockpit_device_id = devices.EXTLT,	value_down =  0.17,	name = _('Position Lights BRT Increase'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.pos_lt_kb,			cockpit_device_id = devices.EXTLT,	value_down = -0.17,	name = _('Position Lights BRT Decrease'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.vert_tail_lt_kb,		cockpit_device_id = devices.EXTLT,	value_down =  0.5,	name = _('Tail Flood Lights OFF/DIM/BRT'),		category = {_('Left Console'), _('Lights: Exterior')}},
		{down = extlt_commands.vert_tail_lt_kb,		cockpit_device_id = devices.EXTLT,	value_down = -0.5,	name = _('Tail Flood Lights BRT/DIM/OFF'),		category = {_('Left Console'), _('Lights: Exterior')}},
		
		------------------------------------------------
		-- View Cockpit --------------------------------
		------------------------------------------------
		{down = iCommandViewCockpitChangeSeat,										value_down = 1,						name = _('Occupy Pilot Seat'),			category = _('View Cockpit')},
		{down = iCommandViewCockpitChangeSeat,										value_down = 2,						name = _('Occupy WSO Seat'),			category = _('View Cockpit')},
		{down = iCommandToggleMirrors, 																					name = _('Toggle Mirrors'),				category = _('View Cockpit')},		
		{down = misc_commands.hide_controls, 	cockpit_device_id = devices.CNPYSYST,	value_down = 1.0,	value_up = 0.0,	name = _('Hide/Show Flight Controls'),	category = _('View Cockpit')},
		{down = iCommandCockpitShowPilotOnOff,																			name = _('Hide/Show Pilot Body'),		category = _('View Cockpit')},
		{down = iCommandViewNightVisionGogglesOn,			name = _('Helmet Visor/NVG Toggle'),	category = _('View Cockpit')},
		{pressed = iCommandPlane_Helmet_Brightess_Up,		name = _('NVG Brightness Up'),			category = _('View Cockpit')},
		{pressed = iCommandPlane_Helmet_Brightess_Down,		name = _('NVG Brightness Down'),		category = _('View Cockpit')},
		
		---------------------------------------------
		-- Rear Cockpit: TEWS Panel -----------------
		---------------------------------------------
		{down = tews_commands.cmd_disp_sel_sw_KB,											cockpit_device_id = devices.EWS_CMD,	value_down =  0.50,					name = _('CMD Dispenser Selection UP FLARE/BOTH/CHAFF'),		category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_disp_sel_sw_KB,											cockpit_device_id = devices.EWS_CMD,	value_down = -0.50,					name = _('CMD Dispenser Selection DOWN CHAFF/BOTH/FLARE'),		category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_mode_knob_KB,												cockpit_device_id = devices.EWS_CMD,	value_down =  0.25,					name = _('CMD Operational Mode  CW OFF/STBY/MAN/SEMI/AUTO'),	category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_mode_knob_KB,												cockpit_device_id = devices.EWS_CMD,	value_down = -0.25,					name = _('CMD Operational Mode CCW AUTO/SEMI/MAN/STBY/OFF'),	category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_jett_cover_KB,											cockpit_device_id = devices.EWS_CMD,	value_down =  0.0,					name = _('Flare Jettison Switch Cover Toggle Open/Close'),		category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_jett_sw_KB,		up = tews_commands.cmd_jett_sw_KB,		cockpit_device_id = devices.EWS_CMD,	value_down =  -1.0,	value_up = 0.0,	name = _('Flare Jettison Switch LEFT'),							category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		{down = tews_commands.cmd_jett_sw_KB,		up = tews_commands.cmd_jett_sw_KB,		cockpit_device_id = devices.EWS_CMD,	value_down =   1.0,	value_up = 0.0,	name = _('Flare Jettison Switch RIGHT'),						category = {_('Rear Cockpit'), _('Rear Cockpit: Electronic Warfare')}},
		
		---------------------------------------------
		-- Rear COckpit: TGP Panel ------------------
		---------------------------------------------
		{down = snsrctrl_commands.tpod_pwr_kb,												cockpit_device_id = devices.TGPCTRL,	value_down =   0.50,				name = _('TGP Power Switch: OFF/STBY/ON'),		category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_pwr_kb,												cockpit_device_id = devices.TGPCTRL,	value_down =  -0.50,				name = _('TGP Power Switch: ON/STBY/OFF'),		category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_flir_gain_kb,										cockpit_device_id = devices.TGPCTRL,	value_down =   0.10,				name = _('TGP Power Gain CW INCR'),				category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_flir_gain_kb,										cockpit_device_id = devices.TGPCTRL,	value_down =  -0.10,				name = _('TGP Power Gain CCW DECR'),			category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_flir_level_kb,										cockpit_device_id = devices.TGPCTRL,	value_down =   0.10,				name = _('TGP Power Level CW INCR'),			category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_flir_level_kb,										cockpit_device_id = devices.TGPCTRL,	value_down =  -0.10,				name = _('TGP Power Level CCW DECR'),			category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_laser_kb,											cockpit_device_id = devices.TGPCTRL,	value_down =   1.00,				name = _('TGP Laser Switch: ARM'),				category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		{down = snsrctrl_commands.tpod_laser_kb,											cockpit_device_id = devices.TGPCTRL,	value_down =   0.00,				name = _('TGP Laser Switch: SAFE'),				category = {_('Rear Cockpit'), _('Rear Cockpit: TGP Panel')}},
		
		---------------------------------------------
		-- Joystick Abstractions --------------------
		---------------------------------------------
		{down = iCommandPlaneGearUp,				up = iCommandPlaneGearDown,								name = _('Landing Gear Lever UP else DOWN'),	category = {_('Joystick Switch Abstractions')}},
		
		{down = extlt_commands.ldg_taxi_light_sw,	cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Landing/Taxi Light: LNDG'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.ldg_taxi_light_sw,	cockpit_device_id = devices.EXTLT,	value_down =  0.0,	name = _('Landing/Taxi Light: OFF'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.ldg_taxi_light_sw,	cockpit_device_id = devices.EXTLT,	value_down = -1.0,	name = _('Landing/Taxi Light: TAXI'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.vert_tail_lt_sw,		cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Tail Flood Lights: BRIGHT'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.vert_tail_lt_sw,		cockpit_device_id = devices.EXTLT,	value_down =  0.5,	name = _('Tail Flood Lights: DIM'),				category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.vert_tail_lt_sw,		cockpit_device_id = devices.EXTLT,	value_down =  0.0,	name = _('Tail Flood Lights: OFF'),				category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.0,	name = _('Formation Lights: OFF'),				category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.17,	name = _('Formation Lights: Level 1'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.34,	name = _('Formation Lights: Level 2'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.51,	name = _('Formation Lights: Level 3'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.68,	name = _('Formation Lights: Level 4'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  0.85,	name = _('Formation Lights: Level 5'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.formation_lt_knob,	cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Formation Lights: BRT'),				category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.0,	name = _('Position Lights: OFF'),				category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.17,	name = _('Position Lights: Level 1'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.34,	name = _('Position Lights: Level 2'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.51,	name = _('Position Lights: Level 3'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.68,	name = _('Position Lights: Level 4'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  0.85,	name = _('Position Lights: Level 5'),			category = {_('Joystick Switch Abstractions')}},
		{down = extlt_commands.pos_lt_knob,			cockpit_device_id = devices.EXTLT,	value_down =  1.0,	name = _('Position Lights: FLASH BRT'),			category = {_('Joystick Switch Abstractions')}},

		{down = snsrctrl_commands.tf_rdr_sw,		cockpit_device_id = devices.TFR,		value_down =  0.0,	name = _('Terrain Follow Radar: OFF'),		category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.tf_rdr_sw,		cockpit_device_id = devices.TFR,		value_down =  0.5,	name = _('Terrain Follow Radar: STBY'),		category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.tf_rdr_sw,		cockpit_device_id = devices.TFR,		value_down =  1.0,	name = _('Terrain Follow Radar: ON'),		category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_alt_sw,		cockpit_device_id = devices.CARA,		value_down =  0.0,	name = _('Radar Altimeter: OFF'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_alt_sw,		cockpit_device_id = devices.CARA,		value_down =  0.5,	name = _('Radar Altimeter: ON'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_alt_sw,		cockpit_device_id = devices.CARA,		value_down =  1.0,	name = _('Radar Altimeter: OVERRIDE'),		category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_power_sw,		cockpit_device_id = devices.AN_APG70,	value_down =  0.0,	name = _('AN/APG-70 Radar: OFF'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_power_sw,		cockpit_device_id = devices.AN_APG70,	value_down =  0.33,	name = _('AN/APG-70 Radar: STBY'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_power_sw,		cockpit_device_id = devices.AN_APG70,	value_down =  0.66,	name = _('AN/APG-70 Radar: ON'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.rdr_power_sw,		cockpit_device_id = devices.AN_APG70,	value_down =  0.99,	name = _('AN/APG-70 Radar: EMERG'),			category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.ins_knob,			cockpit_device_id = devices.INS,		value_down =  0.0,	name = _('INS: OFF'),						category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.ins_knob,			cockpit_device_id = devices.INS,		value_down =  0.33,	name = _('INS: STORE'),						category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.ins_knob,			cockpit_device_id = devices.INS,		value_down =  0.66,	name = _('INS: ALIGN GC'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.ins_knob,			cockpit_device_id = devices.INS,		value_down =  0.99,	name = _('INS: NAV'),						category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.nav_flir_sw,		cockpit_device_id = devices.NAVPOD,		value_down =  0.0,	name = _('NAV FLIR: OFF'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.nav_flir_sw,		cockpit_device_id = devices.NAVPOD,		value_down =  0.5,	name = _('NAV FLIR: STBY'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.nav_flir_sw,		cockpit_device_id = devices.NAVPOD,		value_down =  1.0,	name = _('NAV FLIR: ON'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.jtids_knob,		cockpit_device_id = devices.RDRCTRL_AA,	value_down =  0.0,	name = _('JTIDS: OFF'),						category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.jtids_knob,		cockpit_device_id = devices.RDRCTRL_AA,	value_down =  0.25,	name = _('JTIDS: POLL'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.jtids_knob,		cockpit_device_id = devices.RDRCTRL_AA,	value_down =  0.5,	name = _('JTIDS: NORM'),					category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.jtids_knob,		cockpit_device_id = devices.RDRCTRL_AA,	value_down =  0.75,	name = _('JTIDS: SIL'),						category = {_('Joystick Switch Abstractions')}},
		{down = snsrctrl_commands.jtids_knob,		cockpit_device_id = devices.RDRCTRL_AA,	value_down =  1.0,	name = _('JTIDS: HOLD'),					category = {_('Joystick Switch Abstractions')}},
	}
)

if debug_keys then
	join(
		res.keyCommands,
		{
			{down = iCommandHelicopter_CollectiveStopper_Up,				name = _('Increase DEBUG Value'),				category = _('Z-Debug')},
			{down = iCommandHelicopter_CollectiveStopper_Down,				name = _('Decrease DEBUG Value'),				category = _('Z-Debug')},
			{down = iCommandPlane_I251_Brightness_Up,						name = _('DEBUG Value Y INCR'),					category = _('Z-Debug')},
			{down = iCommandPlane_I251_Brightness_Down,						name = _('DEBUG Value Y DECR'),					category = _('Z-Debug')},
			{down = iCommandPlane_I251_Contrast_Up,							name = _('DEBUG Value Z INCR'),					category = _('Z-Debug')},
			{down = iCommandPlane_I251_Contrast_Down,						name = _('DEBUG Value Z DECR'),					category = _('Z-Debug')},
			{down = iCommandPlaneNav_DLK_OnOff,								name = _('MUX Parameters'),						category = _('Z-Debug')},
			{down = iCommandHelicopter_SignalFlares_GREEN,					name = _('Fail condition 1'),					category = _('Z-Debug')},
			{down = iCommandHelicopter_SignalFlares_RED,					name = _('Fail condition 2'),					category = _('Z-Debug')},
			{down = iCommandHelicopter_SignalFlares_WHITE,					name = _('Fail condition 3'),					category = _('Z-Debug')},
			{down = iCommandHelicopter_SignalFlares_YELLOW,					name = _('Fail condition 4'),					category = _('Z-Debug')},
			{down = iCommandPlane_ADF_Test,									name = _('Radar debug graph toggle'),			category = _('Z-Debug')},
			{down = iCommandPlaneRotorTipLights,							name = _('Radar seeker head toggle'),			category = _('Z-Debug')},
			{down = iCommandPlane_ABRIS_BT_1,								name = _('Radar seeker head OFF'),				category = _('Z-Debug')},
			{down = iCommandPlane_ABRIS_BT_2,								name = _('Radar Development Display toggle'),	category = _('Z-Debug')},
		}
	)
end

-- joystick axes 
join(
	res.axisCommands,
	{
		{combos = defaultDeviceAssignmentFor("roll"), 	action = iCommandPlaneRoll,				name = _('Roll')},
		{combos = defaultDeviceAssignmentFor("pitch"),	action = iCommandPlanePitch,			name = _('Pitch')},
		{combos = defaultDeviceAssignmentFor("rudder"),	action = iCommandPlaneRudder, 			name = _('Rudder')},
		{combos = defaultDeviceAssignmentFor("thrust"),	action = iCommandPlaneThrustCommon,		name = _('Thrust')},
		{action = iCommandPlaneThrustLeft,														name = _('Thrust Left')},
		{action = iCommandPlaneThrustRight,														name = _('Thrust Right')},
		
		-- BRAKES
		{action = iCommandWheelBrake,															name = _('Wheel Brake')},
		{action = iCommandLeftWheelBrake,														name = _('Wheel Brake Left')},
		{action = iCommandRightWheelBrake,														name = _('Wheel Brake Right')},
		
		--HOTAS TDC
		{action = hotas_cmds.FC_TDC_AXIS_HORZ,		cockpit_device_id = devices.HOTASCTRL,		name = _('TDC Slew Horizontal')},
		{action = hotas_cmds.FC_TDC_AXIS_VERT,		cockpit_device_id = devices.HOTASCTRL,		name = _('TDC Slew Vertical')},
		
		-- RADAR
		{action = hotas_cmds.FC_ANT_AXIS, 			cockpit_device_id = devices.HOTASCTRL,		name = _('Radar Antenna Elevation')},
		
		-- HUD Control
		{action = hudctrl_commands.HUD_BRT_Knob_AXIS,			cockpit_device_id = devices.HUDCTRL,	name = _('HUD Brightness')},
		{action = hudctrl_commands.HUD_VIDEO_BRT_Knob_AXIS,		cockpit_device_id = devices.HUDCTRL,	name = _('HUD Video Brightness')},
		{action = hudctrl_commands.HUD_VIDEO_CONT_Knob_AXIS,	cockpit_device_id = devices.HUDCTRL,	name = _('HUD Video Contrast')},
	}
)

return res
