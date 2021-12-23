local cockpit = folder.."../../../Cockpit/"
local f14input = folder.."../../../Input/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")
dofile(f14input.."utils.lua")

res = {
  keyCommands = {},
  axisCommands = {},
  forceFeedback = {},
}

local res2 = external_profile(f14input.."F-14B-RIO/keyboard/default.lua")
join_override(res.keyCommands, res2.keyCommands)

res2 = external_profile(f14input.."F-14B/joystick/default.lua")
join_override(res.keyCommands, res2.keyCommands)
join_override(res.axisCommands, res2.axisCommands)
join_override(res.forceFeedback, res2.forceFeedback)


join_override(res.forceFeedback,{
	trimmer=1.0,
	shake=0.5,
	swapAxes=false,
	invertX=false,
	invertY=false,
})


join_override(res.keyCommands,{

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: begin custom assignments RIO
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--[[

-- BAROALTIMETER
{down = device_commands.RIOALTIMETER_Mode, up = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down = 1.0, value_up = 0.0, name = _('Altimeter Mode Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.RIOALTIMETER_Mode, up = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down =-1.0, value_up = 0.0, name = _('Altimeter Mode Switch -1/0'), category = _('_My Buttons')},

-- RADARALTIMETER
--{down = device_commands.RADARALT_Test, up = device_commands.RADARALT_Test, cockpit_device_id = devices.RADARALTIMETER, value_down = 1.0, value_up = 0.0, name = _('Radar Altimeter Uncage 1/0'), category = _('_My Buttons')},

-- COCKPITMECHANICS
{down = device_commands.EJECT_ArmRIO, up = device_commands.EJECT_ArmRIO, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Ejection Seat Safety 1/0'), category = _('_My Buttons')},

{down = device_commands.RIO_STORAGE_BOX, up = device_commands.RIO_STORAGE_BOX, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Storage 1/0'), category = _('_My Buttons')},

{down = device_commands.RIOOxygenOn, up = device_commands.RIOOxygenOn, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('RIO Oxygen On 1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_RedFlood_RIO, up = device_commands.LIGHTS_RedFlood_RIO, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Red Flood Light 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_RedFlood_RIO, up = device_commands.LIGHTS_RedFlood_RIO, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('Red Flood Light -1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_WhiteFlood_RIO, up = device_commands.LIGHTS_WhiteFlood_RIO, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('White Flood Light 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_WhiteFlood_RIO, up = device_commands.LIGHTS_WhiteFlood_RIO, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('White Flood Light -1/0'), category = _('_My Buttons')},

-- TACAN
{down = device_commands.TACAN_Mode_Norm_Inv_RIO, up = device_commands.TACAN_Mode_Norm_Inv_RIO, cockpit_device_id = devices.TACAN, value_down = 1.0, value_up = 0.0, name = _('TACAN Mode Normal/Inverse 1/0'), category = _('_My Buttons')},

{down = device_commands.TACAN_Mode_X_Y_RIO, up = device_commands.TACAN_Mode_X_Y_RIO, cockpit_device_id = devices.TACAN, value_down = 1.0, value_up = 0.0, name = _('TACAN Channel X/Y 1/0'), category = _('_My Buttons')},


-- ICS
{down = device_commands.RADIO_ICS_Func_RIO, up = device_commands.RADIO_ICS_Func_RIO, cockpit_device_id = devices.ICS, value_down = 1.0, value_up = 0.0, name = _('ICS Function Selector 1/0'), category = _('_My Buttons')},
{down = device_commands.RADIO_ICS_Func_RIO, up = device_commands.RADIO_ICS_Func_RIO, cockpit_device_id = devices.ICS, value_down =-1.0, value_up = 0.0, name = _('ICS Function Selector -1/0'), category = _('_My Buttons')},

{down = device_commands.RADIO_ICS_XMTR_SEL_RIO, up = device_commands.RADIO_ICS_XMTR_SEL_RIO, cockpit_device_id = devices.ICS, value_down = 1.0, value_up = 0.0, name = _('XMTR SEL Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.RADIO_ICS_XMTR_SEL_RIO, up = device_commands.RADIO_ICS_XMTR_SEL_RIO, cockpit_device_id = devices.ICS, value_down =-1.0, value_up = 0.0, name = _('XMTR SEL Switch -1/0'), category = _('_My Buttons')},

{down = device_commands.RIO_UHF_UPR_LWR, up = device_commands.RIO_UHF_UPR_LWR, cockpit_device_id = devices.ICS, value_down = 1.0, value_up = 0.0, name = _('V/UHF 2 ANT Switch 1/0'), category = _('_My Buttons')},

{down = device_commands.RIO_KY_MODE, up = device_commands.RIO_KY_MODE, cockpit_device_id = devices.ICS, value_down = 1.0, value_up = 0.0, name = _('KY MODE Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.RIO_KY_MODE, up = device_commands.RIO_KY_MODE, cockpit_device_id = devices.ICS, value_down =-1.0, value_up = 0.0, name = _('KY MODE Switch -1/0'), category = _('_My Buttons')},

-- ARC182
{down = device_commands.RADIO_VHF_FM_AM_RIO, up = device_commands.RADIO_VHF_FM_AM_RIO, cockpit_device_id = devices.ARC182, value_down = 1.0, value_up = 0.0, name = _('VHF/UHF ARC-182 FM/AM Switch 1/0'), category = _('_My Buttons')},

{down = device_commands.RADIO_VHF_SQL_RIO, up = device_commands.RADIO_VHF_SQL_RIO, cockpit_device_id = devices.ARC182, value_down = 1.0, value_up = 0.0, name = _('VHF/UHF ARC-182 Squelch Switch 1/0'), category = _('_My Buttons')},


-- RWR
{down = device_commands.RWR_DISPLAY_MODE, up = device_commands.RWR_DISPLAY_MODE, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 0.0, name = _('AN/ALR-67 Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.RWR_DISPLAY_MODE, up = device_commands.RWR_DISPLAY_MODE, cockpit_device_id = devices.RWR, value_down =-1.0, value_up = 0.0, name = _('AN/ALR-67 Mode -1/0'), category = _('_My Buttons')},

{down = device_commands.RWR_TEST_SWITCH, up = device_commands.RWR_TEST_SWITCH, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 0.0, name = _('AN/ALR-67 Test 1/0'), category = _('_My Buttons')},
{down = device_commands.RWR_TEST_SWITCH, up = device_commands.RWR_TEST_SWITCH, cockpit_device_id = devices.RWR, value_down =-1.0, value_up = 0.0, name = _('AN/ALR-67 Test -1/0'), category = _('_My Buttons')},

{down = device_commands.RWR_POWER, up = device_commands.RWR_POWER, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 0.0, name = _('AN/ALR-67 Power 1/0'), category = _('_My Buttons')},


-- HCU
{down = device_commands.HCU_IR_TV, up = device_commands.HCU_IR_TV, cockpit_device_id = devices.HCU, value_down = 1.0, value_up = 0.0, name = _('HCU TCS mode 1/0'), category = _('_My Buttons')},

{down = device_commands.HCU_RDR, up = device_commands.HCU_RDR, cockpit_device_id = devices.HCU, value_down = 1.0, value_up = 0.0, name = _('HCU radar mode 1/0'), category = _('_My Buttons')},

{down = device_commands.HCU_DDD_cursor, up = device_commands.HCU_DDD_cursor, cockpit_device_id = devices.HCU, value_down = 1.0, value_up = 0.0, name = _('HCU DDD mode 1/0'), category = _('_My Buttons')},

{down = device_commands.HCU_TID_cursor, up = device_commands.HCU_TID_cursor, cockpit_device_id = devices.HCU, value_down = 1.0, value_up = 0.0, name = _('HCU TID mode 1/0'), category = _('_My Buttons')},

-- TCS
-- RIO?
{down = device_commands.HCU_TVIR_enable, up = device_commands.HCU_TVIR_enable, cockpit_device_id = devices.TCS, value_down = 1.0, value_up = 0.0, name = _('TV/IR switch 1/0'), category = _('_My Buttons')},
{down = device_commands.HCU_TVIR_enable, up = device_commands.HCU_TVIR_enable, cockpit_device_id = devices.TCS, value_down =-1.0, value_up = 0.0, name = _('TV/IR switch -1/0'), category = _('_My Buttons')},

{down = device_commands.TCS_ACQ_switch, up = device_commands.TCS_ACQ_switch, cockpit_device_id = devices.TCS, value_down = 1.0, value_up = 0.0, name = _('TCS Acquisition 1/0'), category = _('_My Buttons')},
{down = device_commands.TCS_ACQ_switch, up = device_commands.TCS_ACQ_switch, cockpit_device_id = devices.TCS, value_down =-1.0, value_up = 0.0, name = _('TCS Acquisition -1/0'), category = _('_My Buttons')},

{down = device_commands.TCS_FOV_button, up = device_commands.TCS_FOV_button, cockpit_device_id = devices.TCS, value_down = 1.0, value_up = 0.0, name = _('TCS FOV 1/0'), category = _('_My Buttons')},

{down = device_commands.TCS_Slave_switch, up = device_commands.TCS_Slave_switch, cockpit_device_id = devices.TCS, value_down = 1.0, value_up = 0.0, name = _('TCS Slave 1/0'), category = _('_My Buttons')},
{down = device_commands.TCS_Slave_switch, up = device_commands.TCS_Slave_switch, cockpit_device_id = devices.TCS, value_down =-1.0, value_up = 0.0, name = _('TCS Slave -1/0'), category = _('_My Buttons')},


-- RADAR
{down = device_commands.HCU_WCS_enable, up = device_commands.HCU_WCS_enable, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('WCS switch 1/0'), category = _('_My Buttons')},
{down = device_commands.HCU_WCS_enable, up = device_commands.HCU_WCS_enable, cockpit_device_id = devices.RADAR, value_down =-1.0, value_up = 0.0, name = _('WCS switch -1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_DDD_aspect, up = device_commands.RADAR_DDD_aspect, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('Aspect 1/0'), category = _('_My Buttons')},
{down = device_commands.RADAR_DDD_aspect, up = device_commands.RADAR_DDD_aspect, cockpit_device_id = devices.RADAR, value_down =-1.0, value_up = 0.0, name = _('Aspect -1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_DDD_Vc_scale, up = device_commands.RADAR_DDD_Vc_scale, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('Closing Velocity scale 1/0'), category = _('_My Buttons')},
{down = device_commands.RADAR_DDD_Vc_scale, up = device_commands.RADAR_DDD_Vc_scale, cockpit_device_id = devices.RADAR, value_down =-1.0, value_up = 0.0, name = _('Closing Velocity scale -1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_DDD_tgts, up = device_commands.RADAR_DDD_tgts, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('Target size (no function) 1/0'), category = _('_My Buttons')},
{down = device_commands.RADAR_DDD_tgts, up = device_commands.RADAR_DDD_tgts, cockpit_device_id = devices.RADAR, value_down =-1.0, value_up = 0.0, name = _('Target size (no function) -1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_DDD_MLC, up = device_commands.RADAR_DDD_MLC, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('Main Lobe Clutter filter 1/0'), category = _('_My Buttons')},
{down = device_commands.RADAR_DDD_MLC, up = device_commands.RADAR_DDD_MLC, cockpit_device_id = devices.RADAR, value_down =-1.0, value_up = 0.0, name = _('Main Lobe Clutter filter -1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_stab_switch, up = device_commands.RADAR_stab_switch, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('Stabilize 1/0'), category = _('_My Buttons')},

{down = device_commands.RADAR_VSL_switch, up = device_commands.RADAR_VSL_switch, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _('VSL switch 1/0'), category = _('_My Buttons')},

-- WEAPONS
{down = device_commands.WEAP_Bomb_SinglePairs, up = device_commands.WEAP_Bomb_SinglePairs, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Bomb single/pairs 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_Bomb_StepRipple, up = device_commands.WEAP_Bomb_StepRipple, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Bomb step/ripple 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_AG_Gun, up = device_commands.WEAP_AG_Gun, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('A/G gun mode 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_Jett_RackWeapons, up = device_commands.WEAP_Jett_RackWeapons, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison racks/weapons 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_Jett_LeftTank, up = device_commands.WEAP_Jett_LeftTank, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison left tank 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_Jett_RightTank, up = device_commands.WEAP_Jett_RightTank, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison right tank 1/0'), category = _('_My Buttons')},

{down = device_commands.WEAP_Jett_Station1, up = device_commands.WEAP_Jett_Station1, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 1 1/0'), category = _('_My Buttons')},
{down = device_commands.WEAP_Jett_Station3, up = device_commands.WEAP_Jett_Station3, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 3 1/0'), category = _('_My Buttons')},
{down = device_commands.WEAP_Jett_Station4, up = device_commands.WEAP_Jett_Station4, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 4 1/0'), category = _('_My Buttons')},
{down = device_commands.WEAP_Jett_Station5, up = device_commands.WEAP_Jett_Station5, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 5 1/0'), category = _('_My Buttons')},
{down = device_commands.WEAP_Jett_Station6, up = device_commands.WEAP_Jett_Station6, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 6 1/0'), category = _('_My Buttons')},
{down = device_commands.WEAP_Jett_Station8, up = device_commands.WEAP_Jett_Station8, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Jettison station 8 1/0'), category = _('_My Buttons')},


-- DATALINK
{down = device_commands.DATALINK_power, up = device_commands.DATALINK_power, cockpit_device_id = devices.DATALINK, value_down = 1.0, value_up = 0.0, name = _('Datalink Power 1/0'), category = _('_My Buttons')},
{down = device_commands.DATALINK_power, up = device_commands.DATALINK_power, cockpit_device_id = devices.DATALINK, value_down =-1.0, value_up = 0.0, name = _('Datalink Power -1/0'), category = _('_My Buttons')},

{down = device_commands.DATALINK_tac_cains, up = device_commands.DATALINK_tac_cains, cockpit_device_id = devices.DATALINK, value_down = 1.0, value_up = 0.0, name = _('Datalink CAINS/TAC 1/0'), category = _('_My Buttons')},

{down = device_commands.BEACON_power_switch, up = device_commands.BEACON_power_switch, cockpit_device_id = devices.DATALINK, value_down = 1.0, value_up = 0.0, name = _('Beacon Power 1/0'), category = _('_My Buttons')},
{down = device_commands.BEACON_power_switch, up = device_commands.BEACON_power_switch, cockpit_device_id = devices.DATALINK, value_down =-1.0, value_up = 0.0, name = _('Beacon Power -1/0'), category = _('_My Buttons')},

-- LANTIRN
{down = device_commands.LANTIRN_PowerMode, up = device_commands.LANTIRN_PowerMode, cockpit_device_id = devices.LANTIRN, value_down = 1.0, value_up = 0.5, name = _('LANTIRN Power 1/0.5'), category = _('_My Buttons')},
{down = device_commands.LANTIRN_PowerMode, up = device_commands.LANTIRN_PowerMode, cockpit_device_id = devices.LANTIRN, value_down = 0.0, value_up = 0.5, name = _('LANTIRN Power 0/0.5'), category = _('_My Buttons')},

{down = device_commands.LANTIRN_Laser_ARM, up = device_commands.LANTIRN_Laser_ARM, cockpit_device_id = devices.LANTIRN, value_down = 1.0, value_up = 0.0, name = _('LANTIRN Laser Arm Switch 1/0'), category = _('_My Buttons')},

]]

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: end custom assignments
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- RIO HCU
{ up=device_commands.HCU_halfaction, down=device_commands.HCU_halfaction, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU half action'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_fullaction, down=device_commands.HCU_fullaction, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU full action'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_offset, down=device_commands.HCU_offset, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU offset'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_MRL, down=device_commands.HCU_MRL, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU MRL'),	 category=_('Hand Control Unit')},
{ up = device_commands.HCU_thumb, down = device_commands.HCU_thumb, cockpit_device_id=devices.RADAR, value_up = 0, value_down = 1, name = _('HCU thumb up'), category = _('Hand Control Unit')},
{ up = device_commands.HCU_thumb_center, down = device_commands.HCU_thumb_center, cockpit_device_id=devices.RADAR, value_up = 0, value_down = 1, name = _('HCU thumb re-center'), category = _('Hand Control Unit')},
{ up = device_commands.HCU_thumb, down = device_commands.HCU_thumb, cockpit_device_id=devices.RADAR, value_up = 0, value_down = -1, name = _('HCU thumb down'), category = _('Hand Control Unit')},

{ up=device_commands.HCU_IR_TV, down=device_commands.HCU_IR_TV, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU TCS mode'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_RDR, down=device_commands.HCU_RDR, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU radar mode'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_DDD_cursor, down=device_commands.HCU_DDD_cursor, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU DDD mode'),	 category=_('Hand Control Unit')},
{ up=device_commands.HCU_TID_cursor, down=device_commands.HCU_TID_cursor, cockpit_device_id=devices.HCU, value_up=0.0, value_down=1.0, 	name=_('HCU TID mode'),	 category=_('Hand Control Unit')},

{ up = device_commands.RADAR_elevation_updown, down = device_commands.RADAR_elevation_updown, cockpit_device_id=devices.RADAR, value_down = 1, value_up = 0, name = _('Radar elevation up'), category = _('Radar Control Panel')},
{ up = device_commands.RADAR_elevation_updown, down = device_commands.RADAR_elevation_updown, cockpit_device_id=devices.RADAR, value_down = -1, value_up = 0, name = _('Radar elevation down'), category = _('Radar Control Panel')},
{ up = device_commands.RADAR_azimuth_leftright, down = device_commands.RADAR_azimuth_leftright, cockpit_device_id=devices.RADAR, value_down = 1, value_up = 0, name = _('Radar azimuth right'), category = _('Radar Control Panel')},
{ up = device_commands.RADAR_azimuth_leftright, down = device_commands.RADAR_azimuth_leftright, cockpit_device_id=devices.RADAR, value_down = -1, value_up = 0, name = _('Radar azimuth left'), category = _('Radar Control Panel')},
{ up = device_commands.RADAR_elevation_center, down = device_commands.RADAR_elevation_center, cockpit_device_id=devices.RADAR, value_down = 1, value_up = 0, name = _('Radar elevation re-center'), category = _('Radar Control Panel')},
{ up = device_commands.RADAR_azimuth_center, down = device_commands.RADAR_azimuth_center, cockpit_device_id=devices.RADAR, value_down = 1, value_up = 0, name = _('Radar azimuth re-center'), category = _('Radar Control Panel')},
{ down = device_commands.RADAR_elevation_bars_change, cockpit_device_id=devices.RADAR, value_down = 1, name = _('Radar elevation bars increase'), category = _('Radar Control Panel')},
{ down = device_commands.RADAR_elevation_bars_change, cockpit_device_id=devices.RADAR, value_down = -1, name = _('Radar elevation bars decrease'), category = _('Radar Control Panel')},
{ down = device_commands.RADAR_azimuth_scan_change, cockpit_device_id=devices.RADAR, value_down = 1, name = _('Radar azimuth scan wider'), category = _('Radar Control Panel')},
{ down = device_commands.RADAR_azimuth_scan_change, cockpit_device_id=devices.RADAR, value_down = -1, name = _('Radar azimuth scan narrower'), category = _('Radar Control Panel')},

{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_PSRCH,   value_down = 1, up = device_commands.RADAR_DDD_WCS_PSRCH,   value_up = 0, name = _('RADAR Pulse Search'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_TWSMAN,  value_down = 1, up = device_commands.RADAR_DDD_WCS_TWSMAN,  value_up = 0, name = _('RADAR Track While Scan manual'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_TWSAUTO, value_down = 1, up = device_commands.RADAR_DDD_WCS_TWSAUTO, value_up = 0, name = _('RADAR Track While Scan auto'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_RWS,     value_down = 1, up = device_commands.RADAR_DDD_WCS_RWS,     value_up = 0, name = _('RADAR Range While Scan'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_PDSRCH,  value_down = 1, up = device_commands.RADAR_DDD_WCS_PDSRCH,  value_up = 0, name = _('RADAR Pulse Doppler Search'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_PSTT,    value_down = 1, up = device_commands.RADAR_DDD_WCS_PSTT,    value_up = 0, name = _('RADAR Pulse Single Target Track'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_WCS_PDSTT,   value_down = 1, up = device_commands.RADAR_DDD_WCS_PDSTT,   value_up = 0, name = _('RADAR Pulse Doppler Single Target Track'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_DDD_display_IFF, value_down = 1, up = device_commands.RADAR_DDD_display_IFF, value_up = 0, name = _('DDD Interrogate Friend or Foe'), category = _('Radar Control Panel')},

{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_VSL_switch, value_down = 1, up = device_commands.RADAR_VSL_switch, value_up = 0, name = _('VSL High'), category = _('Radar Control Panel')},
{ cockpit_device_id=devices.RADAR, down = device_commands.RADAR_VSL_switch, value_down = -1, up = device_commands.RADAR_VSL_switch, value_up = 0, name = _('VSL Low'), category = _('Radar Control Panel')},

})

-- joystick axes
join_override(res.axisCommands,{

--- FF axis start

--[[

-- RIO
{action = devices.BAROALTIMETER, cockpit_device_id=device_commands.RIOALTIMETER_Knob, name = _('Altimeter Pressure Setting')},

{action = devices.TACAN, cockpit_device_id=device_commands.TACAN_Knob_Vol_RIO, name = _('TACAN Volume')},

{action = devices.ICS, cockpit_device_id=device_commands.RADIO_ICS_Vol_RIO, name = _('ICS Volume RIO')},

{action = devices.ARC159, cockpit_device_id=device_commands.RADIO_UHF_VOL_RIO, name = _('UHF ARC-159 Volume RIO')},


{action = devices.ARC182, cockpit_device_id=device_commands.RADIO_VHF_VOL_RIO, name = _('VHF/UHF ARC-182 Volume RIO')},
{action = devices.ARC182, cockpit_device_id=device_commands.RADIO_VHF_BRT_RIO, name = _('VHF/UHF ARC-182 Display Brightness')},

{action = devices.ARC159, cockpit_device_id=device_commands.RADIO_UHF_Remote_DISP_BRT_RIO, name = _('UHF Radio Remote Display Brightness')},

{action = devices.RWR, cockpit_device_id=device_commands.RWR_Brightness_RIO, name = _('AN/ALR-67 Display Brightness')},

--RIO?
{action = devices.AHRS, cockpit_device_id=device_commands.AHRS_LatCorrection, name = _('Compass LAT Correction')},
{action = devices.WEAPONS, cockpit_device_id=device_commands.WEAP_Gun_Elevation, name = _('Gun Elevation Lead Adjustment')},
{action = devices.WEAPONS, cockpit_device_id=device_commands.WEAP_Gun_Ammo_adjust, name = _('Gun Ammunition Counter Adjustment')},

{action = devices.TID, cockpit_device_id=device_commands.TID_bright, name = _('TID Brightness')},

{action = devices.TID, cockpit_device_id=device_commands.TID_contrast, name = _('TID Contrast')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_DDD_bright, name = _('Brightness')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_DDD_pulse_vid, name = _('Pulse video')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_DDD_erase, name = _('Erase')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_DDD_pulse_gain, name = _('Pulse gain')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_PD_thresh_clutter, name = _('PD threshold clutter')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_elevation_center_knob, name = _('Radar elevation center')},

{action = devices.RADAR, cockpit_device_id=device_commands.RADAR_azimuth_center_knob, name = _('Radar azimuth center')},

]]

--- FF axis end

{combos={{key='JOY_X'}},action = device_commands.HCU_leftright, cockpit_device_id=devices.HCU, name = _('HCU left/right')},
{combos={{key='JOY_Y'}},action = device_commands.HCU_updown, cockpit_device_id=devices.HCU, name = _('HCU up/down')},
{action = device_commands.HCU_DualTriggerAxisThresh, cockpit_device_id=devices.HCU, name = _('HCU dual stage trigger (axis thresholds)')},
{action = device_commands.HCU_thumb_axis, cockpit_device_id=devices.RADAR, name = _('HCU vernier thumbwheel')},

{action = device_commands.LANTIRN_XAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN Slew X')},
{action = device_commands.LANTIRN_YAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN Slew Y')},
{action = device_commands.LANTIRN_TriggerAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN Trigger Axis (Latched, Lase, Designate)')},
{action = device_commands.LANTIRN_S4_XAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN S4 HAT X Axis (QDES)')},
{action = device_commands.LANTIRN_S4_YAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN S4 HAT Y Axis (QSNO, QHUD)')},
{action = device_commands.LANTIRN_S3_XAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN S3 HAT X Axis (WP-, WP+)')},
{action = device_commands.LANTIRN_S3_YAxis, cockpit_device_id=devices.LANTIRN, name = _('LANTIRN S3 HAT Y Axis (AREA, POINT)')},
{action = device_commands.RADIO_ICS_ButtonAxisThresh_ICS_RIO, cockpit_device_id=devices.ICS, name = _('ICS Button ICS (Intercom) PTT (axis threshold)')},
{action = device_commands.RADIO_ICS_ButtonAxisThresh_MIC_RIO, cockpit_device_id=devices.ICS, name = _('ICS Button MIC (UHF) PTT (axis threshold)')},
{action = device_commands.RADIO_ICS_ButtonAxisThresh_ICS_RIO_Export_Only, cockpit_device_id=devices.ICS, name = _('ICS Button ICS (Intercom) PTT (axis threshold) - SRS or VoIP Only / No Menu')},
{action = device_commands.RADIO_ICS_ButtonAxisThresh_MIC_RIO_Export_Only, cockpit_device_id=devices.ICS, name = _('ICS Button MIC (UHF) PTT (axis threshold) - SRS or VoIP Only / No Menu')},
{action = device_commands.RADAR_elevation_center_knob, cockpit_device_id=devices.RADAR, name = _('Radar elevation control')},
{action = device_commands.RADAR_azimuth_center_knob, cockpit_device_id=devices.RADAR, name = _('Radar azimuth control')},
{action = device_commands.RADAR_DDD_erase_axis, cockpit_device_id=devices.RADAR, name = _('DDD erase')},
{action = device_commands.RADAR_DDD_pulse_gain_axis, cockpit_device_id=devices.RADAR, name = _('DDD pulse gain')},

{action = device_commands.RADAR_azimuth_analog_adjust, cockpit_device_id=devices.RADAR, name = _('Radar azimuth relative adjustment')},
{action = device_commands.RADAR_elevation_analog_adjust, cockpit_device_id=devices.RADAR, name = _('Radar elevation relative adjustment')},
{action = device_commands.HCU_thumb_analog_adjust, cockpit_device_id=devices.RADAR, name = _('HCU vernier thumbwheel relative adjustment')},

{action = device_commands.TCS_Trim_az_axis, cockpit_device_id=devices.TCS, name = _('TCS azimuth trim axis')},
{action = device_commands.TCS_Trim_el_axis, cockpit_device_id=devices.TCS, name = _('TCS elevation trim axis')},

{action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
{action = iCommandViewZoomAbs				, name = _('Zoom View')},
{action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},

})

return res
