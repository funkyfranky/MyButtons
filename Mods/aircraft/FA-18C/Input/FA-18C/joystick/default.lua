local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

join(res.keyCommands,{

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: begin additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- SMS
{ down = SMS_commands.MasterArmSw, up = SMS_commands.MasterArmSw, cockpit_device_id = devices.SMS, value_down =  1.0, value_up = 0.0, name = _('Master Arm Switch ARM/OFF'), category = {_('_My Buttons')}},
{ down = SMS_commands.IRCoolingSw, up = SMS_commands.IRCoolingSw, cockpit_device_id = devices.SMS, value_down =  0.2, value_up = 0.1, name = _('IR Cooling Switch ORIDE/NORM'), category = {_('_My Buttons')}},
{ down = SMS_commands.IRCoolingSw, up = SMS_commands.IRCoolingSw, cockpit_device_id = devices.SMS, value_down =  0.0, value_up = 0.1, name = _('IR Cooling Switch OFF/NORM'), category = {_('_My Buttons')}},
{ down = SMS_commands.IRCoolingSw, up = SMS_commands.IRCoolingSw, cockpit_device_id = devices.SMS, value_down =  0.1, value_up = 0.0, name = _('IR Cooling Switch NORM/OFF'), category = {_('_My Buttons')}},
{ down = SMS_commands.AuxRelSw,    up = SMS_commands.AuxRelSw,    cockpit_device_id = devices.SMS, value_down =  1.0, value_up = 0.0, name = _('Auxiliary Release Switch ENABLE/NORM'), category = {_('_My Buttons')}},

-- CONTROL INTERFACE
{ down = ctrl_commands.FlapSw, up = ctrl_commands.FlapSw, cockpit_device_id = devices.CONTROL_INTERFACE,  value_down =  1.0, value_up = 0.0, name = _('FLAP Switch AUTO/HALF'), category = {_('_My Buttons')}},
{ down = ctrl_commands.FlapSw, up = ctrl_commands.FlapSw, cockpit_device_id = devices.CONTROL_INTERFACE,  value_down = -1.0, value_up = 0.0, name = _('FLAP Switch FULL/HALF'), category = {_('_My Buttons')}},

-- EXT LIGHTS
{ down = extlights_commands.LdgTaxi, up = extlights_commands.LdgTaxi, cockpit_device_id = devices.EXT_LIGHTS, value_down =  1.0, value_up =  0.0, name = _('LDG/TAXI LIGHT Switch ON/OFF'), category = {_('_My Buttons')}},
--{ down = extlights_commands.Strobe, up = extlights_commands.Strobe, cockpit_device_id = devices.EXT_LIGHTS, value_down = 1.0, value_up = 0.0, name = _('STROBE Lights Switch BRT/OFF'), category = {_('_My Buttons')}},
--{ down = extlights_commands.Strobe, up = extlights_commands.Strobe, cockpit_device_id = devices.EXT_LIGHTS, value_down = 1.0, value_up =-1.0, name = _('STROBE Lights Switch DIM/OFF'), category = {_('_My Buttons')}},

-- GEAR INTERFACE
{ down = gear_commands.AntiSkidSw,           up = gear_commands.AntiSkidSw,           cockpit_device_id = devices.GEAR_INTERFACE, value_down =  1.0, value_up = 0.0, name = _('Anti Skid Switch ON/OFF'), category = {_('_My Buttons')}},
{ down = gear_commands.EmergParkHandleOnOff, up = gear_commands.EmergParkHandleOnOff, cockpit_device_id = devices.GEAR_INTERFACE, value_down = -1.0, value_up = 1.0, name = _('Emergency/Parking Brake Handle PULL/STOW'), category = {_('_My Buttons')}},

-- ELEC INTERFACE
{ down = elec_commands.BattSw, up = elec_commands.BattSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down =  1.0, value_up =  0.0, name = _('Battery Switch ON/OFF'), category = {_('_My Buttons')}},
{ down = elec_commands.BattSw, up = elec_commands.BattSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1.0, value_up =  0.0, name = _('Battery Switch ORIDE/OFF'), category = {_('_My Buttons')}},
{ down = elec_commands.LGenSw, up = elec_commands.LGenSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down =  1.0, value_up =  0.0, name = _('Left Generator Control Switch NORM/OFF'), category = {_('_My Buttons')}},
{ down = elec_commands.RGenSw, up = elec_commands.RGenSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down =  1.0, value_up =  0.0, name = _('Right Generator Control Switch NORM/OFF'), category = {_('_My Buttons')}},
{ down = elec_commands.LGenSw, up = elec_commands.LGenSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down =  0.0, value_up =  1.0, name = _('Left Generator Control Switch OFF/MORM'), category = {_('_My Buttons')}},
{ down = elec_commands.RGenSw, up = elec_commands.RGenSw, cockpit_device_id = devices.ELEC_INTERFACE, value_down =  0.0, value_up =  1.0, name = _('Right Generator Control Switch OFF/NORM'), category = {_('_My Buttons')}},

-- ECS INTERFACE
{ down = ECS_commands.AV_COOL_Sw, up = ECS_commands.AV_COOL_Sw, cockpit_device_id = devices.ECS_INTERFACE, value_down =  1.0, value_up = 0.0, name = _('AV COOL Switch - EMERG/NORM'), category = {_('_My Buttons')}},

-- LANDING GEAR
{ down = iCommandPlaneGearUp, up = iCommandPlaneGearDown, name = _('Landing Gear Control Handle UP/DOWN'), category = {_('_My Buttons')}},

-- HUD
{ down = HUD_commands.HUD_SymbBrightSelKnob, up = HUD_commands.HUD_SymbBrightSelKnob, cockpit_device_id = devices.HUD, value_down =  1.0, value_up = 0.0, name = _('HUD Symbology Brightness Selector Knob DAY/NIGHT'), category = {_('_My Buttons')}},
{ down = HUD_commands.HUD_AltitudeSw,        up = HUD_commands.HUD_AltitudeSw,        cockpit_device_id = devices.HUD, value_down =  1.0, value_up = 0.0, name = _('Altitude Switch BARO/RDR'), category = {_('_My Buttons')}},

-- FUEL INTERFACE
{ down = fuel_commands.ProbeControlSw, up = fuel_commands.ProbeControlSw, cockpit_device_id = devices.FUEL_INTERFACE, value_down =  1.0, value_up = 0.0, name = _('Probe Control Switch EXTEND/RETRACT'), category = {_('_My Buttons')}},
{ down = fuel_commands.ProbeControlSw, up = fuel_commands.ProbeControlSw, cockpit_device_id = devices.FUEL_INTERFACE, value_down = -1.0, value_up = 0.0, name = _('Probe Control Switch EMERG/RETRACT'), category = {_('_My Buttons')}},

-- CPT MECHANICS
{ down = cpt_commands.CanopySwitchOpen,  up = cpt_commands.CanopySwitchClose, cockpit_device_id = devices.CPT_MECHANICS, value_down =  1.0, value_up = 0.0, name = _('Canopy Control Switch OPEN/HOLD'), category = {_('_My Buttons')}},
--{ down = cpt_commands.CanopySwitchClose, up = cpt_commands.CanopySwitchClose, cockpit_device_id = devices.CPT_MECHANICS, value_down = -1.0, value_up = 0.0, name = _('Canopy Control Switch CLOSE/HOLD'), category = {_('_My Buttons')}},

-- HOTAS
{ down = hotas_commands.THROTTLE_EXTERIOR_LIGTHS, up = hotas_commands.THROTTLE_EXTERIOR_LIGTHS, cockpit_device_id = devices.HOTAS,	value_down =  1.0, value_up = 0.0, name = _('Exterior Lights Switch ON/OFF'), category = {_('_My Buttons')}},

-- CMDS
{ down = cmds_commands.Dispenser, up = cmds_commands.Dispenser, cockpit_device_id = devices.CMDS, value_down =  0.2, value_up= 0.1, name = _('DISPENSER Switch BYPASS/ON'), category = {_('_My Buttons')}},
{ down = cmds_commands.Dispenser, up = cmds_commands.Dispenser, cockpit_device_id = devices.CMDS, value_down =  0.0, value_up= 0.1, name = _('DISPENSER Switch OFF/ON'), category = {_('_My Buttons')}},

-- TGP INTERFACE
{ down = tgp_commands.Flir,     up = tgp_commands.Flir,     cockpit_device_id = devices.TGP_INTERFACE, value_down =  1.0, value_up= 0.0, name = _('FLIR Switch ON/STBY'),   category = {_('_My Buttons')}},
{ down = tgp_commands.Flir,     up = tgp_commands.Flir,     cockpit_device_id = devices.TGP_INTERFACE, value_down = -1.0, value_up= 0.0, name = _('FLIR Switch OFF/STBY'),  category = {_('_My Buttons')}},
{ down = tgp_commands.LtdrArm_EXT, up = tgp_commands.LtdrArm_EXT, cockpit_device_id = devices.TGP_INTERFACE, value_down =  1.0, value_up= 0.0, name = _('LTD/R Switch ARM/SAFE'), category = {_('_My Buttons')}},
{ down = tgp_commands.LtdrArm_EXT, up = tgp_commands.LtdrArm_EXT, cockpit_device_id = devices.TGP_INTERFACE, value_down = -1.0, value_up= 0.0, name = _('LTD/R Switch AFT/SAFE'), category = {_('_My Buttons')}},
{ down = tgp_commands.Lst,      up = tgp_commands.Lst,		cockpit_device_id = devices.TGP_INTERFACE, value_down =  1.0, value_up= 0.0, name = _('LST/NFLR Switch ON/OFF'),category = {_('_My Buttons')}},

-- CMDS (not implemented yet)
--{ down = 3116, up = 3116, cockpit_device_id = devices.CMDS, value_down =  0.1, value_up= 0.0, name = _('ALQ-126 ECM Mode Switch STBY/OFF'), category = {_('_My Buttons')}},
--{ down = 3116, up = 3116, cockpit_device_id = devices.CMDS, value_down =  0.4, value_up= 0.0, name = _('ALQ-126 ECM Mode Switch XMIT/OFF'), category = {_('_My Buttons')}},
--{ down = 3116, up = 3116, cockpit_device_id = devices.CMDS, value_down =  0.4, value_up= 0.1, name = _('ALQ-126 ECM Mode Switch XMIT/STBY'), category = {_('_My Buttons')}},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: begin additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

---------------------------------------------
-- Cheat ------------------------------------
---------------------------------------------
{	down = iCommandEnginesStart,													name = _('Auto Start'),		category = _('Cheat')},
{	down = iCommandEnginesStop,														name = _('Auto Stop'),		category = _('Cheat')},

---------------------------------------------
-- General ----------------------------------
---------------------------------------------
{	down = iCommandCockpitShowPilotOnOff,		name = _('Show pilot body'),		category = _('General')},
{	down = iCommandPlaneShipTakeOff,			name = _('Catapult Hook-Up'),		category = _('General')},
-- Smoke Device Button
{	down = cpt_commands.SmokeDevice,	cockpit_device_id = devices.CPT_MECHANICS, value_down = 1.0, name = _('Smoke Device - ON/OFF'),	category = _('General')},

---------------------------------------------
-- View Cockpit -----------------------------
---------------------------------------------
{	down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},
-- Utility Light
{	down = 3255,								cockpit_device_id = 0,					value_down =  1.0,	name = _('Flashlight Color - Toggle Green/White'),	category = {_('View Cockpit'), _('Right Console')}},
{	down = cptlights_commands.UtilityBrt_EXT,	cockpit_device_id = devices.CPT_LIGHTS,	value_down =  0.1,	name = _('Flashlight BRT Control - Increase'),		category = {_('View Cockpit'), _('Right Console')}},
{	down = cptlights_commands.UtilityBrt_EXT,	cockpit_device_id = devices.CPT_LIGHTS,	value_down = -0.1,	name = _('Flashlight BRT Control - Decrease'),		category = {_('View Cockpit'), _('Right Console')}},

---------------------------------------------
-- Flight Control ---------------------------
---------------------------------------------
{	down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Pitch Down'),						category = _('Flight Control')},
{	down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Pitch Up'),							category = _('Flight Control')},
{	down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),							category = _('Flight Control')},
{	down = iCommandPlaneRightStart,			up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),						category = _('Flight Control')},
{	down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),						category = _('Flight Control')},
{	down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),						category = _('Flight Control')},

---------------------------------------------
-- Stick ------------------------------------
---------------------------------------------
{	down = hotas_commands.STICK_WEAPON_RELEASE,			up = hotas_commands.STICK_WEAPON_RELEASE,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Weapon Release Button'),										category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TRIGGER_2ND_DETENT,		up = hotas_commands.STICK_TRIGGER_2ND_DETENT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Gun Trigger - SECOND DETENT (Press to shoot)'),				category = {_('Stick'), _('HOTAS')}},
{	pressed = hotas_commands.STICK_TRIMMER_DOWN,		up = hotas_commands.STICK_TRIMMER_DOWN,				cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,	value_up = 0.0,	name = _('Trimmer Switch - PUSH(DESCEND)'),								category = {_('Stick'), _('Flight Control'), _('HOTAS')}},
{	pressed = hotas_commands.STICK_TRIMMER_UP,			up = hotas_commands.STICK_TRIMMER_UP,				cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,	value_up = 0.0,	name = _('Trimmer Switch - PULL(CLIMB)'),								category = {_('Stick'), _('Flight Control'), _('HOTAS')}},
{	pressed = hotas_commands.STICK_TRIMMER_LEFT,		up = hotas_commands.STICK_TRIMMER_LEFT,				cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,	value_up = 0.0,	name = _('Trimmer Switch - LEFT WING DOWN'),							category = {_('Stick'), _('Flight Control'), _('HOTAS')}},
{	pressed = hotas_commands.STICK_TRIMMER_RIGHT,		up = hotas_commands.STICK_TRIMMER_RIGHT,			cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,	value_up = 0.0,	name = _('Trimmer Switch - RIGHT WING DOWN'),							category = {_('Stick'), _('Flight Control'), _('HOTAS')}},
{	down = hotas_commands.STICK_PADDLE,					up = hotas_commands.STICK_PADDLE,					cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Autopilot/Nosewheel Steering Disengage (Paddle) Switch'),		category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_UNDESIGNATE,			up = hotas_commands.STICK_UNDESIGNATE,				cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Undesignate/Nose Wheel Steer Switch'),						category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_WEAPON_SELECT_FWD,		up = hotas_commands.STICK_WEAPON_SELECT_FWD,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Select Sparrow'),												category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_WEAPON_SELECT_AFT,		up = hotas_commands.STICK_WEAPON_SELECT_AFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Select Gun'),													category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_WEAPON_SELECT_IN,		up = hotas_commands.STICK_WEAPON_SELECT_IN,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Select AMRAAM'),												category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_WEAPON_SELECT_DOWN,		up = hotas_commands.STICK_WEAPON_SELECT_DOWN,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Select Sidewinder'),											category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_RECCE_EVENT_MARK,		up = hotas_commands.STICK_RECCE_EVENT_MARK,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('RECCE Event Mark Switch'),									category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_SENSOR_CONTROL_FWD,		up = hotas_commands.STICK_SENSOR_CONTROL_FWD,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Sensor Control Switch - Fwd'),								category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_SENSOR_CONTROL_AFT,		up = hotas_commands.STICK_SENSOR_CONTROL_AFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Sensor Control Switch - Aft'),								category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_SENSOR_CONTROL_LEFT,	up = hotas_commands.STICK_SENSOR_CONTROL_LEFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Sensor Control Switch - Left'),								category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_SENSOR_CONTROL_RIGHT,	up = hotas_commands.STICK_SENSOR_CONTROL_RIGHT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Sensor Control Switch - Right'),								category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_SENSOR_CONTROL_DEPRESS,	up = hotas_commands.STICK_SENSOR_CONTROL_DEPRESS,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,		value_up = 0.0,	name = _('Sensor Control Switch - Depress'),							category = {_('Stick'), _('HOTAS')}},

{	down = cpt_commands.StickHide,		cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,	name = _('Control Stick - HIDE'),			category = {_('Stick'), _('HOTAS')}},
{	down = cpt_commands.StickHide,		cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,	name = _('Control Stick - SHOW'),			category = {_('Stick'), _('HOTAS')}},
{	down = cpt_commands.StickHide_EXT,	cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,	name = _('Control Stick - HIDE/SHOW'),		category = {_('Stick'), _('HOTAS')}},

