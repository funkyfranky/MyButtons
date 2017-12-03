local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")
local cockpit = folder.."../../../Cockpit/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

join(res.keyCommands,{

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky begin custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SMC	
{down = smc_commands.Switch_Master_Arm, up = smc_commands.Switch_Master_Arm, cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Master Arm Switch ON/OFF'), category = _('_My Buttons')},
{down = smc_commands.Switch_IR_COOL,    up = smc_commands.Switch_IR_COOL,    cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Ground IR Cool Switch ON/OFF'), category = _('_My Buttons')},
{down = smc_commands.Switch_ARMT,       up = smc_commands.Switch_ARMT,       cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Armament Mode Control UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_ARMT,       up = smc_commands.Switch_ARMT,       cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Armament Mode Control DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_FUZE,       up = smc_commands.Switch_FUZE,       cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Fuzing Control UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_FUZE,       up = smc_commands.Switch_FUZE,       cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Fuzing Control DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_QTY_10,     up = smc_commands.Switch_QTY_10,     cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Quantity Selector (Tens) UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_QTY_10,     up = smc_commands.Switch_QTY_10,     cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Quantity Selector (Tens) DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_QTY_01,     up = smc_commands.Switch_QTY_01,     cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Quantity Selector (Units) UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_QTY_01,     up = smc_commands.Switch_QTY_01,     cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Quantity Selector (Units) DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_MULT,       up = smc_commands.Switch_MULT,       cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Multiple Release Control UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_MULT,       up = smc_commands.Switch_MULT,       cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Multiple Release Control DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_100,   up = smc_commands.Switch_INTV_100,   cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Release Interval Control (Hundreds) UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_100,   up = smc_commands.Switch_INTV_100,   cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Release Interval Control (Hundreds) DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_010,   up = smc_commands.Switch_INTV_010,   cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Release Interval Control (Tens) UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_010,   up = smc_commands.Switch_INTV_010,   cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Release Interval Control (Tens) DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_001,   up = smc_commands.Switch_INTV_001,   cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Release Interval Control (Units) UP/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Switch_INTV_001,   up = smc_commands.Switch_INTV_001,   cockpit_device_id = devices.SMC, value_down =-1.0, value_up = 0.0, name = _('Release Interval Control (Units) DOWN/CENTER'), category = _('_My Buttons')},
{down = smc_commands.Button_JETT,       up = smc_commands.Button_JETT,       cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Jettison Stores Button PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_1,          up = smc_commands.Button_1,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 1 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_2,          up = smc_commands.Button_2,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 2 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_3,          up = smc_commands.Button_3,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 3 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_4,          up = smc_commands.Button_4,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 4 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_5,          up = smc_commands.Button_5,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 5 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_6,          up = smc_commands.Button_6,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 6 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Button_7,          up = smc_commands.Button_7,          cockpit_device_id = devices.SMC, value_down = 1.0, value_up = 0.0, name = _('Select Station 7 PUSH/RELEASE'), category = _('_My Buttons')},
{down = smc_commands.Knob_Bomb_Fuze,    up = smc_commands.Knob_Bomb_Fuze,    cockpit_device_id = devices.SMC, value_down = 0.33,value_up = 0.0, name = _('Manual Release Control N+T/NORM'), category = _('_My Buttons')},
{down = smc_commands.Knob_Bomb_Fuze,                                         cockpit_device_id = devices.SMC, value_down = 0.0,                 name = _('Manual Release Control NORM'), category = _('_My Buttons')},
{down = smc_commands.Knob_Bomb_Fuze,                                         cockpit_device_id = devices.SMC, value_down = 0.33,                name = _('Manual Release Control N/T'), category = _('_My Buttons')},
{down = smc_commands.Knob_Bomb_Fuze,                                         cockpit_device_id = devices.SMC, value_down = 0.66,                name = _('Manual Release Control N'), category = _('_My Buttons')},
{down = smc_commands.Knob_Bomb_Fuze,                                         cockpit_device_id = devices.SMC, value_down = 0.99,                name = _('Manual Release Control T'), category = _('_My Buttons')},
	
-- LTEXT	
{down = ext_light_commands.Switch_EXT_LT_NORM_NVG, up = ext_light_commands.Switch_EXT_LT_NORM_NVG, cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.5, name = _('External Lights NVG/NORM'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_EXT_LT_NORM_NVG, up = ext_light_commands.Switch_EXT_LT_NORM_NVG, cockpit_device_id = devices.LTEXT, value_down = 0.0, value_up = 0.5, name = _('External Lights OFF/NVG'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_LANDING_LT,      up = ext_light_commands.Switch_LANDING_LT,      cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.5, name = _('Landing/Taxi Lights HVR/APRCH'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_LANDING_LT,      up = ext_light_commands.Switch_LANDING_LT,      cockpit_device_id = devices.LTEXT, value_down = 0.0, value_up = 0.5, name = _('Landing/Taxi Lights OFF/HVR'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_ANTI_COLL_LT,    up = ext_light_commands.Switch_ANTI_COLL_LT,    cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.0, name = _('Anti-Collision Lights ON/OFF'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_POS_LT,          up = ext_light_commands.Switch_POS_LT,          cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.5, name = _('Position Lights BRT/DIM'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_POS_LT,          up = ext_light_commands.Switch_POS_LT,          cockpit_device_id = devices.LTEXT, value_down = 0.0, value_up = 0.5, name = _('Position Lights OFF/DIM'), category = _('_My Buttons')},
{down = ext_light_commands.Knob_FORM_LT,           up = ext_light_commands.Knob_FORM_LT,           cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.0, name = _('Formation Lights ON/OFF'), category = _('_My Buttons')},
{down = ext_light_commands.Switch_AUX_LT,          up = ext_light_commands.Switch_AUX_LT,          cockpit_device_id = devices.LTEXT, value_down = 1.0, value_up = 0.0, name = _('External Auxiliary Lights Switch ON/OFF'), category = _('_My Buttons')},

-- HUDCONTROL
{down = hud_commands.AltitudeSelector,  up = hud_commands.AltitudeSelector,  cockpit_device_id = devices.HUDCONTROL, value_down = 0.0, value_up = 1.0, name = _('HUD Altitude Selector BARO/RDR'), category = _('_My Buttons')},
{down = hud_commands.AltitudeSelector,                                       cockpit_device_id = devices.HUDCONTROL, value_down = 0.0,                 name = _('HUD Altitude Selector BARO'), category = _('_My Buttons')},
{down = hud_commands.AltitudeSelector,                                       cockpit_device_id = devices.HUDCONTROL, value_down = 1.0,                 name = _('HUD Altitude Selector RDR'), category = _('_My Buttons')},
{down = hud_commands.RejectSwitch,      up = hud_commands.RejectSwitch,      cockpit_device_id = devices.HUDCONTROL, value_down = 0.0, value_up = 0.5, name = _('HUD Symbology Reject Switch NORM/REJ 1'), category = _('_My Buttons')},
{down = hud_commands.RejectSwitch,      up = hud_commands.RejectSwitch,      cockpit_device_id = devices.HUDCONTROL, value_down = 1.0, value_up = 0.5, name = _('HUD Symbology Reject Switch REJ 2/REJ 1'), category = _('_My Buttons')},
{down = hud_commands.RejectSwitch,                                           cockpit_device_id = devices.HUDCONTROL, value_down = 1.0,                 name = _('HUD Symbology Reject Switch REJ 2'), category = _('_My Buttons')},
{down = hud_commands.RejectSwitch,                                           cockpit_device_id = devices.HUDCONTROL, value_down = 0.5,                 name = _('HUD Symbology Reject Switch REJ 1'), category = _('_My Buttons')},
{down = hud_commands.RejectSwitch,                                           cockpit_device_id = devices.HUDCONTROL, value_down = 0.0,                 name = _('HUD Symbology Reject Switch NORM'), category = _('_My Buttons')},
{down = hud_commands.DisplayModeSwitch, up = hud_commands.DisplayModeSwitch, cockpit_device_id = devices.HUDCONTROL, value_down = 0.0, value_up = 0.5, name = _('HUD Mode Selector DAY/AUTO'), category = _('_My Buttons')},
{down = hud_commands.DisplayModeSwitch, up = hud_commands.DisplayModeSwitch, cockpit_device_id = devices.HUDCONTROL, value_down = 1.0, value_up = 0.5, name = _('HUD Mode Selector NIGHT/AUTO'), category = _('_My Buttons')},
{down = hud_commands.DisplayModeSwitch,                                      cockpit_device_id = devices.HUDCONTROL, value_down = 0.0,                 name = _('HUD Mode Selector DAY'), category = _('_My Buttons')},
{down = hud_commands.DisplayModeSwitch,                                      cockpit_device_id = devices.HUDCONTROL, value_down = 0.5,                 name = _('HUD Mode Selector AUTO'), category = _('_My Buttons')},
{down = hud_commands.DisplayModeSwitch,                                      cockpit_device_id = devices.HUDCONTROL, value_down = 1.0,                 name = _('HUD Mode Selector NIGHT'), category = _('_My Buttons')},

-- LTINT
{down = int_light_commands.Knob_Instr_Lights,       up = int_light_commands.Knob_Instr_Lights,       cockpit_device_id = devices.LTINT, value_down = 1.0, value_up = 0.0, name = _('Instrument Lights ON/OFF'), category = _('_My Buttons')},
{down = int_light_commands.Knob_Console_Lights,     up = int_light_commands.Knob_Console_Lights,     cockpit_device_id = devices.LTINT, value_down = 1.0, value_up = 0.0, name = _('Console Lights ON/OFF'), category = _('_My Buttons')},	
{down = int_light_commands.Knob_Flood_Lights,       up = int_light_commands.Knob_Flood_Lights,       cockpit_device_id = devices.LTINT, value_down = 1.0, value_up = 0.0, name = _('Flood Lights ON/OFF'), category = _('_My Buttons')},
{down = int_light_commands.Knob_Annunciator_Lights, up = int_light_commands.Knob_Annunciator_Lights, cockpit_device_id = devices.LTINT, value_down = 0.9, value_up = 0.0, name = _('Annunciator Lights ON/OFF'), category = _('_My Buttons')},	

-- DECS
{down = engine_commands.Switch_H20_DUMP,      up = engine_commands.Switch_H20_DUMP,      cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('H2O Dump Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_H20_DUMP,                                                 cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('H2O Dump Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_H20_DUMP,                                                 cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('H2O Dump Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_ENG_RPM,       up = engine_commands.Switch_ENG_RPM,       cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Engine RPM Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_ENG_RPM,                                                  cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('Engine RPM Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_ENG_RPM,                                                  cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('Engine RPM Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_EFC,           up = engine_commands.Switch_EFC,           cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('EFC Switch POS1/POS2'), category = _('_My Buttons')},
{down = engine_commands.Switch_EFC,                                                      cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('EFC Switch POS1'), category = _('_My Buttons')},
{down = engine_commands.Switch_EFC,                                                      cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('EFC Switch POS2'), category = _('_My Buttons')},
{down = engine_commands.Switch_DECS,          up = engine_commands.Switch_DECS,          cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('DECS Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_MAN_FUEL,      up = engine_commands.Switch_MAN_FUEL,      cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Manual Fuel Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_MAN_FUEL,                                                 cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('Manual Fuel Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_MAN_FUEL,                                                 cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('Manual Fuel Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PROP,     up = engine_commands.Switch_FUEL_PROP,     cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Fuel Proportioner ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PUMP_L,   up = engine_commands.Switch_FUEL_PUMP_L,   cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.5, name = _('Fuel Pump L ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PUMP_L,   up = engine_commands.Switch_FUEL_PUMP_L,   cockpit_device_id = devices.DECS, value_down = 0.0, value_up = 0.5, name = _('Fuel Pump L DC OPR/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PUMP_R,   up = engine_commands.Switch_FUEL_PUMP_R,   cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.5, name = _('Fuel Pump R ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PUMP_R,   up = engine_commands.Switch_FUEL_PUMP_R,   cockpit_device_id = devices.DECS, value_down = 0.0, value_up = 0.5, name = _('Fuel Pump R DC OPR/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_PRESS,    up = engine_commands.Switch_FUEL_PRESS,    cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Air Refueling Probe Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_L,   up = engine_commands.Switch_FUEL_DUMP_L,   cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Fuel Dump L Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_L,                                              cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('Fuel Dump L Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_L,                                              cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('Fuel Dump L Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_R,   up = engine_commands.Switch_FUEL_DUMP_R,   cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Fuel Dump R Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_R,                                              cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('Fuel Dump R Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_FUEL_DUMP_R,                                              cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('Fuel Dump R Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_JPTL,          up = engine_commands.Switch_JPTL,          cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('JPTL Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_JPTL,                                                     cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('JPTL Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_JPTL,                                                     cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('JPTL Switch OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_H20,           up = engine_commands.Switch_H20,           cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.5, name = _('H2O Mode Switch TO/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_H20,           up = engine_commands.Switch_H20,           cockpit_device_id = devices.DECS, value_down = 0.0, value_up = 0.5, name = _('H2O Mode Switch LD/OFF'), category = _('_My Buttons')},
{down = engine_commands.Handle_FUEL_SHUT_OFF, up = engine_commands.Handle_FUEL_SHUT_OFF, cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('Fuel Shutoff Lever DOWN/UP'), category = _('_My Buttons')},
{down = engine_commands.Handle_FUEL_SHUT_OFF,                                            cockpit_device_id = devices.DECS, value_down = 1.0,                 name = _('Fuel Shutoff Lever DOWN'), category = _('_My Buttons')},
{down = engine_commands.Handle_FUEL_SHUT_OFF,                                            cockpit_device_id = devices.DECS, value_down = 0.0,                 name = _('Fuel Shutoff Lever UP'), category = _('_My Buttons')},
{down = engine_commands.Button_CMBT,          up = engine_commands.Button_CMBT,          cockpit_device_id = devices.DECS, value_down = 1.0, value_up = 0.0, name = _('CMBT Thrust Button PUSH/RELEASE'), category = _('_My Buttons')},

-- ECS
{down = psp_commands.Switch_OXY, up = psp_commands.Switch_OXY, cockpit_device_id = devices.ECS, value_down = 1.0, value_up = 0.0, name = _('Oxygen Switch ON/OFF'), category = _('_My Buttons')},
{down = psp_commands.Switch_OXY,                               cockpit_device_id = devices.ECS, value_down = 1.0,                 name = _('Oxygen Switch ON'), category = _('_My Buttons')},
{down = psp_commands.Switch_OXY,                               cockpit_device_id = devices.ECS, value_down = 0.0,                 name = _('Oxygen Switch OFF'), category = _('_My Buttons')},

-- ELECTRIC
{down = elec_commands.Switch_BATT,      up = elec_commands.Switch_BATT,      cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0.5, name = _('Battery ON/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_BATT,      up = elec_commands.Switch_BATT,      cockpit_device_id = devices.ELECTRIC, value_down = 0, value_up = 0.5, name = _('Battery ALERT/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_GEN,       up = elec_commands.Switch_GEN,       cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0.5, name = _('Generator ON/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_GEN,       up = elec_commands.Switch_GEN,       cockpit_device_id = devices.ELECTRIC, value_down = 0, value_up = 0.5, name = _('Generator TEST/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_ENG_START, up = elec_commands.Switch_ENG_START, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0.0, name = _('Engine Start Switch ON/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_APU_GEN,   up = elec_commands.Switch_APU_GEN,   cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0.5, name = _('APU Generator Switch RESET/ON'), category = _('_My Buttons')},
{down = elec_commands.Switch_APU_GEN,   up = elec_commands.Switch_APU_GEN,   cockpit_device_id = devices.ELECTRIC, value_down = 0, value_up = 0.5, name = _('APU Generator Switch OFF/ON'), category = _('_My Buttons')},
{down = elec_commands.Switch_DC_TEST,   up = elec_commands.Switch_DC_TEST,   cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0.5, name = _('DC Test Switch STBY/OFF'), category = _('_My Buttons')},
{down = elec_commands.Switch_DC_TEST,   up = elec_commands.Switch_DC_TEST,   cockpit_device_id = devices.ELECTRIC, value_down = 0, value_up = 0.5, name = _('DC Test Switch MAIN/OFF'), category = _('_My Buttons')},

-- VREST
{down = fcs_commands.Switch_FLAP_SELECT, up = fcs_commands.Switch_FLAP_SELECT, cockpit_device_id = devices.VREST, value_down = 1.0, value_up = 0.5, name = _('Flaps Mode CRUISE/AUTO'),	category = _('_My Buttons')},
{down = fcs_commands.Switch_FLAP_SELECT, up = fcs_commands.Switch_FLAP_SELECT, cockpit_device_id = devices.VREST, value_down = 0.0, value_up = 0.5, name = _('Flaps Mode STOL/AUTO'),	category = _('_My Buttons')},
{down = fcs_commands.Switch_FLAP_PWR,    up = fcs_commands.Switch_FLAP_PWR,    cockpit_device_id = devices.VREST, value_down = 0.0, value_up = 0.5, name = _('Flaps Power OFF/ON'),	    category = _('_My Buttons')},
{down = fcs_commands.Switch_FLAP_PWR,    up = fcs_commands.Switch_FLAP_PWR,    cockpit_device_id = devices.VREST, value_down = 1.0, value_up = 0.5, name = _('Flaps Power RESET/ON'),	category = _('_My Buttons')},
{down = fcs_commands.Switch_FLAP_PWR,    up = fcs_commands.Switch_FLAP_PWR,    cockpit_device_id = devices.VREST, value_down = 0.5, value_up = 0.0, name = _('Flaps Power ON/OFF'),	    category = _('_My Buttons')},
{down = engine_commands.Switch_LIDS,     up = engine_commands.Switch_LIDS,     cockpit_device_id = devices.VREST, value_down = 1.0, value_up = 0.0, name = _('LIDS Switch ON/OFF'), category = _('_My Buttons')},
{down = engine_commands.Switch_LIDS,                                           cockpit_device_id = devices.VREST, value_down = 1.0,                 name = _('LIDS Switch ON'), category = _('_My Buttons')},
{down = engine_commands.Switch_LIDS,                                           cockpit_device_id = devices.VREST, value_down = 0.0,                 name = _('LIDS Switch OFF'), category = _('_My Buttons')},

-- FLIGHTCONTROLS
{down = fcs_commands.Handle_PARKING_BRAKE, up = fcs_commands.Handle_PARKING_BRAKE, cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('Parking Brake ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Handle_PARKING_BRAKE, up = fcs_commands.Handle_PARKING_BRAKE, cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.0, value_up = 1.0, name = _('Parking Brake OFF/ON'), category = _('_My Buttons')},
{down = fcs_commands.Switch_SAS_YAW,       up = fcs_commands.Switch_SAS_YAW,       cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('SAS Yaw ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_SAS_ROLL,      up = fcs_commands.Switch_SAS_ROLL,      cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('SAS Roll ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_SAS_PITCH,     up = fcs_commands.Switch_SAS_PITCH,     cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('SAS Pitch ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_ALT_HOLD,      up = fcs_commands.Switch_ALT_HOLD,      cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('Alt Hold Switch ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_Q_FEEL,        up = fcs_commands.Switch_Q_FEEL,        cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('Q Feel Switch ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_RPS_YAW,       up = fcs_commands.Switch_RPS_YAW,       cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.5, value_up = 0.0, name = _('RPS/YAW Trim Switch ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_RPS_YAW,       up = fcs_commands.Switch_RPS_YAW,       cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.5, name = _('RPS/YAW Trim Switch TEST/ON'), category = _('_My Buttons')},
{down = fcs_commands.Switch_RPS_YAW,                                               cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.5,                 name = _('RPS/YAW Trim Switch ON'), category = _('_My Buttons')},
{down = fcs_commands.Switch_RPS_YAW,                                               cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.0,                 name = _('RPS/YAW Trim Switch OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_RPS_YAW,       up = fcs_commands.Switch_RPS_YAW,       cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.0, value_up = 0.5, name = _('RPS/YAW Trim Switch OFF/ON'), category = _('_My Buttons')},
{down = fcs_commands.Switch_AFC,           up = fcs_commands.Switch_AFC,           cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.5, name = _('AFC Switch ON/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_AFC,           up = fcs_commands.Switch_AFC,           cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.0, value_up = 0.5, name = _('AFC Switch RESET/OFF'), category = _('_My Buttons')},
{down = fcs_commands.Switch_ANTISKID,      up = fcs_commands.Switch_ANTISKID,      cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 0.5, value_up = 0.0, name = _('Anti-Skid Switch ON/NWS'), category = _('_My Buttons')},
{down = fcs_commands.Switch_ANTISKID,      up = fcs_commands.Switch_ANTISKID,      cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.5, name = _('Anti-Skid Switch TEST/ON'), category = _('_My Buttons')},
{down = fcs_commands.Handle_GEAR_LEVER,    up = fcs_commands.Handle_GEAR_LEVER,    cockpit_device_id = devices.FLIGHTCONTROLS, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Lever UP/DOWN'), category = _('_My Buttons')},

-- NAVFLIR
{down = misc_commands.Switch_VRS_Mode,   up = misc_commands.Switch_VRS_Mode,   cockpit_device_id = devices.NAVFLIR, value_down = 0, value_up = 1, name = _('Video Recorder System Mode Switch AUTO/RUN'), category = _('_My Buttons')},
{down = misc_commands.Switch_VRS_Output, up = misc_commands.Switch_VRS_Output, cockpit_device_id = devices.NAVFLIR, value_down = 0, value_up = 1, name = _('Video Recorder System Display Selector Switch MPCD/HUD'), category = _('_My Buttons')},
{down = misc_commands.Switch_FLIR_Power, up = misc_commands.Switch_FLIR_Power, cockpit_device_id = devices.NAVFLIR, value_down = 1, value_up = 0, name = _('FLIR Power Switch ON/OFF'), category = _('_My Buttons')},

-- FLIGHTINSTRUMENTS
{down = misc_commands.Switch_PR_HT_Mode, up = misc_commands.Switch_PR_HT_Mode, cockpit_device_id = devices.FLIGHTINSTRUMENTS, value_down = 1.0, value_up = 0.0, name = _('Probe Heat Mode Switch HT/AUTO'), category = _('_My Buttons')},

-- EWS
{down = rwr_commands.Knob_ECM, up = rwr_commands.Knob_ECM, cockpit_device_id = devices.EWS, value_down = 0.25, value_up = 0.00, name = _('Jammer Control STBY/OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_ECM,                             cockpit_device_id = devices.EWS, value_down = 0.25,                  name = _('Jammer Control STBY'), category = _('_My Buttons')},
{down = rwr_commands.Knob_ECM,                             cockpit_device_id = devices.EWS, value_down = 0.00,                  name = _('Jammer Control OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP, up = rwr_commands.Knob_EXP, cockpit_device_id = devices.EWS, value_down = 0.25, value_up = 0.00, name = _('Decoy Dispenser Control AUT/OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP, up = rwr_commands.Knob_EXP, cockpit_device_id = devices.EWS, value_down = 0.50, value_up = 0.25, name = _('Decoy Dispenser Control UP/AUT'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP, up = rwr_commands.Knob_EXP, cockpit_device_id = devices.EWS, value_down = 0.50, value_up = 0.00, name = _('Decoy Dispenser Control UP/OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP,                             cockpit_device_id = devices.EWS, value_down = 0.50,                  name = _('Decoy Dispenser Control UP'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP,                             cockpit_device_id = devices.EWS, value_down = 0.25,                  name = _('Decoy Dispenser Control AUT'), category = _('_My Buttons')},
{down = rwr_commands.Knob_EXP,                             cockpit_device_id = devices.EWS, value_down = 0.00,                  name = _('Decoy Dispenser Control OFF'), category = _('_My Buttons')},
{down = smc_commands.Switch_FLR_SAL, up = smc_commands.Switch_FLR_SAL, cockpit_device_id = devices.EWS, value_down = 1.0, value_up = 0.00, name = _('Flare Salvo Button PUSH/RELEASE'), category = _('_My Buttons')},

-- RWR (ON=0.1 or 0.3, first ON+VOL=0.4, 0.5,...,1.0)
{down = rwr_commands.Knob_RWR, up = rwr_commands.Knob_RWR, cockpit_device_id = devices.RWRCONTROL, value_down = 0.1, value_up = 0.0, name = _('RWR Power/Volume Button ON/OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_RWR, up = rwr_commands.Knob_RWR, cockpit_device_id = devices.RWRCONTROL, value_down = 0.5, value_up = 0.0, name = _('RWR Power/Volume Button ON+VOL/OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_RWR,                             cockpit_device_id = devices.RWRCONTROL, value_down = 0.0,                 name = _('RWR Power/Volume Button OFF'), category = _('_My Buttons')},
{down = rwr_commands.Knob_RWR,                             cockpit_device_id = devices.RWRCONTROL, value_down = 0.1,                 name = _('RWR Power/Volume Button ON'), category = _('_My Buttons')},
{down = rwr_commands.Knob_RWR,                             cockpit_device_id = devices.RWRCONTROL, value_down = 0.5,                 name = _('RWR Power/Volume Button ON+VOL'), category = _('_My Buttons')},

-- MSC
{down = msc_commands.Seat_SFTY_LVR, up = msc_commands.Seat_SFTY_LVR, cockpit_device_id = devices.MSC, value_down = 1.0, value_up = 0.0, name = _('Seat Ground Safety Lever DOWN/UP'), category = _('_My Buttons')},
{down = msc_commands.Seat_SFTY_LVR,                                  cockpit_device_id = devices.MSC, value_down = 1.0,                 name = _('Seat Ground Safety Lever DOWN'), category = _('_My Buttons')},
{down = msc_commands.Seat_SFTY_LVR,                                  cockpit_device_id = devices.MSC, value_down = 0.0,                 name = _('Seat Ground Safety Lever UP'), category = _('_My Buttons')},

-- RCS
{down = radio_commands.Switch_OP_MODE, up = radio_commands.Switch_OP_MODE, cockpit_device_id = devices.RSC, value_down = 0.4, value_up = 0.0, name = _('V/UHF RSC Operational Mode TR+G/OFF'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down =-0.2,                 name = _('V/UHF RSC Operational Mode ZRO'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 0.0,                 name = _('V/UHF RSC Operational Mode OFF'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 0.2,                 name = _('V/UHF RSC Operational Mode TEST'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 0.4,                 name = _('V/UHF RSC Operational Mode TR+G'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 0.6,                 name = _('V/UHF RSC Operational Mode TR'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 0.8,                 name = _('V/UHF RSC Operational Mode ADF'), category = _('_My Buttons')},
{down = radio_commands.Switch_OP_MODE,                                     cockpit_device_id = devices.RSC, value_down = 1.0,                 name = _('V/UHF RSC Operational Mode CHNG PRST'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE, up = radio_commands.Switch_FREQ_MODE, cockpit_device_id = devices.RSC, value_down = 0.60, value_up= 0.00, name = _('V/UHF RSC Frequency Mode MAN/AJ+M '), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.00,                name = _('V/UHF RSC Frequency Mode AJ/M '), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.15,                name = _('V/UHF RSC Frequency Mode AJ'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.30,                name = _('V/UHF RSC Frequency Mode MAR'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.45,                name = _('V/UHF RSC Frequency Mode PRST'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.60,                name = _('V/UHF RSC Frequency Mode MAN'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 0.75,                name = _('V/UHF RSC Frequency Mode 243'), category = _('_My Buttons')},
{down = radio_commands.Switch_FREQ_MODE,                                   cockpit_device_id = devices.RSC, value_down = 1.00,                name = _('V/UHF RSC Frequency Mode 121'), category = _('_My Buttons')},

-- NAV_INS
{down = misc_commands.Knob_INS_Mode, up = misc_commands.Knob_INS_Mode, cockpit_device_id = devices.NAV_INS, value_down = 0.3, value_up = 0.0, name = _('INS Mode NAV/OFF'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.0,                 name = _('INS Mode OFF'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.1,                 name = _('INS Mode ALIGN SEA'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.2,                 name = _('INS Mode ALIGN GND'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.3,                 name = _('INS Mode NAV'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.4,                 name = _('INS Mode IFA'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.5,                 name = _('INS Mode GYRO'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.6,                 name = _('INS Mode GB'), category = _('_My Buttons')},
{down = misc_commands.Knob_INS_Mode,                                   cockpit_device_id = devices.NAV_INS, value_down = 0.7,                 name = _('INS Mode TEST'), category = _('_My Buttons')},

-- FQIS
{down = fqi_commands.FuelSelector, up = fqi_commands.FuelSelector, cockpit_device_id = devices.FQIS, value_down = 0.33, value_up = 0.00, name = _('Fuel Totalizer Selector TOT/INT'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down = 0.00,                  name = _('Fuel Totalizer Selector INT'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down = 0.33,                  name = _('Fuel Totalizer Selector TOT'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down = 0.66,                  name = _('Fuel Totalizer Selector FEED'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down = 0.99,                  name = _('Fuel Totalizer Selector BIT'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down =-0.33,                  name = _('Fuel Totalizer Selector WING'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down =-0.66,                  name = _('Fuel Totalizer Selector INBD'), category = _('_My Buttons')},
{down = fqi_commands.FuelSelector,                                 cockpit_device_id = devices.FQIS, value_down =-0.99,                  name = _('Fuel Totalizer Selector OUTBD'), category = _('_My Buttons')},

-- DMT
{down = misc_commands.Switch_DMT_Power, up = misc_commands.Switch_DMT_Power, cockpit_device_id = devices.DMT, value_down = 1.0, value_up = 0.0, name = _('DMT Switch ON/OFF'), category = _('_My Buttons')},

-- HOTAS
{down = iCommandPlaneAirBrakeOn, up = iCommandPlaneAirBrakeOff, name = _('Airbrake ON/OFF'), category = _('_My Buttons')},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky end custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


	-- Master Modes
	{down = iCommandHelicopter_PPR_button_K, name = _('Master Mode NAV'),	category = _('Master Modes')},
	{down = iCommandHelicopter_PPR_button_H, name = _('Master Mode VSTOL'),	category = _('Master Modes')},
	{down = iCommandHelicopter_PPR_button_T, name = _('Master Mode AG'),	category = _('Master Modes')},
	
	-- HUD Controls
	{down = iCommandPlane_ABRIS_BT_1,		name = _('HUD Reject Mode Down (NORM - REJ1 - REJ2)'),	category = _('HUD Control')},
	{down = iCommandPlane_ABRIS_BT_2,		name = _('HUD Reject Mode Up (REJ2 - REJ1 - NORM)'),	category = _('HUD Control')},
	{down = iCommandPlane_ABRIS_BT_3,		name = _('HUD Display Mode Down DAY - AUTO - NIGHT'),	category = _('HUD Control')},
	{down = iCommandPlane_ABRIS_BT_5,		name = _('HUD Display Mode Up NIGHT - AUTO - DAY'),		category = _('HUD Control')},
	{down = iCommandPlane_ABRIS_BT_4,		name = _('HUD Altimeter Selector'),						category = _('HUD Control')},
	{pressed = iCommandHUDBrightnessUp,		up = iCommandHUDTest_up,	name = _('HUD On - Brightness Increase'),	category = _('HUD Control')},
	{pressed = iCommandHUDBrightnessDown,	up = iCommandHUDTest_up,	name = _('HUD Brightness Decrease - Off'),	category = _('HUD Control')},
	
	-- VSTOL Controls
	{down = iCommandPlane_ABRIS_Axis_Increase,			name = _('Flaps Mode Up (STOL - AUTO - CRUISE)'),	category = _('VSTOL Controls')},
	{down = iCommandPlane_ABRIS_Axis_Decrease,			name = _('Flaps Mode Down (CRUISE - AUTO - STOL)'),	category = _('VSTOL Controls')},
	{down = iCommandPlaneFlapsOn, 						name = _('Flaps Power Left (OFF - ON - RESET)'),	category = _('VSTOL Controls')},
	{down = iCommandPlaneFlapsOff,						name = _('Flaps Power Right (RESET - ON - OFF)'),	category = _('VSTOL Controls')},
	{down = iCommandPlane_ABRIS_Brightness_Increase,	name = _('Water Mode Up (LDG - OFF - TO)'),			category = _('VSTOL Controls')},
	{down = iCommandPlane_ABRIS_Brightness_Decrease,	name = _('Water Mode Down (TO - OFF - LDG)'),		category = _('VSTOL Controls')},
	
	-- Flight Control
	{pressed = iCommandPlaneUpStart,						up = iCommandPlaneUpStop,			name = _('Aircraft Pitch DOWN'),	category = _('Flight Control')},
	{pressed = iCommandPlaneDownStart,						up = iCommandPlaneDownStop,			name = _('Aircraft Pitch UP'),		category = _('Flight Control')},
	{pressed = iCommandPlaneLeftStart,						up = iCommandPlaneLeftStop,			name = _('Aircraft Bank LEFT'),		category = _('Flight Control')},
	{pressed = iCommandPlaneRightStart,						up = iCommandPlaneRightStop,		name = _('Aircraft Bank RIGHT'),	category = _('Flight Control')},
	{pressed = iCommandPlaneLeftRudderStart,				up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder LEFT'),	category = _('Flight Control')},
	{pressed = iCommandPlaneRightRudderStart,				up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder RIGHT'),	category = _('Flight Control')},
	{pressed = iCommandThrottleIncrease,					up = iCommandThrottleStop,			name = _('Throttle UP'),			category = _('Flight Control')},
	{pressed = iCommandThrottleDecrease,					up = iCommandThrottleStop,			name = _('Throttle DOWN'),			category = _('Flight Control')},
	{pressed = iCommandPlaneCollectiveIncrease,				up = iCommandPlaneCollectiveStop,	name = _('Nozzle Rotation UP'),		category = _('Flight Control')},
	{pressed = iCommandPlaneCollectiveDecrease,				up = iCommandPlaneCollectiveStop,	name = _('Nozzle Rotation DOWN'),	category = _('Flight Control')},
	{down = iCommandHelicopter_CollectiveStopper_Up,		up = iCommandPlaneCollectiveStop,	name = _('STO STOP UP'),			category = _('Flight Control')},
	{down = iCommandHelicopter_CollectiveStopper_Down,		up = iCommandPlaneCollectiveStop,	name = _('STO STOP DOWN'),			category = _('Flight Control')},
	{pressed = iCommandPlaneTrimLeftRudder,					up = iCommandPlaneTrimStop,			name = _('Trim RUDDER LEFT'),		category = _('Flight Control')},
	{pressed = iCommandPlaneTrimRightRudder,				up = iCommandPlaneTrimStop,			name = _('Trim RUDDER RIGHT'),		category = _('Flight Control')},
	
	-- SAAHS
	{down = iCommandPlaneAutopilot,						name = _('Automatic Flight Control On/Off Toggle'),				category = _('Stability Augmentation & Autopilot')},
	{down = iCommandPlaneSAUHBarometric,				name = _('Altitude Hold On/Off Toggle'),						category = _('Stability Augmentation & Autopilot')},
	{down = iCommandPlaneAUTOnOff,						name = _('Q Feel On/Off Toggle'),								category = _('Stability Augmentation & Autopilot')},
	{down = iCommandPlaneSAUHRadio,						name = _('Stability Augmentation - Pitch'),						category = _('Stability Augmentation & Autopilot')},
	{down = iCommandPlaneSAUAutomatic,					name = _('Stability Augmentation - Yaw'),						category = _('Stability Augmentation & Autopilot')},
	{down = iCommandPlaneSAUHorizon,					name = _('Stability Augmentation - Roll'),						category = _('Stability Augmentation & Autopilot')},
	
	-- Hydraulic & Mechanical
    {down = iCommandPlaneWheelBrakeOn,      up = iCommandPlaneWheelBrakeOff,      name = _('Wheel Brakes'),      category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneWheelBrakeLeftOn,  up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel Brake LEFT'),  category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake RIGHT'), category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneGear,     name = _('Landing Gear TOGGLE'), category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneGearUp,   name = _('Landing Gear UP'),     category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneGearDown, name = _('Landing Gear DOWN'),   category = _('Hydraulic & Mechanical')},
    {down = iCommandPlaneFonar,    name = _('Canopy Open/Close'),   category = _('Hydraulic & Mechanical')},
    {down = fcs_commands.Handle_PARKING_BRAKE, cockpit_device_id = devices.FLIGHTCONTROLS, value_down= 0, name = _('Parking Brake ON'), category = _('Hydraulic & Mechanical')},
    {down = fcs_commands.Handle_PARKING_BRAKE, cockpit_device_id = devices.FLIGHTCONTROLS, value_down= 1, name = _('Parking Brake OFF'), category = _('Hydraulic & Mechanical')},
	
	-- Engine & Fuel
	{down = iCommandLeftEngineStart, 		name = _('Engines START'),							category = _('Engine & Fuel')},
	{down = iCommandLeftEngineStop,  		name = _('Engines STOP'),							category = _('Engine & Fuel')},
	{down = iCommandPlaneHook,  			name = _('Air Refueling Probe Toggle IN/OUT'),		category = _('Engine & Fuel')},
	{down = iCommandThrottle1Stop,			name = _('Fuel Shutoff Lever lock release'),		category = _('Engine & Fuel')},
	
	-- Pilot & Seat Controls 
	{down = iCommandToggleMirrors,				name = _('Mirrors TOGGLE'),				category = _('Pilot & Seat Controls')},
    {down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Pilot & Seat Controls')},	
	{down = iCommandCockpitShowPilotOnOff,  	name = _('Hide/Show Pilot Body'),		category = _('Pilot & Seat Controls')},
	{down = iCommandPlaneCircuitBreaker_10, 	name = _('Hide/Show Control Stick'),	category = _('Pilot & Seat Controls')},
	{down = iCommandPlaneCircuitBreaker_11,		name = _('Hide/Show Throttle'),			category = _('Pilot & Seat Controls')},
	{down = iCommandViewNightVisionGogglesOn,	name = _('Helmet Visor/NVG Toggle'),	category = _('Pilot & Seat Controls')},
	
	-- HOTAS
	-- Stick
	{down = iCommandPlaneFire,         up = iCommandPlaneFireOff,   name = _('Trigger: Fire Gun/Launch Sidewinder, Sidearm'),     		category = _('HOTAS')},
	{down = iCommandPlanePickleOn,     up = iCommandPlanePickleOff, name = _('Bomb Pickle: Release Bombs/Launch Rockets, Mavericks'),	category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_BoatSwitchForward,                  name = _('A/A Mode FWD: Sidewinder (Boresight)'),					category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_BoatSwitchAft,                      name = _('A/A Mode AFT: Sidewinder (SEAM)'),						category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_BoatSwitchCenter,                   name = _('A/A Mode DOWN: Gun'),										category = _('HOTAS')},
	
	{pressed = iCommandPlaneTrimUp,    up = iCommandPlaneTrimStop,  name = _('Trim Pitch DOWN'),						category = _('HOTAS')},
	{pressed = iCommandPlaneTrimDown,  up = iCommandPlaneTrimStop,  name = _('Trim Pitch UP'),							category = _('HOTAS')},
	{pressed = iCommandPlaneTrimLeft,  up = iCommandPlaneTrimStop,  name = _('Trim Bank LEFT'),							category = _('HOTAS')},
	{pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop,  name = _('Trim Bank RIGHT'),						category = _('HOTAS')},
	
	{down = iCommandPlane_HOTAS_PinkySwitchCenter,																name = _('WP Increment'),									category = _('HOTAS')},
	{down = iCommandPlaneAutopilotOverrideOn,				up = iCommandPlaneAutopilotOverrideOff,				name = _('Emergency SAAHS Disconnect'),						category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_DataManagementSwitchUp,		up = iCommandPlane_HOTAS_DataManagementSwitchOff,	name = _('Sensor Select FWD: INS, IRMV/EOMV'),  			category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_DataManagementSwitchDown,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,	name = _('Sensor Select AFT: DMT: LST/TV'),  				category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_DataManagementSwitchLeft,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,	name = _('Sensor Select LEFT: MAP Center/Decenter'),		category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_DataManagementSwitchRight,	up = iCommandPlane_HOTAS_DataManagementSwitchOff,	name = _('Sensor Select RIGHT: FLIR/HUD-BH/WH'),			category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_ChinaHatForward,			up = iCommandPlane_HOTAS_DataManagementSwitchOff,	name = _('Sensor Select DOWN: HUD Scene Reject/TGP'),		category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_NoseWheelSteeringButton,	up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff,name = _('AG Target Undesignate / NWS / FOV Toggle'),		category = _('HOTAS')},
	
	-- Throttle
	{down = iCommandPlaneDropChaffOnce,						name = _('ECM Dispense AFT: Chaff'),		category = _('HOTAS')},
	{down = iCommandPlaneDropFlareOnce,						name = _('ECM Dispense FWD: Flares'),		category = _('HOTAS')},
	{down = iCommandPlaneCMDDispenceOff,					name = _('ECM Dispense RIGHT: All'),		category = _('HOTAS')},
	{down = iCommandPlaneCMDDispence,						name = _('ECM Dispense LEFT: Mini Jammer'),	category = _('HOTAS')},
	
	{down = iCommandPlane_ABRIS_Axis_Push,					name = _('Cage/Uncage'),					category = _('HOTAS')},
	
	{down = iCommandPlane_HOTAS_CMS_Up,						name = _('Engine Air Start'),				category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_CMS_Down,					name = _('Emergency Flap Retraction'),		category = _('HOTAS')},
	
	{down = iCommandPlane_HOTAS_MIC_SwitchUp,				name = _('COMM FWD: Select COMM 1'),		category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_MIC_SwitchDown,				name = _('COMM AFT: Select COMM 2'),		category = _('HOTAS')},
	-- Missing COMM CENTER
	
	{down = iCommandPlaneAirBrake,							name = _('Airbrake TOGGLE'),		category = _('HOTAS')},
	{down = iCommandPlaneAirBrakeOn,						name = _('Airbrake ON'),			category = _('HOTAS')},
	{down = iCommandPlaneAirBrakeOff,						name = _('Airbrake OFF'),			category = _('HOTAS')},
	
	{pressed = iCommandPlane_HOTAS_CoolieUp,				up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Forward'),					category = _('HOTAS')},
	{pressed = iCommandPlane_HOTAS_CoolieDown,  			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Aft'),						category = _('HOTAS')},
	{pressed = iCommandPlane_HOTAS_CoolieLeft,  			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Left'),						category = _('HOTAS')},
	{pressed = iCommandPlane_HOTAS_CoolieRight, 			up = iCommandPlane_HOTAS_CoolieOff, 		name = _('TDC Right'),						category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_TDC_depress_on,				up = iCommandPlane_HOTAS_TDC_depress_off,	name = _('TDC Down (Action Position)'),		category = _('HOTAS')},
	{down = iCommandPlane_HOTAS_TriggerSecondStage_Off,													name = _('TDC Action/No Action Toggle'),	category = _('HOTAS')},
	
	{down = engine_commands.Handle_THROTTLE_CUTOFF,			up = engine_commands.Handle_THROTTLE_CUTOFF,
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
	{down = iCommandSwitchMasterArm,				name = _('Master Arm Switch'), 						category = _('Armament Control')},
	{pressed = iCommandPlaneCMDChangeBurstAmount,	name = _('Launch Flare Salvo'),						category = _('Armament Control')},
	
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
	-- ff: fixed press  --> pressed
	{pressed = iCommandPlaneUFC_INTEN_INCREASE, 	name = _('UFC Display Brightness Increase'),			category = _('Up Front Control')},
	{pressed = iCommandPlaneUFC_INTEN_DECREASE, 	name = _('UFC Display Brightness Decrease'),			category = _('Up Front Control')},
	
	-- ODU
	{down = iCommandPlaneCDU_1,						name = _('ODU Option 1'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_2,						name = _('ODU Option 2'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_3,						name = _('ODU Option 3'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_4,						name = _('ODU Option 4'),								category = _('Up Front Control')},
	{down = iCommandPlaneCDU_5,						name = _('ODU Option 5'),								category = _('Up Front Control')},
	
	-- MISCELLANEOUS PANEL
	{down = iCommandPlaneNavChangePanelModeLeft,	name = _('INS Mode Left  (NAV - ALIGN  - OFF)'),				category = _('Miscellaneous Controls')},
	{down = iCommandPlaneNavChangePanelModeRight,	name = _('INS Mode Right (OFF - ALIGN  - NAV)'),				category = _('Miscellaneous Controls')},
	{down = iCommandPlaneNightTVOnOff,				name = _('DMT On/Off Toggle'),									category = _('Miscellaneous Controls')},
	{down = iCommandPlaneRadarOnOff,				name = _('FLIR On/Off Toggle'),									category = _('Miscellaneous Controls')},
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
	{down = iCommandADI_ZeroPitchTrimLeft,  up = iCommandADI_Test_up,  name = _('AOA Indicator Up'), category = _('DEBUG')},
	{down = iCommandADI_ZeroPitchTrimRight, up = iCommandADI_Test_up, name = _('AOA Indicator Down'), category = _('DEBUG')},
	
	}
)

join(res.axisCommands,{

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky begin custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{action = int_light_commands.Knob_Instr_Lights,       cockpit_device_id = devices.LTINT, name = _('FF Instruments Lights')},
{action = int_light_commands.Knob_Console_Lights,     cockpit_device_id = devices.LTINT, name = _('FF Console Lights')},
{action = int_light_commands.Knob_Flood_Lights,       cockpit_device_id = devices.LTINT, name = _('FF Flood Lights')},
{action = int_light_commands.Knob_Annunciator_Lights, cockpit_device_id = devices.LTINT, name = _('FF Annunciator Lights')},

{action = int_light_commands.Flood_Right_Canopy_Frame_Top, cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp Canopy Right Top')},
{action = int_light_commands.Flood_Right_Canopy_Frame_Btm, cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp Canopy Right Bottom')},
{action = int_light_commands.Flood_Right_BH_FWD,           cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Right Forward')},
{action = int_light_commands.Flood_Right_BH_AFT_Front,     cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Right Aft Front')},
{action = int_light_commands.Flood_Right_BH_AFT_Back,      cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Right Aft Back')},
{action = int_light_commands.Flood_Left_BH_AFT_Back,       cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Left Aft Back')},
{action = int_light_commands.Flood_Left_BH_AFT_Front,      cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Left Aft Front')},
{action = int_light_commands.Flood_Left_BH_FWD,            cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp BH Left Forward')},
{action = int_light_commands.Flood_Left_Canopy_Frame_Btm,  cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp Canopy Left Bottom')},
{action = int_light_commands.Flood_Left_Canopy_Frame_Top,  cockpit_device_id = devices.LTINT, name = _('FF Flood Lamp Canopy Left Top')},

{action = edp_commands.BRT_Knob, cockpit_device_id = devices.EDP, name = _('FF EDP Brightness Control')},

{action = hud_commands.DisplayBRTKnob, cockpit_device_id = devices.HUDCONTROL, name = _('FF HUD Off/Brightness Control')},
{action = hud_commands.VideoBRTKnob,   cockpit_device_id = devices.HUDCONTROL, name = _('FF HUD Video Brightness Control')},
{action = hud_commands.VideoCONTKnob,  cockpit_device_id = devices.HUDCONTROL, name = _('FF HUD Video Contrast Control')},

{action = ufc_commands.Knob_BRT,        cockpit_device_id = devices.UFCCONTROL, name = _('FF Display Brightness Control')},
{action = ufc_commands.Knob_Comm1_Vol,  cockpit_device_id = devices.UFCCONTROL, name = _('FF Comm 1 Volume Control')},
{action = ufc_commands.Knob_Comm2_Vol,  cockpit_device_id = devices.UFCCONTROL, name = _('FF Comm 2 Volume Control')},
{action = ufc_commands.Knob_Comm1_Chnl, cockpit_device_id = devices.UFCCONTROL, name = _('FF Comm 1 Channel Selector'), category = _('_My Buttons')},
{action = ufc_commands.Knob_Comm2_Chnl, cockpit_device_id = devices.UFCCONTROL, name = _('FF Comm 2 Channel Selector'), category = _('_My Buttons')},

{action = fqi_commands.BingoSet, cockpit_device_id = devices.FQIS, name = _('FF Bingo Fuel Set Knob')},

{action = mpcd_l_commands.Knob_OFF_BRT, cockpit_device_id = devices.MPCD_LEFT,  name = _('FF MPCD Left Off/Brightness Control')},
{action = mpcd_r_commands.Knob_OFF_BRT, cockpit_device_id = devices.MPCD_RIGHT, name = _('FF MPCD Right Off/Brightness Control')},

{action = inst_commands.Knob_Altimeter, cockpit_device_id = devices.ADC, name = _('FF Barometric Pressure Calibration')},

{action = fcs_commands.Knob_FRICTION_LEFT,  cockpit_device_id = devices.FLIGHTCONTROLS, name = _('FF Throttle Lever Friction Knob')},
{action = fcs_commands.Knob_FRICTION_RIGHT, cockpit_device_id = devices.FLIGHTCONTROLS, name = _('FF Nozzle Lever Friction Knob')},

{action = engine_commands.Handle_NOZZLE_CONTROL,  cockpit_device_id = devices.VREST, name = _('FF Nozzle Control Lever')},
{action = engine_commands.Handle_NOZZLE_STO_STOP, cockpit_device_id = devices.VREST, name = _('FF STO Stop Lever')},

{action = ext_light_commands.Knob_FORM_LT, cockpit_device_id = devices.LTEXT, name = _('FF Formation Lights Knob')},

{action = radio_commands.Knob_VOLUME,    cockpit_device_id = devices.RSC, name = _('FF V/UHF RSC Volume Knob')},
{action = radio_commands.Knob_CHAN_FREQ, cockpit_device_id = devices.RSC, name = _('FF V/UHF RSC Chan/Freq Knob')},

{action = acnip_commands.Knob_AUX_VOL, cockpit_device_id = devices.INTERCOM, name = _('FF ICS Aux Volume Knob')},
{action = acnip_commands.Knob_GND_VOL, cockpit_device_id = devices.INTERCOM, name = _('FF ICS Ground Volume Knob')},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky end custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{combos = defaultDeviceAssignmentFor("roll")  ,  action = iCommandPlaneRoll		   , name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch") ,  action = iCommandPlanePitch	   , name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"),  action = iCommandPlaneRudder	   , name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust"),  action = iCommandPlaneThrustCommon, name = _('Thrust')},
{action = iCommandPlaneCollective,  name = _('Nozzle Angle')},
{action = iCommandWheelBrake,		name = _('Wheel Brakes')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

--HOTAS TDC
{action = iCommandPlaneSelecterHorizontalAbs, name = _('TDC Slew Horizontal')},
{action = iCommandPlaneSelecterVerticalAbs	, name = _('TDC Slew Vertical')},

}) 


return res