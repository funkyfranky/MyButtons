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

local res2 = external_profile(f14input.."F-14B-Pilot/keyboard/default.lua")
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
-- FF: begin custom assignments
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- BITPANAL
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  0/11, name = _('Master Test Selector 00/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  1/11, name = _('Master Test Selector 01/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  2/11, name = _('Master Test Selector 02/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  3/11, name = _('Master Test Selector 03/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  4/11, name = _('Master Test Selector 04/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  5/11, name = _('Master Test Selector 05/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  6/11, name = _('Master Test Selector 06/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  7/11, name = _('Master Test Selector 07/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  8/11, name = _('Master Test Selector 08/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down =  9/11, name = _('Master Test Selector 09/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down = 10/11, name = _('Master Test Selector 10/11'), category = _('_My Buttons')},
{down = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_down = 11/11, name = _('Master Test Selector 11/11'), category = _('_My Buttons')},

{pressed = device_commands.BIT_Selector, up = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_pressed =-1/11, value_up=0.0, name = _('Master Test Selector Decrease'), category = _('_My Buttons')},
{pressed = device_commands.BIT_Selector, up = device_commands.BIT_Selector, cockpit_device_id = devices.BITPANEL, value_pressed = 1/11, value_up=0.0, name = _('Master Test Selector Increase'), category = _('_My Buttons')},

{down = device_commands.BIT_SelectorPush, up = device_commands.BIT_SelectorPush, cockpit_device_id = devices.BITPANEL, value_down = 1.0, value_up = 0.0, name = _('Master Test Selector Push 1/0'), category = _('_My Buttons')},
{down = device_commands.BIT_SelectorPush, cockpit_device_id = devices.BITPANEL, value_down = 1.0, name = _('Master Test Selector Push 1'), category = _('_My Buttons')},
{down = device_commands.BIT_SelectorPush, cockpit_device_id = devices.BITPANEL, value_down = 0.0, name = _('Master Test Selector Push 0'), category = _('_My Buttons')},

-- HYDRAULICS
{down = device_commands.HYD_TRANSFER_PUMP_Switch, up = device_commands.HYD_TRANSFER_PUMP_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Transfer Pump Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_TRANSFER_PUMP_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Transfer Pump Switch 1'), category = _('_My Buttons')},
{down = device_commands.HYD_TRANSFER_PUMP_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Transfer Pump Switch 0'), category = _('_My Buttons')},

{down = device_commands.HYD_TRANSFER_PUMP_SwitchCover, up = device_commands.HYD_TRANSFER_PUMP_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Transfer Pump Switch Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_TRANSFER_PUMP_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Transfer Pump Switch Cover 1'), category = _('_My Buttons')},
{down = device_commands.HYD_TRANSFER_PUMP_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Transfer Pump Switch Cover 0'), category = _('_My Buttons')},

{down = device_commands.HYD_ISOL_Switch, up = device_commands.HYD_ISOL_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Isolation Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_ISOL_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Isolation Switch 1'), category = _('_My Buttons')},
{down = device_commands.HYD_ISOL_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Isolation Switch 0'), category = _('_My Buttons')},

{down = device_commands.HYD_EMERG_FLT_Switch, up = device_commands.HYD_EMERG_FLT_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Emergency Flight Control Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_Switch, up = device_commands.HYD_EMERG_FLT_Switch, cockpit_device_id = devices.HYDRAULICS, value_down =-1.0, value_up = 0.0, name = _('Hydraulic Emergency Flight Control Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Emergency Flight Control Switch 1'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_Switch, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Emergency Flight Control Switch 0'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_Switch, cockpit_device_id = devices.HYDRAULICS, value_down =-1.0, name = _('Hydraulic Emergency Flight Control Switch -1'), category = _('_My Buttons')},

{down = device_commands.HYD_EMERG_FLT_SwitchCover, up = device_commands.HYD_EMERG_FLT_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Emergency Flight Control Switch Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Emergency Flight Control Switch Cover 1'), category = _('_My Buttons')},
{down = device_commands.HYD_EMERG_FLT_SwitchCover, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Emergency Flight Control Switch Cover 0'), category = _('_My Buttons')},

{down = device_commands.HYD_HandPump, up = device_commands.HYD_HandPump, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, value_up = 0.0, name = _('Hydraulic Hand Pump 1/0'), category = _('_My Buttons')},
{down = device_commands.HYD_HandPump, cockpit_device_id = devices.HYDRAULICS, value_down = 1.0, name = _('Hydraulic Hand Pump 1'), category = _('_My Buttons')},
{down = device_commands.HYD_HandPump, cockpit_device_id = devices.HYDRAULICS, value_down = 0.0, name = _('Hydraulic Hand Pump 0'), category = _('_My Buttons')},

-- AICS
{down = device_commands.INLET_RAMPS_LeftSwitch, up = device_commands.INLET_RAMPS_LeftSwitch, cockpit_device_id = devices.AICS, value_down = 1.0, value_up = 0.0, name = _('Stow Inlet Ramps Left Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.INLET_RAMPS_LeftSwitch, cockpit_device_id = devices.AICS, value_down = 1.0, name = _('Stow Inlet Ramps Left Switch 1'), category = _('_My Buttons')},
{down = device_commands.INLET_RAMPS_LeftSwitch, cockpit_device_id = devices.AICS, value_down = 0.0, name = _('Stow Inlet Ramps Left Switch 0'), category = _('_My Buttons')},

{down = device_commands.INLET_RAMPS_RightSwitch, up = device_commands.INLET_RAMPS_RightSwitch, cockpit_device_id = devices.AICS, value_down = 1.0, value_up = 0.0, name = _('Stow Inlet Ramps Right Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.INLET_RAMPS_RightSwitch, cockpit_device_id = devices.AICS, value_down = 1.0, name = _('Stow Inlet Ramps Right Switch 1'), category = _('_My Buttons')},
{down = device_commands.INLET_RAMPS_RightSwitch, cockpit_device_id = devices.AICS, value_down = 0.0, name = _('Stow Inlet Ramps Right Switch 0'), category = _('_My Buttons')},

-- BAROALTIMETER
{down = device_commands.RIOALTIMETER_Mode, up = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down = 1.0, value_up = 0.0, name = _('Altimeter Mode Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.RIOALTIMETER_Mode, up = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down =-1.0, value_up = 0.0, name = _('Altimeter Mode Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down = 1.0, name = _('Altimeter Mode Switch 1'), category = _('_My Buttons')},
{down = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down = 0.0, name = _('Altimeter Mode Switch 0'), category = _('_My Buttons')},
{down = device_commands.RIOALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down =-1.0, name = _('Altimeter Mode Switch -1'), category = _('_My Buttons')},

-- GEARHOOK
{down = device_commands.GEAR_Strut, up = device_commands.GEAR_Strut, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, value_up = 0.0, name = _('Nose Strut Compression Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.GEAR_Strut, up = device_commands.GEAR_Strut, cockpit_device_id = devices.GEARHOOK, value_down =-1.0, value_up = 0.0, name = _('Nose Strut Compression Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.GEAR_Strut, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, name = _('Nose Strut Compression Switch 1'), category = _('_My Buttons')},
{down = device_commands.GEAR_Strut, cockpit_device_id = devices.GEARHOOK, value_down = 0.0, name = _('Nose Strut Compression Switch 0'), category = _('_My Buttons')},
{down = device_commands.GEAR_Strut, cockpit_device_id = devices.GEARHOOK, value_down =-1.0, name = _('Nose Strut Compression Switch -1'), category = _('_My Buttons')},

{down = device_commands.BRAKE_AntiSkidAndSpoilerBrake, up = device_commands.BRAKE_AntiSkidAndSpoilerBrake, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, value_up = 0.0, name = _('Anti-Skid Spoiler BK Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.BRAKE_AntiSkidAndSpoilerBrake, up = device_commands.BRAKE_AntiSkidAndSpoilerBrake, cockpit_device_id = devices.GEARHOOK, value_down =-1.0, value_up = 0.0, name = _('Anti-Skid Spoiler BK Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.BRAKE_AntiSkidAndSpoilerBrake, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, name = _('Anti-Skid Spoiler BK Switch 1'), category = _('_My Buttons')},
{down = device_commands.BRAKE_AntiSkidAndSpoilerBrake, cockpit_device_id = devices.GEARHOOK, value_down = 0.0, name = _('Anti-Skid Spoiler BK Switch 0'), category = _('_My Buttons')},
{down = device_commands.BRAKE_AntiSkidAndSpoilerBrake, cockpit_device_id = devices.GEARHOOK, value_down =-1.0, name = _('Anti-Skid Spoiler BK Switch -1'), category = _('_My Buttons')},

{down = device_commands.BRAKE_ParkingBrake, up = device_commands.BRAKE_ParkingBrake, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, value_up = 0.0, name = _('Parking Brake Handle 1/0'), category = _('_My Buttons')},
{down = device_commands.BRAKE_ParkingBrake, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, name = _('Parking Brake Handle 1'), category = _('_My Buttons')},
{down = device_commands.BRAKE_ParkingBrake, cockpit_device_id = devices.GEARHOOK, value_down = 0.0, name = _('Parking Brake Handle 0'), category = _('_My Buttons')},

{down = device_commands.GEAR_LaunchBarAbortCover, up = device_commands.GEAR_LaunchBarAbortCover, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, value_up = 0.0, name = _('Launch Bar Abort Switch Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.GEAR_LaunchBarAbortCover, cockpit_device_id = devices.GEARHOOK, value_down = 1.0, name = _('Launch Bar Abort Switch Cover 1'), category = _('_My Buttons')},
{down = device_commands.GEAR_LaunchBarAbortCover, cockpit_device_id = devices.GEARHOOK, value_down = 0.0, name = _('Launch Bar Abort Switch Cover 0'), category = _('_My Buttons')},

-- SAS
{down = device_commands.AFCS_Stability_Pitch, up = device_commands.AFCS_Stability_Pitch, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('AFCS Stability Augmentation - Pitch 1/0'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Pitch, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('AFCS Stability Augmentation - Pitch 1'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Pitch, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('AFCS Stability Augmentation - Pitch 0'), category = _('_My Buttons')},

{down = device_commands.AFCS_Stability_Roll, up = device_commands.AFCS_Stability_Roll, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('AFCS Stability Augmentation - Roll 1/0'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Roll, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('AFCS Stability Augmentation - Roll 1'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Roll, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('AFCS Stability Augmentation - Roll 0'), category = _('_My Buttons')},

{down = device_commands.AFCS_Stability_Yaw, up = device_commands.AFCS_Stability_Yaw, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('AFCS Stability Augmentation - Yaw 1/0'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Yaw, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('AFCS Stability Augmentation - Yaw 1'), category = _('_My Buttons')},
{down = device_commands.AFCS_Stability_Yaw, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('AFCS Stability Augmentation - Yaw 0'), category = _('_My Buttons')},

{down = device_commands.AP_Vector, up = device_commands.AP_Vector, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('Autopilot - Vector / Automatic Carrier Landing 1/0'), category = _('_My Buttons')},
{down = device_commands.AP_Vector, up = device_commands.AP_Vector, cockpit_device_id = devices.AFCS, value_down =-1.0, value_up = 0.0, name = _('Autopilot - Vector / Automatic Carrier Landing -1/0'), category = _('_My Buttons')},
{down = device_commands.AP_Vector, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('Autopilot - Vector / Automatic Carrier Landing 1'), category = _('_My Buttons')},
{down = device_commands.AP_Vector, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('Autopilot - Vector / Automatic Carrier Landing 0'), category = _('_My Buttons')},
{down = device_commands.AP_Vector, cockpit_device_id = devices.AFCS, value_down =-1.0, name = _('Autopilot - Vector / Automatic Carrier Landing -1'), category = _('_My Buttons')},

{down = device_commands.AP_Altitude, up = device_commands.AP_Altitude, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('Autopilot - Altitude Hold 1/0'), category = _('_My Buttons')},
{down = device_commands.AP_Altitude, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('Autopilot - Altitude Hold 1'), category = _('_My Buttons')},
{down = device_commands.AP_Altitude, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('Autopilot - Altitude Hold 0'), category = _('_My Buttons')},

{down = device_commands.AP_Heading, up = device_commands.AP_Heading, cockpit_device_id = devices.AFCS, value_down = 1.0, value_up = 0.0, name = _('Autopilot - Heading / Ground Track 1/0'), category = _('_My Buttons')},
{down = device_commands.AP_Heading, up = device_commands.AP_Heading, cockpit_device_id = devices.AFCS, value_down =-1.0, value_up = 0.0, name = _('Autopilot - Heading / Ground Track -1/0'), category = _('_My Buttons')},
{down = device_commands.AP_Heading, cockpit_device_id = devices.AFCS, value_down = 1.0, name = _('Autopilot - Heading / Ground Track 1'), category = _('_My Buttons')},
{down = device_commands.AP_Heading, cockpit_device_id = devices.AFCS, value_down = 0.0, name = _('Autopilot - Heading / Ground Track 0'), category = _('_My Buttons')},

-- ENGINE
{down = device_commands.THROTTLE_Left_Throttle_CutOff, up = device_commands.THROTTLE_Left_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Left Engine Fuel Cutoff 1/0'), category = _('_My Buttons')},
{down = device_commands.THROTTLE_Left_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Left Engine Fuel Cutoff 1'), category = _('_My Buttons')},
{down = device_commands.THROTTLE_Left_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Left Engine Fuel Cutoff 0'), category = _('_My Buttons')},

{down = device_commands.THROTTLE_Right_Throttle_CutOff, up = device_commands.THROTTLE_Right_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Right Engine Fuel Cutoff 1/0'), category = _('_My Buttons')},
{down = device_commands.THROTTLE_Right_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Right Engine Fuel Cutoff 1'), category = _('_My Buttons')},
{down = device_commands.THROTTLE_Right_Throttle_CutOff, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Right Engine Fuel Cutoff 0'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Throttle_Mode, up = device_commands.ENGINE_Throttle_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Throttle Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Mode, up = device_commands.ENGINE_Throttle_Mode, cockpit_device_id = devices.ENGINE, value_down =-1.0, value_up = 0.0, name = _('Throttle Mode -1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Throttle Mode 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Mode, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Throttle Mode 0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Mode, cockpit_device_id = devices.ENGINE, value_down =-1.0, name = _('Throttle Mode -1'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Throttle_Temp, up = device_commands.ENGINE_Throttle_Temp, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Throttle Temp 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Temp, up = device_commands.ENGINE_Throttle_Temp, cockpit_device_id = devices.ENGINE, value_down =-1.0, value_up = 0.0, name = _('Throttle Temp -1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Temp, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Throttle Temp 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Temp, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Throttle Temp 0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Throttle_Temp, cockpit_device_id = devices.ENGINE, value_down =-1.0, name = _('Throttle Temp -1'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Probe_Anti_Ice, up = device_commands.ENGINE_Probe_Anti_Ice, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Engine/Probe Anti-Ice 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Probe_Anti_Ice, up = device_commands.ENGINE_Probe_Anti_Ice, cockpit_device_id = devices.ENGINE, value_down =-1.0, value_up = 0.0, name = _('Engine/Probe Anti-Ice -1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Probe_Anti_Ice, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Engine/Probe Anti-Ice 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Probe_Anti_Ice, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Engine/Probe Anti-Ice 0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Probe_Anti_Ice, cockpit_device_id = devices.ENGINE, value_down =-1.0, name = _('Engine/Probe Anti-Ice -1'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Air_Start, up = device_commands.ENGINE_Air_Start, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Engine Airstart 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Air_Start, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Engine Airstart 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Air_Start, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Engine Airstart 0'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Left_Mode, up = device_commands.ENGINE_Left_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Left Engine Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Left_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Left Engine Mode 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Left_Mode, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Left Engine Mode 0'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Right_Mode, up = device_commands.ENGINE_Right_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Right Engine Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Right_Mode, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Right Engine Mode 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Right_Mode, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Right Engine Mode 0'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Asym_LimiterCover, up = device_commands.ENGINE_Asym_LimiterCover, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Asymmetric Thrust Limiter Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Asym_LimiterCover, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Asymmetric Thrust Limiter Cover 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Asym_LimiterCover, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Asymmetric Thrust Limiter Cover 0'), category = _('_My Buttons')},

{down = device_commands.ENGINE_Asym_Limiter, up = device_commands.ENGINE_Asym_Limiter, cockpit_device_id = devices.ENGINE, value_down = 1.0, value_up = 0.0, name = _('Asymmetric Thrust Limiter 1/0'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Asym_Limiter, cockpit_device_id = devices.ENGINE, value_down = 1.0, name = _('Asymmetric Thrust Limiter 1'), category = _('_My Buttons')},
{down = device_commands.ENGINE_Asym_Limiter, cockpit_device_id = devices.ENGINE, value_down = 0.0, name = _('Asymmetric Thrust Limiter 0'), category = _('_My Buttons')},

-- FUELSYSTEM
{down = device_commands.FUELSYSTEM_Fuel_Feed, up = device_commands.FUELSYSTEM_Fuel_Feed, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Fuel Feed 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed, up = device_commands.FUELSYSTEM_Fuel_Feed, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, value_up = 0.0, name = _('Fuel Feed -1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, name = _('Fuel Feed 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, name = _('Fuel Feed 0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, name = _('Fuel Feed -1'), category = _('_My Buttons')},

{down = device_commands.FUELSYSTEM_Fuel_Feed_Cover, up = device_commands.FUELSYSTEM_Fuel_Feed_Cover, cockpit_device_id = devices.FUELSYSTEM, value_down =1.0, value_up = 0.0, name = _('Fuel Feed Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed_Cover, cockpit_device_id = devices.FUELSYSTEM, value_down =1.0, name = _('Fuel Feed Cover 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Feed_Cover, cockpit_device_id = devices.FUELSYSTEM, value_down =0.0, name = _('Fuel Feed Cover 0'), category = _('_My Buttons')},

{down = device_commands.FUELSYSTEM_WingExt_Trans, up = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Wing/Ext Trans 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, up = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, value_up = 0.0, name = _('Wing/Ext Trans -1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, name = _('Wing/Ext Trans 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, name = _('Wing/Ext Trans 0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, name = _('Wing/Ext Trans -1'), category = _('_My Buttons')},

{down = device_commands.FUELSYSTEM_Dump, up = device_commands.FUELSYSTEM_Dump, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Fuel Dump 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Dump, up = device_commands.FUELSYSTEM_Dump, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, value_up = 1.0, name = _('Fuel Dump 0/1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Dump, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, name = _('Fuel Dump 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Dump, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, name = _('Fuel Dump 0'), category = _('_My Buttons')},

{down = device_commands.FUELSYSTEM_Refuel_Probe, up = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Refuel Probe 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, up = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, value_up = 0.0, name = _('Refuel Probe -1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, name = _('Refuel Probe 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, name = _('Refuel Probe 0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, name = _('Refuel Probe -1'), category = _('_My Buttons')},

{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel, up = device_commands.FUELSYSTEM_Fuel_Qty_Sel, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Fuel Quantity Selector 1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel, up = device_commands.FUELSYSTEM_Fuel_Qty_Sel, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, value_up = 0.0, name = _('Fuel Quantity Selector -1/0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel, cockpit_device_id = devices.FUELSYSTEM, value_down = 1.0, name = _('Fuel Quantity Selector 1'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel, cockpit_device_id = devices.FUELSYSTEM, value_down = 0.0, name = _('Fuel Quantity Selector 0'), category = _('_My Buttons')},
{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel, cockpit_device_id = devices.FUELSYSTEM, value_down =-1.0, name = _('Fuel Quantity Selector -1'), category = _('_My Buttons')},


-- ELECTRICS
{down = device_commands.ELEC_MASTER_GEN_LeftSwitch, up = device_commands.ELEC_MASTER_GEN_LeftSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Left Generator Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_LeftSwitch, up = device_commands.ELEC_MASTER_GEN_LeftSwitch, cockpit_device_id = devices.ELECTRICS, value_down =-1.0, value_up = 0.0, name = _('Left Generator Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_LeftSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, name = _('Left Generator Switch 1'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_LeftSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 0.0, name = _('Left Generator Switch 0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_LeftSwitch, cockpit_device_id = devices.ELECTRICS, value_down =-1.0, name = _('Left Generator Switch -1'), category = _('_My Buttons')},

{down = device_commands.ELEC_MASTER_GEN_RightSwitch, up = device_commands.ELEC_MASTER_GEN_RightSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Right Generator Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_RightSwitch, up = device_commands.ELEC_MASTER_GEN_RightSwitch, cockpit_device_id = devices.ELECTRICS, value_down =-1.0, value_up = 0.0, name = _('Right Generator Switch -1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_RightSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, name = _('Right Generator Switch 1'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_RightSwitch, cockpit_device_id = devices.ELECTRICS, value_down = 0.0, name = _('Right Generator Switch 0'), category = _('_My Buttons')},
{down = device_commands.ELEC_MASTER_GEN_RightSwitch, cockpit_device_id = devices.ELECTRICS, value_down =-1.0, name = _('Right Generator Switch -1'), category = _('_My Buttons')},

{down = device_commands.ELEC_EMERG_GEN_Switch, up = device_commands.ELEC_EMERG_GEN_Switch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Emergency Generator Switch 1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_EMERG_GEN_Switch, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, name = _('Emergency Generator Switch 1'), category = _('_My Buttons')},
{down = device_commands.ELEC_EMERG_GEN_Switch, cockpit_device_id = devices.ELECTRICS, value_down = 0.0, name = _('Emergency Generator Switch 0'), category = _('_My Buttons')},

{down = device_commands.ELEC_EMERG_GEN_SwitchCover, up = device_commands.ELEC_EMERG_GEN_SwitchCover, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Emergency Generator Switch Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.ELEC_EMERG_GEN_SwitchCover, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, name = _('Emergency Generator Switch Cover 1'), category = _('_My Buttons')},
{down = device_commands.ELEC_EMERG_GEN_SwitchCover, cockpit_device_id = devices.ELECTRICS, value_down = 0.0, name = _('Emergency Generator Switch Cover 0'), category = _('_My Buttons')},

-- COCKPITMECHANICS
{down = device_commands.CabinPressureDump, up = device_commands.CabinPressureDump, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Cabin Pressure Dump 1/0'), category = _('_My Buttons')},
{down = device_commands.CabinPressureDump, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Cabin Pressure Dump 1'), category = _('_My Buttons')},
{down = device_commands.CabinPressureDump, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Cabin Pressure Dump 0'), category = _('_My Buttons')},

{down = device_commands.WindShield_Air, up = device_commands.WindShield_Air, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Wind Shield Air 1/0'), category = _('_My Buttons')},
{down = device_commands.WindShield_Air, up = device_commands.WindShield_Air, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('Wind Shield Air -1/0'), category = _('_My Buttons')},
{down = device_commands.WindShield_Air, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Wind Shield Air 1'), category = _('_My Buttons')},
{down = device_commands.WindShield_Air, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Wind Shield Air 0'), category = _('_My Buttons')},
{down = device_commands.WindShield_Air, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, name = _('Wind Shield Air -1'), category = _('_My Buttons')},

{down = device_commands.TempAutoMan, up = device_commands.TempAutoMan, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Temp Auto / Man 1/0'), category = _('_My Buttons')},
{down = device_commands.TempAutoMan, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Temp Auto / Man 1'), category = _('_My Buttons')},
{down = device_commands.TempAutoMan, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Temp Auto / Man 0'), category = _('_My Buttons')},

{down = device_commands.RamAir, up = device_commands.RamAir, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Ram Air 1/0'), category = _('_My Buttons')},
{down = device_commands.RamAir, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Ram Air 1'), category = _('_My Buttons')},
{down = device_commands.RamAir, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Ram Air 0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_Taxi, up = device_commands.LIGHTS_Taxi, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Taxi Light 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_Taxi, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Taxi Light 1'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_Taxi, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Taxi Light 0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_RedFlood, up = device_commands.LIGHTS_RedFlood, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Red Flood Light 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_RedFlood, up = device_commands.LIGHTS_RedFlood, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('Red Flood Light -1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_WhiteFlood, up = device_commands.LIGHTS_WhiteFlood, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('White Flood Light 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_WhiteFlood, up = device_commands.LIGHTS_WhiteFlood, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('White Flood Light -1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_PositionWings, up = device_commands.LIGHTS_PositionWings, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Position Lights Wing 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_PositionWings, up = device_commands.LIGHTS_PositionWings, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('Position Lights Wing -1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_PositionTail, up = device_commands.LIGHTS_PositionTail, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Position Lights Tail 1/0'), category = _('_My Buttons')},
{down = device_commands.LIGHTS_PositionTail, up = device_commands.LIGHTS_PositionTail, cockpit_device_id = devices.COCKPITMECHANICS, value_down =-1.0, value_up = 0.0, name = _('Position Lights Tail -1/0'), category = _('_My Buttons')},

{down = device_commands.LIGHTS_PositionFlash, up = device_commands.LIGHTS_PositionFlash, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Position Lights Flash 1/0'), category = _('_My Buttons')},

{down=device_commands.LIGHTS_Exterior_Master_Switch, up=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, value_down=1.0, name=_('Exterior Lights Master Switch OFF/ON'),   category=_('_My Buttons')},

{down = device_commands.LIGHTS_AntiCol, up = device_commands.LIGHTS_AntiCol, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Anti-Collision Lights 1/0'), category = _('_My Buttons')},

{down = device_commands.PilotOxygenOn, up = device_commands.PilotOxygenOn, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Oxygen ON/OFF'), category = _('_My Buttons')},
{down = device_commands.PilotOxygenOn, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Oxygen ON'), category = _('_My Buttons')},
{down = device_commands.PilotOxygenOn, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Oxygen OFF'), category = _('_My Buttons')},

{down = device_commands.EJECT_ArmPilot, up = device_commands.EJECT_ArmPilotK, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, value_up = 0.0, name = _('Ejection Seat Safety 1/0'), category = _('_My Buttons')},
{down = device_commands.EJECT_ArmPilot, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 1.0, name = _('Ejection Seat Safety 1'), category = _('_My Buttons')},
{down = device_commands.EJECT_ArmPilot, cockpit_device_id = devices.COCKPITMECHANICS, value_down = 0.0, name = _('Ejection Seat Safety 0'), category = _('_My Buttons')},

-- VDI
{down = device_commands.DISP_VDI_power, up = device_commands.DISP_VDI_power, cockpit_device_id = devices.VDI, value_down = 1.0, value_up = 0.0, name = _('VDI Power On/Off 1/0'), category = _('_My Buttons')},
{down = device_commands.DISP_VDI_display_mode, up = device_commands.DISP_VDI_display_mode, cockpit_device_id = devices.VDI, value_down = 1.0, value_up = 0.0, name = _('VDI Display Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.DISP_VDI_landing_mode, up = device_commands.DISP_VDI_landing_mode, cockpit_device_id = devices.VDI, value_down = 1.0, value_up = 0.0, name = _('VDI Landing Mode 1/0'), category = _('_My Buttons')},

-- HUD
{down = device_commands.DISP_HUD_power, up = device_commands.DISP_HUD_power, cockpit_device_id = devices.HUD, value_down = 1.0, value_up = 0.0, name = _('HUD Power On/Off 1/0'), category = _('_My Buttons')},
{down = device_commands.DISP_HUD_declutter, up = device_commands.DISP_HUD_declutter, cockpit_device_id = devices.HUD, value_down = 1.0, value_up = 0.0, name = _('HUD De-clutter On/Off 1/0'), category = _('_My Buttons')},
{down = device_commands.DISP_HUD_AWL_mode, up = device_commands.DISP_HUD_AWL_mode, cockpit_device_id = devices.HUD, value_down = 1.0, value_up = 0.0, name = _('HUD AWL Mode 1/0'), category = _('_My Buttons')},

-- HSD
{down = device_commands.DISP_HSD_ECMD_power, up = device_commands.DISP_HSD_ECMD_power, cockpit_device_id = devices.HSD, value_down = 1.0, value_up = 0.0, name = _('HSD/ECMD Power On/Off 1/0'), category = _('_My Buttons')},
{down = device_commands.HSD_Display_Mode_Cycle, up = device_commands.HSD_Display_Mode_Cycle, cockpit_device_id = devices.HSD, value_down = 1.0, value_up = 0.0, name = _('HSD Display Mode 1/0'), category = _('_My Buttons')},
{down = device_commands.HSD_ECM_Override, up = device_commands.HSD_ECM_Override, cockpit_device_id = devices.HSD, value_down = 1.0, value_up = 0.0, name = _('HSD ECM Override 1/0'), category = _('_My Buttons')},

-- TACAN
{down = device_commands.TACAN_Mode_Norm_Inv_Pilot, up = device_commands.TACAN_Mode_Norm_Inv_Pilot, cockpit_device_id = devices.TACAN, value_down = 1.0, value_up = 0.0, name = _('TACAN Mode Normal/Inverse 1/0'), category = _('_My Buttons')},

{down = device_commands.TACAN_Mode_X_Y_Pilot, up = device_commands.TACAN_Mode_X_Y_Pilot, cockpit_device_id = devices.TACAN, value_down = 1.0, value_up = 0.0, name = _('TACAN Channel X/Y 1/0'), category = _('_My Buttons')},

-- ILS
{down = device_commands.ARA63_Power_Switch, up = device_commands.ARA63_Power_Switch, cockpit_device_id = devices.ILS, value_down = 1.0, value_up = 0.0, name = _('AN/ARA-63 Power Switch 1/0'), category = _('_My Buttons')},

{down = device_commands.RADIO_ICS_Func_Pilot, up = device_commands.RADIO_ICS_Func_Pilot, cockpit_device_id = devices.ILS, value_down = 1.0, value_up = 0.0, name = _('ICS Function Selector 1/0'), category = _('_My Buttons')},
{down = device_commands.RADIO_ICS_Func_Pilot, up = device_commands.RADIO_ICS_Func_Pilot, cockpit_device_id = devices.ILS, value_down =-1.0, value_up = 0.0, name = _('ICS Function Selector -1/0'), category = _('_My Buttons')},

-- RWR
{down = device_commands.RWR_POWER, up = device_commands.RWR_POWER, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 0.0, name = _('AN/ALR-67 Power 1/0'), category = _('_My Buttons')},

-- ELECTRONICS
{down = device_commands.SPOIL_Inboard_Override, up = device_commands.SPOIL_Inboard_Override, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Inboard Spoiler Override 1/0'), category = _('_My Buttons')},
{down = device_commands.SPOIL_Outboard_Override, up = device_commands.SPOIL_Outboard_Override, cockpit_device_id = devices.ELECTRICS, value_down = 1.0, value_up = 0.0, name = _('Outboard Spoiler Override 1/0'), category = _('_My Buttons')},

-- WINGSWEEP
{down = device_commands.WINGSWEEP_EmergencySweepCover, up = device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, value_up = 0.0, name = _('Emergency Wing Sweep Handle Cover 1/0'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, name = _('Emergency Wing Sweep Handle Cover 1'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id = devices.WINGSWEEP, value_down = 0.0, name = _('Emergency Wing Sweep Handle Cover 0'), category = _('_My Buttons')},

{down = device_commands.WINGSWEEP_EmergencySweepLever, up = device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, value_up = 0.0, name = _('Emergency Wing Sweep Handle 1/0'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepLever, up = device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id = devices.WINGSWEEP, value_down =-1.0, value_up = 0.0, name = _('Emergency Wing Sweep Handle -1/0'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, name = _('Emergency Wing Sweep Handle 1'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id = devices.WINGSWEEP, value_down = 0.0, name = _('Emergency Wing Sweep Handle 0'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id = devices.WINGSWEEP, value_down =-1.0, name = _('Emergency Wing Sweep Handle -1'), category = _('_My Buttons')},

{down = device_commands.WINGSWEEP_EmergencyLeverExtended, up = device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, value_up = 0.0, name = _('Emergency Wing Sweep Handle Pop Out 1/0'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id = devices.WINGSWEEP, value_down = 1.0, name = _('Emergency Wing Sweep Handle Pop Out 1'), category = _('_My Buttons')},
{down = device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id = devices.WINGSWEEP, value_down = 0.0, name = _('Emergency Wing Sweep Handle Pop Out 0'), category = _('_My Buttons')},

{pressed = device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id = devices.WINGSWEEP, value_pressed = 1.0, name = _('Emergency Wing Sweep Handle Cover Press 1'), category = _('_My Buttons')},
{pressed = device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id = devices.WINGSWEEP, value_pressed = 0.0, name = _('Emergency Wing Sweep Handle Cover Press 0'), category = _('_My Buttons')},

{up=device_commands.WINGSWEEP_EmergencyLeverExtended, down=device_commands.WINGSWEEP_EmergencySweepCover, cockpit_device_id=devices.WINGSWEEP, value_up=1.0, value_down=1.0, name=_('Emergency Wing Sweep Open & Extend'),	 category=_('_My Buttons')},
{up=device_commands.WINGSWEEP_EmergencySweepCover, down=device_commands.WINGSWEEP_EmergencySweepLever, pressed=device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id=devices.WINGSWEEP, value_down=0.30, value_pressed=0.0, value_up=0.0, name=_('Emergency Wing Sweep to 68°, Lock & Close'), category=_('_My Buttons')},
{up=device_commands.WINGSWEEP_EmergencySweepCover, down=device_commands.WINGSWEEP_EmergencySweepLever, pressed=device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id=devices.WINGSWEEP, value_down=1.00, value_pressed=0.0, value_up=0.0, name=_('Emergency Wing Sweep Forward, Lock & Close'), category=_('_My Buttons')},

{up=device_commands.WINGSWEEP_EmergencySweepCover, pressed=device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id=devices.WINGSWEEP, value_pressed=0.0, value_up=0.0, name=_('Emergency Wing Sweep Lock & Close'), category=_('_My Buttons')},
{up=device_commands.WINGSWEEP_EmergencySweepCover, pressed=device_commands.WINGSWEEP_EmergencyLeverExtended, cockpit_device_id=devices.WINGSWEEP, value_pressed=1.0, value_up=1.0, name=_('Emergency Wing Sweep Unlock & Open'), category=_('_My Buttons')},


-- AOASYSTEM
{down = device_commands.AoA_HookBypass, up = device_commands.AoA_HookBypass, cockpit_device_id = devices.AOASYSTEM, value_down = 1.0, value_up = 0.0, name = _('Hook Bypass 1/0'), category = _('_My Buttons')},


-- RADARALTIMETER
{down = device_commands.RADARALT_Test, up = device_commands.RADARALT_Test, cockpit_device_id = devices.RADARALTIMETER, value_down = 1.0, value_up = 0.0, name = _('Radar Altimeter Uncage 1/0'), category = _('_My Buttons')},

-- ARC-159
{pressed = device_commands.RADIO_UHF_FREQ_MODE_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = 0.5, value_up = 0, name = _('UHF ARC-159 Mode CW'), category = _('_My Buttons')},
{pressed = device_commands.RADIO_UHF_FREQ_MODE_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = -0.5, value_up = 0, name = _('UHF ARC-159 Mode CCW'), category = _('_My Buttons')},

{pressed = device_commands.RADIO_UHF_CHAN_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = 1/3, value_up = 0, name = _('UHF ARC-159 CHAN SEL CW'), category = _('_My Buttons')},
{pressed = device_commands.RADIO_UHF_CHAN_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = -1/3, value_up = 0, name = _('UHF ARC-159 CHAN SEL CCW'), category = _('_My Buttons')},

{down=device_commands.CANOPY_Open, up=device_commands.CANOPY_Open, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0,  value_up=0.0, name=_('Canopy OPEN/HOLD'),  category=_('_My Buttons')},
{down=device_commands.CANOPY_Open, up=device_commands.CANOPY_Open, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, value_up=0.0, name=_('Canopy CLOSE/HOLD'), category=_('_My Buttons')},
{down=device_commands.CANOPY_Open, up=device_commands.CANOPY_Open, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, value_up=0.0, name=_('Canopy OPEN/CLOSE'), category=_('_My Buttons')},


{down=device_commands.RADARALT_Test, up=device_commands.RADARALT_Test, cockpit_device_id=devices.RADARALTIMETER, value_down=1.0, value_up=0.0, name=_('Radar Alt Control Knob - PUSH'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.RADARALT_Knob, up=device_commands.RADARALT_Knob, cockpit_device_id=devices.RADARALTIMETER, value_pressed=0.01, value_up=0.0, name=_('Radar Alt Control Knob CW'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.RADARALT_Knob, up=device_commands.RADARALT_Knob, cockpit_device_id=devices.RADARALTIMETER, value_pressed=-0.01, value_up=0.0, name=_('Radar Alt Control Knob CCW'), category=_('_My Buttons')}, -- *** CUSTOM ***

{down=device_commands.ALTIMETER_Mode, up=device_commands.ALTIMETER_Mode, cockpit_device_id=devices.BAROALTIMETER, value_down=-1.0, value_up=0.0, name=_('Altimeter Mode Select - STBY'), category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.ALTIMETER_Mode, up=device_commands.ALTIMETER_Mode, cockpit_device_id=devices.BAROALTIMETER, value_down=1.0, value_up=0.0, name=_('Altimeter Mode Select - RESET'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.ALTIMETER_Knob, up=device_commands.ALTIMETER_Knob, cockpit_device_id=devices.BAROALTIMETER, value_pressed=0.05, value_up=0.0, name=_('Altimeter Baroset Knob CW'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.ALTIMETER_Knob, up=device_commands.ALTIMETER_Knob, cockpit_device_id=devices.BAROALTIMETER, value_pressed=-0.05, value_up=0.0, name=_('Altimeter Baroset Knob CCW'), category=_('_My Buttons')}, -- *** CUSTOM ***

{down=device_commands.AIRSPEED_KnobSwitch, cockpit_device_id=devices.MACHANDAIRSPEED, value_down=1.0, name=_('Airspeed/Mach Indicator Index Knob - PUSH'), category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.AIRSPEED_KnobSwitch, cockpit_device_id=devices.MACHANDAIRSPEED, value_down=0.0, name=_('Airspeed/Mach Indicator Index Knob - PULL'), category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.AIRSPEED_KnobSwitch, up=device_commands.AIRSPEED_KnobSwitch, cockpit_device_id=devices.MACHANDAIRSPEED, value_down=1.0, value_up=0.0, name=_('Airspeed/Mach Indicator Index Knob - PUSH>PULL [MOM]'), category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.AIRSPEED_KnobSwitch, up=device_commands.AIRSPEED_KnobSwitch, cockpit_device_id=devices.MACHANDAIRSPEED, value_down=0.0, value_up=1.0, name=_('Airspeed/Mach Indicator Index Knob - PULL>PUSH [MOM]'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.AIRSPEED_Knob, up=device_commands.AIRSPEED_Knob, cockpit_device_id=devices.MACHANDAIRSPEED, value_pressed=0.1, value_up=0.0, name=_('Airspeed/Mach Indicator Index Knob CW'), category=_('_My Buttons')}, -- *** CUSTOM ***
{pressed=device_commands.AIRSPEED_Knob, up=device_commands.AIRSPEED_Knob, cockpit_device_id=devices.MACHANDAIRSPEED, value_pressed=-0.1, value_up=0.0, name=_('Airspeed/Mach Indicator Index Knob CCW'), category=_('_My Buttons')}, -- *** CUSTOM ***

{down=device_commands.FUELSYSTEM_Shutoff_L, cockpit_device_id=devices.FUELSYSTEM, value_down=1, name=_('Fuel Shutoff Handle: LEFT ENG - PULL'), category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.FUELSYSTEM_Shutoff_L, cockpit_device_id=devices.FUELSYSTEM, value_down=0, name=_('Fuel Shutoff Handle: LEFT ENG - PUSH'),category=_('_My Buttons')}, -- *** CUSTOM ***
{down=device_commands.FIRESYSTEM_Bottle_Fire_L, up=device_commands.FIRESYSTEM_Bottle_Fire_L, cockpit_device_id=devices.FIRE, value_down=1, value_up=0, name=_('Fuel Shutoff Handle: LEFT ENG - Fire Ext Bottle'), category=_('_My Buttons')}, -- *** CUSTOM ***

-- [19] Horizontal Situation Display Indicator (HSD)
{pressed=device_commands.HSD_Knob_Course,   up=device_commands.HSD_Knob_Course,   cockpit_device_id=devices.HSD, value_pressed=0.0005,  value_up=0.0, name=_('Course Knob CW'), category=_('_My Buttons')},
{pressed=device_commands.HSD_Knob_Course,   up=device_commands.HSD_Knob_Course,   cockpit_device_id=devices.HSD, value_pressed=-0.0005, value_up=0.0, name=_('Course Knob CCW'), category=_('_My Buttons')},
{pressed=device_commands.HSD_Knob_Heading,  up=device_commands.HSD_Knob_Heading,  cockpit_device_id=devices.HSD, value_pressed=0.0005,  value_up=0.0, name=_('Heading Knob CW'), category=_('_My Buttons')},
{pressed=device_commands.HSD_Knob_Heading,  up=device_commands.HSD_Knob_Heading,  cockpit_device_id=devices.HSD, value_pressed=-0.0005, value_up=0.0, name=_('Heading Knob CCW'), category=_('_My Buttons')},

{down=device_commands.VDIG_VDI_handle, up=device_commands.VDIG_VDI_handle,  cockpit_device_id=devices.HUD, value_down=1.0, value_up=0.0, name=_('HUD filter ON/OFF'), category=_('_My Buttons')},
{down=device_commands.VDIG_VDI_handle,  cockpit_device_id=devices.HUD, value_down=1.0, name=_('HUD filter ON'), category=_('_My Buttons')},
{down=device_commands.VDIG_VDI_handle,  cockpit_device_id=devices.HUD, value_down=0.0, name=_('HUD filter OFF'), category=_('_My Buttons')},

{pressed=device_commands.STDBYADI_trim, up=device_commands.STDBYADI_trim, cockpit_device_id=devices.STDBYAI, value_pressed=0.1, value_up=0.0, name=_('Standby ADI Knob Increase'), category=_('_My Buttons')},
{pressed=device_commands.STDBYADI_trim, up=device_commands.STDBYADI_trim, cockpit_device_id=devices.STDBYAI, value_pressed=-0.1, value_up=0.0, name=_('Standby ADI Knob Decrease'), category=_('_My Buttons')},

-- BAROALTIMETER
--{down = device_commands.ALTIMETER_Mode, up = device_commands.ALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down = 1.0, value_up = 0.0, name = _('Altimeter Mode Switch 1/0'), category = _('_My Buttons')},
--{down = device_commands.ALTIMETER_Mode, up = device_commands.ALTIMETER_Mode, cockpit_device_id = devices.BAROALTIMETER, value_down =-1.0, value_up = 0.0, name = _('Altimeter Mode Switch -1/0'), category = _('_My Buttons')},

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: end custom assignments
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

--Flight Control
{ up=device_commands.SPEEDBRAKE_ExtendRetract, pressed=device_commands.SPEEDBRAKE_ExtendRetract, 	cockpit_device_id=devices.GEARHOOK, value_up=0.0, value_pressed=1.0, 	name=_('Speed brake extend'),			 category=_('Gears, brakes, and hook')},
{ up=device_commands.SPEEDBRAKE_ExtendRetract, pressed=device_commands.SPEEDBRAKE_ExtendRetract, 	cockpit_device_id=devices.GEARHOOK, value_up=0.0, value_pressed=-1.0,	name=_('Speed brake retract'),			 category=_('Gears, brakes, and hook')},
{ down=device_commands.GEAR_Toggle, cockpit_device_id=devices.GEARHOOK, value_down=0,		name=_('Gears Toggle'),			 category=_('Gears, brakes, and hook')},

{ up=iCommandPlaneTrimPitch, pressed=iCommandPlaneTrimPitch, value_up=0.0, value_pressed=1.0,	name=_('Trim Pitch Up'),			 category = _('Flight Control')},
{ up=iCommandPlaneTrimPitch, pressed=iCommandPlaneTrimPitch, value_up=0.0, value_pressed=-1.0,	name=_('Trim Pitch Down'),			 category = _('Flight Control')},
{ up=iCommandPlaneTrimRoll, pressed=iCommandPlaneTrimRoll, value_up=0.0, value_pressed=-1.0,	name=_('Trim Roll Left Wing Down'), category = _('Flight Control')},
{ up=iCommandPlaneTrimRoll, pressed=iCommandPlaneTrimRoll, value_up=0.0, value_pressed=1.0,		name=_('Trim Roll Right Wing Down'),category = _('Flight Control')},
{ up=iCommandPlaneTrimRudder, pressed=iCommandPlaneTrimRudder, value_up=0.0, value_pressed=-1.0,name=_('Trim Rudder Left'),		 category = _('Flight Control')},
{ up=iCommandPlaneTrimRudder, pressed=iCommandPlaneTrimRudder, value_up=0.0, value_pressed=1.0,	name=_('Trim Rudder Right'),		 category = _('Flight Control')},

-- Flaps
{ down=device_commands.FLAPS_Lever, cockpit_device_id=devices.FLAPS, value_down=0.0, name = _('Flaps Down'), category = _('Flight Control')},
{ down=device_commands.FLAPS_Lever, cockpit_device_id=devices.FLAPS, value_down=1.0, name = _('Flaps Up'), category = _('Flight Control')},
{ down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=-1, name = _('Emergency Flaps Down'), category = _('Flight Control')},
{ down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=2.0, name = _('Emergency Flaps Up'), category = _('Flight Control')},

--Stick
{ up=device_commands.STICK_Bomb_Release, 				down=device_commands.STICK_Bomb_Release, 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Store Release'),	 category=_('Stick')},
{ up=device_commands.STICK_Trigger_Detent, 				down=device_commands.STICK_Trigger_Detent, 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Trigger First Detent'),	 category=_('Stick')},
{ up=device_commands.STICK_Trigger, 					down=device_commands.STICK_Trigger,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Trigger'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=1.0, 	name=_('Weapon Selector Gun'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=0.5, 	name=_('Weapon Selector Sparrow or Phoenix Missiles'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=-0.5, 	name=_('Weapon Selector Sidewinder Missiles'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=-1.0,	name=_('Weapon Selector Off'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_up, 		down=device_commands.STICK_Weapon_Selector_up,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector up'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_down, 	down=device_commands.STICK_Weapon_Selector_down,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector down'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_press, 	down=device_commands.STICK_Weapon_Selector_press,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector press'),	 category=_('Stick')},
{ up=device_commands.STICK_DLC_ManDec_Thumbwheel,  		pressed=device_commands.STICK_DLC_ManDec_Thumbwheel, 	cockpit_device_id=devices.HOTAS, value_pressed=1.0,  value_up=0,	name=_('DLC Thumbwheel Forward'), 	 category=_('Stick')},
{ up=device_commands.STICK_DLC_ManDec_Thumbwheel,   	pressed=device_commands.STICK_DLC_ManDec_Thumbwheel, 	cockpit_device_id=devices.HOTAS, value_pressed=-1.0, value_up=0,	name=_('DLC Thumbwheel Aft'),	 category=_('Stick')},
{ down=device_commands.STICK_DLC_Toggle_CountDisp, up=device_commands.STICK_DLC_Toggle_CountDisp,	cockpit_device_id=devices.HOTAS, value_down=1.0,value_up=0.0,		name=_('DLC Toggle / Countermeasure Dispense'),	 category=_('Stick')},
{ down=device_commands.STICK_Autopilot_Emergency_Disconnect, up=device_commands.STICK_Autopilot_Emergency_Disconnect,	cockpit_device_id=devices.AFCS, value_down=1.0,value_up=0.0, 	name=_('Autopilot Emergency Disconnect Paddle'),	 category=_('Stick')},
{ down=device_commands.STICK_Autopilot_Ref_NWS_Toggle,up=device_commands.STICK_Autopilot_Ref_NWS_Toggle, 	cockpit_device_id=devices.HOTAS, value_down=1.0,value_up=0.0,		name=_('Autopilot Reference / Nosewheel Steering Toggle'),	 category=_('Stick')},

{ up=device_commands.THROTTLE_CAGE_SEAM, down=device_commands.THROTTLE_CAGE_SEAM, cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, name=_('CAGE-SEAM button'),	 category=_('Throttle')},
{ up=device_commands.THROTTLE_PLM, down=device_commands.THROTTLE_PLM, cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, name=_('PLM button'),	 category=_('Throttle')},

{ down=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Exterior Lights Master Switch OFF'),	 category=_('Throttle')},
{ down=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Exterior Lights Master Switch ON'),	 category=_('Throttle')},
{ down=device_commands.LIGHTS_Exterior_Master_Switch_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Exterior Lights Master Switch Toggle'),	 category=_('Throttle')},

{ up=device_commands.WINGSWEEP_AutoButton, down=device_commands.WINGSWEEP_AutoButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Auto Mode'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_FwdButton, down=device_commands.WINGSWEEP_FwdButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Forward'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_AftButton, down=device_commands.WINGSWEEP_AftButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Aft'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_BombButton, down=device_commands.WINGSWEEP_BombButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Bomb Mode'),	 category=_('Throttle')},

{cockpit_device_id=devices.ENGINE, down = device_commands.THROTTLE_Left_Throttle_CutOff , up = device_commands.THROTTLE_Left_Throttle_CutOff, value_up=0.0, value_down=1.0,  name = _('Left Engine Cutoff'), category = _('Throttle')},
{cockpit_device_id=devices.ENGINE, down = device_commands.THROTTLE_Right_Throttle_CutOff, up = device_commands.THROTTLE_Right_Throttle_CutOff, value_up=0.0, value_down=1.0, name = _('Right Engine Cutoff'), category = _('Throttle')},

{ down=device_commands.AP_Engage_Toggle, cockpit_device_id=devices.AFCS, value_down=0.0, name=_('Autopilot toggle'),	 category=_('Flight Control')},



-- pilot display control panel
{ down=device_commands.DISP_mode_takeoff, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode takeoff'), category=_('PDCP')},
{ down=device_commands.DISP_mode_cruise, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode cruise'), category=_('PDCP')},
{ down=device_commands.DISP_mode_air2air, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode air to air'), category=_('PDCP')},
{ down=device_commands.DISP_mode_air2ground, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode air to ground'), category=_('PDCP')},
{ down=device_commands.DISP_mode_landing, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode landing'), category=_('PDCP')},
{ down=device_commands.DISP_mode_next, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode next'), category=_('PDCP')},
{ down=device_commands.DISP_mode_prev, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode previous'), category=_('PDCP')},



--************************************* Jester AI  ******************************************************************

--Menu
{	cockpit_device_id=devices.JESTERAI, up =device_commands.JESTER_ToggleMenu ,down=device_commands.JESTER_ToggleMenu, value_up=-1.0, value_down=1.0,	name=_('Toggle Menu'), category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command1, value_down=1.0,	name=_('Command 1'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command2, value_down=1.0,	name=_('Command 2'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command3, value_down=1.0,	name=_('Command 3'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command4, value_down=1.0,	name=_('Command 4'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command5, value_down=1.0,	name=_('Command 5'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command6, value_down=1.0,	name=_('Command 6'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command7, value_down=1.0,	name=_('Command 7'),	 category=_('Jester AI')},
{	 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command8, value_down=1.0,	name=_('Command 8'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuHorizontal, up=device_commands.JESTER_MenuHorizontal, value_down=-1.0, value_up=0.0, name=_('Jester Menu Left'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuHorizontal, up=device_commands.JESTER_MenuHorizontal, value_down=1.0, value_up=0.0, name=_('Jester Menu Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuVertical, up=device_commands.JESTER_MenuVertical, value_down=1.0, value_up=0.0, name=_('Jester Menu Up'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuVertical, up=device_commands.JESTER_MenuVertical, value_down=-1.0, value_up=0.0, name=_('Jester Menu Down'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag45, up=device_commands.JESTER_MenuDiag45, value_down=-1.0, value_up=0.0, name=_('Jester Menu Down Left'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag45, up=device_commands.JESTER_MenuDiag45, value_down=1.0, value_up=0.0, name=_('Jester Menu Up Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag135, up=device_commands.JESTER_MenuDiag135, value_down=1.0, value_up=0.0, name=_('Jester Menu Down Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag135, up=device_commands.JESTER_MenuDiag135, value_down=-1.0, value_up=0.0, name=_('Jester Menu Up Left'),	 category=_('Jester AI')},

{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_CloseMenu, value_down=1.0,  name=_('Close Menu'),	 category=_('Jester AI')},



-- ACM Panel
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=-1.0, name=_('Master arm cover toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_Cover, up=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Master arm cover open/close (2pos)'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm cover close'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_And_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm on and cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_And_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm off and cover close'), category=_('ACM Panel')},

{ down=device_commands.WEAP_ACM_Cover_Toggle, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('ACM cover toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover, up=device_commands.WEAP_ACM_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('ACM cover open/close (2pos)'), category=_('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('ACM cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('ACM cover close'), category=_('ACM Panel')},

{ down=device_commands.WEAP_ACM_Jettison, up=device_commands.WEAP_ACM_Jettison, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('ACM Jettison'), category=_('ACM Panel')},
{ down=device_commands.WEAP_MSL_Mode, up=device_commands.WEAP_MSL_Mode, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Missile mode toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Gun_Rate, up=device_commands.WEAP_Gun_Rate, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Gun rate toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_SW_Cool, up=device_commands.WEAP_SW_Cool, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('AIM-9 cooling toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_MSL_Prep, up=device_commands.WEAP_MSL_Prep, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Missile prepare toggle'), category=_('ACM Panel')},

{ down=device_commands.WEAP_Master_Arm, up=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=-1.0, value_up=0.0, name=_('Master arm on/off (3pos)'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, up=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Master arm off/training (3pos)'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=-1.0, name=_('Master arm on'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm off'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm training'), category=_('ACM Panel')},

{ down=device_commands.WEAP_Target_designate_up, up=device_commands.WEAP_Target_designate_up, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate up / VSL HI'), category=_('Left sidewall')},
{ down=device_commands.WEAP_Target_designate_fwd, up=device_commands.WEAP_Target_designate_fwd, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate fwd / PAL'), category=_('Left sidewall')},
{ down=device_commands.WEAP_Target_designate_down, up=device_commands.WEAP_Target_designate_down, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate down / VSL LO'), category=_('Left sidewall')},

})



-- joystick axes
join_override(res.axisCommands,{
{combos = defaultDeviceAssignmentFor("roll"),action=iCommandPlaneRoll,name=_('Roll')},
{combos = defaultDeviceAssignmentFor("pitch"),action=iCommandPlanePitch,name=_('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"),action=iCommandPlaneRudder,name=_('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust"),action=iCommandPlaneThrustCommon,name=_('Throttle Both')},

-- FF: axes
{action=device_commands.ALTIMETER_Knob, cockpit_device_id=devices.BAROALTIMETER, name = _('Altimeter Pressure Setting')},

{action=device_commands.FUELSYSTEM_Bingo_Knob , cockpit_device_id=devices.FUELSYSTEM, name = _('BINGO Fuel Level Knob')},

{action=device_commands.HSD_Knob_Heading, cockpit_device_id=devices.HSD, name = _('HSD Selected Heading')},
{action=device_commands.HSD_Knob_Course, cockpit_device_id=devices.HSD, name = _('HSD Selected Course')},
{action=device_commands.HSD_Knob_Brightness, cockpit_device_id=devices.HSD, name = _('HSD Brightness')},

{action=device_commands.ECMD_Knob_Brightness, cockpit_device_id=devices.ECMD, name = _('ECMD Brightness')},

{action=device_commands.TACAN_Knob_Vol_Pilot, cockpit_device_id=devices.TACAN, name = _('TACAN Volume')},

{action=device_commands.RADIO_ICS_Vol_ALR67_Pilot, cockpit_device_id=devices.ICS, name = _('ALR-67 Volume')},
{action=device_commands.RADIO_ICS_Vol_Sidewinder, cockpit_device_id=devices.ICS, name = _('Sidewinder Volume')},
{action=device_commands.RADIO_ICS_Vol_Pilot, cockpit_device_id=devices.ICS, name = _('ICS Volume')},

{action=device_commands.RADIO_UHF_VOL_Pilot , cockpit_device_id=devices.ARC159, name = _('UHF ARC-159 Volume Pilot')},
{action=device_commands.RADIO_UHF_BRT_Pilot , cockpit_device_id=devices.ARC159, name = _('UHF ARC-159 Display Brightness')},
{action=device_commands.RADIO_UHF_Remote_DISP_BRT_Pilot, cockpit_device_id=devices.ARC159, name = _('UHF Radio Remote Display Brightness')},


{action=device_commands.RADIO_VHF_VOL_PILOT , cockpit_device_id=devices.ARC182, name = _('VHF/UHF ARC-182 Volume Pilot')},
{action=device_commands.RADIO_VHF_Remote_DISP_BRT_Pilot , cockpit_device_id=devices.ARC182, name = _('VHF/UHF Radio Remote Display Brightness')},

{action=device_commands.DECM_Vol_Knob , cockpit_device_id=devices.DECM, name = _('DECM ALQ-100 Volume')},

{action=device_commands.RWR_Brightness_Pilot , cockpit_device_id=devices.RWR, name = _('AN/ALR-67 Display Brightness')},
-- {action = devices.RWR, cockpit_device_id=device_commands.RWR_Brightness_Pilot, name = _('AN/ALR-67 Volume')}, -- volume axis is strange

{action=device_commands.AHRS_LatCorrection, cockpit_device_id=devices.AHRS, name = _('Compass LAT Correction')},

{action=device_commands.WEAP_Gun_Elevation, cockpit_device_id=devices.WEAPONS, name = _('Gun Elevation Lead Adjustment')},
{action=device_commands.WEAP_Gun_Ammo_adjust , cockpit_device_id=devices.WEAPONS, name = _('Gun Ammunition Counter Adjustment')},

{action=device_commands.DISP_HUD_pitch_bright , cockpit_device_id=devices.HUD, name = _('HUD Pitch Ladder Brightness')},
{action=device_commands.VDIG_HUD_trim , cockpit_device_id=devices.HUD, name = _('HUD Trim')},
{action=device_commands.VDIG_HUD_bright , cockpit_device_id=devices.HUD, name = _('HUD Brightness')},

{action=device_commands.VDIG_VSDI_trim, cockpit_device_id=devices.VDI, name = _('VSDI Screen Trim')},
{action=device_commands.VDIG_VDI_contrast , cockpit_device_id=devices.VDI, name = _('VDI Screen Contrast')},
{action=device_commands.VDIG_VSDI_bright , cockpit_device_id=devices.VDI, name = _('VSDI Screen Brightness')},

{action=device_commands.CLOCK_Wind , cockpit_device_id=devices.CLOCK, name = _('Clock Wind')},

{action=device_commands.LIGHTS_Instruments, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Instruments Light BRT Wheel')}, 
{action=device_commands.LIGHTS_Console, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Console Light BRT Wheel')},
{action=device_commands.LIGHTS_ACMPanel, cockpit_device_id=devices.COCKPITMECHANICS, name=_('ACM Panel Light BRT Wheel')},
{action=device_commands.LIGHTS_Formation, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Formation Light BRT Wheel')},
{action=device_commands.AoA_IndexerStrength, cockpit_device_id=devices.AOASYSTEM, name=_('AOA Indexer Light BRT Wheel')},

{action=device_commands.LIGHTS_WhiteFlood, cockpit_device_id=devices.COCKPITMECHANICS, name=_('White Flood Light Switch')},
{action=device_commands.LIGHTS_RedFlood, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Red Flood Light Switch')}, 

{action=device_commands.LIGHTS_PositionWings, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Position Lights Switch: Wing')}, 
{action=device_commands.LIGHTS_PositionTail, cockpit_device_id=devices.COCKPITMECHANICS, name=_('Position Lights Switch: Tail')}, 

{action=device_commands.WINGSWEEP_EmergencySweepLever, cockpit_device_id=devices.WINGSWEEP, name=_('Emergency Wing Sweep Handle')}, 

-- FF: axes

{combos = defaultDeviceAssignmentFor("roll"),action=iCommandPlaneRoll,name='Roll'},
{combos = defaultDeviceAssignmentFor("pitch"),action=iCommandPlanePitch,name='Pitch'},
{combos = defaultDeviceAssignmentFor("rudder"),action=iCommandPlaneRudder,name='Rudder'},
{combos = defaultDeviceAssignmentFor("thrust"),action=iCommandPlaneThrustCommon,name='Throttle Both'},

{action = iCommandPlaneThrustLeft , name = _('Throttle Left')},
{action = iCommandPlaneThrustRight, name = _('Throttle Right')},

{action = iCommandLeftWheelBrake , name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake, name = _('Wheel Brake Right')},
{action = iCommandWheelBrake, name = _('Wheel Brake both')},

{action = device_commands.FLAPS_Lever_Axis, cockpit_device_id=devices.FLAPS, name = _('Flap Lever')},
{action = device_commands.STICK_DLC_ManDec_Thumbwheel, cockpit_device_id=devices.HOTAS, name = _('DLC / Maneuver Flaps')},

{action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
{action = iCommandViewZoomAbs				, name = _('Zoom View')},
{action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},

{action = device_commands.HSD_Knob_Brightness_axis, cockpit_device_id=devices.HSD, name = _('HSD Brightness')},
{action = device_commands.HSD_Knob_Heading_axis, cockpit_device_id=devices.HSD, name = _('HSD Selected Heading')},
{action = device_commands.HSD_Knob_Course_axis, cockpit_device_id=devices.HSD, name = _('HSD Selected Course')},
{action = device_commands.RADIO_ICS_Vol_Pilot_axis, cockpit_device_id=devices.ICS, name = _('ICS Volume Pilot')},
{action = device_commands.RADIO_ICS_Vol_Sidewinder_axis, cockpit_device_id=devices.ICS, name = _('Sidewinder Volume')},
{action = device_commands.RADIO_ICS_Vol_ALR67_Pilot_axis, cockpit_device_id=devices.ICS, name = _('ALR-67 Volume')},
{action = device_commands.RADIO_VHF_VOL_PILOT_axis, cockpit_device_id=devices.ARC182, name = _('VHF/UHF ARC-182 Volume Pilot')},
{action = device_commands.VDIG_HUD_bright_axis, cockpit_device_id=devices.HUD, name = _('HUD Brightness')},
{action = device_commands.VDIG_HUD_trim_axis, cockpit_device_id=devices.HUD, name = _('HUD Trim')},
{action = device_commands.VDIG_VSDI_bright_axis, cockpit_device_id=devices.VDI, name = _('VDI Screen Brightness')},
{action = device_commands.VDIG_VDI_contrast_axis, cockpit_device_id=devices.VDI, name = _('VDI Screen Contrast')},
{action = device_commands.VDIG_VSDI_trim_axis, cockpit_device_id=devices.VDI, name = _('VDI Trim')},
{action = device_commands.TACAN_Knob_Vol_Pilot_axis, cockpit_device_id=devices.TACAN, name = _('TACAN Volume')},
{action = device_commands.Emergency_Wingsweep_axis, cockpit_device_id=devices.WINGSWEEP, name = _('Emergency Wingsweep')},

})

return res