---------------------------------------------
-- Throttle Quadrant ------------------------
---------------------------------------------
{	down = iCommandThrottleIncrease,			up = iCommandThrottleStop,		name = _('Throttle Smoothly (Both) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottleDecrease,			up = iCommandThrottleStop,		name = _('Throttle Smoothly (Both) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottle1Increase,			up = iCommandThrottle1Stop,		name = _('Throttle Smoothly (Left) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottle1Decrease,			up = iCommandThrottle1Stop,		name = _('Throttle Smoothly (Left) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottle2Increase,			up = iCommandThrottle2Stop,		name = _('Throttle Smoothly (Right) - Increase'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottle2Decrease,			up = iCommandThrottle2Stop,		name = _('Throttle Smoothly (Right) - Decrease'),		category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTIncreaseRegime,										name = _('Throttle Step (Both) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTDecreaseRegime,										name = _('Throttle Step (Both) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTIncreaseRegimeLeft,									name = _('Throttle Step (Left) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTDecreaseRegimeLeft,									name = _('Throttle Step (Left) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTIncreaseRegimeRight,									name = _('Throttle Step (Right) - Increase'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTDecreaseRegimeRight,									name = _('Throttle Step (Right) - Decrease'),			category = {_('Throttle Quadrant'), _('Flight Control')}},
--
{	down = iCommandLeftEngineStart,																																									name = _('Throttle (Left) - IDLE'),										category = {_('Throttle Quadrant')}},
{	down = iCommandLeftEngineStop,																																									name = _('Throttle (Left) - OFF'),										category = {_('Throttle Quadrant')}},
{	down = iCommandRightEngineStart,																																								name = _('Throttle (Right) - IDLE'),									category = {_('Throttle Quadrant')}},
{	down = iCommandRightEngineStop,																																									name = _('Throttle (Right) - OFF'),										category = {_('Throttle Quadrant')}},
{	down = iCommandLeftEngineStop,							up = iCommandLeftEngineStart,																		value_down =  1.0,	value_up = 1.0,	name = _('Throttle (Left) - OFF/IDLE'),									category = {_('Throttle Quadrant')}},
{	down = iCommandRightEngineStop,							up = iCommandRightEngineStart,																		value_down =  1.0,	value_up = 1.0,	name = _('Throttle (Right) - OFF/IDLE'),								category = {_('Throttle Quadrant')}},
{	down = hotas_commands.THROTTLE_LEFT_FINGERLIFT_EXT,		up = hotas_commands.THROTTLE_LEFT_FINGERLIFT_EXT,	cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('Throttle Finger Lift (Left) - UP/DOWN'),						category = {_('Throttle Quadrant'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RIGHT_FINGERLIFT_EXT,	up = hotas_commands.THROTTLE_RIGHT_FINGERLIFT_EXT,	cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('Throttle Finger Lift (Right) - UP/DOWN'),						category = {_('Throttle Quadrant'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_BOTH_FINGERLIFT_EXT,		up = hotas_commands.THROTTLE_BOTH_FINGERLIFT_EXT,	cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('Throttle Finger Lift (Both) - UP/DOWN'),						category = {_('Throttle Quadrant'), _('HOTAS')}},
{	pressed = ctrl_commands.FrictionLever_EXT,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed = -0.5,				name = _('Throttles Friction Adjusting Lever - Aft/Decrease'),			category = {_('Throttle Quadrant')}},
{	pressed = ctrl_commands.FrictionLever_EXT,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed =  0.5,				name = _('Throttles Friction Adjusting Lever - Forward/Increase'),		category = {_('Throttle Quadrant')}},
{	down = ctrl_commands.AB_DETENT,																				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('Cycle Afterburner Detent - ON/OFF'),							category = {_('Throttle Quadrant')}},

---------------------------------------------
-- Throttle Grip ----------------------------
---------------------------------------------
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,						up = hotas_commands.THROTTLE_SPEED_BRAKE,						cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Speed Brake Switch - EXTEND'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,																						cockpit_device_id = devices.HOTAS,	value_down =  0.0,					name = _('Speed Brake Switch - OFF'),						category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,																						cockpit_device_id = devices.HOTAS,	value_down =  1.0,					name = _('Speed Brake Switch - RETRACT'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_EXTERIOR_LIGHTS_EXT,																				cockpit_device_id = devices.HOTAS,	value_down =  1.0,					name = _('Exterior Lights Switch - ON/OFF'),				category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_EXTERIOR_LIGHTS,																					cockpit_device_id = devices.HOTAS,	value_down =  1.0,					name = _('Exterior Lights Switch - ON'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_EXTERIOR_LIGHTS,																					cockpit_device_id = devices.HOTAS,	value_down =  0.0,					name = _('Exterior Lights Switch - OFF'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_COMMS_COMM1,						up = hotas_commands.THROTTLE_COMMS_COMM1,						cockpit_device_id = devices.HOTAS,	value_down =  0.2,	value_up = 0.0,	name = _('COMM Switch - COMM 1 (call radio menu)'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_COMMS_COMM2,						up = hotas_commands.THROTTLE_COMMS_COMM2,						cockpit_device_id = devices.HOTAS,	value_down =  0.4,	value_up = 0.0,	name = _('COMM Switch - COMM 2 (call radio menu)'),			category = {_('Throttle Grip'), _('HOTAS')}},

-- old VoIP cockpit commands
--{	down = hotas_commands.THROTTLE_COMMS_COMM1_VOIP,				up = hotas_commands.THROTTLE_COMMS_COMM1_VOIP,					cockpit_device_id = devices.HOTAS,	value_down =  0.2,	value_up = 0.0,	name = _('COMM Switch - COMM 1 (VOIP)'),					category = {_('Throttle Grip'), _('HOTAS')}},
--{	down = hotas_commands.THROTTLE_COMMS_COMM2_VOIP,				up = hotas_commands.THROTTLE_COMMS_COMM2_VOIP,					cockpit_device_id = devices.HOTAS,	value_down =  0.4,	value_up = 0.0,	name = _('COMM Switch - COMM 2 (VOIP)'),					category = {_('Throttle Grip'), _('HOTAS')}},
-- VoIP radio global command
-- in case you need to open commands in the cockpit
-- through global commands
{	down = iCommandVoIPRadioPushToTalkEnableDisableVoice,				up = iCommandVoIPRadioPushToTalkEnableDisableVoice,			value_down =  1.0,	value_up = 0.0,	name = _('COMM Switch - COMM 1 (VOIP)'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = iCommandVoIPRadioPushToTalkEnableDisableVoice_1,				up = iCommandVoIPRadioPushToTalkEnableDisableVoice_1,		value_down =  1.0,	value_up = 0.0,	name = _('COMM Switch - COMM 2 (VOIP)'),					category = {_('Throttle Grip'), _('HOTAS')}},
--

{	down = hotas_commands.THROTTLE_COMMS_MIDS_A,					up = hotas_commands.THROTTLE_COMMS_MIDS_A,						cockpit_device_id = devices.HOTAS,	value_down =  0.6,	value_up = 0.0,	name = _('COMM Switch - MIDS A'),							category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_COMMS_MIDS_B,					up = hotas_commands.THROTTLE_COMMS_MIDS_B,						cockpit_device_id = devices.HOTAS,	value_down =  0.8,	value_up = 0.0,	name = _('COMM Switch - MIDS B'),							category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_CAGE,							up = hotas_commands.THROTTLE_CAGE,								cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Cage/Uncage Button'),								category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_ATC,								up = hotas_commands.THROTTLE_ATC,								cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('ATC Engage/Disengage Switch'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DISPENSE_FWD,					up = hotas_commands.THROTTLE_DISPENSE_FWD,						cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Dispense Switch - Forward(CHAFF)/Center(OFF)'),	category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DISPENSE_AFT,					up = hotas_commands.THROTTLE_DISPENSE_AFT,						cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Dispense Switch - Aft(FLARE)/Center(OFF)'),		category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RAID_FOV,						up = hotas_commands.THROTTLE_RAID_FOV,							cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('RAID/FLIR FOV Select Button'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_UP,		up = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_UP,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Throttle Designator Controller - Up'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_DOWN,		up = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_DOWN,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Throttle Designator Controller - Down'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_LEFT,		up = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_LEFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Throttle Designator Controller - Left'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_RIGHT,		up = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_RIGHT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Throttle Designator Controller - Right'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_DEPRESS,	up = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_DEPRESS,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Throttle Designator Controller - Depress'),		category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_ELEVATION_CONTROL_UP,			up = hotas_commands.THROTTLE_ELEVATION_CONTROL_UP,				cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Radar Elevation Control - Up'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_ELEVATION_CONTROL_DOWN,			up = hotas_commands.THROTTLE_ELEVATION_CONTROL_DOWN,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Radar Elevation Control - Down'),					category = {_('Throttle Grip'), _('HOTAS')}},

---------------------------------------------
-- Systems ----------------------------------
---------------------------------------------
{	down = iCommandPlaneEject,	name = _('Eject (3 times)'),	category = _('Systems')},
-- Wheel Brake
{	down = iCommandPlaneWheelBrakeOn,		up = iCommandPlaneWheelBrakeOff,		name = _('Wheel Brake - ON/OFF'),			category = {_('Systems')}},
{	down = iCommandPlaneWheelBrakeLeftOn,	up = iCommandPlaneWheelBrakeLeftOff,	name = _('Wheel Brake Left - ON/OFF'),		category = {_('Systems')}},
{	down = iCommandPlaneWheelBrakeRightOn,	up = iCommandPlaneWheelBrakeRightOff,	name = _('Wheel Brake Right - ON/OFF'),		category = {_('Systems')}},

---------------------------------------------
-- Instrument Panel -------------------------
---------------------------------------------
-- Altimeter
{	pressed = iCommandAltimeterPressureDecrease,	name = _('AAU-52 Altimeter Pressure Setting Knob - CCW/Decrease'),		category = {_('Instrument Panel')}},
{	pressed = iCommandAltimeterPressureIncrease,	name = _('AAU-52 Altimeter Pressure Setting Knob - CW/Increase'),		category = {_('Instrument Panel')}},
-- SAI
{	down = sai_commands.SAI_test,			up = sai_commands.SAI_test,	cockpit_device_id = devices.SAI,	value_down =  1.0,		value_up = 0.0,	name = _('SAI Test Button'),					category = {_('Instrument Panel')}},
{	down = sai_commands.SAI_pull,			up = sai_commands.SAI_pull,	cockpit_device_id = devices.SAI,	value_down =  1.0,		value_up = 0.0,	name = _('SAI Cage Knob - PULL'),				category = {_('Instrument Panel')}},
{	pressed = sai_commands.SAI_Rotate_EXT,								cockpit_device_id = devices.SAI,	value_pressed = -0.3,					name = _('SAI Cage Knob - CCW'),				category = {_('Instrument Panel')}},
{	pressed = sai_commands.SAI_Rotate_EXT,								cockpit_device_id = devices.SAI,	value_pressed =  0.3,					name = _('SAI Cage Knob - CW'),					category = {_('Instrument Panel')}},
-- RWR
{	pressed = rwr_commands.IntControl_ITER,								cockpit_device_id = devices.RWR,	value_pressed = -0.5,					name = _('RWR Intensity Knob - CCW/Decrease'),	category = {_('Instrument Panel')}},
{	pressed = rwr_commands.IntControl_ITER,								cockpit_device_id = devices.RWR,	value_pressed =  0.5,					name = _('RWR Intensity Knob - CW/Increase'),	category = {_('Instrument Panel')}},
-- Master Arm Panel
{	down = SMS_commands.AA_MasterModeSw,	up = SMS_commands.AA_MasterModeSw,	cockpit_device_id = devices.SMS,	value_down =  1.0,	value_up = 0.0,	name = _('Master Mode Button - A/A'),		category = {_('Instrument Panel'), _('Master Arm Panel')}},
{	down = SMS_commands.AG_MasterModeSw,	up = SMS_commands.AG_MasterModeSw,	cockpit_device_id = devices.SMS,	value_down =  1.0,	value_up = 0.0,	name = _('Master Mode Button - A/G'),		category = {_('Instrument Panel'), _('Master Arm Panel')}},
{	down = SMS_commands.MasterArmSw_EXT,										cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Master Arm Switch - ARM/SAFE'),	category = {_('Instrument Panel'), _('Master Arm Panel')}},
{	down = SMS_commands.MasterArmSw,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Master Arm Switch - ARM'),		category = {_('Instrument Panel'), _('Master Arm Panel')}},
{	down = SMS_commands.MasterArmSw,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Master Arm Switch - SAFE'),		category = {_('Instrument Panel'), _('Master Arm Panel')}},
-- jettison
{	down = SMS_commands.EmerJettSw,			up = SMS_commands.EmerJettSw,			cockpit_device_id = devices.SMS,	value_down =  1.0,	value_up = 0.0,	name = _('Emergency Jettison Button'),					category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLOBtn_ITER,										cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button LEFT OUT - ON/OFF'),	category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLOBtn,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Station Jettison Select Button LEFT OUT - ON'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLOBtn,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button LEFT OUT - OFF'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLIBtn_ITER,										cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button LEFT IN - ON/OFF'),	category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLIBtn,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Station Jettison Select Button LEFT IN - ON'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationLIBtn,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button LEFT IN - OFF'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationCntrBtn_ITER,									cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button CENTER - ON/OFF'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationCntrBtn,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Station Jettison Select Button CENTER - ON'),			category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationCntrBtn,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button CENTER - OFF'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationRIBtn_ITER,										cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button RIGHT IN - ON/OFF'),	category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationRIBtn,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Station Jettison Select Button RIGHT IN - ON'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationRIBtn,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button RIGHT IN - OFF'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationROBtn_ITER,										cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button RIGHT OUT - ON/OFF'),	category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationROBtn,											cockpit_device_id = devices.SMS,	value_down =  1.0,					name = _('Station Jettison Select Button RIGHT OUT - ON'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.JettStationROBtn,											cockpit_device_id = devices.SMS,	value_down =  0.0,					name = _('Station Jettison Select Button RIGHT OUT - OFF'),		category = {_('Instrument Panel')}},
-- IFEI
{	down = IFEI_commands.IFEI_BTN_MODE,				up = IFEI_commands.IFEI_BTN_MODE,		cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI Mode Button'),								category = {_('Instrument Panel')}},
{	down = IFEI_commands.IFEI_BTN_QTY,				up = IFEI_commands.IFEI_BTN_QTY,		cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI QTY Button'),								category = {_('Instrument Panel')}},
{	down = IFEI_commands.IFEI_BTN_UP_ARROW,			up = IFEI_commands.IFEI_BTN_UP_ARROW,	cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI Up Arrow Button'),							category = {_('Instrument Panel')}},
{	down = IFEI_commands.IFEI_BTN_DOWN_ARROW,		up = IFEI_commands.IFEI_BTN_DOWN_ARROW,	cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI Down Arrow Button'),							category = {_('Instrument Panel')}},
{	down = IFEI_commands.IFEI_BTN_ZONE,				up = IFEI_commands.IFEI_BTN_ZONE,		cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI ZONE Button'),								category = {_('Instrument Panel')}},
{	down = IFEI_commands.IFEI_BTN_ET,				up = IFEI_commands.IFEI_BTN_ET,			cockpit_device_id = devices.IFEI,	value_down =  1.0,	value_up = 0.0,	name = _('IFEI ET Button'),									category = {_('Instrument Panel')}},
-- Video Record Panel
{	pressed = IFEI_commands.IFEI_Brightness_EXT,											cockpit_device_id = devices.IFEI,	value_pressed = -0.5,				name = _('IFEI Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel')}},
{	pressed = IFEI_commands.IFEI_Brightness_EXT,											cockpit_device_id = devices.IFEI,	value_pressed =  0.5,				name = _('IFEI Brightness Control Knob - CW/Increase'),		category = {_('Instrument Panel')}},
-- TODO:

-- Fire Extinguishing
{	down = engines_commands.FireExtghDischSw,		up = engines_commands.FireExtghDischSw,	cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Fire Extinguisher Pushbutton'),												category = {_('Instrument Panel'), _('Master Arm Panel')}},
{	down = engines_commands.LENG_FireSwCover_ITER,											cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Cover - OPEN/CLOSE'),		category = {_('Instrument Panel')}},
{	down = engines_commands.LENG_FireSwCover,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Cover - OPEN'),				category = {_('Instrument Panel')}},
{	down = engines_commands.LENG_FireSwCover,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Cover - CLOSE'),				category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSwCover_ITER,											cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Cover - OPEN/CLOSE'),		category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSwCover,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Cover - OPEN'),				category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSwCover,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Cover - CLOSE'),			category = {_('Instrument Panel')}},
{	down = engines_commands.APU_FireSw_ITER,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('APU Fire Warning/Extinguisher Light Switch - PRESS/RELEASE'),					category = {_('Instrument Panel')}},
{	down = engines_commands.APU_FireSw,														cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,					name = _('APU Fire Warning/Extinguisher Light Switch - PRESS'),							category = {_('Instrument Panel')}},
{	down = engines_commands.APU_FireSw,														cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('APU Fire Warning/Extinguisher Light Switch - RELEASE'),						category = {_('Instrument Panel')}},
{	down = engines_commands.LENG_FireSw_ITER,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Switch - PRESS/RELEASE'),	category = {_('Instrument Panel')}},
{	down = engines_commands.LENG_FireSw,													cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Switch - PRESS'),			category = {_('Instrument Panel')}},
{	down = engines_commands.LENG_FireSw,													cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Left Engine/AMAD Fire Warning/Extinguisher Light Switch - RELEASE'),			category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSw_ITER,												cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Switch - PRESS/RELEASE'),	category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSw,													cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Switch - PRESS'),			category = {_('Instrument Panel')}},
{	down = engines_commands.RENG_FireSw,													cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,					name = _('Right Engine/AMAD Fire Warning/Extinguisher Light Switch - RELEASE'),			category = {_('Instrument Panel')}},
-- Master Caution
{		down = cptlights_commands.MasterCaution,		up = cptlights_commands.MasterCaution,	cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,	value_up = 0.0,	name = _('MASTER CAUTION Reset Button'),												category = {_('Instrument Panel')}},
-- IR Cooling
{	down = SMS_commands.IRCoolingSw_ITER,		cockpit_device_id = devices.SMS,				value_down =  1.0,		name = _('IR Cooling Switch - Up'),						category = {_('Instrument Panel')}},
{	down = SMS_commands.IRCoolingSw_ITER,		cockpit_device_id = devices.SMS,				value_down = -1.0,		name = _('IR Cooling Switch - Down'),					category = {_('Instrument Panel')}},
{	down = SMS_commands.IRCoolingSw,			cockpit_device_id = devices.SMS,				value_down =  0.2,		name = _('IR Cooling Switch - ORIDE'),					category = {_('Instrument Panel')}},
{	down = SMS_commands.IRCoolingSw,			cockpit_device_id = devices.SMS,				value_down =  0.1,		name = _('IR Cooling Switch - NORM'),					category = {_('Instrument Panel')}},
{	down = SMS_commands.IRCoolingSw,			cockpit_device_id = devices.SMS,				value_down =  0.0,		name = _('IR Cooling Switch - OFF'),					category = {_('Instrument Panel')}},
-- HMD Knob
{	pressed = hmd_commands.BrtKnob_ITER,		cockpit_device_id = devices.HMD_INTERFACE,		value_pressed = -1.0,	name = _('HMD OFF/BRT Knob - CCW/Decrease'),			category = {_('Instrument Panel')}},
{	pressed = hmd_commands.BrtKnob_ITER,		cockpit_device_id = devices.HMD_INTERFACE,		value_pressed =  1.0,	name = _('HMD OFF/BRT Knob - CW/Increase'),				category = {_('Instrument Panel')}},
-- Spin Recovery
{	down = ctrl_commands.SpinRecCover_EXT,		cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,		name = _('Spin Recovery Switch Cover - OPEN/CLOSE'),	category = {_('Instrument Panel')}},
{	down = ctrl_commands.SpinRecCover,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,		name = _('Spin Recovery Switch Cover - OPEN'),			category = {_('Instrument Panel')}},
{	down = ctrl_commands.SpinRecCover,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,		name = _('Spin Recovery Switch Cover - CLOSE'),			category = {_('Instrument Panel')}},
{	down = ctrl_commands.SpinRec_EXT,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,		name = _('Spin Recovery Switch - RCVY/NORM'),			category = {_('Instrument Panel')}},
{	down = ctrl_commands.SpinRec,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,		name = _('Spin Recovery Switch - RCVY'),				category = {_('Instrument Panel')}},
{	down = ctrl_commands.SpinRec,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,		name = _('Spin Recovery Switch - NORM'),				category = {_('Instrument Panel')}},
-- Hud Video
--{	down = ,		up = ,	cockpit_device_id = devices.,	value_down =  1.0,	value_up = 0.0,	name = _('HUD Video BIT Initiate Pushbutton'),		category = {_('Instrument Panel')}},
-- UFC
{	down = UFC_commands.FuncSwAP,			up = UFC_commands.FuncSwAP,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - A/P'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwIFF,			up = UFC_commands.FuncSwIFF,	cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - IFF'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwTCN,			up = UFC_commands.FuncSwTCN,	cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - TCN'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwILS,			up = UFC_commands.FuncSwILS,	cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - ILS'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwDL,			up = UFC_commands.FuncSwDL,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - D/L'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwBCN,			up = UFC_commands.FuncSwBCN,	cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - BCN'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.FuncSwOnOff,		up = UFC_commands.FuncSwOnOff,	cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Function Selector Pushbutton - ON/OFF'),			category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.OptSw1,				up = UFC_commands.OptSw1,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Option Select Pushbutton 1'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.OptSw2,				up = UFC_commands.OptSw2,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Option Select Pushbutton 2'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.OptSw3,				up = UFC_commands.OptSw3,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Option Select Pushbutton 3'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.OptSw4,				up = UFC_commands.OptSw4,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Option Select Pushbutton 4'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.OptSw5,				up = UFC_commands.OptSw5,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Option Select Pushbutton 5'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw1,				up = UFC_commands.KbdSw1,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 1'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw2,				up = UFC_commands.KbdSw2,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 2'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw3,				up = UFC_commands.KbdSw3,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 3'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw4,				up = UFC_commands.KbdSw4,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 4'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw5,				up = UFC_commands.KbdSw5,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 5'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw6,				up = UFC_commands.KbdSw6,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 6'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw7,				up = UFC_commands.KbdSw7,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 7'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw8,				up = UFC_commands.KbdSw8,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 8'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw9,				up = UFC_commands.KbdSw9,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 9'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSw0,				up = UFC_commands.KbdSw0,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - 0'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSwCLR,			up = UFC_commands.KbdSwCLR,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - CLR'),						category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.KbdSwENT,			up = UFC_commands.KbdSwENT,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Keyboard Pushbutton - ENT'),						category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.Comm1Vol_ITER,									cockpit_device_id = devices.UFC,	value_pressed = -0.5,					name = _('UFC COMM 1 Volume Control Knob - CCW/Decrease'),		category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.Comm1Vol_ITER,									cockpit_device_id = devices.UFC,	value_pressed =  0.5,					name = _('UFC COMM 1 Volume Control Knob - CW/Increase'),		category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.Comm2Vol_ITER,									cockpit_device_id = devices.UFC,	value_pressed = -0.5,					name = _('UFC COMM 2 Volume Control Knob - CCW/Decrease'),		category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.Comm2Vol_ITER,									cockpit_device_id = devices.UFC,	value_pressed =  0.5,					name = _('UFC COMM 2 Volume Control Knob - CW/Increase'),		category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.BrtDim_ITER,										cockpit_device_id = devices.UFC,	value_pressed = -0.5,					name = _('UFC Brightness Control Knob - CCW/Decrease'),			category = {_('Instrument Panel'), _('UFC')}},
{	pressed = UFC_commands.BrtDim_ITER,										cockpit_device_id = devices.UFC,	value_pressed =  0.5,					name = _('UFC Brightness Control Knob - CW/Increase'),			category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwIP,				up = UFC_commands.SwIP,			cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC I/P Pushbutton'),									category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwEMCON,			up = UFC_commands.SwEMCON,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC Emission Control Pushbutton'),					category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF_EXT,											cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('UFC ADF Function Select Switch - Up'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF_EXT,											cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('UFC ADF Function Select Switch - Down'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF,												cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('UFC ADF Function Select Switch - 1'),					category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF,												cockpit_device_id = devices.UFC,	value_down =  0.0,						name = _('UFC ADF Function Select Switch - OFF'),				category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF,												cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('UFC ADF Function Select Switch - 2'),					category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm1Fcn,			up = UFC_commands.Comm1Fcn,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC COMM 1 Channel Selector Knob - PULL'),			category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm1Ch,											cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('UFC COMM 1 Channel Selector Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm1Ch,											cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('UFC COMM 1 Channel Selector Knob - CW/Increase'),		category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm2Fcn,			up = UFC_commands.Comm2Fcn,		cockpit_device_id = devices.UFC,	value_down =  1.0,		value_up = 0.0,	name = _('UFC COMM 2 Channel Selector Knob - PULL'),			category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm2Ch,											cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('UFC COMM 2 Channel Selector Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.Comm2Ch,											cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('UFC COMM 2 Channel Selector Knob - CW/Increase'),		category = {_('Instrument Panel'), _('UFC')}},
-- HUD Control Panel
{	down = HUD_commands.HUD_SymbRejectSw_ITER,				cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('HUD Symbology Reject Switch - Up'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbRejectSw_ITER,				cockpit_device_id = devices.HUD,	value_down = -1.0,		name = _('HUD Symbology Reject Switch - Down'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbRejectSw,					cockpit_device_id = devices.HUD,	value_down =  0.2,		name = _('HUD Symbology Reject Switch - NORM'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbRejectSw,					cockpit_device_id = devices.HUD,	value_down =  0.1,		name = _('HUD Symbology Reject Switch - REJ 1'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbRejectSw,					cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('HUD Symbology Reject Switch - REJ 2'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_SymbBrightCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed = -0.5,	name = _('HUD Symbology Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_SymbBrightCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed =  0.5,	name = _('HUD Symbology Brightness Control Knob - CW/Increase'),	category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbBrightSelKnob_ITER,			cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('HUD Symbology Brightness Selector Knob - DAY/NIGHT'),		category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbBrightSelKnob,				cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('HUD Symbology Brightness Selector Knob - DAY'),			category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbBrightSelKnob,				cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('HUD Symbology Brightness Selector Knob - NIGHT'),			category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_BlackLevelCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed = -0.5,	name = _('Black Level Control Knob - CCW/Decrease'),				category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_BlackLevelCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed =  0.5,	name = _('Black Level Control Knob - CW/Increase'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw_ITER,				cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('HUD Video Control Switch - Up'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw_ITER,				cockpit_device_id = devices.HUD,	value_down = -1.0,		name = _('HUD Video Control Switch - Down'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw,					cockpit_device_id = devices.HUD,	value_down =  0.2,		name = _('HUD Video Control Switch - W/B'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw,					cockpit_device_id = devices.HUD,	value_down =  0.1,		name = _('HUD Video Control Switch - VID'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw,					cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('HUD Video Control Switch - OFF'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_BalanceCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed = -0.5,	name = _('Balance Control Knob - CCW/Decrease'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_BalanceCtrl_ITER,			cockpit_device_id = devices.HUD,	value_pressed =  0.5,	name = _('Balance Control Knob - CW/Increase'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_AoA_IndexerCtrl_ITER,		cockpit_device_id = devices.HUD,	value_pressed = -0.5,	name = _('AOA Indexer Control Knob - CCW/Decrease'),				category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	pressed = HUD_commands.HUD_AoA_IndexerCtrl_ITER,		cockpit_device_id = devices.HUD,	value_pressed =  0.5,	name = _('AOA Indexer Control Knob - CW/Increase'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AltitudeSw_ITER,				cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('Altitude Switch - BARO/RDR'),								category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AltitudeSw,						cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('Altitude Switch - BARO'),									category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AltitudeSw,						cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('Altitude Switch - RDR'),									category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw_ITER,				cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('Attitude Selector Switch - Up'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw_ITER,				cockpit_device_id = devices.HUD,	value_down = -1.0,		name = _('Attitude Selector Switch - Down'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw,					cockpit_device_id = devices.HUD,	value_down =  1.0,		name = _('Attitude Selector Switch - INS'),							category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw,					cockpit_device_id = devices.HUD,	value_down =  0.0,		name = _('Attitude Selector Switch - AUTO'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw,					cockpit_device_id = devices.HUD,	value_down = -1.0,		name = _('Attitude Selector Switch - STBY'),						category = {_('Instrument Panel'), _('HUD Control Panel')}},
-- Left MDI
{	down = MDI_commands.MDI_PB_1,				up = MDI_commands.MDI_PB_1,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 1'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_2,				up = MDI_commands.MDI_PB_2,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 2'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_3,				up = MDI_commands.MDI_PB_3,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 3'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_4,				up = MDI_commands.MDI_PB_4,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 4'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_5,				up = MDI_commands.MDI_PB_5,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 5'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_6,				up = MDI_commands.MDI_PB_6,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 6'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_7,				up = MDI_commands.MDI_PB_7,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 7'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_8,				up = MDI_commands.MDI_PB_8,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 8'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_9,				up = MDI_commands.MDI_PB_9,		cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 9'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_10,				up = MDI_commands.MDI_PB_10,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 10'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_11,				up = MDI_commands.MDI_PB_11,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 11'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_12,				up = MDI_commands.MDI_PB_12,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 12'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_13,				up = MDI_commands.MDI_PB_13,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 13'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_14,				up = MDI_commands.MDI_PB_14,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 14'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_15,				up = MDI_commands.MDI_PB_15,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 15'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_16,				up = MDI_commands.MDI_PB_16,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 16'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_17,				up = MDI_commands.MDI_PB_17,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 17'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_18,				up = MDI_commands.MDI_PB_18,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 18'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_19,				up = MDI_commands.MDI_PB_19,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 19'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_PB_20,				up = MDI_commands.MDI_PB_20,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Left MDI PB 20'),										category = {_('Instrument Panel'), _('Left MDI')}},
{	pressed = MDI_commands.MDI_brightness_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_pressed = -0.5,					name = _('Left MDI Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('Left MDI')}},
{	pressed = MDI_commands.MDI_brightness_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_pressed =  0.5,					name = _('Left MDI Brightness Control Knob - CW/Increase'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	pressed = MDI_commands.MDI_contrast_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_pressed = -0.5,					name = _('Left MDI Contrast Control Knob - CCW/Decrease'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	pressed = MDI_commands.MDI_contrast_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_pressed =  0.5,					name = _('Left MDI Contrast Control Knob - CW/Increase'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_down = -1.0,						name = _('Left MDI Brightness Selector Knob - CCW/Left'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day_ITER,									cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,						name = _('Left MDI Brightness Selector Knob - CW/Right'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_LEFT,	value_down =  0.0,						name = _('Left MDI Brightness Selector Knob - OFF'),			category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_LEFT,	value_down =  0.1,						name = _('Left MDI Brightness Selector Knob - NIGHT'),			category = {_('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_LEFT,	value_down =  0.2,						name = _('Left MDI Brightness Selector Knob - DAY'),			category = {_('Instrument Panel'), _('Left MDI')}},
-- Right MDI
{	down = MDI_commands.MDI_PB_1,				up = MDI_commands.MDI_PB_1,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 1'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_2,				up = MDI_commands.MDI_PB_2,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 2'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_3,				up = MDI_commands.MDI_PB_3,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 3'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_4,				up = MDI_commands.MDI_PB_4,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 4'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_5,				up = MDI_commands.MDI_PB_5,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 5'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_6,				up = MDI_commands.MDI_PB_6,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 6'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_7,				up = MDI_commands.MDI_PB_7,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 7'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_8,				up = MDI_commands.MDI_PB_8,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 8'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_9,				up = MDI_commands.MDI_PB_9,		cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 9'),										category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_10,				up = MDI_commands.MDI_PB_10,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 10'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_11,				up = MDI_commands.MDI_PB_11,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 11'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_12,				up = MDI_commands.MDI_PB_12,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 12'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_13,				up = MDI_commands.MDI_PB_13,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 13'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_14,				up = MDI_commands.MDI_PB_14,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 14'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_15,				up = MDI_commands.MDI_PB_15,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 15'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_16,				up = MDI_commands.MDI_PB_16,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 16'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_17,				up = MDI_commands.MDI_PB_17,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 17'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_18,				up = MDI_commands.MDI_PB_18,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 18'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_19,				up = MDI_commands.MDI_PB_19,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 19'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_PB_20,				up = MDI_commands.MDI_PB_20,	cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,		value_up = 0.0,	name = _('Right MDI PB 20'),									category = {_('Instrument Panel'), _('Right MDI')}},
{	pressed = MDI_commands.MDI_brightness_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_pressed = -0.5,					name = _('Right MDI Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('Right MDI')}},
{	pressed = MDI_commands.MDI_brightness_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_pressed =  0.5,					name = _('Right MDI Brightness Control Knob - CW/Increase'),	category = {_('Instrument Panel'), _('Right MDI')}},
{	pressed = MDI_commands.MDI_contrast_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_pressed = -0.5,					name = _('Right MDI Contrast Control Knob - CCW/Decrease'),		category = {_('Instrument Panel'), _('Right MDI')}},
{	pressed = MDI_commands.MDI_contrast_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_pressed =  0.5,					name = _('Right MDI Contrast Control Knob - CW/Increase'),		category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_down = -1.0,						name = _('Right MDI Brightness Selector Knob - CCW/Left'),		category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day_ITER,									cockpit_device_id = devices.MDI_RIGHT,	value_down =  1.0,						name = _('Right MDI Brightness Selector Knob - CW/Right'),		category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_RIGHT,	value_down =  0.0,						name = _('Right MDI Brightness Selector Knob - OFF'),			category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_RIGHT,	value_down =  0.1,						name = _('Right MDI Brightness Selector Knob - NIGHT'),			category = {_('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day,										cockpit_device_id = devices.MDI_RIGHT,	value_down =  0.2,						name = _('Right MDI Brightness Selector Knob - DAY'),			category = {_('Instrument Panel'), _('Right MDI')}},
-- AMPCD
{	down = AMPCD_commands.AMPCD_PB_1,					up = AMPCD_commands.AMPCD_PB_1,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 1'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_2,					up = AMPCD_commands.AMPCD_PB_2,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 2'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_3,					up = AMPCD_commands.AMPCD_PB_3,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 3'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_4,					up = AMPCD_commands.AMPCD_PB_4,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 4'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_5,					up = AMPCD_commands.AMPCD_PB_5,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 5'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_6,					up = AMPCD_commands.AMPCD_PB_6,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 6'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_7,					up = AMPCD_commands.AMPCD_PB_7,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 7'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_8,					up = AMPCD_commands.AMPCD_PB_8,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 8'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_9,					up = AMPCD_commands.AMPCD_PB_9,				cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 9'),											category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_10,					up = AMPCD_commands.AMPCD_PB_10,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 10'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_11,					up = AMPCD_commands.AMPCD_PB_11,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 11'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_12,					up = AMPCD_commands.AMPCD_PB_12,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 12'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_13,					up = AMPCD_commands.AMPCD_PB_13,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 13'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_14,					up = AMPCD_commands.AMPCD_PB_14,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 14'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_15,					up = AMPCD_commands.AMPCD_PB_15,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 15'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_16,					up = AMPCD_commands.AMPCD_PB_16,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 16'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_17,					up = AMPCD_commands.AMPCD_PB_17,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 17'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_18,					up = AMPCD_commands.AMPCD_PB_18,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 18'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_19,					up = AMPCD_commands.AMPCD_PB_19,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 19'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_PB_20,					up = AMPCD_commands.AMPCD_PB_20,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD PB 20'),										category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_nite_day_DAY,			up = AMPCD_commands.AMPCD_nite_day_DAY,		cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD Night/Day Brightness Selector - DAY'),			category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_nite_day_NGT,			up = AMPCD_commands.AMPCD_nite_day_NGT,		cockpit_device_id = devices.AMPCD,		value_down = -1.0,		value_up = 0.0,	name = _('AMPCD Night/Day Brightness Selector - NGT'),			category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_symbology_UP,			up = AMPCD_commands.AMPCD_symbology_UP,		cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD Symbology Control Switch - UP'),				category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_symbology_DOWN,			up = AMPCD_commands.AMPCD_symbology_DOWN,	cockpit_device_id = devices.AMPCD,		value_down = -1.0,		value_up = 0.0,	name = _('AMPCD Symbology Control Switch - DOWN'),				category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_contrast_UP,			up = AMPCD_commands.AMPCD_contrast_UP,		cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD Contrast Control Switch - UP'),					category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_contrast_DOWN,			up = AMPCD_commands.AMPCD_contrast_DOWN,	cockpit_device_id = devices.AMPCD,		value_down = -1.0,		value_up = 0.0,	name = _('AMPCD Contrast Control Switch - DOWN'),				category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_gain_UP,				up = AMPCD_commands.AMPCD_gain_UP,			cockpit_device_id = devices.AMPCD,		value_down =  1.0,		value_up = 0.0,	name = _('AMPCD Gain Control Switch - UP'),						category = {_('Instrument Panel'), _('AMPCD')}},
{	down = AMPCD_commands.AMPCD_gain_DOWN,				up = AMPCD_commands.AMPCD_gain_DOWN,		cockpit_device_id = devices.AMPCD,		value_down = -1.0,		value_up = 0.0,	name = _('AMPCD Gain Control Switch - DOWN'),					category = {_('Instrument Panel'), _('AMPCD')}},
{	pressed = AMPCD_commands.AMPCD_off_brightness_ITER,												cockpit_device_id = devices.AMPCD,		value_pressed = -0.5,					name = _('AMPCD Off/Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('AMPCD')}},
{	pressed = AMPCD_commands.AMPCD_off_brightness_ITER,												cockpit_device_id = devices.AMPCD,		value_pressed =  0.5,					name = _('AMPCD Off/Brightness Control Knob - CW/Increase'),	category = {_('Instrument Panel'), _('AMPCD')}},
--
{	down = MDI_commands.MDI_Left_HDG_Negative,			up = MDI_commands.MDI_Left_HDG_Negative,	cockpit_device_id = devices.MDI_LEFT,	value_down = -1.0,		value_up = 0.0,	name = _('Heading Set Switch - Left'),							category = {_('Instrument Panel')}},
{	down = MDI_commands.MDI_Left_HDG_Positive,			up = MDI_commands.MDI_Left_HDG_Positive,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Heading Set Switch - Right'),							category = {_('Instrument Panel')}},
{	down = MDI_commands.MDI_Left_CRS_Negative,			up = MDI_commands.MDI_Left_CRS_Negative,	cockpit_device_id = devices.MDI_LEFT,	value_down = -1.0,		value_up = 0.0,	name = _('Course Set Switch - Left'),							category = {_('Instrument Panel')}},
{	down = MDI_commands.MDI_Left_CRS_Positive,			up = MDI_commands.MDI_Left_CRS_Positive,	cockpit_device_id = devices.MDI_LEFT,	value_down =  1.0,		value_up = 0.0,	name = _('Course Set Switch - Right'),							category = {_('Instrument Panel')}},
-- ALR-67
{	down = rwr_commands.Power_EXT,									cockpit_device_id = devices.RWR,	value_down =  1.0,						name = _('ALR-67 POWER Pushbutton - ON/OFF'),						category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Power,										cockpit_device_id = devices.RWR,	value_down =  1.0,						name = _('ALR-67 POWER Pushbutton - ON'),							category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Power,										cockpit_device_id = devices.RWR,	value_down =  0.0,						name = _('ALR-67 POWER Pushbutton - OFF'),							category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Display,		up = rwr_commands.Display,	cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('ALR-67 DISPLAY Pushbutton'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Special,		up = rwr_commands.Special,	cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('ALR-67 SPECIAL Pushbutton'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Offset,			up = rwr_commands.Offset,	cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('ALR-67 OFFSET Pushbutton'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.Bit,			up = rwr_commands.Bit,		cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('ALR-67 BIT Pushbutton'),									category = {_('Instrument Panel'), _('ALR-67')}},
{	pressed = rwr_commands.DmrControl_ITER,							cockpit_device_id = devices.RWR,	value_pressed = -0.5,					name = _('ALR-67 DMR Control Knob - CCW/Decrease'),					category = {_('Instrument Panel'), _('ALR-67')}},
{	pressed = rwr_commands.DmrControl_ITER,							cockpit_device_id = devices.RWR,	value_pressed =  0.5,					name = _('ALR-67 DMR Control Knob - CW/Increase'),					category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType_ITER,								cockpit_device_id = devices.RWR,	value_down = -1.0,						name = _('ALR-67 DIS TYPE Switch - CCW'),							category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType_ITER,								cockpit_device_id = devices.RWR,	value_down =  1.0,						name = _('ALR-67 DIS TYPE Switch - CW'),							category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType,									cockpit_device_id = devices.RWR,	value_down =  0.0,						name = _('ALR-67 DIS TYPE Switch - N'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType,									cockpit_device_id = devices.RWR,	value_down =  0.1,						name = _('ALR-67 DIS TYPE Switch - I'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType,									cockpit_device_id = devices.RWR,	value_down =  0.2,						name = _('ALR-67 DIS TYPE Switch - A'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType,									cockpit_device_id = devices.RWR,	value_down =  0.3,						name = _('ALR-67 DIS TYPE Switch - U'),								category = {_('Instrument Panel'), _('ALR-67')}},
{	down = rwr_commands.DisType,									cockpit_device_id = devices.RWR,	value_down =  0.4,						name = _('ALR-67 DIS TYPE Switch - F'),								category = {_('Instrument Panel'), _('ALR-67')}},
-- ALE-47 Dispenser
{	down = cmds_commands.EcmJett,									cockpit_device_id = devices.CMDS,	value_down =  1.0,						name = _('ECM JETT JETT SEL Pushbutton Switch - ON'),		category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.EcmJett,									cockpit_device_id = devices.CMDS,	value_down =  0.0,						name = _('ECM JETT JETT SEL Pushbutton Switch - OFF'),		category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.EcmJett_EXT,								cockpit_device_id = devices.CMDS,	value_down =  1.0,						name = _('ECM JETT JETT SEL Pushbutton Switch - ON/OFF'),	category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser_EXT,								cockpit_device_id = devices.CMDS,	value_down =  1.0,						name = _('DISPENSER Switch - Up'),							category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser_EXT,								cockpit_device_id = devices.CMDS,	value_down = -1.0,						name = _('DISPENSER Switch - Down'),						category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser,									cockpit_device_id = devices.CMDS,	value_down =  0.2,						name = _('DISPENSER Switch - BYPASS'),						category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser,									cockpit_device_id = devices.CMDS,	value_down =  0.1,						name = _('DISPENSER Switch - ON'),							category = {_('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser,									cockpit_device_id = devices.CMDS,	value_down =  0.0,						name = _('DISPENSER Switch - OFF'),							category = {_('Instrument Panel'), _('Dispenser')}},
-- AN/ALQ-165 Airborne Self-Protection Jammer (ASPJ)
{	down = ASPJ_commands.ASPJ_SwitchChange_ITER,					cockpit_device_id = devices.ASPJ,	value_down = -1.0,						name = _('ALQ-165 ECM Mode Switch - CCW'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange_ITER,					cockpit_device_id = devices.ASPJ,	value_down =  1.0,						name = _('ALQ-165 ECM Mode Switch - CW'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange,							cockpit_device_id = devices.ASPJ,	value_down =  0.4,						name = _('ALQ-165 ECM Mode Switch - XMIT'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange,							cockpit_device_id = devices.ASPJ,	value_down =  0.3,						name = _('ALQ-165 ECM Mode Switch - REC'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange,							cockpit_device_id = devices.ASPJ,	value_down =  0.2,						name = _('ALQ-165 ECM Mode Switch - BIT'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange,							cockpit_device_id = devices.ASPJ,	value_down =  0.1,						name = _('ALQ-165 ECM Mode Switch - STBY'),					category = {_('Instrument Panel'), _('ALQ-165')}},
{	down = ASPJ_commands.ASPJ_SwitchChange,							cockpit_device_id = devices.ASPJ,	value_down =  0.0,						name = _('ALQ-165 ECM Mode Switch - OFF'),					category = {_('Instrument Panel'), _('ALQ-165')}},

{	down = SMS_commands.AuxRelSw_ITER,															cockpit_device_id = devices.SMS,			value_down =  0.0,						name = _('Auxiliary Release Switch - ENABLE/NORM'),		category = {_('Instrument Panel')}},
{	down = SMS_commands.AuxRelSw,																cockpit_device_id = devices.SMS,			value_down =  1.0,						name = _('Auxiliary Release Switch - ENABLE'),			category = {_('Instrument Panel')}},
{	down = SMS_commands.AuxRelSw,																cockpit_device_id = devices.SMS,			value_down =  0.0,						name = _('Auxiliary Release Switch - NORM'),			category = {_('Instrument Panel')}},
{	down = cpt_commands.RudderPedalAdjustLever,		up = cpt_commands.RudderPedalAdjustLever,	cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,		value_up = 0.0,	name = _('Rudder Pedal Adjust Lever'),					category = {_('Instrument Panel')}},


---------------------------------------------
-- Left Vertical Panel ----------------------
---------------------------------------------
-- Landing Gear Handle
{	down = iCommandPlaneGear,																																				name = _('Landing Gear Control Handle - UP/DOWN'),							category = {_('Left Vertical Panel')}},
{	down = iCommandPlaneGearUp,																																				name = _('Landing Gear Control Handle - UP'),								category = {_('Left Vertical Panel')}},
{	down = iCommandPlaneGearDown,																																			name = _('Landing Gear Control Handle - DOWN'),								category = {_('Left Vertical Panel')}},
{	down = iCommandEmergencyGear,																																			name = _('Landing Gear Control Handle (EMERGENCY DOWN) - EXTEND/RETRACT'),	category = {_('Left Vertical Panel')}},
{	down = gear_commands.EmergDown,														cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('Landing Gear Control Handle (EMERGENCY DOWN) - EXTEND'),			category = {_('Left Vertical Panel')}},
{	down = gear_commands.EmergDown,														cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('Landing Gear Control Handle (EMERGENCY DOWN) - RETRACT'),			category = {_('Left Vertical Panel')}},
{	down = gear_commands.DownLockOverrideBtn,	up = gear_commands.DownLockOverrideBtn,	cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Down Lock Override Button'),										category = {_('Left Vertical Panel')}},
-- Flap Switch
{	down = ctrl_commands.FlapSw_EXT,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('FLAP Switch - Up'),												category = {_('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw_EXT,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,					name = _('FLAP Switch - Down'),												category = {_('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw_EXT,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('FLAP Switch - Cycle'),											category = {_('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('FLAP Switch - AUTO'),												category = {_('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('FLAP Switch - HALF'),												category = {_('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,					name = _('FLAP Switch - FULL'),												category = {_('Left Vertical Panel')}},
-- Select Jett
{	down = SMS_commands.SelJettLvr_ITER,												cockpit_device_id = devices.SMS,				value_down =  1.0,					name = _('Selective Jettison Knob - CW'),									category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr_ITER,												cockpit_device_id = devices.SMS,				value_down = -1.0,					name = _('Selective Jettison Knob - CCW'),									category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr,														cockpit_device_id = devices.SMS,				value_down = -0.1,					name = _('Selective Jettison Knob - L FUS MSL'),							category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr,														cockpit_device_id = devices.SMS,				value_down =  0.0,					name = _('Selective Jettison Knob - SAFE'),									category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr,														cockpit_device_id = devices.SMS,				value_down =  0.1,					name = _('Selective Jettison Knob - R FUS MSL'),							category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr,														cockpit_device_id = devices.SMS,				value_down =  0.2,					name = _('Selective Jettison Knob - RACK/LCHR'),							category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettLvr,														cockpit_device_id = devices.SMS,				value_down =  0.3,					name = _('Selective Jettison Knob - STORES'),								category = {_('Left Vertical Panel')}},
{	down = SMS_commands.SelJettBtn,				up = SMS_commands.SelJettBtn,			cockpit_device_id = devices.SMS,				value_down =  1.0,	value_up = 0.0,	name = _('Selective Jettison Pushbutton'),									category = {_('Left Vertical Panel')}},
--
{	down = gear_commands.LaunchBarSw,			up = gear_commands.LaunchBarSw,			cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Launch Bar Control Switch - EXTEND/RETRACT'),						category = {_('Left Vertical Panel')}},
{	down = gear_commands.LaunchBarSw_EXT,		up = gear_commands.LaunchBarSw_EXT,		cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Launch Bar Control Switch - EXTEND'),								category = {_('Left Vertical Panel')}},
{	down = gear_commands.LaunchBarSw_EXT,												cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('Launch Bar Control Switch - RETRACT'),							category = {_('Left Vertical Panel')}},
--
{	down = cptlights_commands.HookBypass,		up = cptlights_commands.HookBypass,		cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,	value_up = 0.0,	name = _('HOOK BYPASS Switch - FIELD/CARRIER'),								category = {_('Left Vertical Panel')}},
{	down = cptlights_commands.HookBypass_EXT,	up = cptlights_commands.HookBypass_EXT,	cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,	value_up = 0.0,	name = _('HOOK BYPASS Switch - FIELD'),										category = {_('Left Vertical Panel')}},
{	down = cptlights_commands.HookBypass_EXT,											cockpit_device_id = devices.CPT_LIGHTS,			value_down = -1.0,					name = _('HOOK BYPASS Switch - CARRIER'),									category = {_('Left Vertical Panel')}},
--
{	down = extlights_commands.LdgTaxi_EXT,												cockpit_device_id = devices.EXT_LIGHTS,			value_down =  0.0,					name = _('LDG/TAXI LIGHT Switch - ON/OFF'),									category = {_('Left Vertical Panel')}},
{	down = extlights_commands.LdgTaxi,													cockpit_device_id = devices.EXT_LIGHTS,			value_down =  1.0,					name = _('LDG/TAXI LIGHT Switch - ON'),										category = {_('Left Vertical Panel')}},
{	down = extlights_commands.LdgTaxi,													cockpit_device_id = devices.EXT_LIGHTS,			value_down =  0.0,					name = _('LDG/TAXI LIGHT Switch - OFF'),									category = {_('Left Vertical Panel')}},
--
{	down = gear_commands.AntiSkidSw_EXT,												cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,					name = _('Anti Skid Switch - ON/OFF'),										category = {_('Left Vertical Panel')}},
{	down = gear_commands.AntiSkidSw,													cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('Anti Skid Switch - ON'),											category = {_('Left Vertical Panel')}},
{	down = gear_commands.AntiSkidSw,													cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,					name = _('Anti Skid Switch - OFF'),											category = {_('Left Vertical Panel')}},
--
{	down = gear_commands.EmergParkHandleSelectPark,		up = gear_commands.EmergParkHandleSelectPark,	cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Emergency/Parking Brake Handle - CCW'),			category = {_('Left Vertical Panel')}},
{	down = gear_commands.EmergParkHandleSelectEmerg,													cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('Emergency/Parking Brake Handle - CW'),			category = {_('Left Vertical Panel')}},
{	down = gear_commands.EmergParkHandleOnOff,															cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('Emergency/Parking Brake Handle - PULL'),			category = {_('Left Vertical Panel')}},
{	down = gear_commands.EmergParkHandleOnOff,															cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('Emergency/Parking Brake Handle - STOW'),			category = {_('Left Vertical Panel')}},
--
{	pressed = ECS_commands.LeftLouver_ITER,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed = -0.5,				name = _('Left Louver - Left'),												category = {_('Left Vertical Panel')}},
{	pressed = ECS_commands.LeftLouver_ITER,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed =  0.5,				name = _('Left Louver - Right'),											category = {_('Left Vertical Panel')}},
--
{	down = intercom_commands.WarnToneSilBtn,	up = intercom_commands.WarnToneSilBtn,	cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('Warning Tone Silence Button'),									category = {_('Left Vertical Panel')}},

---------------------------------------------
-- Right Vertical Panel ---------------------
---------------------------------------------
--
{	pressed = ECS_commands.RightLouver_ITER,													cockpit_device_id = devices.ECS_INTERFACE,		value_pressed =  0.5,					name = _('Right Louver - Left'),							category = {_('Right Vertical Panel')}},
{	pressed = ECS_commands.RightLouver_ITER,													cockpit_device_id = devices.ECS_INTERFACE,		value_pressed = -0.5,					name = _('Right Louver - Right'),							category = {_('Right Vertical Panel')}},
--
{	down = gear_commands.HookHandle_EXT,														cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,						name = _('Arresting Hook Handle - Cycle'),					category = {_('Right Vertical Panel')}},
{	down = gear_commands.HookHandle,															cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,						name = _('Arresting Hook Handle - Up'),						category = {_('Right Vertical Panel')}},
{	down = gear_commands.HookHandle,															cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,						name = _('Arresting Hook Handle - Down'),					category = {_('Right Vertical Panel')}},
--
{	down = ECS_commands.AV_COOL_Sw,					up = ECS_commands.AV_COOL_Sw,				cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('AV COOL Switch - EMERG/NORM'),					category = {_('Right Vertical Panel')}},
-- Wing Fold Control Handle
{	down = ctrl_commands.WingFoldPull_ITER,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,						name = _('Wing Fold Control Handle - PULL/STOW'),			category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldPull,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,						name = _('Wing Fold Control Handle - PULL'),				category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldPull,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,						name = _('Wing Fold Control Handle - STOW'),				category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect_ITER,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,						name = _('Wing Fold Control Handle - CCW/Left'),			category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect_ITER,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,						name = _('Wing Fold Control Handle - CW/Right'),			category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,						name = _('Wing Fold Control Handle - FOLD'),				category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,						name = _('Wing Fold Control Handle - HOLD'),				category = {_('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect,														cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,						name = _('Wing Fold Control Handle - SPREAD'),				category = {_('Right Vertical Panel')}},
-- Radar Altimeter
{	down = id2163a_commands.ID2163A_PushToTest,		up = id2163a_commands.ID2163A_PushToTest,	cockpit_device_id = devices.ID2163A,			value_down =  1.0,		value_up = 0.0,	name = _('Push to Test Switch - Push to activate BIT'),		category = {_('Right Vertical Panel')}},
{	pressed = id2163a_commands.ID2163A_SetMinAlt,												cockpit_device_id = devices.ID2163A,			value_pressed = -0.02,					name = _('Push to Test Switch - CCW/Decrease'),				category = {_('Right Vertical Panel')}},
{	pressed = id2163a_commands.ID2163A_SetMinAlt,												cockpit_device_id = devices.ID2163A,			value_pressed =  0.02,					name = _('Push to Test Switch - CW/Increase'),				category = {_('Right Vertical Panel')}},


---------------------------------------------
-- Left Console -----------------------------
---------------------------------------------
-- Fire Test Panel
{	down = engines_commands.FireTestASw,				up = engines_commands.FireTestASw,			cockpit_device_id = devices.ENGINES_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('Fire and Bleed Air Test Switch - TEST A'),				category = {_('Left Console'), _('Fire Test Panel')}},
{	down = engines_commands.FireTestBSw,				up = engines_commands.FireTestBSw,			cockpit_device_id = devices.ENGINES_INTERFACE,		value_down = -1.0,		value_up = 0.0,	name = _('Fire and Bleed Air Test Switch - TEST B'),				category = {_('Left Console'), _('Fire Test Panel')}},
-- Ground Power Panel
{	down = elec_commands.GndPwr1SwA,					up = elec_commands.GndPwr1SwA,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 1 - Up'),								category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr1SwB,					up = elec_commands.GndPwr1SwB,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 1 - Down'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr1SwA_EXT,				up = elec_commands.GndPwr1SwA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 1 - A ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr1SwA_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('Ground Power Switch 1 - AUTO'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr1SwB_EXT,				up = elec_commands.GndPwr1SwB_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 1 - B ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr2SwA,					up = elec_commands.GndPwr2SwA,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 2 - Up'),								category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr2SwB,					up = elec_commands.GndPwr2SwB,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 2 - Down'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr2SwA_EXT,				up = elec_commands.GndPwr2SwA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 2 - A ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr2SwA_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('Ground Power Switch 2 - AUTO'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr2SwB_EXT,				up = elec_commands.GndPwr2SwB_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 2 - B ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr3SwA,					up = elec_commands.GndPwr3SwA,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 3 - Up'),								category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr3SwB,					up = elec_commands.GndPwr3SwB,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 3 - Down'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr3SwA_EXT,				up = elec_commands.GndPwr3SwA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 3 - A ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr3SwA_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('Ground Power Switch 3 - AUTO'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr3SwB_EXT,				up = elec_commands.GndPwr3SwB_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 3 - B ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr4SwA,					up = elec_commands.GndPwr4SwA,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 4 - Up'),								category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr4SwB,					up = elec_commands.GndPwr4SwB,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 4 - Down'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr4SwA_EXT,				up = elec_commands.GndPwr4SwA_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Ground Power Switch 4 - A ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr4SwA_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('Ground Power Switch 4 - AUTO'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.GndPwr4SwB_EXT,				up = elec_commands.GndPwr4SwB_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('Ground Power Switch 4 - B ON'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.ExtPwrReset,					up = elec_commands.ExtPwrReset,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('External Power Switch - Up'),								category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.ExtPwrSw,																	cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('External Power Switch - Down'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.ExtPwrReset_EXT,				up = elec_commands.ExtPwrReset_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('External Power Switch - RESET'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.ExtPwrSw_EXT,																cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  0.0,						name = _('External Power Switch - NORM'),							category = {_('Left Console'), _('Ground Power Panel')}},
{	down = elec_commands.ExtPwrSw_EXT,																cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('External Power Switch - OFF'),							category = {_('Left Console'), _('Ground Power Panel')}},
-- Exterior Lights Panel
{	pressed = extlights_commands.Position_EXT,														cockpit_device_id = devices.EXT_LIGHTS,				value_pressed = -1.0,					name = _('POSITION Lights Dimmer Control - CCW/Left'),				category = {_('Left Console'), _('Exterior Lights Panel')}},
{	pressed = extlights_commands.Position_EXT,														cockpit_device_id = devices.EXT_LIGHTS,				value_pressed =  1.0,					name = _('POSITION Lights Dimmer Control - CW/Right'),				category = {_('Left Console'), _('Exterior Lights Panel')}},
{	pressed = extlights_commands.Formation_EXT,														cockpit_device_id = devices.EXT_LIGHTS,				value_pressed = -1.0,					name = _('FORMATION Lights Dimmer Control - CCW/Left'),				category = {_('Left Console'), _('Exterior Lights Panel')}},
{	pressed = extlights_commands.Formation_EXT,														cockpit_device_id = devices.EXT_LIGHTS,				value_pressed =  1.0,					name = _('FORMATION Lights Dimmer Control - CW/Right'),				category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe_EXT,															cockpit_device_id = devices.EXT_LIGHTS,				value_down =  1.0,						name = _('STROBE Lights Switch - Up'),								category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe_EXT,															cockpit_device_id = devices.EXT_LIGHTS,				value_down = -1.0,						name = _('STROBE Lights Switch - Down'),							category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe,																cockpit_device_id = devices.EXT_LIGHTS,				value_down =  1.0,						name = _('STROBE Lights Switch - BRT'),								category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe,																cockpit_device_id = devices.EXT_LIGHTS,				value_down =  0.0,						name = _('STROBE Lights Switch - OFF'),								category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe,																cockpit_device_id = devices.EXT_LIGHTS,				value_down = -1.0,						name = _('STROBE Lights Switch - DIM'),								category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = fuel_commands.IntrWingInhibitSw_EXT,														cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  0.0,						name = _('Internal Wing Tank Fuel Control Switch - INHIBIT/NORM'),	category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = fuel_commands.IntrWingInhibitSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('Internal Wing Tank Fuel Control Switch - INHIBIT'),		category = {_('Left Console'), _('Exterior Lights Panel')}},
{	down = fuel_commands.IntrWingInhibitSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  0.0,						name = _('Internal Wing Tank Fuel Control Switch - NORM'),			category = {_('Left Console'), _('Exterior Lights Panel')}},
-- Gen Tie Control
{	down = elec_commands.GenTieControlSwCover_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  0.0,						name = _('Generator TIE Control Switch Cover - OPEN/CLOSE'),		category = {_('Left Console')}},
{	down = elec_commands.GenTieControlSwCover,														cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,						name = _('Generator TIE Control Switch Cover - OPEN'),				category = {_('Left Console')}},
{	down = elec_commands.GenTieControlSwCover,														cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  0.0,						name = _('Generator TIE Control Switch Cover - CLOSE'),				category = {_('Left Console')}},
{	down = elec_commands.GenTieControlSw_EXT,														cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  0.0,						name = _('Generator TIE Control Switch - NORM/RESET'),				category = {_('Left Console')}},
{	down = elec_commands.GenTieControlSw,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,						name = _('Generator TIE Control Switch - RESET'),					category = {_('Left Console')}},
{	down = elec_commands.GenTieControlSw,															cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  0.0,						name = _('Generator TIE Control Switch - NORM'),					category = {_('Left Console')}},
-- Fuel Control Panel
{	down = fuel_commands.ProbeControlSw_EXT,														cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('Probe Control Switch - Up'),								category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ProbeControlSw_EXT,														cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('Probe Control Switch - Down'),							category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ProbeControlSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('Probe Control Switch - EXTEND'),							category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ProbeControlSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  0.0,						name = _('Probe Control Switch - RETRACT'),							category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ProbeControlSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('Probe Control Switch - EMERG EXTD'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw_EXT,														cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('External Wing Tanks Fuel Control Switch - Up'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw_EXT,														cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('External Wing Tanks Fuel Control Switch - Down'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('External Wing Tanks Fuel Control Switch - ORIDE'),		category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  0.0,						name = _('External Wing Tanks Fuel Control Switch - NORM'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('External Wing Tanks Fuel Control Switch - STOP'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw_EXT,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('External Centerline Tank Fuel Control Switch - Up'),		category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw_EXT,															cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('External Centerline Tank Fuel Control Switch - Down'),	category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw,																cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,						name = _('External Centerline Tank Fuel Control Switch - ORIDE'),	category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw,																cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  0.0,						name = _('External Centerline Tank Fuel Control Switch - NORM'),	category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw,																cockpit_device_id = devices.FUEL_INTERFACE,			value_down = -1.0,						name = _('External Centerline Tank Fuel Control Switch - STOP'),	category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.DumpSw,						up = fuel_commands.DumpSw,					cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('Fuel Dump Switch - ON/OFF'),								category = {_('Left Console'), _('Fuel Control Panel')}},
-- FCS Panel
{	pressed = ctrl_commands.RudderTrim_EXT,															cockpit_device_id = devices.CONTROL_INTERFACE,		value_pressed = -1.0,					name = _('RUD TRIM Control - CCW/Left'),							category = {_('Left Console'), _('FCS Panel')}},
{	pressed = ctrl_commands.RudderTrim_EXT,															cockpit_device_id = devices.CONTROL_INTERFACE,		value_pressed =  1.0,					name = _('RUD TRIM Control - CW/Right'),							category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.TOTrimSw,						up = ctrl_commands.TOTrimSw,				cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('T/O TRIM Button'),										category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.ResetSw,						up = ctrl_commands.ResetSw,					cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('FCS RESET Button'),										category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSwCover_EXT,															cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  0.0,						name = _('GAIN Switch Cover - OPEN/CLOSE'),							category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSwCover,																cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,						name = _('GAIN Switch Cover - OPEN'),								category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSwCover,																cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  0.0,						name = _('GAIN Switch Cover - CLOSE'),								category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSw_EXT,																cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  0.0,						name = _('GAIN Switch - NORM/ORIDE'),								category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSw,																	cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,						name = _('GAIN Switch - ORIDE'),									category = {_('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSw,																	cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  0.0,						name = _('GAIN Switch - NORM'),										category = {_('Left Console'), _('FCS Panel')}},
-- Power Plant Start
{	down = engines_commands.APU_ControlSw,				up = engines_commands.APU_ControlSw,		cockpit_device_id = devices.ENGINES_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('APU Control Switch - ON/OFF'),							category = {_('Left Console')}},
{	down = engines_commands.EngineCrankLSw,				up = engines_commands.EngineCrankLSw,		cockpit_device_id = devices.ENGINES_INTERFACE,		value_down = -1.0,		value_up = 0.0,	name = _('Engine Crank Switch - Cycle Left'),						category = {_('Left Console')}},
{	down = engines_commands.EngineCrankRSw,				up = engines_commands.EngineCrankRSw,		cockpit_device_id = devices.ENGINES_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('Engine Crank Switch - Cycle Right'),						category = {_('Left Console')}},
{	down = engines_commands.EngineCrankRSw_EXT,			up = engines_commands.EngineCrankRSw_EXT,	cockpit_device_id = devices.ENGINES_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('Engine Crank Switch - RIGHT'),							category = {_('Left Console')}},
{	down = engines_commands.EngineCrankRSw_EXT,														cockpit_device_id = devices.ENGINES_INTERFACE,		value_down = -1.0,						name = _('Engine Crank Switch - OFF'),								category = {_('Left Console')}},
{	down = engines_commands.EngineCrankLSw_EXT,			up = engines_commands.EngineCrankLSw_EXT,	cockpit_device_id = devices.ENGINES_INTERFACE,		value_down = -1.0,		value_up = 0.0,	name = _('Engine Crank Switch - LEFT'),								category = {_('Left Console')}},
-- Communication Control Panel
{	pressed = intercom_commands.VOX_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('VOX Volume Control Knob - CCW/Decrease'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.VOX_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('VOX Volume Control Knob - CW/Increase'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.ICS_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('ICS Volume Control Knob - CCW/Decrease'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.ICS_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('ICS Volume Control Knob - CW/Increase'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.RWR_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('RWR Volume Control Knob - CCW/Decrease'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.RWR_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('RWR Volume Control Knob - CW/Increase'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.WPN_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('WPN Volume Control Knob - CCW/Decrease'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.WPN_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('WPN Volume Control Knob - CW/Increase'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.MIDS_B_Volume_EXT,													cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('MIDS B Volume Control Knob - CCW/Decrease'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.MIDS_B_Volume_EXT,													cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('MIDS B Volume Control Knob - CW/Increase'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.MIDS_A_Volume_EXT,													cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('MIDS A Volume Control Knob - CCW/Decrease'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.MIDS_A_Volume_EXT,													cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('MIDS A Volume Control Knob - CW/Increase'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.TCN_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('TACAN Volume Control Knob - CCW/Decrease'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.TCN_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('TACAN Volume Control Knob - CW/Increase'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.AUX_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed = -0.5,					name = _('AUX Volume Control Knob - CCW/Decrease'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	pressed = intercom_commands.AUX_Volume_EXT,														cockpit_device_id = devices.INTERCOM,				value_pressed =  0.5,					name = _('AUX Volume Control Knob - CW/Increase'),					category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw_EXT,														cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('Comm Relay Switch - Up'),									category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw_EXT,														cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('Comm Relay Switch - Down'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw,															cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('Comm Relay Switch - CIPHER'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw,															cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('Comm Relay Switch - OFF'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw,															cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('Comm Relay Switch - PLAIN'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw_EXT,															cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('COMM G XMT Switch - Up'),									category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw_EXT,															cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('COMM G XMT Switch - Down'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw,																cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('COMM G XMT Switch - COMM 1'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw,																cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('COMM G XMT Switch - OFF'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw,																cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('COMM G XMT Switch - COMM 2'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_ChannelSelector_EXT,												cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('ILS Channel Selector Switch - CCW/Decrease'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_ChannelSelector_EXT,												cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('ILS Channel Selector Switch - CW/Increase'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_UFC_MAN_Sw_EXT,													cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('ILS UFC/MAN Switch - UFC/MAN'),							category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_UFC_MAN_Sw,														cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('ILS UFC/MAN Switch - UFC'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_UFC_MAN_Sw,														cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('ILS UFC/MAN Switch - MAN'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_MasterSw_EXT,														cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('IFF Master Switch - EMER/NORM'),							category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_MasterSw,															cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('IFF Master Switch - EMER'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_MasterSw,															cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('IFF Master Switch - NORM'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw_EXT,														cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('IFF Mode 4 Switch - Up'),									category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw_EXT,														cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('IFF Mode 4 Switch - Down'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw,															cockpit_device_id = devices.INTERCOM,				value_down =  1.0,						name = _('IFF Mode 4 Switch - DIS/AUD'),							category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw,															cockpit_device_id = devices.INTERCOM,				value_down =  0.0,						name = _('IFF Mode 4 Switch - DIS'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw,															cockpit_device_id = devices.INTERCOM,				value_down = -1.0,						name = _('IFF Mode 4 Switch - OFF'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_CryptoSw_Hold,			up = intercom_commands.IFF_CryptoSw_Hold,	cockpit_device_id = devices.INTERCOM,				value_down =  1.0,		value_up = 0.0,	name = _('CRYPTO Switch - HOLD/NORM'),								category = {_('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_CryptoSw_Zero,			up = intercom_commands.IFF_CryptoSw_Zero,	cockpit_device_id = devices.INTERCOM,				value_down = -1.0,		value_up = 0.0,	name = _('CRYPTO Switch - ZERO/NORM'),								category = {_('Left Console'), _('Communication Control Panel')}},
-- Antenna Selector
{	down = antsel_commands.Comm1AntSelSw_EXT,														cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  1.0,						name = _('COMM 1 Antenna Selector Switch - Up'),					category = {_('Left Console')}},
{	down = antsel_commands.Comm1AntSelSw_EXT,														cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down = -1.0,						name = _('COMM 1 Antenna Selector Switch - Down'),					category = {_('Left Console')}},
{	down = antsel_commands.Comm1AntSelSw,															cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  1.0,						name = _('COMM 1 Antenna Selector Switch - UPPER'),					category = {_('Left Console')}},
{	down = antsel_commands.Comm1AntSelSw,															cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  0.0,						name = _('COMM 1 Antenna Selector Switch - AUTO'),					category = {_('Left Console')}},
{	down = antsel_commands.Comm1AntSelSw,															cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down = -1.0,						name = _('COMM 1 Antenna Selector Switch - LOWER'),					category = {_('Left Console')}},
{	down = antsel_commands.AntSelIFFSw_EXT,															cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  1.0,						name = _('IFF Antenna Selector Switch - Up'),						category = {_('Left Console')}},
{	down = antsel_commands.AntSelIFFSw_EXT,															cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down = -1.0,						name = _('IFF Antenna Selector Switch - Down'),						category = {_('Left Console')}},
{	down = antsel_commands.AntSelIFFSw,																cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  1.0,						name = _('IFF Antenna Selector Switch - UPPER'),					category = {_('Left Console')}},
{	down = antsel_commands.AntSelIFFSw,																cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down =  0.0,						name = _('IFF Antenna Selector Switch - BOTH'),						category = {_('Left Console')}},
{	down = antsel_commands.AntSelIFFSw,																cockpit_device_id = devices.ANTENNA_SELECTOR,		value_down = -1.0,						name = _('IFF Antenna Selector Switch - LOWER'),					category = {_('Left Console')}},
-- ALE-39 RESET
--{	down = _EXT,															cockpit_device_id = devices.,	value_down =  0.0,						name = _('ALE-39 Reset Switch Cover - OPEN/CLOSE'),					category = {_('Left Console')}},
--{	down = ,																cockpit_device_id = devices.,	value_down =  1.0,						name = _('ALE-39 Reset Switch Cover - OPEN'),						category = {_('Left Console')}},
--{	down = ,																cockpit_device_id = devices.,	value_down =  0.0,						name = _('ALE-39 Reset Switch Cover - CLOSE'),						category = {_('Left Console')}},
--{	down = _EXT,															cockpit_device_id = devices.,	value_down =  0.0,						name = _('ALE-39 Reset Switch - RESET/NORM'),						category = {_('Left Console')}},
--{	down = ,																cockpit_device_id = devices.,	value_down =  1.0,						name = _('ALE-39 Reset Switch - RESET'),							category = {_('Left Console')}},
--{	down = ,																cockpit_device_id = devices.,	value_down =  0.0,						name = _('ALE-39 Reset Switch - NORM'),								category = {_('Left Console')}},
-- OBOGS
{	down = oxygen_commands.OBOGS_ControlSw_EXT,														cockpit_device_id = devices.OXYGEN_INTERFACE,		value_down =  0.0,						name = _('OBOGS Control Switch - ON/OFF'),							category = {_('Left Console')}},
{	down = oxygen_commands.OBOGS_ControlSw,															cockpit_device_id = devices.OXYGEN_INTERFACE,		value_down =  1.0,						name = _('OBOGS Control Switch - ON'),								category = {_('Left Console')}},
{	down = oxygen_commands.OBOGS_ControlSw,															cockpit_device_id = devices.OXYGEN_INTERFACE,		value_down =  0.0,						name = _('OBOGS Control Switch - OFF'),								category = {_('Left Console')}},
{	pressed = oxygen_commands.OxyFlowControlValve_EXT,												cockpit_device_id = devices.OXYGEN_INTERFACE,		value_pressed = -0.5,					name = _('OXY Flow Knob - CCW/Decrease/OFF'),						category = {_('Left Console')}},
{	pressed = oxygen_commands.OxyFlowControlValve_EXT,												cockpit_device_id = devices.OXYGEN_INTERFACE,		value_pressed =  0.5,					name = _('OXY Flow Knob - CW/Increase/ON'),							category = {_('Left Console')}},
-- MC/HYD ISOL panel
{	down = elec_commands.MC1OffSw,						up = elec_commands.MC1OffSw,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('MC Switch - Up'),											category = {_('Left Console')}},
{	down = elec_commands.MC2OffSw,						up = elec_commands.MC2OffSw,				cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('MC Switch - Down'),										category = {_('Left Console')}},
{	down = elec_commands.MC1OffSw_EXT,					up = elec_commands.MC1OffSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,		value_up = 0.0,	name = _('MC Switch - 1 OFF'),										category = {_('Left Console')}},
{	down = elec_commands.MC1OffSw_EXT,																cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,						name = _('MC Switch - NORM'),										category = {_('Left Console')}},
{	down = elec_commands.MC2OffSw_EXT,					up = elec_commands.MC2OffSw_EXT,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down = -1.0,		value_up = 0.0,	name = _('MC Switch - 2 OFF'),										category = {_('Left Console')}},
{	down = hydro_commands.HydIsolSw_EXT,															cockpit_device_id = devices.HYDRAULIC_INTERFACE,	value_down =  0.0,						name = _('Hydraulic Isolate Override Switch - NORM/ORIDE'),			category = {_('Left Console')}},
{	down = hydro_commands.HydIsolSw,																cockpit_device_id = devices.HYDRAULIC_INTERFACE,	value_down =  1.0,						name = _('Hydraulic Isolate Override Switch - ORIDE'),				category = {_('Left Console')}},
{	down = hydro_commands.HydIsolSw,																cockpit_device_id = devices.HYDRAULIC_INTERFACE,	value_down =  0.0,						name = _('Hydraulic Isolate Override Switch - NORM'),				category = {_('Left Console')}},

---------------------------------------------
-- Left Wall --------------------------------
---------------------------------------------
-- Canopy Jettison
{	down = cpt_commands.CanopyJettLeverButton,	up = cpt_commands.CanopyJettLeverButton,	cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,	value_up = 0.0,	name = _('Canopy Jettison Handle Unlock Button'),	category = {_('Left Wall')}},
{	down = cpt_commands.CanopyJettLever_EXT,												cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Canopy Jettison Handle - PULL/PUSH'),		category = {_('Left Wall')}},
{	down = cpt_commands.CanopyJettLever,													cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,					name = _('Canopy Jettison Handle - PULL'),			category = {_('Left Wall')}},
{	down = cpt_commands.CanopyJettLever,													cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Canopy Jettison Handle - PUSH'),			category = {_('Left Wall')}},
--
{	down = cmds_commands.EcmDisp,				up = cmds_commands.EcmDisp,					cockpit_device_id = devices.CMDS,			value_down = 1.0,	value_up = 0.0,	name = _('Dispense Button'),						category = {_('Left Wall'), _('Dispenser')}},
-- Left Circuit Breaker Panel
{	down = elec_commands.CB_FCS_CHAN1_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB FCS CHAN 1 - ON/OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN1,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('CB FCS CHAN 1 - OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN1,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB FCS CHAN 1 - ON'),						category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN2_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB FCS CHAN 2 - ON/OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN2,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('CB FCS CHAN 2 - OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN2,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB FCS CHAN 2 - ON'),						category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_SPD_BRK_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB SPD BRK - ON/OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_SPD_BRK,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('CB SPD BRK - OFF'),						category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_SPD_BRK,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB SPD BRK - ON'),						category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_LAUNCH_BAR_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB LAUNCH BAR - ON/OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_LAUNCH_BAR,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('CB LAUNCH BAR - OFF'),					category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
{	down = elec_commands.CB_LAUNCH_BAR,														cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('CB LAUNCH BAR - ON'),						category = {_('Left Wall'), _('Left Circuit Breaker Panel')}},
--
--{	down = _EXT,													cockpit_device_id = devices.,	value_down = 0.0,					name = _('NUC WPN Switch - ENABLE/DISABLE (no function)'),	category = {_('Left Wall')}},	-- not used
--{	down = ,														cockpit_device_id = devices.,	value_down = 1.0,					name = _('NUC WPN Switch - ENABLE (no function)'),			category = {_('Left Wall')}},	-- not used
--{	down = ,														cockpit_device_id = devices.,	value_down = 0.0,					name = _('NUC WPN Switch - DISABLE (no function)'),			category = {_('Left Wall')}},	-- not used
--
--{	down = ,	up = ,	cockpit_device_id = devices.,	value_down = 1.0,	value_up = 0.0,	name = _('Left Video Sensor BIT Initiate Pushbutton'),		category = {_('Left Wall')}},


---------------------------------------------
-- Right Wall -------------------------------
---------------------------------------------
-- Canopy Control
{	down = iCommandPlaneFonar,																																						name = _('Canopy - OPEN/CLOSE'),			category = {_('Right Wall'), _('Systems')}},
{	down = cpt_commands.CanopySwitchOpen,		up =  cpt_commands.CanopySwitchOpen,		cockpit_device_id = devices.CPT_MECHANICS,		value_down =  1.0,	value_up = 0.0,		name = _('Canopy Control Switch - OPEN'),	category = {_('Right Wall'), _('Systems')}},
{	down = cpt_commands.CanopySwitchClose,													cockpit_device_id = devices.CPT_MECHANICS,		value_down =  0.0,						name = _('Canopy Control Switch - HOLD'),	category = {_('Right Wall'), _('Systems')}},
{	down = cpt_commands.CanopySwitchClose,		up =  cpt_commands.CanopySwitchClose,		cockpit_device_id = devices.CPT_MECHANICS,		value_down = -1.0,	value_up = 0.0,		name = _('Canopy Control Switch - CLOSE'),	category = {_('Right Wall'), _('Systems')}},
-- FCS
{	down = ctrl_commands.FcsBitSw,				up = ctrl_commands.FcsBitSw,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,		name = _('FCS BIT Switch'),					category = {_('Right Wall')}},
-- Right Circuit Breaker Panel
{	down = elec_commands.CB_FCS_CHAN3_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB FCS CHAN 3 - ON/OFF'),			category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN3,														cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('CB FCS CHAN 3 - OFF'),			category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN3,														cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB FCS CHAN 3 - ON'),				category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN4_EXT,													cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB FCS CHAN 4 - ON/OFF'),			category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN4,														cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('CB FCS CHAN 4 - OFF'),			category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_FCS_CHAN4,														cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB FCS CHAN 4 - ON'),				category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_HOOK_EXT,														cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB HOOK - ON/OFF'),				category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_HOOK,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('CB HOOK - OFF'),					category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_HOOK,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB HOOK - ON'),					category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_LG_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB LG - ON/OFF'),					category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_LG,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('CB LG - OFF'),					category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
{	down = elec_commands.CB_LG,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('CB LG - ON'),						category = {_('Right Wall'), _('Right Circuit Breaker Panel')}},
--
--{	down = ,	up = ,	cockpit_device_id = devices.,	value_down = 1.0,	value_up = 0.0,	name = _('Right Video Sensor BIT Initiate Pushbutton'),		category = {_('Right Wall')}},


---------------------------------------------
-- Right Console ----------------------------
---------------------------------------------
-- Electrical Power Panel
{	down = elec_commands.BattSw_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('Battery Switch - Up'),							category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.BattSw_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,						name = _('Battery Switch - Down'),							category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.BattSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('Battery Switch - ON'),							category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.BattSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('Battery Switch - OFF'),							category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.BattSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,						name = _('Battery Switch - ORIDE'),							category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.LGenSw_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('Left Generator Control Switch - NORM/OFF'),		category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.LGenSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('Left Generator Control Switch - NORM'),			category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.LGenSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('Left Generator Control Switch - OFF'),			category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.RGenSw_EXT,															cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('Right Generator Control Switch - NORM/OFF'),		category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.RGenSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,						name = _('Right Generator Control Switch - NORM'),			category = {_('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.RGenSw,																cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,						name = _('Right Generator Control Switch - OFF'),			category = {_('Right Console'), _('Electrical Power Panel')}},
-- ECS Panel
{	down = elec_commands.PitotHeater,				up = elec_commands.PitotHeater,				cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('Pitot Heater Switch - ON/AUTO'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw_ITER,														cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,						name = _('Engine Anti-Ice Switch - Up'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw_ITER,														cockpit_device_id = devices.ENGINES_INTERFACE,	value_down = -1.0,						name = _('Engine Anti-Ice Switch - Down'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw,															cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,						name = _('Engine Anti-Ice Switch - ON'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw,															cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  0.0,						name = _('Engine Anti-Ice Switch - OFF'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw,															cockpit_device_id = devices.ENGINES_INTERFACE,	value_down = -1.0,						name = _('Engine Anti-Ice Switch - TEST'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw_EXT,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('ECS Mode Switch - Up'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw_EXT,															cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('ECS Mode Switch - Down'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('ECS Mode Switch - AUTO'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.0,						name = _('ECS Mode Switch - MAN'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('ECS Mode Switch - OFF/RAM'),						category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw_EXT,														cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('Cabin Pressure Switch - Up'),						category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw_EXT,														cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('Cabin Pressure Switch - Down'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('Cabin Pressure Switch - NORM'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.0,						name = _('Cabin Pressure Switch - DUMP'),					category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('Cabin Pressure Switch - RAM/DUMP'),				category = {_('Right Console'), _('ECS Panel')}},
{	pressed = ECS_commands.CabinTemperatureRst_EXT,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed = -0.5,					name = _('Cabin Temperature Knob - CCW/Decrease/COLD'),		category = {_('Right Console'), _('ECS Panel')}},
{	pressed = ECS_commands.CabinTemperatureRst_EXT,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed =  0.5,					name = _('Cabin Temperature Knob - CW/Increase/HOT'),		category = {_('Right Console'), _('ECS Panel')}},
{	pressed = ECS_commands.SuitTemperatureRst_EXT,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed = -0.5,					name = _('Suit Temperature Knob - CCW/Decrease/COLD'),		category = {_('Right Console'), _('ECS Panel')}},
{	pressed = ECS_commands.SuitTemperatureRst_EXT,												cockpit_device_id = devices.ECS_INTERFACE,		value_pressed =  0.5,					name = _('Suit Temperature Knob - CW/Increase/HOT'),		category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw_EXT,															cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('Bleed Air Knob - CCW'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw_EXT,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('Bleed Air Knob - CW'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.0,						name = _('Bleed Air Knob - OFF'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.1,						name = _('Bleed Air Knob - L OFF'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.2,						name = _('Bleed Air Knob - NORM'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSw,																cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.3,						name = _('Bleed Air Knob - R OFF'),							category = {_('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.BleedAirSwAugPull,			up = ECS_commands.BleedAirSwAugPull,		cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('Bleed Air Knob - AUG PULL'),						category = {_('Right Console'), _('ECS Panel')}},
--
{	pressed = ECS_commands.DefogHandle_EXT,														cockpit_device_id = devices.ECS_INTERFACE,		value_pressed = -0.5,					name = _('Defog Handle - Backward/LOW'),					category = {_('Right Console')}},
{	pressed = ECS_commands.DefogHandle_EXT,														cockpit_device_id = devices.ECS_INTERFACE,		value_pressed =  0.5,					name = _('Defog Handle - Forward/HIGH'),					category = {_('Right Console')}},
{	down = ECS_commands.WindshieldSw_ITER,														cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('Windshield Anti-Ice/Rain Switch - Up'),			category = {_('Right Console')}},
{	down = ECS_commands.WindshieldSw_ITER,														cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('Windshield Anti-Ice/Rain Switch - Down'),			category = {_('Right Console')}},
{	down = ECS_commands.WindshieldSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,						name = _('Windshield Anti-Ice/Rain Switch - ANTI ICE'),		category = {_('Right Console')}},
{	down = ECS_commands.WindshieldSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down =  0.0,						name = _('Windshield Anti-Ice/Rain Switch - OFF'),			category = {_('Right Console')}},
{	down = ECS_commands.WindshieldSw,															cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,						name = _('Windshield Anti-Ice/Rain Switch - RAIN'),			category = {_('Right Console')}},
-- INTR LT Control Panel
{	pressed = cptlights_commands.Consoles_EXT,													cockpit_device_id = devices.CPT_LIGHTS,			value_pressed = -0.5,					name = _('CONSOLES Lights Dimmer Control - CCW/Decrease'),	category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.Consoles_EXT,													cockpit_device_id = devices.CPT_LIGHTS,			value_pressed =  0.5,					name = _('CONSOLES Lights Dimmer Control - CW/Increase'),	category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.InstPnl_EXT,													cockpit_device_id = devices.CPT_LIGHTS,			value_pressed = -0.5,					name = _('INST PNL Dimmer Control - CCW/Decrease'),			category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.InstPnl_EXT,													cockpit_device_id = devices.CPT_LIGHTS,			value_pressed =  0.5,					name = _('INST PNL Dimmer Control - CW/Increase'),			category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.Flood_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_pressed = -0.5,					name = _('FLOOD Light Dimmer Control - CCW/Decrease'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.Flood_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_pressed =  0.5,					name = _('FLOOD Light Dimmer Control - CW/Increase'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.Chart_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_pressed = -0.5,					name = _('CHART Light Dimmer Control - CCW/Decrease'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.Chart_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_pressed =  0.5,					name = _('CHART Light Dimmer Control - CW/Increase'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.WarnCaution_EXT,												cockpit_device_id = devices.CPT_LIGHTS,			value_pressed = -0.5,					name = _('WARN/CAUTION Dimmer Control - CCW/Decrease'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	pressed = cptlights_commands.WarnCaution_EXT,												cockpit_device_id = devices.CPT_LIGHTS,			value_pressed =  0.5,					name = _('WARN/CAUTION Dimmer Control - CW/Increase'),		category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,						name = _('MODE Switch - Up'),								category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw_EXT,														cockpit_device_id = devices.CPT_LIGHTS,			value_down = -1.0,						name = _('MODE Switch - Down'),								category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw,															cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,						name = _('MODE Switch - NVG'),								category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw,															cockpit_device_id = devices.CPT_LIGHTS,			value_down =  0.0,						name = _('MODE Switch - NITE'),								category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw,															cockpit_device_id = devices.CPT_LIGHTS,			value_down = -1.0,						name = _('MODE Switch - DAY'),								category = {_('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.LtTestSw,				up = cptlights_commands.LtTestSw,			cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,		value_up = 0.0,	name = _('Lights Test Switch - TEST/OFF'),					category = {_('Right Console'), _('INTR LT Control Panel')}},
-- Sensor Panel
{	down = RADAR_commands.RADAR_SwitchChange_ITER,												cockpit_device_id = devices.RADAR,				value_down = -1.0,						name = _('RADAR Switch - CCW'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchChange_ITER,												cockpit_device_id = devices.RADAR,				value_down =  1.0,						name = _('RADAR Switch - CW'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchChange,													cockpit_device_id = devices.RADAR,				value_down =  0.0,						name = _('RADAR Switch - OFF'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchChange,													cockpit_device_id = devices.RADAR,				value_down =  0.1,						name = _('RADAR Switch - STBY'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchChange,													cockpit_device_id = devices.RADAR,				value_down =  0.2,						name = _('RADAR Switch - OPR'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchChange,													cockpit_device_id = devices.RADAR,				value_down =  0.3,						name = _('RADAR Switch - EMERG'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchPull_ITER,												cockpit_device_id = devices.RADAR,				value_down =  0.0,						name = _('RADAR Switch - PULL/STOW'),						category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchPull,														cockpit_device_id = devices.RADAR,				value_down =  1.0,						name = _('RADAR Switch - PULL'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = RADAR_commands.RADAR_SwitchPull,														cockpit_device_id = devices.RADAR,				value_down = -1.0,						name = _('RADAR Switch - STOW'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange_ITER,													cockpit_device_id = devices.INS,				value_down = -1.0,						name = _('INS Switch - CCW'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange_ITER,													cockpit_device_id = devices.INS,				value_down =  1.0,						name = _('INS Switch - CW'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.0,						name = _('INS Switch - OFF'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.1,						name = _('INS Switch - CV'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.2,						name = _('INS Switch - GND'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.3,						name = _('INS Switch - NAV'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.4,						name = _('INS Switch - IFA'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.5,						name = _('INS Switch - GYRO'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.6,						name = _('INS Switch - GB'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = INS_commands.INS_SwitchChange,														cockpit_device_id = devices.INS,				value_down =  0.7,						name = _('INS Switch - TEST'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir_ITER,																cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,						name = _('FLIR Switch - Up'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir_ITER,																cockpit_device_id = devices.TGP_INTERFACE,		value_down = -1.0,						name = _('FLIR Switch - Down'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir,																	cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,						name = _('FLIR Switch - ON'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir,																	cockpit_device_id = devices.TGP_INTERFACE,		value_down =  0.0,						name = _('FLIR Switch - STBY'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir,																	cockpit_device_id = devices.TGP_INTERFACE,		value_down = -1.0,						name = _('FLIR Switch - OFF'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.LtdrArm_ITER,				up = tgp_commands.LtdrArm_ITER,				cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('LTD/R Switch - Cycle'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.LtdrArm_EXT,				up = tgp_commands.LtdrArm_EXT,				cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,		value_up = 0.0,	name = _('LTD/R Switch - ARM'),								category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.LtdrArm_EXT,															cockpit_device_id = devices.TGP_INTERFACE,		value_down = -1.0,						name = _('LTD/R Switch - SAFE'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Lst_ITER,																cockpit_device_id = devices.TGP_INTERFACE,		value_down =  0.0,						name = _('LST/NFLR Switch - ON/OFF'),						category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Lst,																	cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,						name = _('LST/NFLR Switch - ON'),							category = {_('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Lst,																	cockpit_device_id = devices.TGP_INTERFACE,		value_down =  0.0,						name = _('LST/NFLR Switch - OFF'),							category = {_('Right Console'), _('Sensor Panel')}},
-- KY-58 Control Panel
{	down = ky58_commands.KY58_ModeSw_ITER,														cockpit_device_id = devices.KY58,				value_down = -1.0,						name = _('KY-58 Mode Select Knob - CCW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_ModeSw_ITER,														cockpit_device_id = devices.KY58,				value_down =  1.0,						name = _('KY-58 Mode Select Knob - CW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,															cockpit_device_id = devices.KY58,				value_down =  0.0,						name = _('KY-58 Mode Select Knob - P'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,															cockpit_device_id = devices.KY58,				value_down =  0.1,						name = _('KY-58 Mode Select Knob - C'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,															cockpit_device_id = devices.KY58,				value_down =  0.2,						name = _('KY-58 Mode Select Knob - LD'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,															cockpit_device_id = devices.KY58,				value_down =  0.3,						name = _('KY-58 Mode Select Knob - RV'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	pressed = ky58_commands.KY58_Volume_EXT,													cockpit_device_id = devices.KY58,				value_pressed = -0.5,					name = _('KY-58 Volume Control Knob - CCW/Decrease'),		category = {_('Right Console'), _('KY-58 Control Panel')}},
{	pressed = ky58_commands.KY58_Volume_EXT,													cockpit_device_id = devices.KY58,				value_pressed =  0.5,					name = _('KY-58 Volume Control Knob - CW/Increase'),		category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw_ITER,														cockpit_device_id = devices.KY58,				value_down = -1.0,						name = _('KY-58 Power Select Knob - CCW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw_ITER,														cockpit_device_id = devices.KY58,				value_down =  1.0,						name = _('KY-58 Power Select Knob - CW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,															cockpit_device_id = devices.KY58,				value_down =  0.0,						name = _('KY-58 Power Select Knob - OFF'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,															cockpit_device_id = devices.KY58,				value_down =  0.1,						name = _('KY-58 Power Select Knob - ON'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,															cockpit_device_id = devices.KY58,				value_down =  0.2,						name = _('KY-58 Power Select Knob - TD'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw_ITER,														cockpit_device_id = devices.KY58,				value_down = -1.0,						name = _('KY-58 Fill Select Knob - CCW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw_ITER,														cockpit_device_id = devices.KY58,				value_down =  1.0,						name = _('KY-58 Fill Select Knob - CW'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.0,						name = _('KY-58 Fill Select Knob - 1'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.1,						name = _('KY-58 Fill Select Knob - 2'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.2,						name = _('KY-58 Fill Select Knob - 3'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.3,						name = _('KY-58 Fill Select Knob - 4'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.4,						name = _('KY-58 Fill Select Knob - 5'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  0.5,						name = _('KY-58 Fill Select Knob - 6'),						category = {_('Right Console'), _('KY-58 Control Panel')}},
--{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  ,						name = _('KY-58 Fill Select Knob - Z 1-5'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
--{	down = ky58_commands.KY58_FillSw,															cockpit_device_id = devices.KY58,				value_down =  ,						name = _('KY-58 Fill Select Knob - Z ALL'),					category = {_('Right Console'), _('KY-58 Control Panel')}},
--{	down = ky58_commands.KY58_FillSw_Pull,			up = ky58_commands.KY58_FillSw_Pull,		cockpit_device_id = devices.KY58,				value_down =  1.0,		value_up = 0.0,	name = _('KY-58 Fill Select Knob - PULL'),					category = {_('Right Console'), _('KY-58 Control Panel')}},

-- Helmet
{							down = helmet_commands.HMD_VISOR_TOGGLE,	cockpit_device_id = devices.HELMET,	value_down =  1.0,	name = _('Toggle helmet visor'), category = _('Sensors')},

--NightVision
{	down    = iCommandViewNightVisionGogglesOn,		name = _('Toggle goggles'),		category = _('Sensors')},
{	pressed = iCommandPlane_Helmet_Brightess_Up,	name = _('Gain goggles up'),	category = _('Sensors')},
{	pressed = iCommandPlane_Helmet_Brightess_Down,	name = _('Gain goggles down'),	category = _('Sensors')},

---------------------------------------------
-- Ejection Seat ----------------------------
---------------------------------------------
{	down = cpt_commands.SeatEjectionControlHandle,				up = cpt_commands.SeatEjectionControlHandle,	cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,	value_up = 0.0,	name = _('Ejection Control Handle (3 times)'),					category = {_('Ejection Seat')}},
{	down = iCommandSeatArmHandle,																				cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Ejection Seat SAFE/ARMED Handle - SAFE/ARMED'),		category = {_('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatSafeArmedHandle,															cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,					name = _('Ejection Seat SAFE/ARMED Handle - SAFE'),				category = {_('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatSafeArmedHandle,															cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Ejection Seat SAFE/ARMED Handle - ARMED'),			category = {_('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatManualOverrideHandle_EXT,													cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Ejection Seat Manual Override Handle - PULL/PUSH'),	category = {_('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatManualOverrideHandle,														cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,					name = _('Ejection Seat Manual Override Handle - PULL'),		category = {_('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatManualOverrideHandle,														cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Ejection Seat Manual Override Handle - PUSH'),		category = {_('Ejection Seat')}},
{	down = cpt_commands.ShoulderHarnessControlHandle_EXT,														cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Shoulder Harness Control Handle - LOCK/UNLOCK'),		category = {_('Ejection Seat')}},
{	down = cpt_commands.ShoulderHarnessControlHandle,															cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,					name = _('Shoulder Harness Control Handle - LOCK'),				category = {_('Ejection Seat')}},
{	down = cpt_commands.ShoulderHarnessControlHandle,															cockpit_device_id = devices.CPT_MECHANICS,	value_down =  0.0,					name = _('Shoulder Harness Control Handle - UNLOCK'),			category = {_('Ejection Seat')}},
{	down = cpt_commands.SeatHeightAdjustmentSwitchUp,			up = cpt_commands.SeatHeightAdjustmentSwitchUp,	cockpit_device_id = devices.CPT_MECHANICS,	value_down = -1.0,	value_up = 0.0,	name = _('Seat Height Adjustment Switch - UP/HOLD'),			category = {_('Ejection Seat')}},
{	down = cpt_commands.SeatHeightAdjustmentSwitchDn,			up = cpt_commands.SeatHeightAdjustmentSwitchDn,	cockpit_device_id = devices.CPT_MECHANICS,	value_down =  1.0,	value_up = 0.0,	name = _('Seat Height Adjustment Switch - DOWN/HOLD'),			category = {_('Ejection Seat')}},

-- Carrier
{	down = iCommandPilotGestureSalute,																		name = _('Pilot Salute'),			category = _('Communications')},
{	down = iCommandPilotGestureReadyToTaxi,																	name = _('Pilot Ready To Taxi'),	category = _('Communications')},
{	down = intercom_commands.MsgHornetBall_EXT,	cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('Hornet Ball'),			category = _('Communications')},

-- A/A refueling
{down = iCommandPlaneRefuelingReadyPreContact, name = _('A/A refueling - "Ready for precontact" radio call'), category = _('Communications')},

--------------------------------------------------------------------------------------
-- Special input for 3-pos 2-signals switches on joystick ----------------------------
--------------------------------------------------------------------------------------
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,			up = hotas_commands.THROTTLE_SPEED_BRAKE,		cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('Speed Brake Switch - RETRACT/OFF'),							category = {_('Special For Joystick'), _('Throttle Grip'), _('HOTAS')}},
{	down = SMS_commands.IRCoolingSw,					up = SMS_commands.IRCoolingSw,					cockpit_device_id = devices.SMS,				value_down =  0.2,	value_up = 0.1,	name = _('IR Cooling Switch - ORIDE/NORM'),								category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = SMS_commands.IRCoolingSw,					up = SMS_commands.IRCoolingSw,					cockpit_device_id = devices.SMS,				value_down =  0.0,	value_up = 0.1,	name = _('IR Cooling Switch - OFF/NORM'),								category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = UFC_commands.SwADF,							up = UFC_commands.SwADF,						cockpit_device_id = devices.UFC,				value_down =  1.0,	value_up = 0.0,	name = _('UFC ADF Function Select Switch - 1/OFF'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('UFC')}},
{	down = UFC_commands.SwADF,							up = UFC_commands.SwADF,						cockpit_device_id = devices.UFC,				value_down = -1.0,	value_up = 0.0,	name = _('UFC ADF Function Select Switch - 2/OFF'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('UFC')}},
{	down = HUD_commands.HUD_SymbRejectSw,				up = HUD_commands.HUD_SymbRejectSw,				cockpit_device_id = devices.HUD,				value_down =  0.2,	value_up = 0.1,	name = _('HUD Symbology Reject Switch - NORM/REJ 1'),					category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_SymbRejectSw,				up = HUD_commands.HUD_SymbRejectSw,				cockpit_device_id = devices.HUD,				value_down =  0.0,	value_up = 0.1,	name = _('HUD Symbology Reject Switch - REJ 2/REJ 1'),					category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw,				up = HUD_commands.HUD_VideoCtrlSw,				cockpit_device_id = devices.HUD,				value_down =  0.2,	value_up = 0.1,	name = _('HUD Video Control Switch - W/B /VID'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_VideoCtrlSw,				up = HUD_commands.HUD_VideoCtrlSw,				cockpit_device_id = devices.HUD,				value_down =  0.0,	value_up = 0.1,	name = _('HUD Video Control Switch - OFF/VID'),							category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw,				up = HUD_commands.HUD_AttitudeSelSw,			cockpit_device_id = devices.HUD,				value_down =  1.0,	value_up = 0.0,	name = _('Attitude Selector Switch - INS/AUTO'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AttitudeSelSw,				up = HUD_commands.HUD_AttitudeSelSw,			cockpit_device_id = devices.HUD,				value_down = -1.0,	value_up = 0.0,	name = _('Attitude Selector Switch - STBY/AUTO'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = MDI_commands.MDI_off_night_day,				up = MDI_commands.MDI_off_night_day,			cockpit_device_id = devices.MDI_LEFT,			value_down =  0.0,	value_up = 0.1,	name = _('Left MDI Brightness Selector Knob - OFF/NIGHT'),				category = {_('Special For Joystick'), _('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day,				up = MDI_commands.MDI_off_night_day,			cockpit_device_id = devices.MDI_LEFT,			value_down =  0.2,	value_up = 0.1,	name = _('Left MDI Brightness Selector Knob - DAY/NIGHT'),				category = {_('Special For Joystick'), _('Instrument Panel'), _('Left MDI')}},
{	down = MDI_commands.MDI_off_night_day,				up = MDI_commands.MDI_off_night_day,			cockpit_device_id = devices.MDI_RIGHT,			value_down =  0.0,	value_up = 0.1,	name = _('Right MDI Brightness Selector Knob - OFF/NIGHT'),				category = {_('Special For Joystick'), _('Instrument Panel'), _('Right MDI')}},
{	down = MDI_commands.MDI_off_night_day,				up = MDI_commands.MDI_off_night_day,			cockpit_device_id = devices.MDI_RIGHT,			value_down =  0.2,	value_up = 0.1,	name = _('Right MDI Brightness Selector Knob - DAY/NIGHT'),				category = {_('Special For Joystick'), _('Instrument Panel'), _('Right MDI')}},
{	down = cmds_commands.Dispenser,						up = cmds_commands.Dispenser,					cockpit_device_id = devices.CMDS,				value_down =  0.2,	value_up = 0.1,	name = _('DISPENSER Switch - BYPASS/ON'),								category = {_('Special For Joystick'), _('Instrument Panel'), _('Dispenser')}},
{	down = cmds_commands.Dispenser,						up = cmds_commands.Dispenser,					cockpit_device_id = devices.CMDS,				value_down =  0.0,	value_up = 0.1,	name = _('DISPENSER Switch - OFF/ON'),									category = {_('Special For Joystick'), _('Instrument Panel'), _('Dispenser')}},
{	down = ctrl_commands.FlapSw,						up = ctrl_commands.FlapSw,						cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('FLAP Switch - AUTO/HALF'),									category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = ctrl_commands.FlapSw,						up = ctrl_commands.FlapSw,						cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('FLAP Switch - FULL/HALF'),									category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect,				up = ctrl_commands.WingFoldSelect,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Wing Fold Control Handle - FOLD/HOLD'),						category = {_('Special For Joystick'), _('Right Vertical Panel')}},
{	down = ctrl_commands.WingFoldSelect,				up = ctrl_commands.WingFoldSelect,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Wing Fold Control Handle - SPREAD/HOLD'),						category = {_('Special For Joystick'), _('Right Vertical Panel')}},
{	down = elec_commands.ExtPwrSw,						up = elec_commands.ExtPwrSw,					cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('External Power Switch - OFF/NORM'),							category = {_('Special For Joystick'), _('Left Console'), _('Ground Power Panel')}},
{	down = extlights_commands.Strobe,					up = extlights_commands.Strobe,					cockpit_device_id = devices.EXT_LIGHTS,			value_down =  1.0,	value_up = 0.0,	name = _('STROBE Lights Switch - BRT/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Exterior Lights Panel')}},
{	down = extlights_commands.Strobe,					up = extlights_commands.Strobe,					cockpit_device_id = devices.EXT_LIGHTS,			value_down = -1.0,	value_up = 0.0,	name = _('STROBE Lights Switch - DIM/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Exterior Lights Panel')}},
{	down = fuel_commands.ProbeControlSw,				up = fuel_commands.ProbeControlSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Probe Control Switch - EXTEND/RETRACT'),						category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ProbeControlSw,				up = fuel_commands.ProbeControlSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('Probe Control Switch - EMERG EXTD/RETRACT'),					category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw,				up = fuel_commands.ExtTanksWingSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('External Wing Tanks Fuel Control Switch - ORIDE/NORM'),		category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksWingSw,				up = fuel_commands.ExtTanksWingSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('External Wing Tanks Fuel Control Switch - STOP/NORM'),		category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw,					up = fuel_commands.ExtTanksCtrSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('External Centerline Tank Fuel Control Switch - ORIDE/NORM'),	category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.ExtTanksCtrSw,					up = fuel_commands.ExtTanksCtrSw,				cockpit_device_id = devices.FUEL_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('External Centerline Tank Fuel Control Switch - STOP/NORM'),	category = {_('Special For Joystick'), _('Left Console'), _('Fuel Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw,				up = intercom_commands.COMM_RLY_Sw,				cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('Comm Relay Switch - CIPHER/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.COMM_RLY_Sw,				up = intercom_commands.COMM_RLY_Sw,				cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('Comm Relay Switch - PLAIN/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw,					up = intercom_commands.G_XMT_Sw,				cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('COMM G XMT Switch - COMM 1/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.G_XMT_Sw,					up = intercom_commands.G_XMT_Sw,				cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('COMM G XMT Switch - COMM 2/OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw,				up = intercom_commands.IFF_Mode4Sw,				cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('IFF Mode 4 Switch - DIS/AUD /DIS'),							category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.IFF_Mode4Sw,				up = intercom_commands.IFF_Mode4Sw,				cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('IFF Mode 4 Switch - OFF/DIS'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = antsel_commands.Comm1AntSelSw,				up = antsel_commands.Comm1AntSelSw,				cockpit_device_id = devices.ANTENNA_SELECTOR,	value_down =  1.0,	value_up = 0.0,	name = _('COMM 1 Antenna Selector Switch - UPPER/AUTO'),				category = {_('Special For Joystick'), _('Left Console')}},
{	down = antsel_commands.Comm1AntSelSw,				up = antsel_commands.Comm1AntSelSw,				cockpit_device_id = devices.ANTENNA_SELECTOR,	value_down = -1.0,	value_up = 0.0,	name = _('COMM 1 Antenna Selector Switch - LOWER/AUTO'),				category = {_('Special For Joystick'), _('Left Console')}},
{	down = antsel_commands.AntSelIFFSw,					up = antsel_commands.AntSelIFFSw,				cockpit_device_id = devices.ANTENNA_SELECTOR,	value_down =  1.0,	value_up = 0.0,	name = _('IFF Antenna Selector Switch - UPPER/BOTH'),					category = {_('Special For Joystick'), _('Left Console')}},
{	down = antsel_commands.AntSelIFFSw,					up = antsel_commands.AntSelIFFSw,				cockpit_device_id = devices.ANTENNA_SELECTOR,	value_down = -1.0,	value_up = 0.0,	name = _('IFF Antenna Selector Switch - LOWER/BOTH'),					category = {_('Special For Joystick'), _('Left Console')}},
{	down = elec_commands.BattSw,						up = elec_commands.BattSw,						cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Battery Switch - ON/OFF'),									category = {_('Special For Joystick'), _('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.BattSw,						up = elec_commands.BattSw,						cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('Battery Switch - ORIDE/OFF'),									category = {_('Special For Joystick'), _('Right Console'), _('Electrical Power Panel')}},
{	down = engines_commands.AntiIceSw,					up = engines_commands.AntiIceSw,				cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Engine Anti-Ice Switch - ON/OFF'),							category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = engines_commands.AntiIceSw,					up = engines_commands.AntiIceSw,				cockpit_device_id = devices.ENGINES_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Engine Anti-Ice Switch - TEST/OFF'),							category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw,						up = ECS_commands.ECSModeSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('ECS Mode Switch - AUTO/MAN'),									category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.ECSModeSw,						up = ECS_commands.ECSModeSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('ECS Mode Switch - OFF/RAM /MAN'),								category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw,					up = ECS_commands.CabinPressSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Cabin Pressure Switch - NORM/DUMP'),							category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.CabinPressSw,					up = ECS_commands.CabinPressSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('Cabin Pressure Switch - RAM/DUMP /DUMP'),						category = {_('Special For Joystick'), _('Right Console'), _('ECS Panel')}},
{	down = ECS_commands.WindshieldSw,					up = ECS_commands.WindshieldSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Windshield Anti-Ice/Rain Switch - ANTI ICE/OFF'),				category = {_('Special For Joystick'), _('Right Console')}},
{	down = ECS_commands.WindshieldSw,					up = ECS_commands.WindshieldSw,					cockpit_device_id = devices.ECS_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('Windshield Anti-Ice/Rain Switch - RAIN/OFF'),					category = {_('Special For Joystick'), _('Right Console')}},
{	down = cptlights_commands.ModeSw,					up = cptlights_commands.ModeSw,					cockpit_device_id = devices.CPT_LIGHTS,			value_down =  1.0,	value_up = 0.0,	name = _('MODE Switch - NVG/NITE'),										category = {_('Special For Joystick'), _('Right Console'), _('INTR LT Control Panel')}},
{	down = cptlights_commands.ModeSw,					up = cptlights_commands.ModeSw,					cockpit_device_id = devices.CPT_LIGHTS,			value_down = -1.0,	value_up = 0.0,	name = _('MODE Switch - DAY/NITE'),										category = {_('Special For Joystick'), _('Right Console'), _('INTR LT Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,					up = ky58_commands.KY58_PowerSw,				cockpit_device_id = devices.KY58,				value_down =  0.0,	value_up = 0.1,	name = _('KY-58 Power Select Knob - OFF/ON'),							category = {_('Special For Joystick'), _('Right Console'), _('KY-58 Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,					up = ky58_commands.KY58_PowerSw,				cockpit_device_id = devices.KY58,				value_down =  0.2,	value_up = 0.1,	name = _('KY-58 Power Select Knob - TD/ON'),							category = {_('Special For Joystick'), _('Right Console'), _('KY-58 Control Panel')}},
{	down = engines_commands.APU_ControlSw_TM_WARTHOG,	up = engines_commands.APU_ControlSw_TM_WARTHOG,	cockpit_device_id = devices.ENGINES_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('APU Control Sw (special) - ON/OFF'),							category = {_('Special For Joystick'), _('Left Console')}},
{	down = rwr_commands.Power,							up = rwr_commands.Power,						cockpit_device_id = devices.RWR,				value_down =  1.0,	value_up = 0.0,	name = _('ALR-67 POWER Pushbutton (special) - ON/OFF'),					category = {_('Special For Joystick'), _('Instrument Panel'), _('ALR-67')}},
{	down = tgp_commands.Flir,							up = tgp_commands.Flir,							cockpit_device_id = devices.TGP_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('FLIR Switch - ON/STBY'),										category = {_('Special For Joystick'), _('Right Console'), _('Sensor Panel')}},
{	down = tgp_commands.Flir,							up = tgp_commands.Flir,							cockpit_device_id = devices.TGP_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('FLIR Switch - OFF/STBY'),										category = {_('Special For Joystick'), _('Right Console'), _('Sensor Panel')}},
--------------------------------------------------------------------------------------
-- Special input for 2-pos 1-signal switches on joystick -----------------------------
--------------------------------------------------------------------------------------
{	down = ctrl_commands.GainSwCover,						up = ctrl_commands.GainSwCover,						cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('GAIN Switch Cover (special) - OPEN/CLOSE'),							category = {_('Special For Joystick'), _('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.GainSw,							up = ctrl_commands.GainSw,							cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('GAIN Switch (special) - NORM/ORIDE'),									category = {_('Special For Joystick'), _('Left Console'), _('FCS Panel')}},
{	down = ctrl_commands.SpinRecCover,						up = ctrl_commands.SpinRecCover,					cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Spin Recovery Switch Cover (special) - OPEN/CLOSE'),					category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = ctrl_commands.SpinRec,							up = ctrl_commands.SpinRec,							cockpit_device_id = devices.CONTROL_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('Spin Recovery Switch (special) - RCVY/NORM'),							category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = elec_commands.LGenSw,							up = elec_commands.LGenSw,							cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Left Generator Control Switch (special) - NORM/OFF'),					category = {_('Special For Joystick'), _('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.RGenSw,							up = elec_commands.RGenSw,							cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Right Generator Control Switch (special) - NORM/OFF'),				category = {_('Special For Joystick'), _('Right Console'), _('Electrical Power Panel')}},
{	down = elec_commands.GenTieControlSwCover,				up = elec_commands.GenTieControlSwCover,			cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Generator TIE Control Switch Cover (special) - OPEN/CLOSE'),			category = {_('Special For Joystick'), _('Left Console')}},
{	down = elec_commands.GenTieControlSw,					up = elec_commands.GenTieControlSw,					cockpit_device_id = devices.ELEC_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Generator TIE Control Switch (special) - NORM/RESET'),				category = {_('Special For Joystick'), _('Left Console')}},
{	down = hydro_commands.HydIsolSw,						up = hydro_commands.HydIsolSw,						cockpit_device_id = devices.HYDRAULIC_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Hydraulic Isolate Override Switch (special) - NORM/ORIDE'),			category = {_('Special For Joystick'), _('Left Console')}},
{	down = gear_commands.AntiSkidSw,						up = gear_commands.AntiSkidSw,						cockpit_device_id = devices.GEAR_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Anti Skid Switch (special) - ON/OFF'),								category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = gear_commands.LaunchBarSw_EXT,					up = gear_commands.LaunchBarSw_EXT,					cockpit_device_id = devices.GEAR_INTERFACE,			value_down =  1.0,	value_up =-1.0,	name = _('Launch Bar Control Switch (special) - EXTEND/RETRACT'),				category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = cptlights_commands.HookBypass_EXT,				up = cptlights_commands.HookBypass_EXT,				cockpit_device_id = devices.CPT_LIGHTS,				value_down =  1.0,	value_up =-1.0,	name = _('HOOK BYPASS Switch (special) - FIELD/CARRIER'),						category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = gear_commands.HookHandle,						up = gear_commands.HookHandle,						cockpit_device_id = devices.GEAR_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Arresting Hook Handle (special) - Up/Down'),							category = {_('Special For Joystick'), _('Right Vertical Panel')}},
{	down = fuel_commands.IntrWingInhibitSw,					up = fuel_commands.IntrWingInhibitSw,				cockpit_device_id = devices.FUEL_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('Internal Wing Tank Fuel Control Switch (special) - INHIBIT/NORM'),	category = {_('Special For Joystick'), _('Left Console'), _('Exterior Lights Panel')}},
{	down = cpt_commands.CanopyJettLever,					up = cpt_commands.CanopyJettLever,					cockpit_device_id = devices.CPT_MECHANICS,			value_down =  1.0,	value_up = 0.0,	name = _('Canopy Jettison Handle (special) - PULL/PUSH'),						category = {_('Special For Joystick'), _('Left Wall')}},
{	down = cpt_commands.EjectionSeatSafeArmedHandle,		up = cpt_commands.EjectionSeatSafeArmedHandle,		cockpit_device_id = devices.CPT_MECHANICS,			value_down =  1.0,	value_up = 0.0,	name = _('Ejection Seat SAFE/ARMED Handle (special) - SAFE/ARMED'),				category = {_('Special For Joystick'), _('Ejection Seat')}},
{	down = cpt_commands.EjectionSeatManualOverrideHandle,	up = cpt_commands.EjectionSeatManualOverrideHandle,	cockpit_device_id = devices.CPT_MECHANICS,			value_down =  1.0,	value_up = 0.0,	name = _('Ejection Seat Manual Override Handle (special) - PULL/PUSH'),			category = {_('Special For Joystick'), _('Ejection Seat')}},
{	down = cpt_commands.ShoulderHarnessControlHandle,		up = cpt_commands.ShoulderHarnessControlHandle,		cockpit_device_id = devices.CPT_MECHANICS,			value_down =  1.0,	value_up = 0.0,	name = _('Shoulder Harness Control Handle (special) - LOCK/UNLOCK'),			category = {_('Special For Joystick'), _('Ejection Seat')}},
{	down = extlights_commands.LdgTaxi,						up = extlights_commands.LdgTaxi,					cockpit_device_id = devices.EXT_LIGHTS,				value_down =  1.0,	value_up = 0.0,	name = _('LDG/TAXI LIGHT Switch (special) - ON/OFF'),							category = {_('Special For Joystick'), _('Left Vertical Panel')}},
{	down = oxygen_commands.OBOGS_ControlSw,					up = oxygen_commands.OBOGS_ControlSw,				cockpit_device_id = devices.OXYGEN_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('OBOGS Control Switch (special) - ON/OFF'),							category = {_('Special For Joystick'), _('Left Console')}},
{	down = hotas_commands.THROTTLE_EXTERIOR_LIGHTS,			up = hotas_commands.THROTTLE_EXTERIOR_LIGHTS,		cockpit_device_id = devices.HOTAS,					value_down =  1.0,	value_up = 0.0,	name = _('Exterior Lights Switch (special) - ON/OFF'),							category = {_('Special For Joystick'), _('Throttle Grip'), _('HOTAS')}},
{	down = SMS_commands.MasterArmSw,						up = SMS_commands.MasterArmSw,						cockpit_device_id = devices.SMS,					value_down =  1.0,	value_up = 0.0,	name = _('Master Arm Switch (special) - ARM/SAFE'),								category = {_('Special For Joystick'), _('Instrument Panel'), _('Master Arm Panel')}},
{	down = SMS_commands.AuxRelSw,							up = SMS_commands.AuxRelSw,							cockpit_device_id = devices.SMS,					value_down =  1.0,	value_up = 0.0,	name = _('Auxiliary Release Switch (special) - ENABLE/NORM'),					category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = HUD_commands.HUD_SymbBrightSelKnob,				up = HUD_commands.HUD_SymbBrightSelKnob,			cockpit_device_id = devices.HUD,					value_down =  1.0,	value_up = 0.0,	name = _('HUD Symbology Brightness Selector Knob (special) - DAY/NIGHT'),		category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = HUD_commands.HUD_AltitudeSw,						up = HUD_commands.HUD_AltitudeSw,					cockpit_device_id = devices.HUD,					value_down =  1.0,	value_up = 0.0,	name = _('Altitude Switch (special) - BARO/RDR'),								category = {_('Special For Joystick'), _('Instrument Panel'), _('HUD Control Panel')}},
{	down = intercom_commands.IFF_MasterSw,					up = intercom_commands.IFF_MasterSw,				cockpit_device_id = devices.INTERCOM,				value_down =  1.0,	value_up = 0.0,	name = _('IFF Master Switch (special) - EMER/NORM'),							category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = intercom_commands.ILS_UFC_MAN_Sw,				up = intercom_commands.ILS_UFC_MAN_Sw,				cockpit_device_id = devices.INTERCOM,				value_down =  1.0,	value_up = 0.0,	name = _('ILS UFC/MAN Switch (special) - UFC/MAN'),								category = {_('Special For Joystick'), _('Left Console'), _('Communication Control Panel')}},
{	down = tgp_commands.Lst,								up = tgp_commands.Lst,								cockpit_device_id = devices.TGP_INTERFACE,			value_down =  1.0,	value_up = 0.0,	name = _('LST/NFLR Switch (special) - ON/OFF'),									category = {_('Special For Joystick'), _('Right Console'), _('Sensor Panel')}},

})

-- joystick axes 
join(res.axisCommands,{

---------------------------------------------
-- Flight Control ---------------------------
---------------------------------------------
{combos = defaultDeviceAssignmentFor("roll"),	action = iCommandPlaneRoll,			name = _('Roll'),				category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("pitch"),	action = iCommandPlanePitch,		name = _('Pitch'),				category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("rudder"),	action = iCommandPlaneRudder,		name = _('Rudder'),				category = {_('Flight Control')}},
{combos = defaultDeviceAssignmentFor("thrust"),	action = iCommandPlaneThrustCommon,	name = _('Thrust'),				category = {_('Flight Control')}},
{												action = iCommandPlaneThrustLeft,	name = _('Thrust Left'),		category = {_('Flight Control')}},
{												action = iCommandPlaneThrustRight,	name = _('Thrust Right'),		category = {_('Flight Control')}},

---------------------------------------------
-- Systems ----------------------------------
---------------------------------------------
{												action = iCommandWheelBrake,		name = _('Wheel Brake'),		category = {_('Systems')}},
{												action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left'),	category = {_('Systems')}},
{												action = iCommandRightWheelBrake,	name = _('Wheel Brake Right'),	category = {_('Systems')}},

---------------------------------------------
-- Throttle Quadrant ------------------------
---------------------------------------------
{	action = ctrl_commands.FrictionLever_AXIS,			cockpit_device_id = devices.CONTROL_INTERFACE,	name = _('Throttles Friction Adjusting Lever'),		category = _('Throttle Quadrant')},

---------------------------------------------
-- Throttle Grip ----------------------------
---------------------------------------------
{	action = hotas_commands.THROTTLE_ELEVATION_CONTROL_AXIS, cockpit_device_id = devices.HOTAS,	name = _('Radar Elevation Control'),		category = {_('Throttle Grip'), _('HOTAS')}},
{	action = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_VERT_AXIS, cockpit_device_id = devices.HOTAS, name = _('Throttle Designator Controller - Vertical Axis'),	category = {_('Throttle Grip'), _('HOTAS')}},
{	action = hotas_commands.THROTTLE_DESIGNATOR_CONTROLLER_HOR_AXIS, cockpit_device_id = devices.HOTAS, name = _('Throttle Designator Controller - Horizontal Axis'), category = {_('Throttle Grip'), _('HOTAS')}},

---------------------------------------------
-- Instrument Panel -------------------------
---------------------------------------------
-- RWR
{	action = rwr_commands.IntControl_AXIS,				cockpit_device_id = devices.RWR,				name = _('RWR Intensity Knob'),						category = {_('Instrument Panel')}},
-- IFEI
{	action = IFEI_commands.IFEI_Brightness_AXIS,		cockpit_device_id = devices.IFEI,				name = _('IFEI Brightness Control Knob'),			category = {_('Instrument Panel')}},
-- HMD
{	action = hmd_commands.BrtKnob_AXIS,					cockpit_device_id = devices.HMD_INTERFACE,		name = _('HMD OFF/BRT Knob'),						category = {_('Instrument Panel')}},
-- UFC
{	action = UFC_commands.Comm1Vol_AXIS,				cockpit_device_id = devices.UFC,				name = _('UFC COMM 1 Volume Control Knob'),			category = {_('Instrument Panel'), _('UFC')}},
{	action = UFC_commands.Comm2Vol_AXIS,				cockpit_device_id = devices.UFC,				name = _('UFC COMM 2 Volume Control Knob'),			category = {_('Instrument Panel'), _('UFC')}},
{	action = UFC_commands.BrtDim_AXIS,					cockpit_device_id = devices.UFC,				name = _('UFC Brightness Control Knob'),			category = {_('Instrument Panel'), _('UFC')}},
-- HUD Controls
{	action = HUD_commands.HUD_SymbBrightCtrl_AXIS,		cockpit_device_id = devices.HUD,				name = _('HUD Symbology Brightness Control Knob'),	category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	action = HUD_commands.HUD_BlackLevelCtrl_AXIS,		cockpit_device_id = devices.HUD,				name = _('Black Level Control Knob'),				category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	action = HUD_commands.HUD_BalanceCtrl_AXIS,			cockpit_device_id = devices.HUD,				name = _('Balance Control Knob'),					category = {_('Instrument Panel'), _('HUD Control Panel')}},
{	action = HUD_commands.HUD_AoA_IndexerCtrl_AXIS,		cockpit_device_id = devices.HUD,				name = _('AOA Indexer Control Knob'),				category = {_('Instrument Panel'), _('HUD Control Panel')}},
-- Left MDI
{	action = MDI_commands.MDI_brightness_AXIS,			cockpit_device_id = devices.MDI_LEFT,			name = _('Left MDI Brightness Control Knob'),		category = {_('Instrument Panel'), _('Left MDI')}},
{	action = MDI_commands.MDI_contrast_AXIS,			cockpit_device_id = devices.MDI_LEFT,			name = _('Left MDI Contrast Control Knob'),			category = {_('Instrument Panel'), _('Left MDI')}},
-- Right MDI
{	action = MDI_commands.MDI_brightness_AXIS,			cockpit_device_id = devices.MDI_RIGHT,			name = _('Right MDI Brightness Control Knob'),		category = {_('Instrument Panel'), _('Right MDI')}},
{	action = MDI_commands.MDI_contrast_AXIS,			cockpit_device_id = devices.MDI_RIGHT,			name = _('Right MDI Contrast Control Knob'),		category = {_('Instrument Panel'), _('Right MDI')}},
-- AMPCD
{	action = AMPCD_commands.AMPCD_off_brightness_AXIS,	cockpit_device_id = devices.AMPCD,				name = _('AMPCD Off/Brightness Control Knob'),		category = {_('Instrument Panel'), _('AMPCD')}},
-- ALR-67
{	action = rwr_commands.DmrControl_AXIS,				cockpit_device_id = devices.RWR,				name = _('ALR-67 DMR Control Knob'),				category = {_('Instrument Panel'), _('ALR-67')}},
--{	action = _AXIS,										cockpit_device_id = devices.,					name = _('ALR-67 AUDIO Control Knob'),				category = {_('Instrument Panel'), _('ALR-67')}},	-- not used

---------------------------------------------
-- Left Vertical Panel ----------------------
---------------------------------------------
{	action = ECS_commands.LeftLouver_AXIS,				cockpit_device_id = devices.ECS_INTERFACE,		name = _('Left Louver'),							category = {_('Left Vertical Panel')}},

---------------------------------------------
-- Right Vertical Panel ---------------------
---------------------------------------------
{	action = ECS_commands.RightLouver_AXIS,				cockpit_device_id = devices.ECS_INTERFACE,		name = _('Right Louver'),							category = {_('Right Vertical Panel')}},

---------------------------------------------
-- Left Console -----------------------------
---------------------------------------------
-- Exterior Lights Panel
{	action = extlights_commands.Position_AXIS,			cockpit_device_id = devices.EXT_LIGHTS,			name = _('POSITION Lights Dimmer Control'),			category = {_('Left Console'), _('Exterior Lights Panel')}},
{	action = extlights_commands.Formation_AXIS,			cockpit_device_id = devices.EXT_LIGHTS,			name = _('FORMATION Lights Dimmer Control'),		category = {_('Left Console'), _('Exterior Lights Panel')}},
-- FCS Panel
{	action = ctrl_commands.RudderTrim_AXIS,				cockpit_device_id = devices.CONTROL_INTERFACE,	name = _('RUD TRIM Control'),						category = {_('Left Console'), _('FCS Panel')}},
-- Communication Control Panel
{	action = intercom_commands.VOX_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('VOX Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.ICS_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('ICS Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.RWR_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('RWR Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.WPN_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('WPN Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.MIDS_B_Volume_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('MIDS B Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.MIDS_A_Volume_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('MIDS A Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.TCN_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('TACAN Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
{	action = intercom_commands.AUX_Volume_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('AUX Volume Control Knob'),				category = {_('Left Console'), _('Communication Control Panel')}},
-- OBOGS
{	action = oxygen_commands.OxyFlowControlValve_AXIS,	cockpit_device_id = devices.OXYGEN_INTERFACE,	name = _('OXY Flow Knob'),							category = {_('Left Console')}},

---------------------------------------------
-- Right Console ----------------------------
---------------------------------------------
-- ECS Panel
{	action = ECS_commands.CabinTemperatureRst_AXIS,		cockpit_device_id = devices.ECS_INTERFACE,		name = _('Cabin Temperature Knob'),					category = {_('Right Console'), _('ECS Panel')}},
{	action = ECS_commands.SuitTemperatureRst_AXIS,		cockpit_device_id = devices.ECS_INTERFACE,		name = _('Suit Temperature Knob'),					category = {_('Right Console'), _('ECS Panel')}},
--
{	action = ECS_commands.DefogHandle_AXIS,				cockpit_device_id = devices.ECS_INTERFACE,		name = _('Defog Handle'),							category = {_('Right Console')}},
-- INTR LT Control Panel
{	action = cptlights_commands.Consoles_AXIS,			cockpit_device_id = devices.CPT_LIGHTS,			name = _('CONSOLES Lights Dimmer Control'),			category = {_('Right Console'), _('INTR LT Control Panel')}},
{	action = cptlights_commands.InstPnl_AXIS,			cockpit_device_id = devices.CPT_LIGHTS,			name = _('INST PNL Dimmer Control'),				category = {_('Right Console'), _('INTR LT Control Panel')}},
{	action = cptlights_commands.Flood_AXIS,				cockpit_device_id = devices.CPT_LIGHTS,			name = _('FLOOD Light Dimmer Control'),				category = {_('Right Console'), _('INTR LT Control Panel')}},
{	action = cptlights_commands.Chart_AXIS,				cockpit_device_id = devices.CPT_LIGHTS,			name = _('CHART Light Dimmer Control'),				category = {_('Right Console'), _('INTR LT Control Panel')}},
{	action = cptlights_commands.WarnCaution_AXIS,		cockpit_device_id = devices.CPT_LIGHTS,			name = _('WARN/CAUTION Dimmer Control'),			category = {_('Right Console'), _('INTR LT Control Panel')}},
--
{	action = cptlights_commands.UtilityBrt_AXIS,		cockpit_device_id = devices.CPT_LIGHTS,			name = _('Utility Light BRT Control'),				category = {_('Right Console')}},
-- KY-58 Control Panel
{	action = ky58_commands.KY58_Volume_AXIS,			cockpit_device_id = devices.KY58,				name = _('KY-58 Volume Control Knob'),				category = {_('Right Console'), _('KY-58 Control Panel')}},


})

return res
