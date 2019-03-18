local cockpit = folder.."../../../Cockpit/"
local f14input = folder.."../../../Input/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")
dofile(f14input.."utils.lua")


local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")
local res2 = external_profile(f14input.."F-14B/keyboard/default.lua")
join_override(res.keyCommands, res2.keyCommands)
join_override(res.keyCommands,{

-- auto
{combos = {{key = 'Home', reformers = {'LWin'}}}, down = device_commands.AUTO_StartPilot, cockpit_device_id=devices.AUTO, value_down = 1, name = _('Auto Start'),		category = _('Cheat')},


--************** Engine and fuel *********************************************************************
{combos = {{key = 'T', reformers = {'LCtrl'}}},	down = device_commands.ENGINE_Throttle_Mode_Toggle, cockpit_device_id=devices.ENGINE, value_down = 1, name = _('Toggle Auto Throttle'), category = _('Engine Control Panel')},

{down = device_commands.ENGINE_Crank, cockpit_device_id=devices.ENGINE, value_down = 1, name = _('Crank Left Engine'), category = _('Engine Control')},
{down = device_commands.ENGINE_Crank, cockpit_device_id=devices.ENGINE, value_down = -1, name = _('Crank Right Engine'), category = _('Engine Control')},

{down = device_commands.FUELSYSTEM_WingExt_Trans,     up = device_commands.FUELSYSTEM_WingExt_Trans, value_down = 1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('Wing/External Transfer Oride, else Auto'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_WingExt_Trans,     up = device_commands.FUELSYSTEM_WingExt_Trans, value_down = -1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('Wing/External Transfer Off, else Auto'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id=devices.FUELSYSTEM, value_down = 1, name = _('Wing/External Transfer Oride'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id=devices.FUELSYSTEM, value_down = 0, name = _('Wing/External Transfer Auto'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_WingExt_Trans, cockpit_device_id=devices.FUELSYSTEM, value_down = -1, name = _('Wing/External Transfer Off'), category = _('Fuelsystem Control Panel')},

{down = device_commands.FUELSYSTEM_Dump,     up = device_commands.FUELSYSTEM_Dump, value_down = 1, value_up = -1, cockpit_device_id=devices.FUELSYSTEM, name = _('Fueldump Off, else Dump'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Dump,     up = device_commands.FUELSYSTEM_Dump, value_down = -1, value_up = 1, cockpit_device_id=devices.FUELSYSTEM, name = _('Fueldump Dump, else Off'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Dump, cockpit_device_id=devices.FUELSYSTEM, value_down = -1, name = _('Fueldump Off'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Dump, cockpit_device_id=devices.FUELSYSTEM, value_down = 1, name = _('Fueldump Dump'), category = _('Fuelsystem Control Panel')},

{down = device_commands.FUELSYSTEM_Refuel_Probe,     up = device_commands.FUELSYSTEM_Refuel_Probe, value_down = 1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('Refuel Probe extend, Refuel All, else Refuel Fuselage'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Refuel_Probe,     up = device_commands.FUELSYSTEM_Refuel_Probe, value_down = -1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('Refuel Probe extend, Refuel Fuselage, else Retract Probe'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id=devices.FUELSYSTEM, value_down = 1, name = _('Refuel Probe extend, Refuel All'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id=devices.FUELSYSTEM, value_down = 0, name = _('Refuel Probe extend, Refuel Fuselage'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Refuel_Probe, cockpit_device_id=devices.FUELSYSTEM, value_down = -1, name = _('Refuel Probe Retract'), category = _('Fuelsystem Control Panel')},

{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel,     up = device_commands.FUELSYSTEM_Fuel_Qty_Sel, value_down = 1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('QTY Select Wing, else Feed'), category = _('Fuelsystem Control Panel')},
{down = device_commands.FUELSYSTEM_Fuel_Qty_Sel,     up = device_commands.FUELSYSTEM_Fuel_Qty_Sel, value_down = -1, value_up = 0, cockpit_device_id=devices.FUELSYSTEM, name = _('QTY select External, else Feed'), category = _('Fuelsystem Control Panel')},

{down = device_commands.MASTER_Reset,     up = device_commands.MASTER_Reset, value_down = 1, value_up = 0, cockpit_device_id=devices.CADC, name = _('MASTER RESET'), category = _('Flight Controls')},


--******************* Flight Control *****************************************************************

-- Flight Control
{combos = {{key = 'Up'}},									pressed = iCommandPlaneUpStart, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
{combos = {{key = 'Down'}},									pressed = iCommandPlaneDownStart, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
{combos = {{key = 'Left'}}, down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
{combos = {{key = 'Right'}}, down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},

{combos = {{key = 'U'}}, down = iCommandPlaneShipTakeOff, name = _('Catapult Hook up'), category = _('Flight Control')},
{combos = {{key = 'U',reformers={'LShift'}}}, down=device_commands.CATAPULT_Salute, 	cockpit_device_id=devices.GEARHOOK, value_down=1.0, name = _('Catapult Shoot'), category = _('Flight Control')},

{combos = {{key = 'Num+'}},									pressed = iCommandThrottleIncrease, up = iCommandThrottle1Stop, name = _('Throttle Up'), category = _('Flight Control')},
{combos = {{key = 'Num-'}},									pressed = iCommandThrottleDecrease, up = iCommandThrottle1Stop, name = _('Throttle Down'), category = _('Flight Control')},

{ down=device_commands.AP_Engage_Toggle, cockpit_device_id=devices.AFCS, value_down=0.0, name=_('Autopilot toggle'),	 category=_('Flight Control')},
{ up=iCommandPlaneTrimPitch, pressed=iCommandPlaneTrimPitch, value_up=0.0, value_pressed=1.0,	name=_('Trim Pitch Up'),			 category = _('Flight Control')},
{ up=iCommandPlaneTrimPitch, pressed=iCommandPlaneTrimPitch, value_up=0.0, value_pressed=-1.0,	name=_('Trim Pitch Down'),			 category = _('Flight Control')},
{ up=iCommandPlaneTrimRoll, pressed=iCommandPlaneTrimRoll, value_up=0.0, value_pressed=-1.0,	name=_('Trim Roll Left Wing Down'), category = _('Flight Control')},
{ up=iCommandPlaneTrimRoll, pressed=iCommandPlaneTrimRoll, value_up=0.0, value_pressed=1.0,		name=_('Trim Roll Right Wing Down'),category = _('Flight Control')},
{ up=iCommandPlaneTrimRudder, pressed=iCommandPlaneTrimRudder, value_up=0.0, value_pressed=-1.0,name=_('Trim Rudder Left'),		 category = _('Flight Control')},
{ up=iCommandPlaneTrimRudder, pressed=iCommandPlaneTrimRudder, value_up=0.0, value_pressed=1.0,	name=_('Trim Rudder Right'),		 category = _('Flight Control')},

-- SAS
{down = device_commands.AFCS_Stability_Pitch,     up = device_commands.AFCS_Stability_Pitch, value_down = 1, value_up = -1, cockpit_device_id=devices.AFCS, name = _('AFCS Pitch Stabilisation On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Pitch,     up = device_commands.AFCS_Stability_Pitch, value_down = -1, value_up = 1, cockpit_device_id=devices.AFCS, name = _('AFCS Pitch Stabilisation Off, else On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Pitch, cockpit_device_id=devices.AFCS, value_down = 1, name = _('AFCS Pitch Stabilisation On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Pitch, cockpit_device_id=devices.AFCS, value_down = -1, name = _('AFCS Pitch Stabilisation Off'), category = _('AFCS Control Panel')},

{down = device_commands.AFCS_Stability_Roll,     up = device_commands.AFCS_Stability_Roll, value_down = 1, value_up = -1, cockpit_device_id=devices.AFCS, name = _('AFCS Roll Stabilisation On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Roll,     up = device_commands.AFCS_Stability_Roll, value_down = -1, value_up = 1, cockpit_device_id=devices.AFCS, name = _('AFCS Roll Stabilisation Off, else On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Roll, cockpit_device_id=devices.AFCS, value_down = 1, name = _('AFCS Roll Stabilisation On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Roll, cockpit_device_id=devices.AFCS, value_down = -1, name = _('AFCS Roll Stabilisation Off'), category = _('AFCS Control Panel')},

{down = device_commands.AFCS_Stability_Yaw,     up = device_commands.AFCS_Stability_Yaw, value_down = 1, value_up = -1, cockpit_device_id=devices.AFCS, name = _('AFCS Yaw Stabilisation On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Yaw,     up = device_commands.AFCS_Stability_Yaw, value_down = -1, value_up = 1, cockpit_device_id=devices.AFCS, name = _('AFCS Yaw Stabilisation Off, else On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Yaw, cockpit_device_id=devices.AFCS, value_down = 1, name = _('AFCS Yaw Stabilisation On'), category = _('AFCS Control Panel')},
{down = device_commands.AFCS_Stability_Yaw, cockpit_device_id=devices.AFCS, value_down = -1, name = _('AFCS Yaw Stabilisation Off'), category = _('AFCS Control Panel')},

-- Autopilot
{down = device_commands.AP_Vector,     up = device_commands.AP_Vector, value_down = 1, value_up = 0, cockpit_device_id=devices.AFCS, name = _('Autopilot Vector VEC/PCD, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Vector,     up = device_commands.AP_Vector, value_down = -1, value_up = 0, cockpit_device_id=devices.AFCS, name = _('Autopilot Vector ACL, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Vector, cockpit_device_id=devices.AFCS, value_down = 1, name = _('Autopilot Vector VEC/PCD'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Vector, cockpit_device_id=devices.AFCS, value_down = 0, name = _('Autopilot Vector Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Vector, cockpit_device_id=devices.AFCS, value_down = -1, name = _('Autopilot Vector ACL'), category = _('AFCS Control Panel')},

{down = device_commands.AP_Altitude,     up = device_commands.AP_Altitude, value_down = 1, value_up = -1, cockpit_device_id=devices.AFCS, name = _('Altitude Hold On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Altitude,     up = device_commands.AP_Altitude, value_down = -1, value_up = 1, cockpit_device_id=devices.AFCS, name = _('Altitude Hold Off, else On'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Altitude, cockpit_device_id=devices.AFCS, value_down = 1, name = _('Altitude Hold On'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Altitude, cockpit_device_id=devices.AFCS, value_down = -1, name = _('Altitude Hold Off'), category = _('AFCS Control Panel')},


{down = device_commands.AP_Heading,     up = device_commands.AP_Heading, value_down = 1, value_up = 0, cockpit_device_id=devices.AFCS, name = _('Heading Hold On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Heading,     up = device_commands.AP_Heading, value_down = -1, value_up = 0, cockpit_device_id=devices.AFCS, name = _('Heading Hold GT, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Heading, cockpit_device_id=devices.AFCS, value_down = 1, name = _('Heading Hold On'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Heading, cockpit_device_id=devices.AFCS, value_down = 0, name = _('Heading Hold Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Heading, cockpit_device_id=devices.AFCS, value_down = -1, name = _('Heading Hold GT'), category = _('AFCS Control Panel')},

{down = device_commands.AP_Engage,     up = device_commands.AP_Engage, value_down = 1, value_up = -1, cockpit_device_id=devices.AFCS, name = _('Autopilot On, else Off'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Engage,     up = device_commands.AP_Engage, value_down = -1, value_up = 1, cockpit_device_id=devices.AFCS, name = _('Autopilot Off, else On'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Engage, cockpit_device_id=devices.AFCS, value_down = 1, name = _('Autopilot On'), category = _('AFCS Control Panel')},
{down = device_commands.AP_Engage, cockpit_device_id=devices.AFCS, value_down = 0, name = _('Autopilot Off'), category = _('AFCS Control Panel')},

-- HOTAS
{ combos = {{key = 'Space', reformers = {'RAlt'}}}, up=device_commands.STICK_Bomb_Release, 				down=device_commands.STICK_Bomb_Release, 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Store Release'),	 category=_('Stick')},
{ up=device_commands.STICK_Trigger_Detent, 				down=device_commands.STICK_Trigger_Detent, 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Trigger First Detent'),	 category=_('Stick')},
{ combos = {{key = 'Space'}}, up=device_commands.STICK_Trigger, 					down=device_commands.STICK_Trigger,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Trigger'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_up, 		down=device_commands.STICK_Weapon_Selector_up,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector up'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_down, 	down=device_commands.STICK_Weapon_Selector_down,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector down'),	 category=_('Stick')},
{ up=device_commands.STICK_Weapon_Selector_press, 	down=device_commands.STICK_Weapon_Selector_press,		 	cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, 	name=_('Weapon Selector press'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=1.0, 	name=_('Weapon Selector Gun'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=0.5, 	name=_('Weapon Selector Sparrow or Phoenix Missiles'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=-0.5, 	name=_('Weapon Selector Sidewinder Missiles'),	 category=_('Stick')},
{ down=device_commands.STICK_Weapon_Selector, 		cockpit_device_id=devices.WEAPONS, value_down=-1.0,	name=_('Weapon Selector Off'),	 category=_('Stick')},
{ up=device_commands.STICK_DLC_ManDec_Thumbwheel,  		pressed=device_commands.STICK_DLC_ManDec_Thumbwheel, 	cockpit_device_id=devices.HOTAS, value_pressed=1.0,  value_up=0,	name=_('DLC Thumbwheel Forward'), 	 category=_('Stick')},
{ up=device_commands.STICK_DLC_ManDec_Thumbwheel,   	pressed=device_commands.STICK_DLC_ManDec_Thumbwheel, 	cockpit_device_id=devices.HOTAS, value_pressed=-1.0, value_up=0,	name=_('DLC Thumbwheel Aft'),	 category=_('Stick')},
{ down=device_commands.STICK_DLC_Toggle_CountDisp,up=device_commands.STICK_DLC_Toggle_CountDisp, 	cockpit_device_id=devices.HOTAS, value_down=1.0,value_up=0.0,		name=_('DLC Toggle / Countermeasure Dispense'),	 category=_('Stick')},
{ down=device_commands.STICK_Autopilot_Emergency_Disconnect, up=device_commands.STICK_Autopilot_Emergency_Disconnect,	cockpit_device_id=devices.AFCS, value_down=1.0,value_up=0.0, 	name=_('Autopilot Emergency Disconnect Paddle'),	 category=_('Stick')},
{ combos = {{key = 'N'}}, down=device_commands.STICK_Autopilot_Ref_NWS_Toggle, up=device_commands.STICK_Autopilot_Ref_NWS_Toggle,	cockpit_device_id=devices.HOTAS, value_down=1.0,value_up=0.0,		name=_('Autopilot Reference / Nosewheel Steering Toggle'),	 category=_('Stick')},

{ up=device_commands.THROTTLE_CAGE_SEAM, down=device_commands.THROTTLE_CAGE_SEAM, cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, name=_('CAGE-SEAM button'),	 category=_('Throttle')},
{ up=device_commands.THROTTLE_PLM, down=device_commands.THROTTLE_PLM, cockpit_device_id=devices.HOTAS, value_up=0.0, value_down=1.0, name=_('PLM button'),	 category=_('Throttle')},

{ down=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Exterior Lights Master Switch OFF'),	 category=_('Throttle')},
{ down=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Exterior Lights Master Switch ON'),	 category=_('Throttle')},
{ down=device_commands.LIGHTS_Exterior_Master_Switch_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Exterior Lights Master Switch Toggle'),	 category=_('Throttle')},
{ down=device_commands.LIGHTS_Exterior_Master_Switch, up=device_commands.LIGHTS_Exterior_Master_Switch, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Exterior Lights Master Switch ON (pressed) / OFF (released)'),	 category=_('Throttle')},

{ up=device_commands.WINGSWEEP_AutoButton, down=device_commands.WINGSWEEP_AutoButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Auto Mode'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_FwdButton, down=device_commands.WINGSWEEP_FwdButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Forward'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_AftButton, down=device_commands.WINGSWEEP_AftButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Aft'),	 category=_('Throttle')},
{ up=device_commands.WINGSWEEP_BombButton, down=device_commands.WINGSWEEP_BombButton, cockpit_device_id=devices.WINGSWEEP, value_up=0.0, value_down=1.0, name=_('Wing Sweep Bomb Mode'),	 category=_('Throttle')},

{cockpit_device_id=devices.ENGINE, down = device_commands.THROTTLE_Left_Throttle_CutOff , up = device_commands.THROTTLE_Left_Throttle_CutOff, value_up=0.0, value_down=1.0,  name = _('Left Engine Cutoff'), category = _('Throttle')},
{cockpit_device_id=devices.ENGINE, down = device_commands.THROTTLE_Right_Throttle_CutOff, up = device_commands.THROTTLE_Right_Throttle_CutOff, value_up=0.0, value_down=1.0, name = _('Right Engine Cutoff'), category = _('Throttle')},

-- pilot display control panel
{ combos={{key='1',reformers={'LShift'}}}, down=device_commands.DISP_mode_takeoff, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode takeoff'), category=_('PDCP')},
{ combos={{key='2',reformers={'LShift'}}}, down=device_commands.DISP_mode_cruise, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode cruise'), category=_('PDCP')},
{ combos={{key='3',reformers={'LShift'}}}, down=device_commands.DISP_mode_air2air, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode air to air'), category=_('PDCP')},
{ combos={{key='4',reformers={'LShift'}}}, down=device_commands.DISP_mode_air2ground, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode air to ground'), category=_('PDCP')},
{ combos={{key='5',reformers={'LShift'}}}, down=device_commands.DISP_mode_landing, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode landing'), category=_('PDCP')},
{ down=device_commands.DISP_mode_next, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode next'), category=_('PDCP')},
{ down=device_commands.DISP_mode_prev, cockpit_device_id=devices.HUD, value_down=1.0, name=_('Display mode previous'), category=_('PDCP')},

{down = device_commands.DISP_VDI_power,     up = device_commands.DISP_VDI_power, value_down = 1, value_up = -1, cockpit_device_id=devices.VDI, name = _('VDI Power On, else Off'), category = _('PDCP')},
{down = device_commands.DISP_VDI_power,     up = device_commands.DISP_VDI_power, value_down = -1, value_up = 1, cockpit_device_id=devices.VDI, name = _('VDI Power Off, else On'), category = _('PDCP')},
{down = device_commands.DISP_VDI_power, cockpit_device_id=devices.VDI, value_down = 1, name = _('VDI Power On'), category = _('PDCP')},
{down = device_commands.DISP_VDI_power, cockpit_device_id=devices.VDI, value_down = -1, name = _('VDI Power Off'), category = _('PDCP')},

{down = device_commands.DISP_VDI_display_mode,     up = device_commands.DISP_VDI_display_mode, value_down = 1, value_up = -1, cockpit_device_id=devices.VDI, name = _('VDI Mode TV, else Norm'), category = _('PDCP')},
{down = device_commands.DISP_VDI_display_mode,     up = device_commands.DISP_VDI_display_mode, value_down = -1, value_up = 1, cockpit_device_id=devices.VDI, name = _('VDI Mode Norm, else TV'), category = _('PDCP')},
{down = device_commands.DISP_VDI_display_mode, cockpit_device_id=devices.VDI, value_down = 1, name = _('VDI Mode TV'), category = _('PDCP')},
{down = device_commands.DISP_VDI_display_mode, cockpit_device_id=devices.VDI, value_down = -1, name = _('VDI Mode Norm'), category = _('PDCP')},

{down = device_commands.DISP_VDI_landing_mode,     up = device_commands.DISP_VDI_landing_mode, value_down = 1, value_up = -1, cockpit_device_id=devices.VDI, name = _('VDI AWL ILS, else ACL'), category = _('PDCP')},
{down = device_commands.DISP_VDI_landing_mode,     up = device_commands.DISP_VDI_landing_mode, value_down = -1, value_up = 1, cockpit_device_id=devices.VDI, name = _('VDI AWL ACL, else ILS'), category = _('PDCP')},
{down = device_commands.DISP_VDI_landing_mode, cockpit_device_id=devices.VDI, value_down = 1, name = _('VDI AWL ILS'), category = _('PDCP')},
{down = device_commands.DISP_VDI_landing_mode, cockpit_device_id=devices.VDI, value_down = -1, name = _('VDI AWL ACL'), category = _('PDCP')},

{down = device_commands.DISP_HUD_power,     up = device_commands.DISP_HUD_power, value_down = 1, value_up = -1, cockpit_device_id=devices.HUD, name = _('HUD Power On, else Off'), category = _('PDCP')},
{down = device_commands.DISP_HUD_power,     up = device_commands.DISP_HUD_power, value_down = -1, value_up = 1, cockpit_device_id=devices.HUD, name = _('HUD Power Off, else On'), category = _('PDCP')},
{down = device_commands.DISP_HUD_power, cockpit_device_id=devices.HUD, value_down = 1, name = _('HUD Power On'), category = _('PDCP')},
{down = device_commands.DISP_HUD_power, cockpit_device_id=devices.HUD, value_down = -1, name = _('HUD Power Off'), category = _('PDCP')},

{down = device_commands.DISP_HUD_declutter,     up = device_commands.DISP_HUD_declutter, value_down = 1, value_up = -1, cockpit_device_id=devices.HUD, name = _('HUD Declutter On, else Off'), category = _('PDCP')},
{down = device_commands.DISP_HUD_declutter,     up = device_commands.DISP_HUD_declutter, value_down = -1, value_up = 1, cockpit_device_id=devices.HUD, name = _('HUD Declutter Off, else On'), category = _('PDCP')},
{down = device_commands.DISP_HUD_declutter, cockpit_device_id=devices.HUD, value_down = 1, name = _('HUD Declutter On'), category = _('PDCP')},
{down = device_commands.DISP_HUD_declutter, cockpit_device_id=devices.HUD, value_down = -1, name = _('HUD Declutter Off'), category = _('PDCP')},

{down = device_commands.DISP_HUD_AWL_mode,     up = device_commands.DISP_HUD_AWL_mode, value_down = 1, value_up = -1, cockpit_device_id=devices.HUD, name = _('HUD AWL ILS, else ACL'), category = _('PDCP')},
{down = device_commands.DISP_HUD_AWL_mode,     up = device_commands.DISP_HUD_AWL_mode, value_down = -1, value_up = 1, cockpit_device_id=devices.HUD, name = _('HUD AWL ACL, else ILS'), category = _('PDCP')},
{down = device_commands.DISP_HUD_AWL_mode, cockpit_device_id=devices.HUD, value_down = 1, name = _('HUD AWL ILS'), category = _('PDCP')},
{down = device_commands.DISP_HUD_AWL_mode, cockpit_device_id=devices.HUD, value_down = -1, name = _('HUD AWL ACL'), category = _('PDCP')},

{down = device_commands.DISP_HSD_ECMD_power,     up = device_commands.DISP_HSD_ECMD_power, value_down = 1, value_up = -1, cockpit_device_id=devices.HSD, name = _('HSD/ECM Power On, else Off'), category = _('PDCP')},
{down = device_commands.DISP_HSD_ECMD_power,     up = device_commands.DISP_HSD_ECMD_power, value_down = -1, value_up = 1, cockpit_device_id=devices.HSD, name = _('HSD/ECM Power Off, else On'), category = _('PDCP')},
{down = device_commands.DISP_HSD_ECMD_power, cockpit_device_id=devices.HSD, value_down = 1, name = _('HSD/ECM Power On'), category = _('PDCP')},
{down = device_commands.DISP_HSD_ECMD_power, cockpit_device_id=devices.HSD, value_down = -1, name = _('HSD/ECM Power Off'), category = _('PDCP')},

{down = device_commands.HSD_Display_Mode_Cycle,     up = device_commands.HSD_Display_Mode_Cycle, value_down = 1, value_up = -1, cockpit_device_id=devices.HSD, name = _('HSD Mode NAV, else TID'), category = _('PDCP')},
{down = device_commands.HSD_Display_Mode_Cycle,     up = device_commands.HSD_Display_Mode_Cycle, value_down = -1, value_up = 1, cockpit_device_id=devices.HSD, name = _('HSD Mode TID, else NAV'), category = _('PDCP')},
{down = device_commands.HSD_Display_Mode_Cycle, cockpit_device_id=devices.HSD, value_down = 1, name = _('HSD Mode NAV'), category = _('PDCP')},
{down = device_commands.HSD_Display_Mode_Cycle, cockpit_device_id=devices.HSD, value_down = -1, name = _('HSD Mode TID'), category = _('PDCP')},

{down = device_commands.HSD_ECM_Override,     up = device_commands.HSD_ECM_Override, value_down = 1, value_up = -1, cockpit_device_id=devices.HSD, name = _('HSD ECM ORIDE, else OFF'), category = _('PDCP')},
{down = device_commands.HSD_ECM_Override,     up = device_commands.HSD_ECM_Override, value_down = -1, value_up = 1, cockpit_device_id=devices.HSD, name = _('HSD Mode OFF, else ORIDE'), category = _('PDCP')},
{down = device_commands.HSD_ECM_Override, cockpit_device_id=devices.HSD, value_down = 1, name = _('HSD ECM ORIDE'), category = _('PDCP')},
{down = device_commands.HSD_ECM_Override, cockpit_device_id=devices.HSD, value_down = -1, name = _('HSD ECM OFF'), category = _('PDCP')},

{down = device_commands.NAV_Btn_Steer_TCN,     up = device_commands.NAV_Btn_Steer_TCN, value_down = 1, value_up = 0, cockpit_device_id=devices.NAV_INTERFACE, name = _('STEER CMD TACAN'), category = _('PDCP')},
{down = device_commands.NAV_Btn_Steer_DEST,     up = device_commands.NAV_Btn_Steer_DEST, value_down = 1, value_up = 0, cockpit_device_id=devices.NAV_INTERFACE, name = _('STEER CMD Destination'), category = _('PDCP')},
{down = device_commands.NAV_Btn_Steer_AWL_PCD,     up = device_commands.NAV_Btn_Steer_AWL_PCD, value_down = 1, value_up = 0, cockpit_device_id=devices.NAV_INTERFACE, name = _('STEER CMD AWL/PCD'), category = _('PDCP')},
{down = device_commands.NAV_Btn_Steer_VEC,     up = device_commands.NAV_Btn_Steer_VEC, value_down = 1, value_up = 0, cockpit_device_id=devices.NAV_INTERFACE, name = _('STEER CMD VEC'), category = _('PDCP')},
{down = device_commands.NAV_Btn_Steer_MAN,     up = device_commands.NAV_Btn_Steer_MAN, value_down = 1, value_up = 0, cockpit_device_id=devices.NAV_INTERFACE, name = _('STEER CMD MAN'), category = _('PDCP')},

-- Master WLP_Master_Caution_RIO
{combos = {{key = 'M', reformers = {'LAlt'}}} , 			down=device_commands.WLP_Master_Caution_Pilot, 	cockpit_device_id=devices.WARNINGLIGHTS, value_down=1.0, name = _('Master Caution Reset'), category = _('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover_Toggle, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('ACM cover toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('ACM cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_ACM_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('ACM cover close'), category=_('ACM Panel')},


-- Trimmer


-- Airbrake
{combos={{key='B',reformers={'LCtrl'}}},			up=device_commands.SPEEDBRAKE_ExtendRetract, pressed=device_commands.SPEEDBRAKE_ExtendRetract, 	cockpit_device_id=devices.GEARHOOK, value_up=0.0, value_pressed=1.0, 	name=_('Speed brake extend'),category=_('Gears, brakes, and hook')},
{combos={{key='B',reformers={'LShift'}}},			up=device_commands.SPEEDBRAKE_ExtendRetract, pressed=device_commands.SPEEDBRAKE_ExtendRetract, 	cockpit_device_id=devices.GEARHOOK, value_up=0.0, value_pressed=-1.0,	name=_('Speed brake retract'),category=_('Gears, brakes, and hook')},


-- Flaps
{combos = {{key = 'F'}}, 									down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=0.0, name = _('Flaps Down'), category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LShift'}}} , 			down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=1.0, name = _('Flaps Up'), category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LCtrl'}}}, 			down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=-1, name = _('Emergency Flaps Down'), category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LCtrl','LShift'}}} , 	down=device_commands.FLAPS_Lever, 	cockpit_device_id=devices.FLAPS, value_down=2.0, name = _('Emergency Flaps Up'), category = _('Flight Control')},

-- ACM Panel
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=-1.0, name=_('Master arm cover toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm cover close'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_And_Cover, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm on and cover open'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm_And_Cover, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm off and cover close'), category=_('ACM Panel')},
{down = device_commands.WEAP_Master_Arm_And_Cover,     up = device_commands.WEAP_Master_Arm_And_Cover, value_down = 1, value_up = 0, cockpit_device_id=devices.WEAPONS, name = _('Master Arm On and Cover Open, else Safe and Closed'), category = _('ACM Panel')},
{down = device_commands.WEAP_Master_Arm_And_Cover,     up = device_commands.WEAP_Master_Arm_And_Cover, value_down = 0, value_up = 1, cockpit_device_id=devices.WEAPONS, name = _('Master Arm Safe and Cover Closed, else Open and Armed'), category = _('ACM Panel')},

{down = device_commands.WEAP_ACM_Cover,     up = device_commands.WEAP_ACM_Cover, value_down = 1, value_up = 0, cockpit_device_id=devices.WEAPONS, name = _('ACM Cover Open, else Closed'), category = _('ACM Panel')},
{down = device_commands.WEAP_ACM_Cover,     up = device_commands.WEAP_ACM_Cover, value_down = 0, value_up = 1, cockpit_device_id=devices.WEAPONS, name = _('ACM Cover Closed, else Open'), category = _('ACM Panel')},

{ down=device_commands.WEAP_ACM_Jettison, up=device_commands.WEAP_ACM_Jettison, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('ACM Jettison'), category=_('ACM Panel')},
{ down=device_commands.WEAP_MSL_Mode, up=device_commands.WEAP_MSL_Mode, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Missile mode toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Gun_Rate, up=device_commands.WEAP_Gun_Rate, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Gun rate toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_SW_Cool, up=device_commands.WEAP_SW_Cool, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('AIM-9 cooling toggle'), category=_('ACM Panel')},
{ down=device_commands.WEAP_MSL_Prep, up=device_commands.WEAP_MSL_Prep, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Missile prepare toggle'), category=_('ACM Panel')},

{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=-1.0, name=_('Master arm on'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=0.0, name=_('Master arm off'), category=_('ACM Panel')},
{ down=device_commands.WEAP_Master_Arm, cockpit_device_id=devices.WEAPONS, value_down=1.0, name=_('Master arm training'), category=_('ACM Panel')},

{ down=device_commands.WEAP_Target_designate_up, up=device_commands.WEAP_Target_designate_up, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate up / VSL HI'), category=_('Left sidewall')},
{ down=device_commands.WEAP_Target_designate_fwd, up=device_commands.WEAP_Target_designate_fwd, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate fwd / PAL'), category=_('Left sidewall')},
{ down=device_commands.WEAP_Target_designate_down, up=device_commands.WEAP_Target_designate_down, cockpit_device_id=devices.WEAPONS, value_down=1.0, value_up=0.0, name=_('Target designate down / VSL LO'), category=_('Left sidewall')},




--************************************* Jester AI  ******************************************************************

--Menu
{combos = {{key = 'A'}},		 cockpit_device_id=devices.JESTERAI, up =device_commands.JESTER_ToggleMenu ,down=device_commands.JESTER_ToggleMenu, value_up=-1.0, value_down=1.0,	name=_('Toggle Menu'),	 category=_('Jester AI')},
{combos = {{key = '1',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command1, value_down=1.0,	name=_('Command 1'),	 category=_('Jester AI')},
{combos = {{key = '2',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command2, value_down=1.0,	name=_('Command 2'),	 category=_('Jester AI')},
{combos = {{key = '3',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command3, value_down=1.0,	name=_('Command 3'),	 category=_('Jester AI')},
{combos = {{key = '4',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command4, value_down=1.0,	name=_('Command 4'),	 category=_('Jester AI')},
{combos = {{key = '5',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command5, value_down=1.0,	name=_('Command 5'),	 category=_('Jester AI')},
{combos = {{key = '6',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command6, value_down=1.0,	name=_('Command 6'),	 category=_('Jester AI')},
{combos = {{key = '7',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command7, value_down=1.0,	name=_('Command 7'),	 category=_('Jester AI')},
{combos = {{key = '8',reformers={'LCtrl'}}},		 cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Command8, value_down=1.0,	name=_('Command 8'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuHorizontal, up=device_commands.JESTER_MenuHorizontal, value_down=-1.0, value_up=0.0, name=_('Jester Menu Left'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuHorizontal, up=device_commands.JESTER_MenuHorizontal, value_down=1.0, value_up=0.0, name=_('Jester Menu Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuVertical, up=device_commands.JESTER_MenuVertical, value_down=1.0, value_up=0.0, name=_('Jester Menu Up'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuVertical, up=device_commands.JESTER_MenuVertical, value_down=-1.0, value_up=0.0, name=_('Jester Menu Down'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag45, up=device_commands.JESTER_MenuDiag45, value_down=-1.0, value_up=0.0, name=_('Jester Menu Down Left'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag45, up=device_commands.JESTER_MenuDiag45, value_down=1.0, value_up=0.0, name=_('Jester Menu Up Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag135, up=device_commands.JESTER_MenuDiag135, value_down=1.0, value_up=0.0, name=_('Jester Menu Down Right'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_MenuDiag135, up=device_commands.JESTER_MenuDiag135, value_down=-1.0, value_up=0.0, name=_('Jester Menu Up Left'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Check, value_down=1.0,  name=_('Check'),	 category=_('Jester AI')},
{cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_LoudAndClear, value_down=1.0, name=_('Loud and Clear'),	 category=_('Jester AI')},


-- Nav related commands
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_SP1, value_down=1.0,	name=_('Nav - Set Steerpoint SP 1'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_SP2, value_down=1.0,	name=_('Nav - Set Steerpoint SP 2'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_SP3, value_down=1.0,	name=_('Nav - Set Steerpoint SP 3'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_FP , value_down=1.0,	name=_('Nav - Set Steerpoint Fixed Point'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_IP , value_down=1.0,	name=_('Nav - Set Steerpoint Initial Point'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_ST , value_down=1.0,	name=_('Nav - Set Steerpoint Surface Target'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_HB , value_down=1.0,	name=_('Nav - Set Steerpoint Home Base'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_Steerpoint_MAN, value_down=1.0,	name=_('Nav - Set Steerpoint Man'),	 category=_('Jester AI')},

-- Radar related Commands
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_VSL_High , value_down=1.0,	name=_('Radar - VSL High'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_VSL_Low, value_down=1.0,	name=_('Radar - VSL Low'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_TogglePDorPStt, value_down=1.0,	name=_('Radar - Toggle PD-STT or P-STT'),	 category=_('Jester AI')},
{ cockpit_device_id=devices.JESTERAI, down=device_commands.JESTER_BreakLock, value_down=1.0,	name=_('Radar - Break Lock'),	 category=_('Jester AI')},








--************************************* GEARS, G. Brakes and Drag chute  ******************************************************************

-- Gears
--{combos={{key='G'}}, 								down=device_commands.GEAR_Handle, 	cockpit_device_id=devices.GEARHOOK, value_down=1.0,	name='Gear Toggle',			category='Gears, brakes, and hook'},
{combos={{key='G',reformers={'LCtrl'}}},			down=device_commands.GEAR_Handle, 	cockpit_device_id=devices.GEARHOOK, value_down=1.0, 	name=_('Gears Down'),			 category=_('Gears, brakes, and hook')},
{combos={{key='G',reformers={'LShift'}}},			down=device_commands.GEAR_Handle, 	cockpit_device_id=devices.GEARHOOK, value_down=0,		name=_('Gears Up'),			 category=_('Gears, brakes, and hook')},
{combos={{key='G',reformers={'LCtrl','LShift'}}},	down=device_commands.GEAR_Handle,	cockpit_device_id=devices.GEARHOOK,	value_down=-1.0,	name=_('Gear Emergency Extend'),category=_('Gears, brakes, and hook')},
{combos={{key='G'}},								down=device_commands.GEAR_Toggle, 	cockpit_device_id=devices.GEARHOOK, value_down=0,		name=_('Gears Toggle'),			 category=_('Gears, brakes, and hook')},

{down = device_commands.GEAR_Handle,     up = device_commands.GEAR_Handle, value_down = 1, value_up = 0, cockpit_device_id=devices.GEARHOOK, name = _('Gear Down, else Up'), category = _('Gears, brakes, and hook')},
{down = device_commands.GEAR_Handle,     up = device_commands.GEAR_Handle, value_down = 0, value_up = 1, cockpit_device_id=devices.GEARHOOK, name = _('Gear Up, else Down'), category = _('Gears, brakes, and hook')},

--Hook
{combos={{key='H',reformers={'LCtrl'}}},			down=device_commands.HOOK_Handle,cockpit_device_id=devices.GEARHOOK,	value_down=1.0,	name=_('Hook Extend'),category=_('Gears, brakes, and hook')},
{combos={{key='H',reformers={'LShift'}}},			down=device_commands.HOOK_Handle,cockpit_device_id=devices.GEARHOOK,	value_down=0,	name=_('Hook Retract'),category=_('Gears, brakes, and hook')},

{down = device_commands.HOOK_Handle,     up = device_commands.HOOK_Handle, value_down = 1, value_up = 0, cockpit_device_id=devices.GEARHOOK, name = _('Hook Extend, else Retract'), category = _('Gears, brakes, and hook')},
{down = device_commands.HOOK_Handle,     up = device_commands.HOOK_Handle, value_down = 0, value_up = 1, cockpit_device_id=devices.GEARHOOK, name = _('Hook Retract, else Extend'), category = _('Gears, brakes, and hook')},


-- Wheel brake
{combos={{key='W'}},			up=iCommandWheelBrake, pressed=iCommandWheelBrake, 			 value_up=-1.0, value_pressed=1.0,	name=_('Wheel Brake both'),  category=_('Gears, brakes, and hook')},
{								up=iCommandLeftWheelBrake, pressed=iCommandLeftWheelBrake, 	 value_up=-1.0, value_pressed=1.0,	name=_('Wheel Brake Left'),  category=_('Gears, brakes, and hook')},
{								up=iCommandRightWheelBrake, pressed=iCommandRightWheelBrake, value_up=-1.0, value_pressed=1.0,	name=_('Wheel Brake Right'), category=_('Gears, brakes, and hook')},


--*************** CMS *****************************
{combos = {{key = 'E'}}, down = device_commands.DECM_Jam_Toggle, cockpit_device_id=devices.DECM, value_down = 1, name = _('ECM Jam Toggle'), category = _('Countermeasures')},

--*************** RWR *****************************
{pressed = device_commands.RWR_Brightness_Pilot_Step, cockpit_device_id = devices.RWR, value_pressed = 1.0, value_up = 0, name = _('RWR Brightness Pilot Inc'), category = _('RWR')},
{pressed = device_commands.RWR_Brightness_Pilot_Step, cockpit_device_id = devices.RWR, value_pressed = -1.0, value_up = 0, name = _('RWR Brightness Pilot Dec'), category = _('RWR')},

--*************** Nav Wpt *********************
{combos = {{key = '`', reformers = {'LCtrl'}}}, down = device_commands.Mission_WPT_Next, cockpit_device_id=devices.NAV_INTERFACE, value_down = 1, value_up = 0, name = _('Next Waypoint'), category = _('Navigation')},
{combos = {{key = '`', reformers = {'LShift'}}}, down = device_commands.Mission_WPT_Prev, cockpit_device_id=devices.NAV_INTERFACE, value_down = 1, value_up = 0, name = _('Previous Waypoint'), category = _('Navigation')},


--**************************************--
---Cockpit mechanics
{combos = {{key='E',reformers={'LShift'}}}, down = device_commands.EJECT_ArmPilotToggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down = -1, name = _('Toggle Arm Ejection Seat'), category = _('Cockpit Mechanics')},

--***************************************** Lights *************************************************************
{ down=device_commands.LIGHTS_PositionWings, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Position Wing OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionWings, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Position Wing BRT'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionWings, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, name=_('Lights Position Wing DIM'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionWings_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Position Wing Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionTail, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Position Tail OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionTail, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Position Tail BRT'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionTail, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, name=_('Lights Position Tail DIM'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionTail_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Position Tail Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionFlash, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Position STEADY'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionFlash, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Position FLASH'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_PositionFlash_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Position FLASH/STEADY Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_AntiCol, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Anti Collision OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_AntiCol, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Anti Collision ON'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_AntiCol_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Anti Collision Toggle'),	 category=_('Lights')},
{ down=device_commands.AoA_HookBypass, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Hook Bypass CARRIER'),	 category=_('Lights')},
{ down=device_commands.AoA_HookBypass, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Hook Bypass FIELD'),	 category=_('Lights')},
{ down=device_commands.AoA_HookBypass_Toggle, cockpit_device_id=devices.AOASYSTEM, value_down=1.0, value_up=0.0, name=_('Lights Hook Bypass Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_Taxi, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Taxi OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_Taxi, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Taxi ON'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_Taxi_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Taxi Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_WhiteFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights White Flood OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_WhiteFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights White Flood BRT'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_WhiteFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, name=_('Lights White Flood DIM'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_WhiteFlood_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights White Flood Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_RedFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=0.0, name=_('Lights Red Flood OFF'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_RedFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, name=_('Lights Red Flood BRT'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_RedFlood, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1.0, name=_('Lights Red Flood DIM'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_RedFlood_Toggle, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1.0, value_up=0.0, name=_('Lights Red Flood Toggle'),	 category=_('Lights')},
{ down=device_commands.LIGHTS_ACMPanel_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1, value_up=0, name = _('Lights ACM Brightnes Up'), category = _('Lights')},
{ down=device_commands.LIGHTS_ACMPanel_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1, value_up=0, name = _('Lights ACM Brightnes Down'), category = _('Lights')},
{ down=device_commands.AoA_IndexerStrength_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1, value_up=0, name = _('Lights Indexer Brightnes Up'), category = _('Lights')},
{ down=device_commands.AoA_IndexerStrength_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1, value_up=0, name = _('Lights Indexer Brightnes Down'), category = _('Lights')},
{ down=device_commands.LIGHTS_Instruments_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1, value_up=0, name = _('Lights Instrument Brightnes Up'), category = _('Lights')},
{ down=device_commands.LIGHTS_Instruments_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1, value_up=0, name = _('Lights Instrument Brightnes Down'), category = _('Lights')},
{ down=device_commands.LIGHTS_Console_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1, value_up=0, name = _('Lights Console Brightnes Up'), category = _('Lights')},
{ down=device_commands.LIGHTS_Console_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1, value_up=0, name = _('Lights Console Brightnes Down'), category = _('Lights')},
{ down=device_commands.LIGHTS_Formation_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=1, value_up=0, name = _('Lights Formation Brightnes Up'), category = _('Lights')},
{ down=device_commands.LIGHTS_Formation_Step, cockpit_device_id=devices.COCKPITMECHANICS, value_down=-1, value_up=0, name = _('Lights Formation Brightnes Down'), category = _('Lights')},

--***************************************** Radio *************************************************************
{combos = {{key = '\\', reformers = {'RAlt'}}}, down = device_commands.RADIO_ICS_Button_UHF1_Pilot, up = device_commands.RADIO_ICS_Button_UHF1_Pilot, cockpit_device_id = devices.ICS, value_down = 1, value_up = 0, name = _('Mic Button UHF1 (ARC-159)'), category = _('Radio')},
{combos = {{key = '\\', reformers = {'RCtrl'}}}, down = device_commands.RADIO_ICS_Button_UHF2_Pilot, up = device_commands.RADIO_ICS_Button_UHF2_Pilot, cockpit_device_id = devices.ICS, value_down = 1, value_up = 0, name = _('Mic Button UHF2 (ARC-182)'), category = _('Radio')},
{combos = {{key = '\\', reformers = {'RShift'}}},down=device_commands.RADIO_ICS_Button_ICS_Pilot, up=device_commands.RADIO_ICS_Button_ICS_Pilot, cockpit_device_id=devices.ICS, value_down=1.0, value_up=0.0, name=_('Mic Button ICS'), category=_('Radio')},
-- ARC-159
{pressed = device_commands.RADIO_UHF_VOL_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = 1.0, value_up = 0, name = _('UHF ARC-159 Volume Pilot Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_UHF_VOL_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = -1.0, value_up = 0, name = _('UHF ARC-159 Volume Pilot Dec'), category = _('Radio')},
{down = device_commands.RADIO_UHF_SQL_TOGGLE_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 Squelch Toggle'), category = _('Radio')},
{down = device_commands.RADIO_UHF_SQL_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, name = _('UHF ARC-159 Squelch SQL'), category = _('Radio')},
{down = device_commands.RADIO_UHF_SQL_Pilot, cockpit_device_id = devices.ARC159, value_down = 0, name = _('UHF ARC-159 Squelch OFF'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_HUNDRED_TEN_Pilot, up = device_commands.RADIO_UHF_FREQ_HUNDRED_TEN_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 10 MHz Switch Up'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_HUNDRED_TEN_Pilot, up = device_commands.RADIO_UHF_FREQ_HUNDRED_TEN_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 10 MHz Switch Down'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_UNIT_Pilot, up = device_commands.RADIO_UHF_FREQ_UNIT_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 1 MHz Switch Up'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_UNIT_Pilot, up = device_commands.RADIO_UHF_FREQ_UNIT_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 1 MHz Switch Down'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_TEHTH_Pilot, up = device_commands.RADIO_UHF_FREQ_TEHTH_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 0.1 MHz Switch Up'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_TEHTH_Pilot, up = device_commands.RADIO_UHF_FREQ_TEHTH_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 0.1 MHz Switch Down'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_HUNDREDTH_Pilot, up = device_commands.RADIO_UHF_FREQ_HUNDREDTH_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 0.025 MHz Switch Up'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_HUNDREDTH_Pilot, up = device_commands.RADIO_UHF_FREQ_HUNDREDTH_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 0.025 MHz Switch Down'), category = _('Radio')},
{pressed = device_commands.RADIO_UHF_BRT_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = 1.0, value_up = 0, name = _('UHF ARC-159 BRT Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_UHF_BRT_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = -1.0, value_up = 0, name = _('UHF ARC-159 BRT Dec'), category = _('Radio')},
{pressed = device_commands.RADIO_UHF_Remote_DISP_BRT_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = 1.0, value_up = 0, name = _('UHF ARC-159 Remote BRT Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_UHF_Remote_DISP_BRT_STEP_Pilot, cockpit_device_id = devices.ARC159, value_pressed = -1.0, value_up = 0, name = _('UHF ARC-159 Remote BRT Dec'), category = _('Radio')},
{down = device_commands.RADIO_UHF_Remote_DISP_TEST_Pilot, up = device_commands.RADIO_UHF_Remote_DISP_TEST_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, value_up = 0,name = _('UHF ARC-159 Remote TEST'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, name = _('UHF ARC-159 Function OFF'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_Pilot, cockpit_device_id = devices.ARC159, value_down = 2.0/3.0, name = _('UHF ARC-159 Function MAIN'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0/3.0, name = _('UHF ARC-159 Function BOTH'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_Pilot, cockpit_device_id = devices.ARC159, value_down = 0.0, name = _('UHF ARC-159 Function ADF'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 Function Inc'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FUNC_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 Function Dec'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_MODE_Pilot, cockpit_device_id = devices.ARC159, value_down = 0, name = _('UHF ARC-159 Mode GUARD'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_MODE_Pilot, cockpit_device_id = devices.ARC159, value_down = 0.5, name = _('UHF ARC-159 Mode MANUAL'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_MODE_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, name = _('UHF ARC-159 Mode PRESET'), category = _('Radio')},
{down = device_commands.RADIO_UHF_READ_Pilot, up = device_commands.RADIO_UHF_READ_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, value_up = 0,name = _('UHF ARC-159 READ'), category = _('Radio')},
{down = device_commands.RADIO_UHF_LOAD_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, value_up = 0,name = _('UHF ARC-159 LOAD'), category = _('Radio')},
{down = device_commands.RADIO_UHF_TONE_Pilot, up = device_commands.RADIO_UHF_TONE_Pilot, cockpit_device_id = devices.ARC159, value_down = 1.0, value_up = 0,name = _('UHF ARC-159 TONE'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_MODE_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 Mode Inc'), category = _('Radio')},
{down = device_commands.RADIO_UHF_FREQ_MODE_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 Mode Dec'), category = _('Radio')},
{down = device_commands.RADIO_UHF_CHAN_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = 1, value_up = 0, name = _('UHF ARC-159 CHAN SEL Inc'), category = _('Radio')},
{down = device_commands.RADIO_UHF_CHAN_STEP_Pilot, cockpit_device_id = devices.ARC159, value_down = -1, value_up = 0, name = _('UHF ARC-159 CHAN SEL Dec'), category = _('Radio')},

-- ARC-182
{pressed = device_commands.RADIO_VHF_VOL_STEP_PILOT, cockpit_device_id = devices.ARC182, value_pressed = 1.0, value_up = 0, name = _('VHF/UHF ARC-182 Volume Pilot Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_VHF_VOL_STEP_PILOT, cockpit_device_id = devices.ARC182, value_pressed = -1.0, value_up = 0, name = _('VHF/UHF ARC-182 Volume Pilot Dec'), category = _('Radio')},
{pressed = device_commands.RADIO_VHF_Remote_DISP_BRT_STEP_Pilot, cockpit_device_id = devices.ARC182, value_pressed = 1.0, value_up = 0, name = _('VHF/UHF ARC-182 Remote BRT Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_VHF_Remote_DISP_BRT_STEP_Pilot, cockpit_device_id = devices.ARC182, value_pressed = -1.0, value_up = 0, name = _('VHF/UHF ARC-182 Remote BRT Dec'), category = _('Radio')},
{down = device_commands.RADIO_VHF_Remote_DISP_TEST_Pilot, up = device_commands.RADIO_VHF_Remote_DISP_TEST_Pilot, cockpit_device_id = devices.ARC182, value_down = 1.0, value_up = 0,name = _('VHF/UHF ARC-182 Remote TEST'), category = _('Radio')},

-- ICS
{pressed = device_commands.RADIO_ICS_Vol_Step_Pilot, cockpit_device_id = devices.ICS, value_pressed = 1.0, value_up = 0, name = _('ICS Volume Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_ICS_Vol_Step_Pilot, cockpit_device_id = devices.ICS, value_pressed = -1.0, value_up = 0, name = _('ICS Volume Dec'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Ampl_Pilot, cockpit_device_id = devices.ICS, value_down = 0, name = _('ICS Amplifier B/U'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Ampl_Pilot, cockpit_device_id = devices.ICS, value_down = 0.5, name = _('ICS Amplifier NORM'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Ampl_Pilot, cockpit_device_id = devices.ICS, value_down = 1, name = _('ICS Amplifier EMER'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Func_Pilot, cockpit_device_id = devices.ICS, value_down = 0, name = _('ICS Function COLD MIC'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Func_Pilot, cockpit_device_id = devices.ICS, value_down = 0.5, name = _('ICS Function HOT MIC'), category = _('Radio')},
{down = device_commands.RADIO_ICS_Func_Pilot, cockpit_device_id = devices.ICS, value_down = 1, name = _('ICS Function RADIO OVERRIDE'), category = _('Radio')},

-- TONE
--{pressed = device_commands.RADIO_ICS_Vol_Step_ALR45, cockpit_device_id = devices.ICS, value_pressed = 1.0, value_up = 0, name = _('ALR-45 Volume Inc'), category = _('Radio')},
--{pressed = device_commands.RADIO_ICS_Vol_Step_ALR45, cockpit_device_id = devices.ICS, value_pressed = -1.0, value_up = 0, name = _('ALR-45 Volume Dec'), category = _('Radio')},
--{pressed = device_commands.RADIO_ICS_Vol_Step_ALR50, cockpit_device_id = devices.ICS, value_pressed = 1.0, value_up = 0, name = _('ALR-50 Volume Inc'), category = _('Radio')},
--{pressed = device_commands.RADIO_ICS_Vol_Step_ALR50, cockpit_device_id = devices.ICS, value_pressed = -1.0, value_up = 0, name = _('ALR-50 Volume Dec'), category = _('Radio')},
{pressed = device_commands.RADIO_ICS_Vol_Step_ALR67_Pilot, cockpit_device_id = devices.ICS, value_pressed = 1.0, value_up = 0, name = _('ALR-67 Volume Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_ICS_Vol_Step_ALR67_Pilot, cockpit_device_id = devices.ICS, value_pressed = -1.0, value_up = 0, name = _('ALR-67 Volume Dec'), category = _('Radio')},
{pressed = device_commands.RADIO_ICS_Vol_Sidewinder, cockpit_device_id = devices.ICS, value_pressed = 1.0, value_up = 0, name = _('Sidewinder Volume Inc'), category = _('Radio')},
{pressed = device_commands.RADIO_ICS_Vol_Sidewinder, cockpit_device_id = devices.ICS, value_pressed = -1.0, value_up = 0, name = _('Sidewinder Volume Dec'), category = _('Radio')},

-- TACAN
{down = device_commands.TACAN_Knob_Func_Pilot, cockpit_device_id = devices.TACAN, value_down = 0.0/4.0, name = _('TACAN Function OFF'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_Pilot, cockpit_device_id = devices.TACAN, value_down = 1.0/4.0, name = _('TACAN Function REC'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_Pilot, cockpit_device_id = devices.TACAN, value_down = 2.0/4.0, name = _('TACAN Function T/R'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_Pilot, cockpit_device_id = devices.TACAN, value_down = 3.0/4.0, name = _('TACAN Function A/A'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_Pilot, cockpit_device_id = devices.TACAN, value_down = 4.0/4.0, name = _('TACAN Function BCN'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_STEP_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN Function Inc'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Func_STEP_Pilot, cockpit_device_id = devices.TACAN, value_down = -1, value_up = 0, name = _('TACAN Function Dec'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Chnl_Tens_Step_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN Channel 10 Inc'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Chnl_Tens_Step_Pilot, cockpit_device_id = devices.TACAN, value_down = -1, value_up = 0, name = _('TACAN Channel 10 Dec'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Chnl_Ones_Step_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN Channel 1 Inc'), category = _('TACAN')},
{down = device_commands.TACAN_Knob_Chnl_Ones_Step_Pilot, cockpit_device_id = devices.TACAN, value_down = -1, value_up = 0, name = _('TACAN Channel 1 Dec'), category = _('TACAN')},
{down = device_commands.TACAN_Mode_X_Y_Pilot, cockpit_device_id = devices.TACAN, value_down = 0, name = _('TACAN MODE X'), category = _('TACAN')},
{down = device_commands.TACAN_Mode_X_Y_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, name = _('TACAN MODE Y'), category = _('TACAN')},
{down = device_commands.TACAN_Mode_X_Y_TOGGLE_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN MODE X/Y Toggle'), category = _('TACAN')},
{down = device_commands.TACAN_Btn_BIT_Pilot, up = device_commands.TACAN_Btn_BIT_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN BIT Button'), category = _('TACAN')},
{down = device_commands.TACAN_CMD_Btn_Pilot, up = device_commands.TACAN_CMD_Btn_Pilot, cockpit_device_id = devices.TACAN, value_down = 1, value_up = 0, name = _('TACAN CMD Button'), category = _('TACAN')},
{pressed = device_commands.TACAN_Knob_Vol_STEP_Pilot, cockpit_device_id = devices.TACAN, value_pressed = 1.0, value_up = 0, name = _('TACAN Volume Inc'), category = _('TACAN')},
{pressed = device_commands.TACAN_Knob_Vol_STEP_Pilot, cockpit_device_id = devices.TACAN, value_pressed = -1.0, value_up = 0, name = _('TACAN Volume Dec'), category = _('TACAN')},

-- ILS
{down = device_commands.ARA63_Power_Switch, cockpit_device_id = devices.ILS, value_down = 1, name = _('ILS Power ON'), category = _('ILS')},
{down = device_commands.ARA63_Power_Switch, cockpit_device_id = devices.ILS, value_down = 0, name = _('ILS Power OFF'), category = _('ILS')},
{down = device_commands.ARA63_Power_Switch_Toggle, cockpit_device_id = devices.ILS, value_down = 1, value_up = 0, name = _('ILS Power Toggle'), category = _('ILS')},
{down = device_commands.ARA63_BIT_Btn, up = device_commands.ARA63_BIT_Btn, cockpit_device_id = devices.ILS, value_down = 1, value_up = 0, name = _('ILS BIT pushbutton'), category = _('ILS')},
{down = device_commands.ARA63_Chnl_Knob_Step, cockpit_device_id = devices.ILS, value_down = 1, value_up = 0, name = _('ILS Channel Inc'), category = _('ILS')},
{down = device_commands.ARA63_Chnl_Knob_Step, cockpit_device_id = devices.ILS, value_down = -1, value_up = 0, name = _('ILS Channel Dec'), category = _('ILS')},

-- COMPASS / AHRS
{down = device_commands.AHRS_HDG_PushButton, up = device_commands.AHRS_HDG_PushButton, cockpit_device_id = devices.AHRS, value_down = 1, value_up = 0, name = _('Compas HDG pushbutton'), category = _('Compass')},
{down = device_commands.AHRS_ModeSwitch, cockpit_device_id = devices.AHRS, value_down = 1.0, name = _('Compass Mode DG'), category = _('Compass')},
{down = device_commands.AHRS_ModeSwitch, cockpit_device_id = devices.AHRS, value_down = 0.0, name = _('Compass Mode SLAVED'), category = _('Compass')},
{down = device_commands.AHRS_ModeSwitch, cockpit_device_id = devices.AHRS, value_down = -1.0, name = _('Compass Mode COMP'), category = _('Compass')},
{down = device_commands.AHRS_ModeSwitch_STEP, cockpit_device_id = devices.AHRS, value_down = 1, value_up = 0, name = _('Compass Mode Inc'), category = _('Compass')},
{down = device_commands.AHRS_ModeSwitch_STEP, cockpit_device_id = devices.AHRS, value_down = -1, value_up = 0, name = _('Compass Mode Dec'), category = _('Compass')},
{down = device_commands.AHRS_NorthSouth_TOGGLE, cockpit_device_id = devices.AHRS, value_down = 1, value_up = 0, name = _('Compass N-S Hemisphere Switch Toggle'), category = _('Compass')},
{down = device_commands.AHRS_NorthSouth, cockpit_device_id = devices.AHRS, value_down = 1, name = _('Compass N-S Hemisphere Switch: South'), category = _('Compass')},
{down = device_commands.AHRS_NorthSouth, cockpit_device_id = devices.AHRS, value_down = 0, name = _('Compass N-S Hemisphere Switch: North'), category = _('Compass')},
{pressed = device_commands.AHRS_LatCorrection_STEP, cockpit_device_id = devices.AHRS, value_pressed = 1.0, value_up = 0, name = _('Compass LAT Correction Inc'), category = _('Compass')},
{pressed = device_commands.AHRS_LatCorrection_STEP, cockpit_device_id = devices.AHRS, value_pressed = -1.0, value_up = 0, name = _('Compass LAT Correction Dec'), category = _('Compass')},

--
{down = device_commands.TID_VideoExportToggle, cockpit_device_id = devices.TID, value_down = 1, name = _('Video Export Toggle'), category = _('Other')},
-- end of key command
})

return res
