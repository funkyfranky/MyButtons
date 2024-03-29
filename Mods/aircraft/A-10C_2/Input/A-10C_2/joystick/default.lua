local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")
dofile(cockpit.."config.lua")

local VHF_or_ARC210 = {}

--VHF AM Radio Control Panel
if ARC_210_ENABLED then
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_43, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.0, name = _('VHF AM Master Knob: Radio off'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_43, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.1, name = _('VHF AM Master Knob: Transmit-receive mode with guard receiver'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_43, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.2, name = _('VHF AM Master Knob: Transmit-receive mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_43, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.4, name = _('VHF AM Radio Master Knob: Change preset mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_44, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.2, name = _('VHF AM Secondary Knob: PRST Mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_44, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.3, name = _('VHF AM Secondary Knob: MAN Mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_44, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.5, name = _('VHF AM Secondary Knob: 243 Guard Frequency Mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_44, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.6, name = _('VHF AM Secondary Knob: 121.5 Guard Frequency Mode'), category = _('VHF AM Radio (ARC-210) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM Menu Button'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM AM/FM select'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM Offset frequency button'), category = _('VHF AM Radio (ARC-210) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM FSK upper key'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM FSK middle key'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM FSK lower key'), category = _('VHF AM Radio (ARC-210) Control Panel')}	

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM brightness increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, value_up = 0.0, name = _('VHF AM brightness decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}	
	
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_15, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0, name = _('VHF AM Squelch On'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_15, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.0, name = _('VHF AM Squelch Off'), category = _('VHF AM Radio (ARC-210) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_27, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.1, name = _('VHF AM Next Channel'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_27, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -0.1, name = _('VHF AM Previous Channel'), category = _('VHF AM Radio (ARC-210) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_45, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1,	name = _('VHF AM 100Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_45, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1,	name = _('VHF AM 100Mhz Selector Increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_46, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1,	name = _('VHF AM 10Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_46, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1,	name = _('VHF AM 10Mhz Selector Increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_47, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1,	name = _('VHF AM 1Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_47, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1,	name = _('VHF AM 1Mhz Selector Increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_48, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1,	name = _('VHF AM 0.1Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_48, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1,	name = _('VHF AM 0.1Mhz Selector Increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_49, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1,	name = _('VHF AM 0.025Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-210) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_49, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1,	name = _('VHF AM 0.025Mhz Selector Increase'), category = _('VHF AM Radio (ARC-210) Control Panel')}
else
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_Volume_Dec, 			name = _('VHF AM Volume Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_Volume_Inc, 			name = _('VHF AM Volume Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Mode_EMERFM, 				name = _('VHF AM Mode EMER FM'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Mode_EMERAM, 				name = _('VHF AM Mode EMER AM'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Mode_MAN, 					name = _('VHF AM Mode MAN'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Mode_PRE, 					name = _('VHF AM Mode PRE'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_FreqMode_OFF, 				name = _('VHF AM Frequency Mode OFF'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_FreqMode_TK, 				name = _('VHF AM Frequency Mode TK'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_FreqMode_DN, 				name = _('VHF AM Frequency Mode DN'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Squelch, 				    name = _('VHF AM Squelch'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Tone,up = iCommandPlane_VHF_AM_Tone, name = _('VHF AM Tone'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = iCommandPlane_VHF_AM_Load,up=iCommandPlane_VHF_AM_Load, name = _('VHF AM Load'), category = _('VHF AM Radio (ARC-186) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_17, cockpit_device_id = devices.VHF_AM_RADIO, value_down = -1.0,name = _('VHF AM Preset Channel Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {down = device_commands.Button_17, cockpit_device_id = devices.VHF_AM_RADIO, value_down = 1.0,name = _('VHF AM Preset Channel Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_10MHz_Dec, 				name = _('VHF AM 10Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_10MHz_Inc, 				name = _('VHF AM 10Mhz Selector Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}

	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_1MHz_Dec, 				name = _('VHF AM 1Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_1MHz_Inc, 				name = _('VHF AM 1Mhz Selector Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_01MHz_Dec, 				name = _('VHF AM 0.1Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_01MHz_Inc, 				name = _('VHF AM 0.1Mhz Selector Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_025MHz_Dec, 			name = _('VHF AM 0.025Mhz Selector Decrease'), category = _('VHF AM Radio (ARC-186) Control Panel')}
	VHF_or_ARC210[#VHF_or_ARC210 + 1] = {pressed = iCommandPlane_VHF_AM_025MHz_Inc, 			name = _('VHF AM 0.025Mhz Selector Increase'), category = _('VHF AM Radio (ARC-186) Control Panel')}
end

local res = {
keyCommands = {

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: Begin Changes.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Misc
{down = iCommandPlane_APU_Start, 	up = iCommandPlane_APU_Off, 		name = _('APU Start/Off'), 			category = _('_My Buttons')},
{down = iCommandPlane_EAC_ARM, 		up = iCommandPlane_EAC_OFF, 		name = _('EAC Arm/Off'), 			category = _('_My Buttons')},
{down = iCommandPlane_RDR_ALTM_NRM, up = iCommandPlane_RDR_ALTM_DIS,	name = _('RDR ALTM Normal/Dis'),	category = _('_My Buttons')},
{down = iCommandPlaneLGPLandLight, 	up = iCommandPlaneLGPLightsOff,		name = _('Lights Landing/Off'),     category = _('_My Buttons')},
{down = iCommandPlaneLGPTaxiLight,  up = iCommandPlaneLGPLightsOff,     name = _('Lights Taxi/Off'),        category = _('_My Buttons')},
{down = iCommandPlaneGearUp,        up = iCommandPlaneGearDown, 		name = _('Landing Gear Up/Down'),   category = _('_My Buttons')},

-- Flaps
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.CPT_MECH, value_down = 1.0 ,value_up = 0.5, name = _('Flaps Up/Center'), category = _('_My Buttons')},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.CPT_MECH, value_down = 0.0 ,value_up = 0.5, name = _('Flaps Down/Center'), category = _('_My Buttons')},

-- AHCP
{down = iCommandPlaneAHCPMasterArm,   up = iCommandPlaneAHCPMasterSafe, name = _('Master switch ARM/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPMasterTrain, up = iCommandPlaneAHCPMasterSafe,	name = _('Master switch TRAIN/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPGUNPACArm,   up = iCommandPlaneAHCPGUNSafe,	name = _('GUN/PAC switch ARM/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPGUNArm,      up = iCommandPlaneAHCPGUNSafe,	name = _('GUN/PAC switch GUNARM/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPLaserArm,    up = iCommandPlaneAHCPLaserSafe, 	name = _('LASER switch ARM/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPLaserTrain,  up = iCommandPlaneAHCPLaserSafe,	name = _('LASER switch TRAIN/SAFE'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPAltSCEBaro,  up = iCommandPlaneAHCPAltSCEDelta,name = _('ALT SCE switch BARO/DELTA'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPAltSCERadar, up = iCommandPlaneAHCPAltSCEDelta,name = _('ALT SCE switch RADAR/DELTA'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPAltSCEBaro,  up = iCommandPlaneAHCPAltSCERadar,name = _('ALT SCE switch BARO/RADAR'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPIFFCCOn,     up = iCommandPlaneAHCPIFFCCTest, 	name = _('IFFCC switch ON/TEST'), category = _('_My Buttons')},
{down = iCommandPlaneAHCPIFFCCOff,    up = iCommandPlaneAHCPIFFCCTest,  name = _('IFFCC switch OFF/TEST'), category = _('_My Buttons')},
{down = device_commands.Button_4,     up = device_commands.Button_4, cockpit_device_id = devices.AHCP, value_down = 1.0 ,value_up = -1.0, name = _('TGP On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_6,     up = device_commands.Button_6, cockpit_device_id = devices.AHCP, value_down = 1.0 ,value_up = -1.0, name = _('HUD Mode Day/Night'), category = _('_My Buttons')},
{down = device_commands.Button_7,     up = device_commands.Button_7, cockpit_device_id = devices.AHCP, value_down = 1.0 ,value_up = -1.0, name = _('HUD Mode Norm/Stby'), category = _('_My Buttons')},
{down = device_commands.Button_8,     up = device_commands.Button_8, cockpit_device_id = devices.AHCP, value_down = 1.0 ,value_up = -1.0, name = _('CICU On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_9,     up = device_commands.Button_9, cockpit_device_id = devices.AHCP, value_down = 1.0 ,value_up = -1.0, name = _('JTRS Datalink On/Off'), category = _('_My Buttons')},

-- Electrical power control panel
{down = device_commands.Button_1,     up = device_commands.Button_1, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = -1.0, name = _('APU Generator On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_4,     up = device_commands.Button_4, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = -1.0, name = _('AC Generator Left Power/Off'), category = _('_My Buttons')},
{down = device_commands.Button_5,     up = device_commands.Button_5, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = -1.0, name = _('AC Generator Right Power/Off'), category = _('_My Buttons')},
{down = device_commands.Button_6,     up = device_commands.Button_6, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = -1.0, name = _('Battery On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_7,     up = device_commands.Button_7, cockpit_device_id = devices.LIGHT_SYSTEM,   value_down = 1.0, value_up = -1.0, name = _('Emergency Foodlight On/Off'), category = _('_My Buttons')},
{down = iCommandElectricalPowerInverterSTBY, up = iCommandElectricalPowerInverterOFF, name = _('Inverter STBY/OFF'), category = _('_My Buttons')},
{down = iCommandElectricalPowerInverterTEST, up = iCommandElectricalPowerInverterOFF, name = _('Inverter TEST/OFF'), category = _('_My Buttons')},

-- Radios
{down = device_commands.Button_8,  cockpit_device_id = devices.UHF_RADIO,    value_down = 0.1, name = _('UHF Radio On'), category = _('_My Buttons')},
{down = device_commands.Button_8,  cockpit_device_id = devices.UHF_RADIO,    value_down =-0.1, name = _('UHF Radio Off'), category = _('_My Buttons')},
{down = device_commands.Button_3,  cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.1, name = _('VHF/AM Radio On'), category = _('_My Buttons')},
{down = device_commands.Button_3,  cockpit_device_id = devices.VHF_AM_RADIO, value_down =-0.1, name = _('VHF/AM Radio Off'), category = _('_My Buttons')},
{down = device_commands.Button_3,  cockpit_device_id = devices.VHF_FM_RADIO, value_down = 0.1, name = _('VHF/FM Radio On'), category = _('_My Buttons')},
{down = device_commands.Button_3,  cockpit_device_id = devices.VHF_FM_RADIO, value_down =-0.1, name = _('VHF/FM Radio Off'), category = _('_My Buttons')},
{down = device_commands.Button_8,     up = device_commands.Button_8,  cockpit_device_id = devices.UHF_RADIO,    value_down = 0.1, value_up =-0.1, name = _('UHF Radio On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_3,     up = device_commands.Button_3,  cockpit_device_id = devices.VHF_AM_RADIO, value_down = 0.1, value_up =-0.1, name = _('VHF/AM Radio On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_3,     up = device_commands.Button_3,  cockpit_device_id = devices.VHF_FM_RADIO, value_down = 0.1, value_up =-0.1, name = _('VHF/FM Radio On/Off'), category = _('_My Buttons')},

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: End Changes.
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



{down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},
{down = iCommandSoundOnOff,			name = _('Sound On/Off'),	 category = _('General')},


-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN5'}}, pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},

{down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Camera mounted on object'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},
{down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},

{down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{down = iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},


-- Cockpit view
{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--
{ down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{ pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{ pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{ pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{ pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{ pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{ pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{ pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{ pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Left Mirror On'), category = _('View Cockpit')},
{down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Right Mirror On'), category = _('View Cockpit')},

{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Cockpit Camera Motion (������������ ������ � ������)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},

-- Extended view
{down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

--General
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('General')},
{down = iCommandViewBriefing, name = _('View briefing on/off'), category = _('General')},
{down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},


-- Communications
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Communications')},
{down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Communications')},
{down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Communications')},
{down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Communications')},
{down = iCommandAWACSHomeBearing, name = _('Ask AWACS home airbase'), category = _('Communications')},
{down = iCommandAWACSTankerBearing, name = _('Ask AWACS available tanker'), category = _('Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Communications')},
{down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'), category = _('Communications')},
{down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Communications')},
{down = iCommandPlaneRefuelingReadyPreContact, name = _('A/A refueling - "Ready for precontact" radio call'), category = _('Communications')},

-- Padlock

{down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{down = iCommandViewLock, name = _('Lock view (cycle padlock)'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},


-- HOTAS
{combos = {{key = 'JOY_BTN2'}}, 	down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Weapon release'), category = _('HOTAS')},
{combos = defaultDeviceAssignmentFor("fire"), 	down = iCommandPlane_HOTAS_TriggerSecondStage, up = iCommandPlane_HOTAS_TriggerSecondStage_Off, name = _('Gun Trigger'), category = _('HOTAS')},
{					down = iCommandPlane_HOTAS_TriggerFirstStage , up = iCommandPlane_HOTAS_TriggerFirstStage_Off, name = _('Gun Trigger (first stage)'), category = _('HOTAS')},


{down = iCommandPlane_HOTAS_DataManagementSwitchUp,    up = iCommandPlane_HOTAS_DataManagementSwitchOff, name = _('HOTAS DMS Forward'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_DataManagementSwitchDown,  up = iCommandPlane_HOTAS_DataManagementSwitchOff, name = _('HOTAS DMS Aft'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_DataManagementSwitchLeft,  up = iCommandPlane_HOTAS_DataManagementSwitchOff, name = _('HOTAS DMS Left'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_DataManagementSwitchRight, up = iCommandPlane_HOTAS_DataManagementSwitchOff, name = _('HOTAS DMS Right'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_TargetManagementSwitchUp,    up = iCommandPlane_HOTAS_TargetManagementSwitchOff, name = _('HOTAS TMS Forward'),    category = _('HOTAS')},
{down = iCommandPlane_HOTAS_TargetManagementSwitchDown,  up = iCommandPlane_HOTAS_TargetManagementSwitchOff, name = _('HOTAS TMS Aft'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_TargetManagementSwitchLeft,  up = iCommandPlane_HOTAS_TargetManagementSwitchOff, name = _('HOTAS TMS Left'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_TargetManagementSwitchRight, up = iCommandPlane_HOTAS_TargetManagementSwitchOff, name = _('HOTAS TMS Right'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_CMS_Up   , up = iCommandPlane_HOTAS_CMS_Off, name = _('HOTAS CMS Forward'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CMS_Down , up = iCommandPlane_HOTAS_CMS_Off, name = _('HOTAS CMS Aft'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CMS_Left , up = iCommandPlane_HOTAS_CMS_Off, name = _('HOTAS CMS Left'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CMS_Right, up = iCommandPlane_HOTAS_CMS_Off, name = _('HOTAS CMS Right'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CMS_Zaxis, up = iCommandPlane_HOTAS_CMS_Zaxis_Off, name = _('HOTAS CMS Z Axis'), category = _('HOTAS')},

{pressed = iCommandPlaneRadarUp, up = iCommandPlaneRadarStop, name = _('HOTAS Slew Up'), category = _('HOTAS')},
{pressed = iCommandPlaneRadarDown, up = iCommandPlaneRadarStop, name = _('HOTAS Slew Down'), category = _('HOTAS')},
{pressed = iCommandPlaneRadarLeft, up = iCommandPlaneRadarStop, name = _('HOTAS Slew Left'), category = _('HOTAS')},
{pressed = iCommandPlaneRadarRight, up = iCommandPlaneRadarStop, name = _('HOTAS Slew Right'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_CoolieUp,    up = iCommandPlane_HOTAS_CoolieOff, name = _('HOTAS Coolie Switch Up'),    category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CoolieDown,  up = iCommandPlane_HOTAS_CoolieOff, name = _('HOTAS Coolie Switch Down'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CoolieLeft,  up = iCommandPlane_HOTAS_CoolieOff, name = _('HOTAS Coolie Switch Left'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_CoolieRight, up = iCommandPlane_HOTAS_CoolieOff, name = _('HOTAS Coolie Switch Right'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_BoatSwitchAft, name = _('HOTAS Boat Switch Aft'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_BoatSwitchCenter, name = _('HOTAS Boat Switch Center'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_BoatSwitchForward, name = _('HOTAS Boat Switch Forward'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_BoatSwitchAft,up = iCommandPlane_HOTAS_BoatSwitchCenter, name = _('HOTAS Boat Switch : Aft<>Center'), category = { _("Special For Joystick"), _('HOTAS')}},
{down = iCommandPlane_HOTAS_BoatSwitchForward,up = iCommandPlane_HOTAS_BoatSwitchCenter, name = _('HOTAS Boat Switch : Forward<>Center'), category = { _("Special For Joystick"), _('HOTAS')}},


{down = iCommandPlane_HOTAS_ChinaHatAft, up = iCommandPlane_HOTAS_ChinaHatOff, name = _('HOTAS China Hat Aft'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_ChinaHatForward, up = iCommandPlane_HOTAS_ChinaHatOff, name = _('HOTAS China Hat Forward'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_LeftThrottleButton, up = iCommandPlane_HOTAS_LeftThrottleButton_Off, name = _('HOTAS Left Throttle Button'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_MasterModeControlButton, up = iCommandPlane_HOTAS_MasterModeControlButtonUP, name = _('HOTAS Master Mode Control Button'), category = _('HOTAS')},
{combos = {{key = 'JOY_BTN4'}},	down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('HOTAS Nosewheel Steering Button'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_SpeedBrakeSwitchAft, up = iCommandPlane_HOTAS_SpeedBrakeSwitchCenter, name = _('HOTAS Speed Brake Switch Aft'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_SpeedBrakeSwitchForward, up = iCommandPlane_HOTAS_SpeedBrakeSwitchCenter, name = _('HOTAS Speed Brake Switch Forward'), category = _('HOTAS')},

{down = iCommandPlane_HOTAS_PinkySwitchAft,  	name = _('HOTAS Pinky Switch Aft'),     category = _('HOTAS')},
{down = iCommandPlane_HOTAS_PinkySwitchForward, name = _('HOTAS Pinky Switch Forward'), category = _('HOTAS')},
{down = iCommandPlane_HOTAS_PinkySwitchCenter , name = _('HOTAS Pinky Switch Center'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_PinkySwitchAft,     up = iCommandPlane_HOTAS_PinkySwitchCenter, name = _('HOTAS Pinky Switch : Aft<>Center'),     category = { _("Special For Joystick"), _('HOTAS')}},
{down = iCommandPlane_HOTAS_PinkySwitchForward, up = iCommandPlane_HOTAS_PinkySwitchCenter, name = _('HOTAS Pinky Switch : Forward<>Center'), category = { _("Special For Joystick"), _('HOTAS')}},


-- {down = iCommandPlane_HOTAS_MIC_SwitchUp,    up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('HOTAS MIC Switch Up (no function)'),    category = _('HOTAS')},
{down = iCommandPlane_HOTAS_MIC_SwitchDown,  up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('HOTAS MIC Switch Down (call radio menu)'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_MIC_SwitchLeft,  up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('HOTAS MIC Switch Aft (call radio menu)'),  category = _('HOTAS')},
{down = iCommandPlane_HOTAS_MIC_SwitchRight, up = iCommandPlane_HOTAS_MIC_SwitchOff, name = _('HOTAS MIC Switch Forward (call radio menu)'), category = _('HOTAS')},

-- start VoIP radio global commands
-- in case you need to open commands in the cockpit
--{down = device_commands.Button_1,  up = device_commands.Button_1, cockpit_device_id = devices.HOTAS, value_down = 1.0,    value_up = 0.0, name = ('HOTAS MIC Switch Up (VOIP, no function)'), category = _('HOTAS')},
{down = iCommandVoIPRadioPushToTalkEnableDisableVoice,  up = iCommandVoIPRadioPushToTalkEnableDisableVoice, value_down = 1.0,    value_up = 0.0, name = ('HOTAS MIC Switch Down (VOIP)'),  category = _('HOTAS')},
{down = iCommandVoIPRadioPushToTalkEnableDisableVoice_2,  up = iCommandVoIPRadioPushToTalkEnableDisableVoice_2, value_down = 1.0,    value_up = 0.0, name = ('HOTAS MIC Switch Aft (VOIP)'),  category = _('HOTAS')},
{down = iCommandVoIPRadioPushToTalkEnableDisableVoice_1,  up = iCommandVoIPRadioPushToTalkEnableDisableVoice_1, value_down = 1.0,    value_up = 0.0, name = ('HOTAS MIC Switch Forward (VOIP)'), category = _('HOTAS')},
-- end VoIP radio commands

{pressed = iCommandPlaneTrimUp, up = iCommandPlaneTrimStop,    name = _('Trim: Nose Down'),	     category = _('HOTAS')},
{pressed = iCommandPlaneTrimDown, up = iCommandPlaneTrimStop,  name = _('Trim: Nose Up'),			 category = _('HOTAS')},
{pressed = iCommandPlaneTrimLeft, up = iCommandPlaneTrimStop,  name = _('Trim: Left Wing Down'),   category = _('HOTAS')},
{pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop, name = _('Trim: Right Wing Down'),  category = _('HOTAS')},

{down = iCommandPlaneEmergencyDisconnectLever, up = iCommandPlaneEmergencyDisconnectLever, name = _('Emergency Disconnect Lever'), category = _('HOTAS')},

-- Flight Control
{combos = {{key = 'JOY_BTN3'}}, down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff, name = _('Stick to trimmer control mode'), category = _('Flight Control')},

{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},
{down = iCommandPlaneTrimCancel, name = _('Trim: Reset'), category = _('Flight Control')},

{down = iCommandThrottleIncrease,	up = iCommandThrottleStop,	name = _('Throttle Both Up'), category = _('Flight Control')},
{down = iCommandThrottleDecrease,	up = iCommandThrottleStop,	name = _('Throttle Both Down'), category = _('Flight Control')},
{down = iCommandThrottle1Increase,	up = iCommandThrottle1Stop,	name = _('Throttle Left Up'), category = _('Flight Control')},
{down = iCommandThrottle1Decrease,	up = iCommandThrottle1Stop,	name = _('Throttle Left Down'), category = _('Flight Control')},
{down = iCommandThrottle2Increase,	up = iCommandThrottle2Stop,	name = _('Throttle Right Up'), category = _('Flight Control')},
{down = iCommandThrottle2Decrease,	up = iCommandThrottle2Stop,	name = _('Throttle Right Down'), category = _('Flight Control')},

{down    = iCommandPlaneAUTIncreaseRegimeLeft	, name = _('Throttle Step Up Left'), category = _('Flight Control')},
{down    = iCommandPlaneAUTDecreaseRegimeLeft	, name = _('Throttle Step Down Left'), category = _('Flight Control')},
{down    = iCommandPlaneAUTIncreaseRegimeRight	, name = _('Throttle Step Up Right'), category = _('Flight Control')},
{down    = iCommandPlaneAUTDecreaseRegimeRight	, name = _('Throttle Step Down Right'), category = _('Flight Control')},


-- Systems
{down = iCommandPlaneFlapsOn , name = _('Flaps Down'), category = _('Systems')},
{down = iCommandPlaneFlapsOff, name = _('Flaps Up'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel Brake On/Off'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel Brake Left On/Off'), category = _('Systems')},
{down = iCommandPlaneEmergencyBrake, up = iCommandPlaneEmergencyBrake, name = _('Emergency Wheel Brake'), category = _('Systems')},
{down = iCommandLeftEngineStart, name = _('Engine Start Left'), category = _('Systems')},
{down = iCommandRightEngineStart, name = _('Engine Start Right'), category = _('Systems')},
{down = iCommandLeftEngineStop, name = _('Engine Stop Left'), category = _('Systems')},
{down = iCommandRightEngineStop, name = _('Engine Stop Right'), category = _('Systems')},
{down = iCommandPlaneFonar, name = _('Canopy Open/Close'), category = _('Systems')},
{down = iCommandPlaneEject, name = _('Eject'), category = _('Systems')},
{down = iCommandPlaneCockpitIllumination, name = _('Cockpit Illumination'), category = _('Systems')},

{down = iCommandPlaneLightsOnOff, name = _('Navigation lights'), category = _('Systems')},
{down = iCommandPlaneJettisonWeapons, name = _('Jettison Weapons'), category = _('Systems')},
{down = iCommandFlightClockReset, name = _('Start/Stop/Reset Flight Clock'), category = _('Systems')},
-- {down = iCommandBrightnessILS, name = _('HUD Color'), category = _('Systems')},
{down = iCommandAccelReset, up = iCommandAccelReset, name = _('G-meter reset'), category = _('Systems')},
{down = iCommandArmGroundSafetyCover,  name = _('Armament ground safety cover'), category = _('Systems')},
{down = iCommandArmGroundSafetySwitch,  name = _('Armament ground safety switch'), category = _('Systems')},

{down = iCommand_FireExting_LeftEngineExting					, name = _('Left Engine T-Handle Fire Extinguisher')							, category = _('Fire Extinguishers System')},
{down = iCommand_FireExting_APUExting							, name = _('APU T-Handle Fire Extinguisher')									, category = _('Fire Extinguishers System')},
{down = iCommand_FireExting_RightEngineExting					, name = _('Right Engine T-Handle Fire Extinguisher')							, category = _('Fire Extinguishers System')},
{down = iCommand_FireExting_Discharge_Left						, name = _('Fire Extinguishig Agent Discharge Left')							, category = _('Fire Extinguishers System')},
{down = iCommand_FireExting_Discharge_Center					, name = _('Fire Extinguishig Agent Discharge Off')							, category = _('Fire Extinguishers System')},
{down = iCommand_FireExting_Discharge_Right						, name = _('Fire Extinguishig Agent Discharge Right')							, category = _('Fire Extinguishers System')},

{down = iCommandLeftEngineStop , up = iCommandLeftEngineStart,  name = _('Left Engine Throttle Set OFF') , category = {_("Special For Joystick"), _('Systems')}},
{down = iCommandRightEngineStop, up = iCommandRightEngineStart, name = _('Right Engine Throttle Set OFF'), category = {_("Special For Joystick"), _('Systems')}},
{down = iCommandPlane_FLAPS_UP, up = iCommandPlane_FLAPS_MNR_from_UP,name = _('Flaps : Up<>Center'), category = {_("Special For Joystick"), _('Systems')}},
{down = iCommandPlane_FLAPS_DN, up = iCommandPlane_FLAPS_MNR_from_DN,name = _('Flaps : Down<>Center'), category = {_("Special For Joystick"), _('Systems')}},


-- Autopilot
{down = iCommandPlaneAutopilot, up = iCommandPlaneAutopilot, name 		= _('LAAP Engage/Disengage')     , category = _('LASTE Control Panel')},
{down = iCommandPlaneStabPathHold, name 	= _('LAAP Path Hold')			  , category = _('LASTE Control Panel')},
{down = iCommandPlaneStabHbarHeading, name  = _('LAAP Altitude/Heading Hold'), category = _('LASTE Control Panel')},
{down = iCommandPlaneStabHbarBank, name 	= _('LAAP Altitude/Bank Hold')   , category = _('LASTE Control Panel')},
{down = iCommandPlane_EAC_ARM, up = iCommandPlane_EAC_ARM, name = _('EAC Arm'), category = _('LASTE Control Panel')},
{down = iCommandPlane_EAC_OFF, up = iCommandPlane_EAC_OFF, name = _('EAC Off'), category = _('LASTE Control Panel')},
{down = iCommandPlane_RDR_ALTM_NRM, name = _('RDR ALTM Normal'), category = _('LASTE Control Panel')},
{down = iCommandPlane_RDR_ALTM_DIS, name = _('RDR ALTM Disable'), category = _('LASTE Control Panel')},
{down = iCommandPlane_EAC_ARM     , up = iCommandPlane_EAC_OFF       , name = _('EAC 2-pos Switch : ARM<>OFF') 			  , category = { _("Special For Joystick"), _('LASTE Control Panel')}},
{down = iCommandPlane_RDR_ALTM_NRM, up = iCommandPlane_RDR_ALTM_DIS  , name = _('RDR ALTM 2-pos Switch : NORMAL<>DISABLE')  , category = { _("Special For Joystick"), _('LASTE Control Panel')}},
{down = iCommandPlaneStabPathHold , up = iCommand_LASTE_from_PATH_to_ALTHDG, name = _('LAAP Mode 3-pos Switch : PATH <> ALT/HDG'), category = { _("Special For Joystick"), _('LASTE Control Panel')}},
{down = iCommandPlaneStabHbarBank , up = iCommand_LASTE_from_ALT_to_ALTHDG , name = _('LAAP Mode 3-pos Switch : ALT <> ALT/HDG') , category = { _("Special For Joystick"), _('LASTE Control Panel')}},




-- Engine Control Panel

{down = iCommandPlane_LG_WRN_Silence		, up = iCommandPlane_LG_WRN_Silence		, name = _('Landing Gear Warning Silence')			, category = _('Engine Control Panel')},
{down = iCommandPlane_APU_Start														, name = _('APU Start')								, category = _('Engine Control Panel')},
{down = iCommandPlane_APU_Off														, name = _('APU Off')								, category = _('Engine Control Panel')},
{down = iCommandPlane_APU_Start				, up = iCommandPlane_APU_Off			, name = _('APU Start 2-pos Switch : ON<>OFF')	, category = { _("Special For Joystick"),_('Engine Control Panel')}},

-- Left engine Motor/Norm/Ign switch
{down = iCommandPlane_L_ENG_OPER_Ign 		, up = iCommandPlane_L_ENG_OPER_Norm	, name = _('Left Engine Oper Ign')					, category = _('Engine Control Panel')},
{down = iCommandPlane_L_ENG_OPER_Motor												, name = _('Left Engine Oper Motor')				, category = _('Engine Control Panel')},
{down = iCommandPlane_L_ENG_OPER_Norm												, name = _('Left Engine Oper Norm')					, category = _('Engine Control Panel')},
{down = iCommandPlane_L_ENG_OPER_Ign 		, up = iCommandPlane_L_ENG_OPER_Norm_from_Ign	, name = _('Left Engine Oper 3-pos Switch : IGN<>NORM')			, category = { _("Special For Joystick"),_('Engine Control Panel')}},
{down = iCommandPlane_L_ENG_OPER_Motor		, up = iCommandPlane_L_ENG_OPER_Norm_from_Motor	, name = _('Left Engine Oper 3-pos Switch : MOTOR<>NORM')			, category = { _("Special For Joystick"),_('Engine Control Panel')}},


-- Right engine Motor/Norm/Ign switch
{down = iCommandPlane_R_ENG_OPER_Ign 		, up = iCommandPlane_R_ENG_OPER_Norm	, name = _('Right Engine Oper Ign')					, category = _('Engine Control Panel')},
{down = iCommandPlane_R_ENG_OPER_Motor												, name = _('Right Engine Oper Motor')				, category = _('Engine Control Panel')},
{down = iCommandPlane_R_ENG_OPER_Norm												, name = _('Right Engine Oper Norm')				, category = _('Engine Control Panel')},
{down = iCommandPlane_R_ENG_OPER_Ign  		, up = iCommandPlane_R_ENG_OPER_Norm_from_Ign	, name = _('Right Engine Oper 3-pos Switch : IGN<>NORM')			, category = { _("Special For Joystick"),_('Engine Control Panel')}},
{down = iCommandPlane_R_ENG_OPER_Motor		, up = iCommandPlane_R_ENG_OPER_Norm_from_Motor	, name = _('Right Engine Oper 3-pos Switch : MOTOR<>NORM')		, category = { _("Special For Joystick"),_('Engine Control Panel')}},


{down = iCommandPlane_L_ENG_FUEL_FLOW_Norm											, name = _('Left Engine Fuel Flow Norm')			, category = _('Engine Control Panel')},
{down = iCommandPlane_L_ENG_FUEL_FLOW_Override										, name = _('Left Engine Fuel Flow Override')		, category = _('Engine Control Panel')},
{down = iCommandPlane_R_ENG_FUEL_FLOW_Norm											, name = _('Right Engine Fuel Flow Norm')			, category = _('Engine Control Panel')},
{down = iCommandPlane_R_ENG_FUEL_FLOW_Override										, name = _('Right Engine Fuel Flow Override')		, category = _('Engine Control Panel')},
{down = iCommandPlane_L_ENG_FUEL_FLOW_Norm	, up = iCommandPlane_L_ENG_FUEL_FLOW_Override	, name = _('Left Engine Fuel Flow 2-pos Switch : NORM<>OVERRIDE')	, category = { _("Special For Joystick"),_('Engine Control Panel')}},
{down = iCommandPlane_R_ENG_FUEL_FLOW_Norm	, up = iCommandPlane_R_ENG_FUEL_FLOW_Override	, name = _('Right Engine Fuel Flow 2-pos Switch : NORM<>OVERRIDE'), category = { _("Special For Joystick"),_('Engine Control Panel')}},

{pressed = iCommandPlaneThrottleFrictionDec											, name = _('Throttle Friction Decrease')			, category = _('Engine Control Panel')},
{pressed = iCommandPlaneThrottleFrictionInc											, name = _('Throttle Friction Increase')			, category = _('Engine Control Panel')},



-- Left engine Motor/Norm/Ign switch

-- Right engine Motor/Norm/Ign switch



--NightVision
{down    = iCommandViewNightVisionGogglesOn   , name = _('Toggle goggles')   , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Gain goggles up')  , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Gain goggles down'), category = _('Sensors')},

-- Left MFCD
{down = iCommandPlaneLeftMFD_OSB1 , up = iCommandPlaneLeftMFD_OSB1_Off,  name = _('Left MFCD OSB 01'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB2 , up = iCommandPlaneLeftMFD_OSB2_Off,  name = _('Left MFCD OSB 02'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB3 , up = iCommandPlaneLeftMFD_OSB3_Off,  name = _('Left MFCD OSB 03'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB4 , up = iCommandPlaneLeftMFD_OSB4_Off,  name = _('Left MFCD OSB 04'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB5 , up = iCommandPlaneLeftMFD_OSB5_Off,  name = _('Left MFCD OSB 05'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB6 , up = iCommandPlaneLeftMFD_OSB6_Off,  name = _('Left MFCD OSB 06'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB7 , up = iCommandPlaneLeftMFD_OSB7_Off,  name = _('Left MFCD OSB 07'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB8 , up = iCommandPlaneLeftMFD_OSB8_Off,  name = _('Left MFCD OSB 08'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB9 , up = iCommandPlaneLeftMFD_OSB9_Off,  name = _('Left MFCD OSB 09'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB10, up = iCommandPlaneLeftMFD_OSB10_Off, name = _('Left MFCD OSB 10'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB11, up = iCommandPlaneLeftMFD_OSB11_Off, name = _('Left MFCD OSB 11'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB12, up = iCommandPlaneLeftMFD_OSB12_Off, name = _('Left MFCD OSB 12'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB13, up = iCommandPlaneLeftMFD_OSB13_Off, name = _('Left MFCD OSB 13'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB14, up = iCommandPlaneLeftMFD_OSB14_Off, name = _('Left MFCD OSB 14'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB15, up = iCommandPlaneLeftMFD_OSB15_Off, name = _('Left MFCD OSB 15'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB16, up = iCommandPlaneLeftMFD_OSB16_Off, name = _('Left MFCD OSB 16'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB17, up = iCommandPlaneLeftMFD_OSB17_Off, name = _('Left MFCD OSB 17'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB18, up = iCommandPlaneLeftMFD_OSB18_Off, name = _('Left MFCD OSB 18'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB19, up = iCommandPlaneLeftMFD_OSB19_Off, name = _('Left MFCD OSB 19'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_OSB20, up = iCommandPlaneLeftMFD_OSB20_Off, name = _('Left MFCD OSB 20'), category = _('Left MFCD')},


{down = iCommandPlaneLeftMFD_ADJ_Increase, up = iCommandPlaneLeftMFD_ADJ_Stop, name = _('Left MFCD ADJ Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_ADJ_Decrease, up = iCommandPlaneLeftMFD_ADJ_Stop, name = _('Left MFCD ADJ Decrease'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_DSP_Increase, up = iCommandPlaneLeftMFD_DSP_Stop, name = _('Left MFCD DSP Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_DSP_Decrease, up = iCommandPlaneLeftMFD_DSP_Stop, name = _('Left MFCD DSP Decrease'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_BRT_Increase, up = iCommandPlaneLeftMFD_BRT_Stop, name = _('Left MFCD BRT Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_BRT_Decrease, up = iCommandPlaneLeftMFD_BRT_Stop, name = _('Left MFCD BRT Decrease'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_CON_Increase, up = iCommandPlaneLeftMFD_CON_Stop, name = _('Left MFCD CON Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_CON_Decrease, up = iCommandPlaneLeftMFD_CON_Stop, name = _('Left MFCD CON Decrease'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_SYM_Up	  	 , up = iCommandPlaneLeftMFD_SYM_Stop, name = _('Left MFCD SYM Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_SYM_Dn	  	 , up = iCommandPlaneLeftMFD_SYM_Stop, name = _('Left MFCD SYM Decrease'), category = _('Left MFCD')},

{down = iCommandPlaneLeftMFD_BRTMODE_OFF		, name = _('Left MFCD Disable power'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_BRTMODE_NIGHT	, name = _('Left MFCD Night illumination'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_BRTMODE_DAY		, name = _('Left MFCD Day illumination'), category = _('Left MFCD')},

-- Right MFCD
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

{down = iCommandPlaneRightMFD_ADJ_Increase, up = iCommandPlaneRightMFD_ADJ_Stop, name = _('Right MFCD ADJ Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_ADJ_Decrease, up = iCommandPlaneRightMFD_ADJ_Stop, name = _('Right MFCD ADJ Decrease'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_DSP_Increase, up = iCommandPlaneRightMFD_DSP_Stop, name = _('Right MFCD DSP Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_DSP_Decrease, up = iCommandPlaneRightMFD_DSP_Stop, name = _('Right MFCD DSP Decrease'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRT_Increase, up = iCommandPlaneRightMFD_BRT_Stop, name = _('Right MFCD BRT Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRT_Decrease, up = iCommandPlaneRightMFD_BRT_Stop, name = _('Right MFCD BRT Decrease'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_CON_Increase, up = iCommandPlaneRightMFD_CON_Stop, name = _('Right MFCD CON Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_CON_Decrease, up = iCommandPlaneRightMFD_CON_Stop, name = _('Right MFCD CON Decrease'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_SYM_Up	  	 , up = iCommandPlaneRightMFD_SYM_Stop, name = _('Right MFCD SYM Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_SYM_Dn	  	 , up = iCommandPlaneRightMFD_SYM_Stop, name = _('Right MFCD SYM Decrease'), category = _('Right MFCD')},

{down = iCommandPlaneRightMFD_BRTMODE_OFF		, name = _('Right MFCD Disable power'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRTMODE_NIGHT		, name = _('Right MFCD Night illumination'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRTMODE_DAY		, name = _('Right MFCD Day illumination'), category = _('Right MFCD')},


--Electrical power control panel
{down = iCommandAPUGeneratorPower								, name = _('APU generator power'), category = _('Electrical power control panel')},
{down = iCommandElectricalPowerInverterSTBY						, name = _('Inverter STBY'), category = _('Electrical power control panel')},
{down = iCommandElectricalPowerInverterOFF						, name = _('Inverter OFF'), category = _('Electrical power control panel')},
{down = iCommandElectricalPowerInverterTEST,up = iCommandElectricalPowerInverterOFF, name = _('Inverter TEST'), category = _('Electrical power control panel')},
{down = iCommandEmergencyFlood									, name = _('Emergency flood'), category = _('Electrical power control panel')},
{down = iCommandPowerGeneratorLeft								, name = _('AC generator power left'), category = _('Electrical power control panel')},
{down = iCommandPowerGeneratorRight								, name = _('AC generator power right'), category = _('Electrical power control panel')},
{down = iCommandBatteryPower									, name = _('Battery power'), category = _('Electrical power control panel')},

--Fuel system control panel
{down = iCommandPlaneFSExtTanksWingValve						, name = _('External tanks wing valve'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSExtTanksFuselageValve					, name = _('External tanks fuselage valve'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSSigAmplifier								, name = _('Refueling signal amplifier'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSLineCheck, up =iCommandPlaneFSLineCheck	, name = _('Air refuel line check'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSTankGate									, name = _('Tank gate valve'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSTankCrossFeed							, name = _('Fuel crossfeed valve'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSLeftWingBoostPump						, name = _('Left wing tank boost pump'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSRightWingBoostPump						, name = _('Right wing tank boost pump'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSLeftWingFillDisable						, name = _('Left wing tank fill disable'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSRightWingFillDisable						, name = _('Right wing tank fill disable'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSLeftMainBoostPump						, name = _('Left main tank boost pump'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSRightMainBoostPump						, name = _('Right main tank boost pump'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSLeftMainFillDisable						, name = _('Left main tank fill disable'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSRightMainFillDisable						, name = _('Right main tank fill disable'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSReceiverLever						    , name = _('Air refuel control'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorSelectorINT				, name = _('Fuel quantity selector INT'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorSelectorMAIN			, name = _('Fuel quantity selector MAIN'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorSelectorWING			, name = _('Fuel quantity selector WING'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorSelectorEXTWING			, name = _('Fuel quantity selector EXT WING'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorSelectorEXTCTR			, name = _('Fuel quantity selector EXT CTR'), category = _('Fuel system control panel')},
{down = iCommandPlaneFSQuantityIndicatorTest,up =iCommandPlaneFSQuantityIndicatorTest, name = _('Fuel quantity indicator test'), category = _('Fuel system control panel')},
{pressed = iCommandPlaneFSRefuelLigtingDecrease,				name = _('RCVR Lights Decrease'), category = _('Fuel system control panel')},
{pressed = iCommandPlaneFSRefuelLigtingIncrease,				name = _('RCVR Lights Increase'), category = _('Fuel system control panel')},

--Emergency flight control panel
{down = iCommandPlaneEmerSpeedBrakeRetract						, name = _('Speed brake emer retract'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerPitchRollTrim							, name = _('Pitch/Roll trim NORM/OVERRIDE'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimNoseDn,  up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Nose DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimLWingDn, up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Left wing DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimRWingDn, up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Right wing DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimNoseUP,  up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Nose UP'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerAileronDisengageL  					, name = _('Left aileron emer disengage'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerAileronDisengageOff  					, name = _('Aileron emer disengage off'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerAileronDisengageR  					, name = _('Right aileron emer disengage'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerElevatorDisengageL  					, name = _('Left elevator emer disengage'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerElevatorDisengageOff  					, name = _('Elevator emer disengage off'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerElevatorDisengageR  					, name = _('Right elevator emer disengage'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerFlapsRetract  							, name = _('Flaps emer retract'), category = _('Emergency flight control panel')},
{down = iCommandPlaneEmerFlightControl  						, name = _('Flight control NORM/MAN REVERSION'), category = _('Emergency flight control panel')},

-- Circuit breaker panel
{down = iCommandPlaneCircuitBreaker_1							, name = _('CB Aileron disconnect Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_2							, name = _('CB Aileron disconnect Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_3							, name = _('CB SPS & Rudder AUTH Limit'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_4							, name = _('CB Elevator disconnect Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_5							, name = _('CB Elevator disconnect Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_6							, name = _('CB Aileron TAB Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_7							, name = _('CB Aileron TAB Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_8							, name = _('CB Emer FLAP'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_9							, name = _('CB Emer TRIM'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_10							, name = _('CB Land GEAR'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_11							, name = _('CB Engine start Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_12							, name = _('CB Engine start Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_13							, name = _('CB APU CONT'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_14							, name = _('CB Engines ingnitor L/R-1'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_15							, name = _('CB Engines ingnitor L/R-2'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_16							, name = _('CB Emer fuel shutoff Left engine'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_17							, name = _('CB Emer fuel shutoff Rignt engine'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_18							, name = _('CB DC fuel pump'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_19							, name = _('CB Bleed air CONT Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_20							, name = _('CB Bleed air CONT Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_21							, name = _('CB Ext stores jettison 1'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_22							, name = _('CB Ext stores jettison 2'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_23							, name = _('CB Standby attitude indicator'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_24							, name = _('CB Master caution'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_25							, name = _('CB Pitot heat AC'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_26							, name = _('CB IFF'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_27							, name = _('CB UHF COM'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_28							, name = _('CB INTER COMM'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_29							, name = _('CB Generator CONT Left'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_30							, name = _('CB Generator CONT Right'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_31							, name = _('CB Converter L'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_32							, name = _('CB AUX ESS BUS 0A'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_33							, name = _('CB AUX ESS BUS 0B'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_34							, name = _('CB AUX ESS BUS 0C'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_35							, name = _('CB Battery bus transformer'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_36							, name = _('CB Inverter PWR'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_37							, name = _('CB Inverter CONT'), category = _('Circuit breaker panel')},
{down = iCommandPlaneCircuitBreaker_38							, name = _('CB AUX ESS BUS TIE'), category = _('Circuit breaker panel')},

--Stability Augmentation system panel
{pressed = iCommandPlaneTrimLeftRudder 						,name = _('Yaw Trim Left'), category = {_('Stability Augmentation System'), _('Flight Control')}},
{pressed = iCommandPlaneTrimRightRudder						,name = _('Yaw Trim Right'), category = {_('Stability Augmentation System'), _('Flight Control')}},
{down = iCommandPlaneYawSASEngageL							, name = _('Yaw SAS engage Left'), category = _('Stability Augmentation System')},
{down = iCommandPlaneYawSASEngageR							, name = _('Yaw SAS engage Right'), category = _('Stability Augmentation System')},
{down = iCommandPlanePitchSASEngageL						, name = _('Pitch SAS engage Left'), category = _('Stability Augmentation System')},
{down = iCommandPlanePitchSASEngageR						, name = _('Pitch SAS engage Right'), category = _('Stability Augmentation System')},
{down = iCommandPlaneSASMonitorTestLeft						, name = _('Monitor test Left'), category = _('Stability Augmentation System')},
{down = iCommandPlaneSASMonitorTestOff						, name = _('Monitor test Off'), category = _('Stability Augmentation System')},
{down = iCommandPlaneSASMonitorTestRight					, name = _('Monitor test Right'), category = _('Stability Augmentation System')},
{down = iCommandPlaneSASTakeOffTrim, up = iCommandPlaneSASTakeOffTrim, name = _('Take off trim'), category = _('Stability Augmentation System')},

--Intercom Control panel
{pressed = iCommandPlaneIntercomINTDecrease				, name = _('INT volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomINTIncrease				, name = _('INT volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomINTPress					, name = _('INT press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomFMDecrease				, name = _('FM volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomFMIncrease				, name = _('FM volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomFMPress					, name = _('FM press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomVHFDecrease				, name = _('VHF volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomVHFIncrease				, name = _('VHF volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomVHFPress					, name = _('VHF press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomUHFDecrease				, name = _('UHF volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomUHFIncrease				, name = _('UHF volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomUHFPress					, name = _('UHF press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomAIMDecrease				, name = _('AIM volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomAIMIncrease				, name = _('AIM volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomAIMPress					, name = _('AIM press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomIFFDecrease				, name = _('IFF volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomIFFIncrease				, name = _('IFF volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomIFFPress					, name = _('IFF press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomILSDecrease				, name = _('ILS volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomILSIncrease				, name = _('ILS volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomILSPress					, name = _('ILS press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomTCNDecrease				, name = _('TCN volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomTCNIncrease				, name = _('TCN volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomTCNPress					, name = _('TCN press'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomVolumeDecrease			, name = _('Volume volume decrease'), category = _('Intercom control panel')},
{pressed = iCommandPlaneIntercomVolumeIncrease			, name = _('Volume volume increase'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomHM							, name = _('HM press'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomINT						, name = _('Rotary selector INT'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomVHF						, name = _('Rotary selector VHF'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomFM							, name = _('Rotary selector FM'), category = _('Intercom control panel')},
{down = iCommandPlaneIntercomHF							, name = _('Rotary selector HF'), category = _('Intercom control panel')},

--Auxiliary lighting control panel
{pressed = iCommandPlaneRefuelStatusIndLTSDecrease		, name = _('Refuel status indexer LTS Decrease'), category = _('Auxiliary lighting control panel')},
{pressed = iCommandPlaneRefuelStatusIndLTSIncrease		, name = _('Refuel status indexer LTS Increase'), category = _('Auxiliary lighting control panel')},
{down = iCommandPlaneNightVisionLTSTCP					, name = _('NVIS LTS TCP'), category = _('Auxiliary lighting control panel')},
{down = iCommandPlaneNightVisionLTSALL					, name = _('NVIS LTS ALL'), category = _('Auxiliary lighting control panel')},
{down = iCommandPlaneNightVisionLTSOFF					, name = _('NVIS LTS OFF'), category = _('Auxiliary lighting control panel')},
{down = iCommandPlaneHarsSasNormOverride				, name = _('HARS/SAS OVERRIDE/NORM'), category = _('Auxiliary lighting control panel')},
{down = iCommandLampsControl, up = iCommandLampsControl_up, name = _('Signal lights lamp test'), category = _('Auxiliary lighting control panel')},
{down = iCommandPlaneFireDetectBleedAirTest, up = 	iCommandPlaneFireDetectBleedAirTest	, name = _('Fire detect bleed air leak test'), category = _('Auxiliary lighting control panel')},

--UHF Radio
{down = iCommandPlaneUHFPresetChannelSelectorDec		, name = _('UHF Preset chanel selector decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFPresetChannelSelectorInc		, name = _('UHF Preset chanel selector increase'), category = _('UHF Radio (ARC-164) Control Panel')},
--{down = iCommandPlaneUHF100MhzSelector1					, name = _('UHF 100Mhz selector switch 1'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF100MhzSelector2					, name = _('UHF 100Mhz selector switch 2'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF100MhzSelector3					, name = _('UHF 100Mhz selector switch 3'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF100MhzSelectorA					, name = _('UHF 100Mhz selector switch A'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF10MhzSelectorDec				, name = _('UHF 10Mhz selector decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF10MhzSelectorInc				, name = _('UHF 10Mhz selector increase'), category = _('UHF Radio (ARC-164) Control Panel')},
{down= iCommandPlaneUHF1MhzSelectorDec				, name = _('UHF 1Mhz selector decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF1MhzSelectorInc				, name = _('UHF 1Mhz selector increase'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHF01MhzSelectorDec				, name = _('UHF 0.1Mhz selector decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{down= iCommandPlaneUHF01MhzSelectorInc				, name = _('UHF 0.1Mhz selector increase'), category = _('UHF Radio (ARC-164) Control Panel')},
{down= iCommandPlaneUHF0025MhzSelectorDec			, name = _('UHF 0.025Mhz selector decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{down= iCommandPlaneUHF0025MhzSelectorInc			, name = _('UHF 0.025Mhz selector increase'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFTestDisplay,up = iCommandPlaneUHFTestDisplay, name = _('UHF Test display'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFStatus,up = iCommandPlaneUHFStatus, name = _('UHF Status'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFLoad,up = iCommandPlaneUHFLoad, name = _('UHF Load'), category = _('UHF Radio (ARC-164) Control Panel')},
{pressed = iCommandPlaneUHFVolumeDec					, name = _('UHF Volume decrease'), category = _('UHF Radio (ARC-164) Control Panel')},
{pressed = iCommandPlaneUHFVolumeInc					, name = _('UHF Volume increase'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFunctionDialOFF					, name = _('UHF Dial OFF'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFunctionDialMAIN				, name = _('UHF Dial MAIN'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFunctionDialBOTH				, name = _('UHF Dial BOTH'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFunctionDialADF					, name = _('UHF Dial ADF'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFreqModeDialMNL					, name = _('UHF Freq mode MNL'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFreqModeDialPRESET				, name = _('UHF Freq mode PRESET'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFFreqModeDialGRD					, name = _('UHF Freq mode GRD'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFTTone,up = iCommandPlaneUHFTTone, name = _('UHF T-Tone'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFSquelch							, name = _('UHF Squelch ON/OFF'), category = _('UHF Radio (ARC-164) Control Panel')},
{down = iCommandPlaneUHFPanelCover						, name = _('UHF Panel cover'), category = _('UHF Radio (ARC-164) Control Panel')},

--CDU Panel
{down = iCommandPlaneCDU_LSK_3L,up = iCommandPlaneCDU_LSK_3L, name = _('CDU LSK L3'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_5L,up = iCommandPlaneCDU_LSK_5L, name = _('CDU LSK L5'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_7L,up = iCommandPlaneCDU_LSK_7L, name = _('CDU LSK L7'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_9L,up = iCommandPlaneCDU_LSK_9L, name = _('CDU LSK L9'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_3R,up = iCommandPlaneCDU_LSK_3R, name = _('CDU LSK R3'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_5R,up = iCommandPlaneCDU_LSK_5R, name = _('CDU LSK R5'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_7R,up = iCommandPlaneCDU_LSK_7R, name = _('CDU LSK R7'), category = _('CDU panel')},
{down = iCommandPlaneCDU_LSK_9R,up = iCommandPlaneCDU_LSK_9R, name = _('CDU LSK R9'), category = _('CDU panel')},
{down = iCommandPlaneCDU_SYS,up = iCommandPlaneCDU_SYS, 	  name = _('CDU SYS Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_NAV,up = iCommandPlaneCDU_NAV, 	  name = _('CDU NAV Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_WP,up = iCommandPlaneCDU_WP, 		  name = _('CDU WP Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_OSET,up = iCommandPlaneCDU_OSET, 	  name = _('CDU OSET Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_FPM,up = iCommandPlaneCDU_FPM, 	  name = _('CDU FPM Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_PREV,up = iCommandPlaneCDU_PREV, 	  name = _('CDU PREV Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_DIM,up = iCommandPlaneCDU_DIM, 	  name = _('CDU DIM Rocker switch'), category = _('CDU panel')},
{down = iCommandPlaneCDU_BRT,up = iCommandPlaneCDU_BRT, 	  name = _('CDU BRT Rocker switch'), category = _('CDU panel')},
{down = iCommandPlaneCDU_1,up = iCommandPlaneCDU_1, 	      name = _('CDU 1 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_2,up = iCommandPlaneCDU_2, 	      name = _('CDU 2 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_3,up = iCommandPlaneCDU_3, 	      name = _('CDU 3 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_4,up = iCommandPlaneCDU_4, 	      name = _('CDU 4 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_5,up = iCommandPlaneCDU_5, 	      name = _('CDU 5 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_6,up = iCommandPlaneCDU_6, 	      name = _('CDU 6 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_7,up = iCommandPlaneCDU_7, 	      name = _('CDU 7 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_8,up = iCommandPlaneCDU_8, 	      name = _('CDU 8 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_9,up = iCommandPlaneCDU_9, 	      name = _('CDU 9 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_0,up = iCommandPlaneCDU_0, 	      name = _('CDU 0 Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_PNT,up = iCommandPlaneCDU_PNT, 	  name = _('CDU Point Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_SLASH,up = iCommandPlaneCDU_SLASH,	  name = _('CDU Slash Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_A,up = iCommandPlaneCDU_A, 	      name = _('CDU A Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_B,up = iCommandPlaneCDU_B, 	      name = _('CDU B Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_C,up = iCommandPlaneCDU_C, 	      name = _('CDU C Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_D,up = iCommandPlaneCDU_D, 	      name = _('CDU D Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_E,up = iCommandPlaneCDU_E, 	      name = _('CDU E Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_F,up = iCommandPlaneCDU_F, 	      name = _('CDU F Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_G,up = iCommandPlaneCDU_G, 	      name = _('CDU G Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_H,up = iCommandPlaneCDU_H, 	      name = _('CDU H Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_I,up = iCommandPlaneCDU_I, 	      name = _('CDU I Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_J,up = iCommandPlaneCDU_J, 	      name = _('CDU J Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_K,up = iCommandPlaneCDU_K, 	      name = _('CDU K Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_L,up = iCommandPlaneCDU_L, 	      name = _('CDU L Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_M,up = iCommandPlaneCDU_M, 	      name = _('CDU M Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_N,up = iCommandPlaneCDU_N, 	      name = _('CDU N Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_O,up = iCommandPlaneCDU_O, 	      name = _('CDU O Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_P,up = iCommandPlaneCDU_P, 	      name = _('CDU P Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_Q,up = iCommandPlaneCDU_Q, 	      name = _('CDU Q Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_R,up = iCommandPlaneCDU_R, 	      name = _('CDU R Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_S,up = iCommandPlaneCDU_S, 	      name = _('CDU S Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_T,up = iCommandPlaneCDU_T, 	      name = _('CDU T Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_U,up = iCommandPlaneCDU_U, 	      name = _('CDU U Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_V,up = iCommandPlaneCDU_V, 	      name = _('CDU V Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_W,up = iCommandPlaneCDU_W, 	      name = _('CDU W Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_X,up = iCommandPlaneCDU_X, 	      name = _('CDU X Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_Y,up = iCommandPlaneCDU_Y, 	      name = _('CDU Y Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_Z,up = iCommandPlaneCDU_Z, 	      name = _('CDU Z Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_PLUS,up = iCommandPlaneCDU_PLUS, 	  name = _('CDU PLUS Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_MINUS,up = iCommandPlaneCDU_MINUS,   name = _('CDU MINUS Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_PGUP,up = iCommandPlaneCDU_PGUP, 	  name = _('CDU PG UP Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_PGDN,up = iCommandPlaneCDU_PGDN, 	  name = _('CDU PG DN Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_BLANC_L,up = iCommandPlaneCDU_BLANC_L,name = _('CDU Search back Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_BLANC_R,up = iCommandPlaneCDU_BLANC_R,name = _('CDU Search forward Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_MK,up = iCommandPlaneCDU_MK,		   	name = _('CDU MK Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_BCK,up = iCommandPlaneCDU_BCK,		   	name = _('CDU BCK Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_SPC,up = iCommandPlaneCDU_SPC,			name = _('CDU SPC Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_CLR,up = iCommandPlaneCDU_CLR,			name = _('CDU CLR Key'), category = _('CDU panel')},
{down = iCommandPlaneCDU_FA,up = iCommandPlaneCDU_FA,			name = _('CDU FA Key'), category = _('CDU panel')},

--UFC panel
{down = iCommandPlaneUFC_1,up = iCommandPlaneUFC_1, 	      name = _('UFC 1 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_2,up = iCommandPlaneUFC_2, 	      name = _('UFC 2 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_3,up = iCommandPlaneUFC_3, 	      name = _('UFC 3 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_4,up = iCommandPlaneUFC_4, 	      name = _('UFC 4 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_5,up = iCommandPlaneUFC_5, 	      name = _('UFC 5 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_6,up = iCommandPlaneUFC_6, 	      name = _('UFC 6 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_7,up = iCommandPlaneUFC_7, 	      name = _('UFC 7 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_8,up = iCommandPlaneUFC_8, 	      name = _('UFC 8 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_9,up = iCommandPlaneUFC_9, 	      name = _('UFC 9 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_0,up = iCommandPlaneUFC_0, 	      name = _('UFC 0 Key'), category = _('UFC')},
{down = iCommandPlaneUFC_SPC,up = iCommandPlaneUFC_SPC, 	  name = _('UFC SPC Key'), category = _('UFC')},
{down = iCommandPlaneUFC_HACK,up = iCommandPlaneUFC_HACK, 	  name = _('UFC HACK Key'), category = _('UFC')},
{down = iCommandPlaneUFC_FUNC,up = iCommandPlaneUFC_FUNC, 	  name = _('UFC FUNC Key'), category = _('UFC')},
{down = iCommandPlaneUFC_LTR,up = iCommandPlaneUFC_LTR, 	  name = _('UFC LTR Key'), category = _('UFC')},
{down = iCommandPlaneUFC_CLR,up = iCommandPlaneUFC_CLR, 	  name = _('UFC CLR Key'), category = _('UFC')},
{down = iCommandPlaneUFC_ENT,up = iCommandPlaneUFC_ENT, 	  name = _('UFC ENT Key'), category = _('UFC')},
{down = iCommandPlaneUFC_MK,up = iCommandPlaneUFC_MK, 	  	  name = _('UFC MK Key'), category = _('UFC')},
{down = iCommandPlaneUFC_ALT,up = iCommandPlaneUFC_ALT, 	  name = _('UFC ALT Key'), category = _('UFC')},
{down = iCommandPlaneUFC_MASTER_WARNING,up = iCommandPlaneUFC_MASTER_WARNING,	name = _('UFC Master Caution Key'), category = _('UFC')},
{down = iCommandPlaneUFC_STEER_UP,up = iCommandPlaneUFC_STEER_UP,			 	name = _('UFC STEER UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_STEER_DOWN,up = iCommandPlaneUFC_STEER_DOWN,			name = _('UFC STEER DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DATA_UP,up = iCommandPlaneUFC_DATA_UP,					name = _('UFC DATA UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DATA_DOWN,up = iCommandPlaneUFC_DATA_DOWN,				name = _('UFC DATA DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_SEL_UP,up = iCommandPlaneUFC_SEL_UP,					name = _('UFC SEL UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_SEL_DOWN,up = iCommandPlaneUFC_SEL_DOWN,				name = _('UFC SEL DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DEPR_UP,up = iCommandPlaneUFC_DEPR_UP,					name = _('UFC DEPR UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DEPR_DOWN,up = iCommandPlaneUFC_DEPR_DOWN,				name = _('UFC DEPR DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_INTEN_INCREASE,up = iCommandPlaneUFC_INTEN_INCREASE,	name = _('UFC INTEN INCREASE Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_INTEN_DECREASE,up = iCommandPlaneUFC_INTEN_DECREASE,	name = _('UFC INTEN DECREASE Rocker switch'), category = _('UFC')},
{down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.UFC, value_down =  -1.0, value_up =  0.0, name = _('UFC COMM 1 Key'), category = _('UFC')},
{down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.UFC, value_down =  -1.0, value_up =  0.0, name = _('UFC COMM 2 Key'), category = _('UFC')},

--CMSP panel
{down = iCommandPlaneCMSP_OSB_1,up = iCommandPlaneCMSP_OSB_1, 	      	name = _('CMSP OSB1'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_OSB_2,up = iCommandPlaneCMSP_OSB_2, 	      	name = _('CMSP OSB2'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_OSB_3,up = iCommandPlaneCMSP_OSB_3, 	     	name = _('CMSP OSB3'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_OSB_4,up = iCommandPlaneCMSP_OSB_4, 	      	name = _('CMSP OSB4'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_NEXT_UP,up = iCommandPlaneCMSP_NEXT_UP, 	  	name = _('CMSP Next Up rotary'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_NEXT_DOWN,up = iCommandPlaneCMSP_NEXT_DOWN, 	name = _('CMSP Next Down rotary'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_RTN,up = iCommandPlaneCMSP_RTN, 			  	name = _('CMSP RTN Key'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_JTSN, 										name = _('CMSP JTSN'), category = _('CMSP Panel')},
{pressed = iCommandPlaneCMSP_BRT_DEC,									name = _('CMSP BRT Decrease'), category = _('CMSP Panel')},
{pressed = iCommandPlaneCMSP_BRT_INC,									name = _('CMSP BRT Increase'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MWS_MENU,up = iCommandPlaneCMSP_MWS_ON, 		name = _('CMSP MWS MENU'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MWS_ON, 										name = _('CMSP MWS ON/OFF'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_JMR_MENU,up = iCommandPlaneCMSP_JMR_ON, 		name = _('CMSP JMR MENU'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_JMR_ON, 										name = _('CMSP JMR ON/OFF'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_RWR_MENU,up = iCommandPlaneCMSP_RWR_ON, 		name = _('CMSP RWR MENU'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_RWR_ON, 										name = _('CMSP RWR ON/OFF'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_DISP_MENU,up = iCommandPlaneCMSP_DISP_ON, 	name = _('CMSP DISP MENU'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_DISP_ON, 										name = _('CMSP DISP ON/OFF'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MODE_OFF, 									name = _('CMSP MODE OFF'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MODE_STBY, 									name = _('CMSP MODE STBY'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MODE_MAN, 									name = _('CMSP MODE MAN'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MODE_SEMI, 									name = _('CMSP MODE SEMI'), category = _('CMSP Panel')},
{down = iCommandPlaneCMSP_MODE_AUTO, 									name = _('CMSP MODE AUTO'), category = _('CMSP Panel')},

--CMSC panel
{down = iCommandPlaneCMSC_JMR,up = iCommandPlaneCMSC_JMR, 	      		name = _('CMSC JMR Key'), category = _('CMSC Panel')},
{down = iCommandPlaneCMSC_MWS,up = iCommandPlaneCMSC_MWS, 	      		name = _('CMSC MWS Key'), category = _('CMSC Panel')},
{pressed = iCommandPlaneCMSC_BRT_DEC,									name = _('CMSC BRT Decrease'), category = _('CMSC Panel')},
{pressed = iCommandPlaneCMSC_BRT_INC,									name = _('CMSC BRT Increase'), category = _('CMSC Panel')},
{pressed = iCommandPlaneCMSC_AUD_DEC,									name = _('CMSC AUD Decrease'), category = _('CMSC Panel')},
{pressed = iCommandPlaneCMSC_AUD_INC,									name = _('CMSC AUD Increase'), category = _('CMSC Panel')},
{down = iCommandPlaneCMSC_PRI,up = iCommandPlaneCMSC_PRI, 	      		name = _('CMSC PRI Key'), category = _('CMSC Panel')},
{down = iCommandPlaneCMSC_SEP,up = iCommandPlaneCMSC_SEP, 	      		name = _('CMSC SEP Key'), category = _('CMSC Panel')},
{down = iCommandPlaneCMSC_UNK,up = iCommandPlaneCMSC_UNK, 	      		name = _('CMSC UNK Key'), category = _('CMSC Panel')},

--Lighting control panel
{down = iCommandPlanePositionLightsFlash, 								name = _('Position Lights Flash'), category = _('Lighting Panel')},
{down = iCommandPlanePositionLightsOff, 								name = _('Position Lights Off'), category = _('Lighting Panel')},
{down = iCommandPlanePositionLightsSteady, 								name = _('Position Lights Steady'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFormationLightsDecrease,						name = _('Formation Lights Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFormationLightsIncrease,						name = _('Formation Lights Increase'), category = _('Lighting Panel')},
{down = device_commands.Button_10, up = device_commands.Button_11, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1.0,value_up = -1.0, name = _('Anti-Collision Lights switch'), category = _('Lighting Panel')},
{pressed = iCommandPlaneEngInstLightsDecrease,							name = _('Engine Instruments Lights Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneEngInstLightsIncrease,							name = _('Engine Instruments Lights Increase'), category = _('Lighting Panel')},
{down = iCommandPlaneNoseIllum, 										name = _('Nose Flooding and Nose Illimination switch'), category = _('Lighting Panel')},
{pressed = iCommandPlaneAuxInstLightsDecrease,							name = _('Auxiliary Instruments Lights Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneAuxInstLightsIncrease,							name = _('Auxiliary Instruments Lights Increase'), category = _('Lighting Panel')},
{down = iCommandPlaneSignalLTS, 										name = _('Signal Lights switch'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFltInstLightsDecrease,							name = _('Flight Instruments Lights Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFltInstLightsIncrease,							name = _('Flight Instruments Lights Increase'), category = _('Lighting Panel')},
{down = iCommandPlaneAccelCompLights, 									name = _('Accelerometer and Compass Light switch'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFloodLightsDecrease,							name = _('Floodlight Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneFloodLightsIncrease,							name = _('Floodlight Increase'), category = _('Lighting Panel')},
{pressed = iCommandPlaneConsoleLightsDecrease,							name = _('Console Light Decrease'), category = _('Lighting Panel')},
{pressed = iCommandPlaneConsoleLightsIncrease,							name = _('Console Light Increase'), category = _('Lighting Panel')},
-- Flashlight (Utility Light)
{down = 3256, cockpit_device_id = 0, value_down = 1.0, 					name = _('Flashlight'), category = _('View Cockpit')},
{down = 3255, cockpit_device_id = 0, value_down = 1.0,					name = _('Flashlight Color - Toggle Green/White'), category = {_('View Cockpit'), _('Right Console')}},
{down = device_commands.Button_19, cockpit_device_id = devices.LIGHT_SYSTEM, value_down =  0.1, name = _('Flashlight BRT Control - Increase'), category = {_('View Cockpit'), _('Right Console')}},
{down = device_commands.Button_19, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = -0.1, name = _('Flashlight BRT Control - Decrease'), category = {_('View Cockpit'), _('Right Console')}},

--AHCP
{down = iCommandPlaneAHCPMasterArm, 									name = _('Master switch ARM'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPMasterSafe, 									name = _('Master switch SAFE'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPMasterTrain, 									name = _('Master switch TRAIN'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPGUNPACArm, 									name = _('GUN/PAC switch ARM'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPGUNSafe, 										name = _('GUN/PAC switch SAFE'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPGUNArm, 										name = _('GUN/PAC switch GUNARM'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPLaserArm, 										name = _('LASER switch ARM'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPLaserSafe, 									name = _('LASER switch SAFE'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPLaserTrain, 									name = _('LASER switch TRAIN'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPTGPOnOff, 										name = _('TGP switch ON/OFF'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPAltSCEBaro, 									name = _('ALT SCE switch BARO'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPAltSCEDelta, 									name = _('ALT SCE switch DELTA'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPAltSCERadar, 									name = _('ALT SCE switch RADAR'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPHUDModeDayNight, 								name = _('HUD Mode switch Day/Night'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPHUDModeNormSTBY, 								name = _('HUD Mode switch NORM/STBY'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPCICUOnOff, 									name = _('CICU switch ON/OFF'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPJTRSOnOff, 									name = _('JTRS switch ON/OFF'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPIFFCCOn, 										name = _('IFFCC switch ON'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPIFFCCTest, 									name = _('IFFCC switch TEST'), category = _('Armament HUD Control Panel')},
{down = iCommandPlaneAHCPIFFCCOff, 										name = _('IFFCC switch OFF'), category = _('Armament HUD Control Panel')},

--Landing gear panel
{down = iCommandPlaneGear, 			name = _('Landing Gear Up/Down'), category = _('Landing gear panel')},
{down = iCommandPlaneGearUp, 		name = _('Landing Gear Up'), category = _('Landing gear panel')},
{down = iCommandPlaneGearDown, 		name = _('Landing Gear Down'), category = _('Landing gear panel')},
{down = iCommandEmergencyGear, 		name = _('Auxiliary gear handle'), category = _('Landing gear panel')},
{down = iCommandEmergencyGearCover, name = _('Auxiliary gear handle lock button'), category = _('Landing gear panel')},

{down = iCommandPlaneLGPAntiSkid, 								name = _('Anti-Skid ON/OFF'), category = _('Landing gear panel')},
{down = iCommandPlaneLGPDownlockOverride,up=iCommandPlaneLGPDownlockOverride,name = _('Downlock Override'), category = _('Landing gear panel')},
{down = iCommandPlaneLGPLandLight, 								name = _('Landing Lights On'), category = _('Landing gear panel')},
{down = iCommandPlaneLGPLightsOff, 								name = _('Landing/Taxi Lights Off'), category = _('Landing gear panel')},
{down = iCommandPlaneLGPTaxiLight, 								name = _('Taxi Lights On'), category = _('Landing gear panel')},

--NMSP
{down = iCommandPlaneNMSP_HARS, up = iCommandPlaneNMSP_HARS,  	name = _('NMSP HARS button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_EGI,up = iCommandPlaneNMSP_EGI, 		name = _('NMSP EGI button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_TISL, up = iCommandPlaneNMSP_TISL,  	name = _('NMSP TISL button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_STRPT, up = iCommandPlaneNMSP_STRPT,	name = _('NMSP STR PT button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_ANCHR, up = iCommandPlaneNMSP_ANCHR,	name = _('NMSP ANCHR button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_TCN, up = iCommandPlaneNMSP_TCN, 		name = _('NMSP TCN button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_ILS, up = iCommandPlaneNMSP_ILS,		name = _('NMSP ILS button'), category = _('Navigation Mode Select Panel')},
{down = iCommandPlaneNMSP_PTR_ABLE_STOW, 						name = _('NMSP ABLE/STOW switch'), category = _('Navigation Mode Select Panel')},


--SAI
{pressed = iCommand_AGR_axis_left, 							name = _('SAI Pitch Trim Left'), category = _('Systems')},
{pressed = iCommand_AGR_axis_right, 						name = _('SAI Pitch Trim Right'), category = _('Systems')},
{down = iCommand_AGR_Oriet, up = iCommand_AGR_Oriet, 		name = _('SAI Cage Knob'), category = _('Systems')},

--ADI
{pressed = iCommandADI_ZeroPitchTrimLeft, 					name = _('ADI Pitch Trim Left'), category = _('Systems')},
{pressed = iCommandADI_ZeroPitchTrimRight, 					name = _('ADI Pitch Trim Right'), category = _('Systems')},

--Clock
{down = iCommandMechClock_LeftLever_Down, up = iCommandMechClock_LeftLever_Down,  name = _('CLOCK Select button'), category = _('Systems')},
{down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down,name = _('CLOCK Control button'), category = _('Systems')},

--HSI
{pressed = iCommandHSI_HeadingRotaryLeft,  					name = _('HSI Heading rotate left'), category = _('Systems')},
{pressed = iCommandHSI_HeadingRotaryRight,					name = _('HSI Heading rotate right'), category = _('Systems')},
{pressed = iCommandHSI_CourseRotaryLeft,  					name = _('HSI Course rotate left'), category = _('Systems')},
{pressed = iCommandHSI_CourseRotaryRight,					name = _('HSI Course rotate right'), category = _('Systems')},

--HARS fast erect
{down = iCommandPlane_HARS_Fast_Erect,	up = iCommandPlane_HARS_Fast_Erect, name = _('HARS Fast Erect Button'), category = _('Systems')},

--Altimeter
{pressed = iCommandAltimeterPressureDecrease,  				name = _('Altimeter Pressure Set Decrease'), category = _('Systems')},
{pressed = iCommandAltimeterPressureIncrease,				name = _('Altimeter Pressure Set Increase'), category = _('Systems')},
{down = iCommandPlane_Altimeter_PNEU, up = 	iCommandPlane_Altimeter_CENTER,		name = _('Altimeter PNEU Mode'), category = _('Systems')},
{down = iCommandPlane_Altimeter_ELECT, up = 	iCommandPlane_Altimeter_CENTER,	name = _('Altimeter ELECT Mode'), category = _('Systems')},

--Ext Ladder
{down = iCommandExtLadderButtonCover, 							name = _('Extend boarding ladder cover'), 	category = _('Systems')},
{down = iCommandExtLadderButton, up = iCommandExtLadderRelease, name = _('Extend boarding ladder button'), category = _('Systems')},
--Auxiliary Avionics Panel AAP
{down = iCommandPlane_AAP_CDU_Power, 					name = _('AAP CDU Power Switch'), category = _('AAP')},
{down = iCommandPlane_AAP_EGI_Power, 					name = _('AAP EGI Power Switch'), category = _('AAP')},
{down = iCommandPlane_AAP_PageSel_OTHER, 				name = _('AAP Page Select OTHER'), category = _('AAP')},
{down = iCommandPlane_AAP_PageSel_POSITION, 			name = _('AAP Page Select POSITION'), category = _('AAP')},
{down = iCommandPlane_AAP_PageSel_STEER, 				name = _('AAP Page Select STEER'), category = _('AAP')},
{down = iCommandPlane_AAP_PageSel_WAYPT, 				name = _('AAP Page Select WAYPT'), category = _('AAP')},
{down = iCommandPlane_AAP_SteerPt_FLTPLAN, 				name = _('AAP Steer Point FLT PLAN'), category = _('AAP')},
{down = iCommandPlane_AAP_SteerPt_MARK, 				name = _('AAP Steer Point MARK'), category = _('AAP')},
{down = iCommandPlane_AAP_SteerPt_MISSION, 				name = _('AAP Steer Point MISSION'), category = _('AAP')},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.AAP, value_down = 1.0,	value_up = 0.0, name = _('AAP STEER Switch Up'), category = _('AAP')},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.AAP, value_down = -1.0, value_up = 0.0, name = _('AAP STEER Switch Down'), category = _('AAP')},

-- TACAN Control Panel
{down = iCommandPlane_TACAN_Mode_Off, 					name = _('TACAN Mode Select OFF'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Mode_Rec, 					name = _('TACAN Mode Select REC'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Mode_TR, 					name = _('TACAN Mode Select T R'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Mode_AAREC, 				name = _('TACAN Mode Select A A REC'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Mode_AATR, 					name = _('TACAN Mode Select A A T R'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Volume_Decrease, 		name = _('TACAN Volume Decrease'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Volume_Increase, 		name = _('TACAN Volume Increase'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Chanel_Ones_Decrease, 	name = _('TACAN Chanel Ones Decrease'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Chanel_Ones_Increase, 	name = _('TACAN Chanel Ones Increase'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Chanel_Tens_Decrease, 	name = _('TACAN Chanel Tens Decrease'), category = _('TACAN Control Panel')},
{pressed = iCommandPlane_TACAN_Chanel_Tens_Increase, 	name = _('TACAN Chanel Tens Increase'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Chanel_XY_Mode, 			name = _('TACAN Mode X/Y Switch'), category = _('TACAN Control Panel')},
{down = iCommandPlane_TACAN_Test, up=iCommandPlane_TACAN_Test,name = _('TACAN Test Button'), category = _('TACAN Control Panel')},

-- ILS Control Panel
{down = iCommandPlane_ILS_Power, 						name = _('ILS Power Switch'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_MHz_Decrease, 				name = _('ILS Freq. MHz Decrease'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_MHz_Increase, 				name = _('ILS Freq. MHz Increase'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_KHz_Decrease, 				name = _('ILS Freq. KHz Decrease'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_KHz_Increase, 				name = _('ILS Freq. KHz Increase'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_Volume_Decrease, 			name = _('ILS Volume Decrease'), category = _('ILS Control Panel')},
{pressed = iCommandPlane_ILS_Volume_Increase, 			name = _('ILS Volume Increase'), category = _('ILS Control Panel')},

-- HARS Control Panel
{down = iCommandPlane_HARS_Mode, 						name = _('HARS Mode Selector SLAVE/DG'), category = _('HARS Control Panel')},
{pressed = iCommandPlane_HARS_LAT_Correction_Decrease, 	name = _('HARS LAT Correction Decrease'), category = _('HARS Control Panel')},
{pressed = iCommandPlane_HARS_LAT_Correction_Increase, 	name = _('HARS LAT Correction Increase'), category = _('HARS Control Panel')},
{down = iCommandPlane_HARS_HemisphereSel, 				name = _('HARS Hemisphere Selector'), category = _('HARS Control Panel')},
{down = iCommandPlane_HARS_MagneticVar_Min15, 			name = _('HARS Magnetic Variation -15'), category = _('HARS Control Panel')},
{down = iCommandPlane_HARS_MagneticVar_Null, 			name = _('HARS Magnetic Variation 0'), category = _('HARS Control Panel')},
{down = iCommandPlane_HARS_MagneticVar_Plus15, 			name = _('HARS Magnetic Variation +15'), category = _('HARS Control Panel')},
{down = iCommandPlane_HARS_SyncButton,up=iCommandPlane_HARS_SyncButton, name = _('HARS SYNC Button'), category = _('HARS Control Panel')},
{pressed = iCommandPlane_HARS_HDG_Decrease, 			name = _('HARS HDG Decrease'), category = _('HARS Control Panel')},
{pressed = iCommandPlane_HARS_HDG_Increase, 			name = _('HARS HDG Increase'), category = _('HARS Control Panel')},

-- Stall Warinig Control panel
{pressed = iCommandPlane_STALL_Vol_Decrease, 			name = _('Stall volume Decrease'), category = _('Stall Warning Control Panel')},
{pressed = iCommandPlane_STALL_Vol_Increase, 			name = _('Stall volume Increase'), category = _('Stall Warning Control Panel')},
{pressed = iCommandPlane_Peak_Vol_Decrease, 			name = _('Peak volume Decrease'), category = _('Stall Warning Control Panel')},
{pressed = iCommandPlane_Peak_Vol_Increase, 			name = _('Peak volume Increase'), category = _('Stall Warning Control Panel')},

--VHF FM Radio Control Panel
{pressed = iCommandPlane_VHF_FM_Volume_Dec, 			name = _('VHF FM Volume Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_Volume_Inc, 			name = _('VHF FM Volume Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Mode_EMERFM, 				name = _('VHF FM Mode EMER FM'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Mode_EMERAM, 				name = _('VHF FM Mode EMER AM'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Mode_MAN, 					name = _('VHF FM Mode MAN'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Mode_PRE, 					name = _('VHF FM Mode PRE'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_FreqMode_OFF, 				name = _('VHF FM Frequency Mode OFF'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_FreqMode_TK, 				name = _('VHF FM Frequency Mode TK'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_FreqMode_DN, 				name = _('VHF FM Frequency Mode DN'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Squelch, 				    name = _('VHF FM Squelch'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Tone,up = iCommandPlane_VHF_FM_Tone, name = _('VHF FM Tone'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = iCommandPlane_VHF_FM_Load,up=iCommandPlane_VHF_FM_Load, name = _('VHF FM Load'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = device_commands.Button_17, cockpit_device_id = devices.VHF_FM_RADIO, value_down = -1.0,name = _('VHF FM Preset Channel Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{down = device_commands.Button_17, cockpit_device_id = devices.VHF_FM_RADIO, value_down = 1.0,name = _('VHF FM Preset Channel Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_10MHz_Dec, 				name = _('VHF FM 10Mhz Selector Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_10MHz_Inc, 				name = _('VHF FM 10Mhz Selector Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},

{pressed = iCommandPlane_VHF_FM_1MHz_Dec, 				name = _('VHF FM 1Mhz Selector Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_1MHz_Inc, 				name = _('VHF FM 1Mhz Selector Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_01MHz_Dec, 				name = _('VHF FM 0.1Mhz Selector Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_01MHz_Inc, 				name = _('VHF FM 0.1Mhz Selector Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_025MHz_Dec, 			name = _('VHF FM 0.025Mhz Selector Decrease'), category = _('VHF FM Radio (ARC-186) Control Panel')},
{pressed = iCommandPlane_VHF_FM_025MHz_Inc, 			name = _('VHF FM 0.025Mhz Selector Increase'), category = _('VHF FM Radio (ARC-186) Control Panel')},

--Environment System Panel
{down = iCommandPlane_Oxygen_Emergency, 				name = _('Oxygen Emergency Lever Emergenvy'), category = _('Environment System Panel')},
{down = iCommandPlane_Oxygen_Normal, 					name = _('Oxygen Emergency Lever Normal'), category = _('Environment System Panel')},
{down = iCommandPlane_Oxygen_TestMask, up = iCommandPlane_Oxygen_TestMask, name = _('Oxygen Emergency Lever Test Mask'), category = _('Environment System Panel')},
{down = iCommandPlane_Oxygen_Supply, 					name = _('Oxygen Supply Lever'), category = _('Environment System Panel')},
{down = iCommandPlane_Oxygen_100Oxygen, 				name = _('Oxygen Dilution Lever'), category = _('Environment System Panel')},
{down = iCommandPlane_Oxygen_Ind_Test,up=iCommandPlane_Oxygen_Ind_Test, name = _('Oxygen Indicator Test'), category = _('Environment System Panel')},
{down = iCommandPitotAoAHeat, 						    name = _('Pitot Heater Switch'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_WindshieldDefogDeice, 		name = _('Wind shield Defog/Deice Switch'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_WindshieldRainRemove, 		name = _('Wind shield Rain Removal Switch'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_WindshieldCenter, 			name = _('Wind shield Rain Removal Switch Center'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_WindshieldWash, 				name = _('Wind shield Rain Removal Switch Wash'), category = _('Environment System Panel')},
{pressed = iCommandPlane_Env_CanopyDefog_Dec, 			name = _('Canopy Defog Decrease'), category = _('Environment System Panel')},
{pressed = iCommandPlane_Env_CanopyDefog_Inc, 			name = _('Canopy Defog Increase'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_BleddAir, 					name = _('Bleed Air Switch'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_TempPress_NORM, 				name = _('Temperature/Pressure Control NORM'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_TempPress_DUMP, 				name = _('Temperature/Pressure Control DUMP'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_TempPress_RAM, 				name = _('Temperature/Pressure Control RAM'), category = _('Environment System Panel')},
{pressed = iCommandPlane_Env_FlowLevel_Decrease, 		name = _('Flow Level Decrease'), category = _('Environment System Panel')},
{pressed = iCommandPlane_Env_FlowLevel_Increase, 		name = _('Flow Level Increase'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_MainAirSupply, 				name = _('Main Air Supply Switch'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_AirConditioner_AUTO, 			name = _('Air Conditioner Control AUTO'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_AirConditioner_HOT, up=iCommandPlane_Env_AirConditioner_HOT,	name = _('Air Conditioner Control HOT'), category = _('Environment System Panel')},
{down = iCommandPlane_Env_AirConditioner_COLD, up= iCommandPlane_Env_AirConditioner_COLD, name = _('Air Conditioner Control COLD'), category = _('Environment System Panel')},

{down = iCommandSeatArmHandle, 							name = _('Seat Arm Handle'), category = _('Systems')},
{down = iCommandAntiGSuitTest, 							name = _('Anti-G suit valve test button'), category = _('Systems')},
{down = iCommandCanopyActuatorDisengage, 				name = _('Internal canopy actuator disengage lever'), category = _('Systems')},
{down = iCommandCanopyJettison, 						name = _('Canopy jettison lever'), category = _('Systems')},
{down = iCommandCanopyJettisonUnlockButton, 			name = _('Canopy jettison lever unlock button'), category = _('Systems')},

--DVADR Remote Control Panel
{down = iCommandDVADRFunctionOff, 						name = _('Function control toggle switch OFF'), category = _('DVADR Remote Control Panel')},
{down = iCommandDVADRFunctionSTDBY, 					name = _('Function control toggle switch STDBY'), category = _('DVADR Remote Control Panel')},
{down = iCommandDVADRFunctionREC, 						name = _('Function control toggle switch REC'), category = _('DVADR Remote Control Panel')},

--Antenna Select Panel						
{down = iCommandIFFAntennaUpper, 						name = _('IFF Antenna Switch UPPER'), category = _('Antenna Select Panel')},
{down = iCommandIFFAntennaBoth, 						name = _('IFF Antenna Switch BOTH'), category = _('Antenna Select Panel')},
{down = iCommandIFFAntennaLower, 						name = _('IFF Antenna Switch LOWER'), category = _('Antenna Select Panel')},
{down = iCommandUHFAntennaUpper, 						name = _('UHF Antenna Switch UPPER'), category = _('Antenna Select Panel')},
{down = iCommandUHFAntennaAuto, 						name = _('UHF Antenna Switch AUTO'), category = _('Antenna Select Panel')},
{down = iCommandUHFAntennaLower, 						name = _('UHF Antenna Switch LOWER'), category = _('Antenna Select Panel')},
{down = iCommandEGI_HQ_TOD, 							name = _('EGI HQ TOD Switch'), category = _('Antenna Select Panel')},

--Radar Warning Receiver
{pressed = iCommandRWRIntensityDecrease,  				name = _('Radar Warning Receiver Intensity Decrease'), category = _('Systems')},
{pressed = iCommandRWRIntensityIncrease,				name = _('Radar Warning Receiver Intensity Increase'), category = _('Systems')},

--Seat Adjustment
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.CPT_MECH, value_down = -1.0,	value_up = 0.0, name = _('Seat Adjustment Up'), category = _('Systems')},
{down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.CPT_MECH, value_down = 1.0,	value_up = 0.0, name = _('Seat Adjustment Down'), category = _('Systems')},

-- Helment Mounted Cueuing System
{down = device_commands.Button_2, cockpit_device_id = devices.SCORPION_HMCS, value_down = 1.0, name = _('HMCS Power ON/OFF'), category = _('HMCS')},
{down = device_commands.Button_1, cockpit_device_id = devices.SCORPION_HMCS, value_down = 1.0, name = _('HMCS Power ON'), category = _('HMCS')},
{down = device_commands.Button_1, cockpit_device_id = devices.SCORPION_HMCS, value_down = 0.0, name = _('HMCS Power OFF'), category = _('HMCS')},
{down = device_commands.Button_1, cockpit_device_id = devices.SCORPION_HMCS, value_down = -1.0, name = _('HMCS Power BAT'), category = _('HMCS')},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.SCORPION_HMCS, value_down = 1.0, value_up = 0, name = _('HMCS Power 3-pos Switch : ON<>OFF'), category = {_('Special For Joystick'), _('HMCS')}},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.SCORPION_HMCS, value_down = -1.0, value_up = 0, name = _('HMCS Power 3-pos Switch : BAT<>OFF'), category = {_('Special For Joystick'), _('HMCS')}},

--- Kneeboard
{down = 3001, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = 3002, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = 3003	, cockpit_device_id  = 100,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},
},
}

join(res.keyCommands, VHF_or_ARC210)

return {

forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = res.keyCommands,
-------------------------------------
axisCommands = {

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	,  action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneThrustCommon, name = _('Throttle Both')},

-- fvh: added axes
{action = device_commands.Button_9,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Formation Lights'), category = _('_My Axes')},
{action = device_commands.Button_1,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Engine Instrument Lights'), category = _('_My Axes')},
{action = device_commands.Button_2,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Flight Instrument Lights'), category = _('_My Axes')},
{action = device_commands.Button_3,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Auxiliary Instrument Lights'), category = _('_My Axes')},
{action = device_commands.Button_5,	 cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Flood Light'), category = _('_My Axes')},
{action = device_commands.Button_6,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Console Lights'), category = _('_My Axes')},
{action = device_commands.Button_15, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Refuel Status Lights'), category = _('_My Axes')},
{action = device_commands.Button_18, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Refueling Lighting Dial'), category = _('_My Axes')},
{action = device_commands.Button_9,  cockpit_device_id = devices.CMSP,         name = _('CMSP Display Brightness'), category = _('_My Axes')},
{action = device_commands.Button_6,  cockpit_device_id = devices.CMSC,         name = _('CMSC Display Brightness'), category = _('_My Axes')},
{action = device_commands.Button_7,  cockpit_device_id = devices.CMSC,         name = _('CMSC RWR Volume'), category = _('_My Axes')},
{action = device_commands.Button_1,  cockpit_device_id = devices.HSI,          name = _('HSI Heading Set Knob'), category = _('_My Axes')},
{action = device_commands.Button_2,  cockpit_device_id = devices.HSI,          name = _('HSI Course Set Knob'), category = _('_My Axes')},
{action = device_commands.Button_1,  cockpit_device_id = devices.ADI,          name = _('ADI Pitch Trim Knob'), category = _('_My Axes')},
{action = device_commands.Button_7,  cockpit_device_id = devices.TACAN,        name = _('TACAN Signal Volume'), category = _('_My Axes')},
{action = device_commands.Button_1,  cockpit_device_id = devices.STALL,        name = _('STALL Volume'), category = _('_My Axes')},
{action = device_commands.Button_2,  cockpit_device_id = devices.STALL,        name = _('STALL Peak Volume'), category = _('_My Axes')},
{action = device_commands.Button_11, cockpit_device_id = devices.UHF_RADIO,    name = _('UHF Radio Volume'), category = _('_My Axes')},
{action = device_commands.Button_5,  cockpit_device_id = devices.VHF_AM_RADIO, name = _('VHF/AM Radio Volume'), category = _('_My Axes')},
{action = device_commands.Button_5,  cockpit_device_id = devices.VHF_FM_RADIO, name = _('VHF/FM Radio Volume'), category = _('_My Axes')},
{action = device_commands.Button_18, cockpit_device_id = devices.INTERCOM,     name = _('INTERCOM Volume'), category = _('_My Axes')},

-- TrackIR axes
{action = iCommandViewVerticalAbs		, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs		, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs		, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs		, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs	, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs			, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs			, name = _('Zoom View')},

{action = iCommandPlaneThrustLeft , name = _('Throttle Left')},
{action = iCommandPlaneThrustRight, name = _('Throttle Right')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

{action = iCommandPlaneSelecterHorizontalAbs, name = _('HOTAS Slew Horizontal')},
{action = iCommandPlaneSelecterVerticalAbs	, name = _('HOTAS Slew Vertical')},

-- Flashlight (Utility Light)
{action = device_commands.Button_20, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Flashlight BRT Control'), category = {_('Right Console')}},

-- Lighting dials
{action = device_commands.Button_21, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Engine Instruments Lights'), 	category = {_('Lighting Panel')}},
{action = device_commands.Button_22, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Flight Instruments Lights'), 	category = {_('Lighting Panel')}},
{action = device_commands.Button_23, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Floodlight '), 					category = {_('Lighting Panel')}},
{action = device_commands.Button_24, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Console Light'), 				category = {_('Lighting Panel')}},
{action = device_commands.Button_25, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Formation Lights'), 			category = {_('Lighting Panel')}},
{action = device_commands.Button_26, cockpit_device_id = devices.LIGHT_SYSTEM, name = _('Refuel status indexer LTS '),	category = {_('Auxiliary lighting control panel')}},
},
}