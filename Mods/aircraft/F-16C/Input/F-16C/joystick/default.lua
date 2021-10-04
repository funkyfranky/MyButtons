local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

join(res.keyCommands,{

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF begin additional commands
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{down = iCommandPlaneGearUp, up = iCommandPlaneGearDown, name = _('LG Handle UP/DOWN'), category = {_('_My Buttons')}},

-- SAI
{down = sai_commands.cage, up = sai_commands.cage, pressed = sai_commands.reference_EXT, cockpit_device_id = devices.SAI, value_down = 1.0, value_up = 0.0, value_pressed = 0.3, name = _('SAI Cage Knob PULL/CW'), category = {_('_My Buttons')}},
{down = sai_commands.cage, up = sai_commands.cage, pressed = sai_commands.reference_EXT, cockpit_device_id = devices.SAI, value_down = 1.0, value_up = 0.0, value_pressed =-0.3, name = _('SAI Cage Knob PULL/CCW'), category = {_('_My Buttons')}},

{down = control_commands.ApRoll, up = control_commands.ApRoll, cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =-1.0, value_up= 0.0, name = _('Autopilot ROLL Switch STRG SEL/ATT HOLD'), category = {_('_My Buttons')}},
{down = control_commands.ApRoll, up = control_commands.ApRoll, cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = 1.0, value_up= 0.0, name = _('Autopilot ROLL Switch HDG SEL/ATT HOLD'), category = {_('_My Buttons')}},

{down = control_commands.ApPitchAlt_EXT, up = control_commands.ApPitchAlt_EXT, cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = 1.0, value_up=-1.0, name = _('Autopilot PITCH Switch ALT HOLD/A/P OFF'), category = {_('_My Buttons')}},
{down = control_commands.ApPitchAtt_EXT, up = control_commands.ApPitchAlt_EXT, cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =-1.0, value_up=-1.0, name = _('Autopilot PITCH Switch ATT HOLD/A/P OFF'), category = {_('_My Buttons')}},

-- ELEC INTERFACE
{down = 3102, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, name = _('GPS Switch GPS'), category = {_('_My Buttons')}},
{down = 3102, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0.0, name = _('GPS Switch OFF'), category = {_('_My Buttons')}},
{down = 3103, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, name = _('DL Switch DL'), category = {_('_My Buttons')}},
{down = 3103, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0.0, name = _('DL Switch OFF'), category = {_('_My Buttons')}},
{down = engine_commands.EngContSw, up = engine_commands.EngContSw, cockpit_device_id = devices.ENGINE_INTERFACE, value_down =  1.0, value_up =  0.0, name = _('ENG CONT Switch SEC/PRI'), category = {_('_My Buttons')}},

-- SMS INTERFACE
{ down = sms_commands.LaserSw, up = sms_commands.LaserSw, cockpit_device_id = devices.SMS, value_down = 1.0, value_up = 0.0, name = _('LASER ARM Switch ARM/OFF'), category = {_('_My Buttons')}},

-- SNSR PWR Control Panel
{down = sms_commands.LeftHDPT,  up = sms_commands.LeftHDPT,  cockpit_device_id = devices.SMS, value_down = 1.0, value_up = 0.0, name = _('LEFT HDPT Switch ON/OFF'),  category = {_('_My Buttons')}},
{down = sms_commands.RightHDPT, up = sms_commands.RightHDPT, cockpit_device_id = devices.SMS, value_down = 1.0, value_up = 0.0, name = _('RIGHT HDPT Switch ON/OFF'), category = {_('_My Buttons')}},
{down = fcr_commands.PwrSw,     up = fcr_commands.PwrSw,     cockpit_device_id = devices.FCR, value_down = 1.0, value_up = 0.0, name = _('FCR Switch ON/OFF'),        category = {_('_My Buttons')}},

-- FUEL INTERFACE
{down = fuel_commands.AirRefuelSw, up = fuel_commands.AirRefuelSw, cockpit_device_id = devices.FUEL_INTERFACE, value_down =  1.0, value_up = 0.0,  name = _('AIR REFUEL Switch OPEN/CLOSE'), category = {_('_My Buttons')}},

-- ENGINE INTERFACE
{down = engine_commands.MaxPowerSw, up = engine_commands.MaxPowerSw, cockpit_device_id = devices.ENGINE_INTERFACE, value_down =  1.0, value_up = 0.0, name = _('MAX POWER Switch ON/OFF'), category = {_('_My Buttons')}},

-- CONTROL INTERFACE
{down = control_commands.StoresConfig, up = control_commands.StoresConfig, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.0, value_up = 1.0, name = _('STORES CONFIG Switch CAT I/III'), category = {_('_My Buttons')}},

-- CPT_MECH
{down = cpt_commands.EjectionSafetyLever, cockpit_device_id = devices.CPT_MECH, value_down = 1.0, name = _('Ejection Safety Lever ARMED'),  category = {_('_My Buttons')}},
{down = cpt_commands.EjectionSafetyLever, cockpit_device_id = devices.CPT_MECH, value_down = 0.0, name = _('Ejection Safety Lever LOCKED'), category = {_('_My Buttons')}},
{down = cpt_commands.EjectionSafetyLever, up = cpt_commands.EjectionSafetyLever, cockpit_device_id = devices.CPT_MECH, value_down = 1.0, value_up = 0.0, name = _('Ejection Safety Lever ARMED/LOCKED'),  category = {_('_My Buttons')}},

-- GEAR INTERFACE
{down = gear_commands.AntiSkidSw_EXT,	  up = gear_commands.AntiSkidSw,  		cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('ANTI-SKID Switch PARKING BRAKE/ANTI-SKID'),		category = {_('_My Buttons')}},

-- EXTLIGHTS SYSTEM
{down = extlights_commands.PosFlash,	  up = extlights_commands.PosFlash,  	cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('EXT LIGHTING Control Panel FLASH/STEADY'),	category = {_('_My Buttons')}},
{down = extlights_commands.LandingTaxi,	  up = extlights_commands.LandingTaxi,  cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('LANDING TAXI LIGHTS Switch LANDING/OFF'),		category = {_('_My Buttons')}},
{down = extlights_commands.LandingTaxi,	  up = extlights_commands.LandingTaxi,  cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('LANDING TAXI LIGHTS Switch TAXI/OFF'),		category = {_('_My Buttons')}},
{down = extlights_commands.PosWingTail,	  up = extlights_commands.PosWingTail,  cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('WING/TAIL Switch BRT/OFF'),					category = {_('_My Buttons')}},
{down = extlights_commands.PosWingTail,	  up = extlights_commands.PosWingTail,  cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('WING/TAIL Switch DIM/OFF'),					category = {_('_My Buttons')}},
{down = extlights_commands.PosFus,		  up = extlights_commands.PosFus,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('FUSELAGE Switch BRT/OFF'),					category = {_('_My Buttons')}},
{down = extlights_commands.PosFus,		  up = extlights_commands.PosFus,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('FUSELAGE Switch DIM/OFF'),					category = {_('_My Buttons')}},

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF end additional commands
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------


---------------------------------------------
-- Cheat ------------------------------------
---------------------------------------------
{	down = iCommandEnginesStart,													name = _('Auto Start'),								category = {_('Cheat')}},
{	down = iCommandEnginesStop,														name = _('Auto Stop'),								category = {_('Cheat')}},
{	down = device_commands.Button_10,	cockpit_device_id = 0,	value_down =  1.0,	name = _('Recorder On'),							category = {_('Cheat')}},
{	down = device_commands.Button_11,	cockpit_device_id = 0,	value_down =  1.0,	name = _('Recorder Off'),							category = {_('Cheat')}},

---------------------------------------------
-- General ----------------------------------
---------------------------------------------
{	down = iCommandCockpitShowPilotOnOff,											name = _('Show pilot body'),						category = {_('General')}},
-- TODO: Smoke Device Button
--{												down = cpt_commands.SmokeDevice,	cockpit_device_id = devices.CPT_MECHANICS, value_down = 1.0, name = _('Smoke Device - ON/OFF'),	category = _('General')},

---------------------------------------------
-- View Cockpit -----------------------------
---------------------------------------------
{	down = 3255,								cockpit_device_id = 0,							value_down =  1.0,	name = _('Toggle Flashlight Color - Green/White'),	category = {_('View Cockpit')}},
{	down = cptlights_commands.UtilityBrt_ITER,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down =  0.1,	name = _('Flashlight BRT Control - Increase'),		category = {_('View Cockpit'), _('Right Console')}},
{	down = cptlights_commands.UtilityBrt_ITER,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down = -0.1,	name = _('Flashlight BRT Control - Decrease'),		category = {_('View Cockpit'), _('Right Console')}},

---------------------------------------------
-- Flight Control ---------------------------
---------------------------------------------
{	down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Pitch Down'),	category = {_('Flight Control')}},
{	down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Pitch Up'),		category = {_('Flight Control')}},
{	down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = {_('Flight Control')}},
{	down = iCommandPlaneRightStart,			up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = {_('Flight Control')}},
{	down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = {_('Flight Control')}},
{	down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = {_('Flight Control')}},

---------------------------------------------
-- Stick ------------------------------------
---------------------------------------------
{	pressed = iCommandPlaneTrimUp,						up = iCommandPlaneTrimStop,																								name = _('TRIM Button - NOSE DOWN'),					category = {_('Stick'), _('HOTAS'), _('Flight Control')}},
{	pressed = iCommandPlaneTrimDown,					up = iCommandPlaneTrimStop,																								name = _('TRIM Button - NOSE UP'),						category = {_('Stick'), _('HOTAS'), _('Flight Control')}},
{	pressed = iCommandPlaneTrimLeft,					up = iCommandPlaneTrimStop,																								name = _('TRIM Button - LEFT WING DOWN'),				category = {_('Stick'), _('HOTAS'), _('Flight Control')}},
{	pressed = iCommandPlaneTrimRight,					up = iCommandPlaneTrimStop,																								name = _('TRIM Button - RIGHT WING DOWN'),				category = {_('Stick'), _('HOTAS'), _('Flight Control')}},
{	down = hotas_commands.STICK_NWS_AR_DISC_MSL_STEP,	up = hotas_commands.STICK_NWS_AR_DISC_MSL_STEP,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('NWS A/R DISC MSL STEP Button'),				category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_DISP_MANAGE_UP,			up = hotas_commands.STICK_DISP_MANAGE_UP,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Display Management Switch - Up'),				category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_DISP_MANAGE_DOWN,		up = hotas_commands.STICK_DISP_MANAGE_DOWN,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Display Management Switch - Down'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_DISP_MANAGE_LEFT,		up = hotas_commands.STICK_DISP_MANAGE_LEFT,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Display Management Switch - Left'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_DISP_MANAGE_RIGHT,		up = hotas_commands.STICK_DISP_MANAGE_RIGHT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Display Management Switch - Right'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TGT_MANAGE_UP,			up = hotas_commands.STICK_TGT_MANAGE_UP,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Target Management Switch - Up'),				category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TGT_MANAGE_DOWN,		up = hotas_commands.STICK_TGT_MANAGE_DOWN,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Target Management Switch - Down'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TGT_MANAGE_LEFT,		up = hotas_commands.STICK_TGT_MANAGE_LEFT,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Target Management Switch - Left'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TGT_MANAGE_RIGHT,		up = hotas_commands.STICK_TGT_MANAGE_RIGHT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Target Management Switch - Right'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_CMS_MANAGE_FWD,			up = hotas_commands.STICK_CMS_MANAGE_FWD,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Countermeasures Management Switch - Fwd'),	category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_CMS_MANAGE_AFT,			up = hotas_commands.STICK_CMS_MANAGE_AFT,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Countermeasures Management Switch - Aft'),	category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_CMS_MANAGE_LEFT,		up = hotas_commands.STICK_CMS_MANAGE_LEFT,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,	name = _('Countermeasures Management Switch - Left'),	category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_CMS_MANAGE_RIGHT,		up = hotas_commands.STICK_CMS_MANAGE_RIGHT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Countermeasures Management Switch - Right'),	category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_EXPAND_FOV,				up = hotas_commands.STICK_EXPAND_FOV,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Expand/FOV Button - Depress'),				category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_PADDLE,					up = hotas_commands.STICK_PADDLE,				cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('Paddle Switch - Depress'),					category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TRIGGER_1ST_DETENT,		up = hotas_commands.STICK_TRIGGER_1ST_DETENT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('CAMERA/GUN Trigger - FIRST DETENT'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_TRIGGER_2ND_DETENT,		up = hotas_commands.STICK_TRIGGER_2ND_DETENT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('CAMERA/GUN Trigger - SECOND DETENT'),			category = {_('Stick'), _('HOTAS')}},
{	down = hotas_commands.STICK_WEAPON_RELEASE,  		up = hotas_commands.STICK_WEAPON_RELEASE,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,	name = _('WPN REL Button - Depress'),					category = {_('Stick'), _('HOTAS')}},

{	down = cpt_commands.StickHide,		cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,	name = _('Control Stick - HIDE'),			category = {_('Stick'), _('HOTAS')}},
{	down = cpt_commands.StickHide,		cockpit_device_id = devices.CPT_MECH,	value_down =  0.0,	name = _('Control Stick - SHOW'),			category = {_('Stick'), _('HOTAS')}},
{	down = cpt_commands.StickHide_EXT,	cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,	name = _('Control Stick - HIDE/SHOW'),		category = {_('Stick'), _('HOTAS')}},

---------------------------------------------
-- Throttle Quadrant ------------------------
---------------------------------------------
{	down = iCommandThrottleIncrease,					up = iCommandThrottleStop,																								name = _('Throttle Smoothly - Increase'),				category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandThrottleDecrease,					up = iCommandThrottleStop,																								name = _('Throttle Smoothly - Decrease'),				category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTIncreaseRegime,																																		name = _('Throttle Step - Increase'),					category = {_('Throttle Quadrant'), _('Flight Control')}},
{	down = iCommandPlaneAUTDecreaseRegime,																																		name = _('Throttle Step - Decrease'),					category = {_('Throttle Quadrant'), _('Flight Control')}},
--
{	down = iCommandLeftEngineStart,																																				name = _('Throttle - IDLE'),							category = {_('Throttle Quadrant')}},
{	down = iCommandLeftEngineStop,																																				name = _('Throttle - OFF'),								category = {_('Throttle Quadrant')}},
{	down = iCommandLeftEngineStop,						up = iCommandLeftEngineStart,														value_down = 1.0,	value_up = 1.0,	name = _('Throttle - OFF/IDLE'),						category = {_('Throttle Quadrant')}},
{	down = hotas_commands.THROTTLE_CUTOFF_RELEASE,		up = hotas_commands.THROTTLE_CUTOFF_RELEASE,	cockpit_device_id = devices.HOTAS,	value_down = 1.0,	value_up = 0.0,	name = _('Throttle Cutoff Release - Depress'),			category = {_('Throttle Quadrant'), _('HOTAS')}},
{	pressed = control_commands.ThrottleFriction_ITER,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed = -0.5,	name = _('Throttle Friction Control - Aft/Decrease'),	category = {_('Throttle Quadrant')}},
{	pressed = control_commands.ThrottleFriction_ITER,													cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed =  0.5,	name = _('Throttle Friction Control - Fwd/Increase'),	category = {_('Throttle Quadrant')}},
{	down = control_commands.AB_DETENT,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,		name = _('Cycle Afterburner Detent - ON/OFF'),			category = {_('Throttle Quadrant')}},

---------------------------------------------
-- Throttle Grip ----------------------------
---------------------------------------------
{	down = hotas_commands.THROTTLE_TRANSMIT_FWD,		up = hotas_commands.THROTTLE_TRANSMIT_FWD,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - VHF (call radio menu)'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_TRANSMIT_AFT,		up = hotas_commands.THROTTLE_TRANSMIT_AFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - UHF (call radio menu)'),					category = {_('Throttle Grip'), _('HOTAS')}},
--[[VOICECHAT_READY
{	down = hotas_commands.THROTTLE_TRANSMIT_FWD_VOIP,	up = hotas_commands.THROTTLE_TRANSMIT_FWD_VOIP,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - VHF (VOIP)'),								category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_TRANSMIT_AFT_VOIP,	up = hotas_commands.THROTTLE_TRANSMIT_AFT_VOIP,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - UHF (VOIP)'),								category = {_('Throttle Grip'), _('HOTAS')}},
--]]
{	down = hotas_commands.THROTTLE_TRANSMIT_LEFT,		up = hotas_commands.THROTTLE_TRANSMIT_LEFT,		cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - IFF OUT'),									category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_TRANSMIT_RIGHT,		up = hotas_commands.THROTTLE_TRANSMIT_RIGHT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('Transmit Switch - IFF IN'),									category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_UNCAGE,				up = hotas_commands.THROTTLE_UNCAGE,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('UNCAGE Switch'),												category = {_('Throttle Grip'), _('HOTAS')}},
{	pressed = hotas_commands.THROTTLE_MAN_RNG_INC,														cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,					name = _('MAN RNG Knob - CW'),											category = {_('Throttle Grip'), _('HOTAS')}},
{	pressed = hotas_commands.THROTTLE_MAN_RNG_DEC,														cockpit_device_id = devices.HOTAS,	value_pressed = -1.0,					name = _('MAN RNG Knob - CCW'),											category = {_('Throttle Grip'), _('HOTAS')}},
{	pressed = hotas_commands.THROTTLE_ANT_ELEV_UP,														cockpit_device_id = devices.HOTAS,	value_pressed =  1.0,					name = _('ANT ELEV Knob - CW'),											category = {_('Throttle Grip'), _('HOTAS')}},
{	pressed = hotas_commands.THROTTLE_ANT_ELEV_DOWN,													cockpit_device_id = devices.HOTAS,	value_pressed = -1.0,					name = _('ANT ELEV Knob - CCW'),										category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT,															cockpit_device_id = devices.HOTAS,	value_down =  1.0,						name = _('DOGFIGHT/Missile Override Switch - DOGFIGHT'),				category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT,															cockpit_device_id = devices.HOTAS,	value_down =  0.0,						name = _('DOGFIGHT/Missile Override Switch - CENTER'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT,															cockpit_device_id = devices.HOTAS,	value_down = -1.0,						name = _('DOGFIGHT/Missile Override Switch - MISSILE OVERRIDE'),		category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT_ITER,														cockpit_device_id = devices.HOTAS,	value_down =  1.0,						name = _('DOGFIGHT/Missile Override Switch - Cycle Outboard'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT_ITER,														cockpit_device_id = devices.HOTAS,	value_down = -1.0,						name = _('DOGFIGHT/Missile Override Switch - Cycle Inboard'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT_CYCL,														cockpit_device_id = devices.HOTAS,	value_down =  0.0,						name = _('DOGFIGHT/Missile Override Switch - Cycle'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT_EXT,														cockpit_device_id = devices.HOTAS,	value_down =  1.0,						name = _('DOGFIGHT/Missile Override Switch - DOGFIGHT/CENTER'),			category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT_EXT,														cockpit_device_id = devices.HOTAS,	value_down = -1.0,						name = _('DOGFIGHT/Missile Override Switch - MISSILE OVERRIDE/CENTER'),	category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,			up = hotas_commands.THROTTLE_SPEED_BRAKE,		cockpit_device_id = devices.HOTAS,	value_down = -1.0,	value_up = 0.0,		name = _('SPD BRK Switch - Aft/EXTEND (Momentary)'),					category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,															cockpit_device_id = devices.HOTAS,	value_down =  0.0,						name = _('SPD BRK Switch - OFF'),										category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,															cockpit_device_id = devices.HOTAS,	value_down =  1.0,						name = _('SPD BRK Switch - Fwd/RETRACT'),								category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RDR_CURSOR_LEFT,		up = hotas_commands.THROTTLE_RDR_CURSOR_LEFT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('RDR CURSOR Switch - Left'),									category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RDR_CURSOR_RIGHT,	up = hotas_commands.THROTTLE_RDR_CURSOR_RIGHT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('RDR CURSOR Switch - Right'),									category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RDR_CURSOR_FWD,		up = hotas_commands.THROTTLE_RDR_CURSOR_FWD,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('RDR CURSOR Switch - Up'),										category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_RDR_CURSOR_AFT,		up = hotas_commands.THROTTLE_RDR_CURSOR_AFT,	cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('RDR CURSOR Switch - Down'),									category = {_('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_ENABLE,				up = hotas_commands.THROTTLE_ENABLE,			cockpit_device_id = devices.HOTAS,	value_down =  1.0,	value_up = 0.0,		name = _('ENABLE Switch - Depress'),									category = {_('Throttle Grip'), _('HOTAS')}},

---------------------------------------------
-- Systems ----------------------------------
---------------------------------------------
{	down = iCommandPlaneWheelBrakeOn,		up = iCommandPlaneWheelBrakeOff,											name = _('Wheel Brake - ON/OFF'),			category = {_('Systems')}},
{	down = iCommandPlaneWheelBrakeLeftOn,	up = iCommandPlaneWheelBrakeLeftOff,										name = _('Wheel Brake Left - ON/OFF'),		category = {_('Systems')}},
{	down = iCommandPlaneWheelBrakeRightOn,	up = iCommandPlaneWheelBrakeRightOff,										name = _('Wheel Brake Right - ON/OFF'),		category = {_('Systems')}},
{	down = iCommandPlaneEject,																							name = _('Eject (3 times)'),				category = {_('Systems')}},
{	down = iCommandPlaneFonar,				up = iCommandPlaneFonar,				value_down = 1.0,	value_up = 0.0,	name = _('Canopy - OPEN/CLOSE'),			category = {_('Systems')}},
{	down = iCommandPilotSeatAdjustmentUp,	up = iCommandPilotSeatAdjustmentStop,										name = _('SEAT ADJ Switch - UP/OFF'),		category = {_('Systems'), _('Right Wall')}},
{	down = iCommandPilotSeatAdjustmentDown,	up = iCommandPilotSeatAdjustmentStop,										name = _('SEAT ADJ Switch - DOWN/OFF'),		category = {_('Systems'), _('Right Wall')}},


---------------------------------------------
-- Instrument Panel -------------------------
---------------------------------------------
{	pressed = cptlights_commands.IndBrtAoA_ITER,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,		name = _('AOA Indexer Dimming Lever - Down/Decrease'),			category = {_('Instrument Panel')}},
{	pressed = cptlights_commands.IndBrtAoA_ITER,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,		name = _('AOA Indexer Dimming Lever - Up/Increase'),			category = {_('Instrument Panel')}},
{	pressed = cptlights_commands.IndBrtAR_ITER,		cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,		name = _('AR Status Indicator Dimming Lever - Down/Decrease'),	category = {_('Instrument Panel')}},
{	pressed = cptlights_commands.IndBrtAR_ITER,		cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,		name = _('AR Status Indicator Dimming Lever - Up/Increase'),	category = {_('Instrument Panel')}},

----------------------------------------------------------------------
-- Upfront Controls (UFC) / Integrated Control Panel (ICP) -----------
----------------------------------------------------------------------
{	down = ufc_commands.COM1,					up = ufc_commands.COM1,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP COM Override Button - COM1(UHF)'),					category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.COM2,					up = ufc_commands.COM2,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP COM Override Button - COM2(VHF)'),					category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.IFF,					up = ufc_commands.IFF,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP IFF Override Button - IFF'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.LIST,					up = ufc_commands.LIST,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP LIST Override Button - LIST'),						category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.AA,						up = ufc_commands.AA,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Master Mode Button - A-A'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.AG,						up = ufc_commands.AG,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Master Mode Button - A-G'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG0_M_SEL,				up = ufc_commands.DIG0_M_SEL,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 0(M-SEL)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG1_T_ILS,				up = ufc_commands.DIG1_T_ILS,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 1(T-ILS)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG2_ALOW,				up = ufc_commands.DIG2_ALOW,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 2/N(ALOW)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG3,					up = ufc_commands.DIG3,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 3'),						category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG4_STPT,				up = ufc_commands.DIG4_STPT,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 4/W(STPT)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG5_CRUS,				up = ufc_commands.DIG5_CRUS,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 5(CRUS)'),					category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG6_TIME,				up = ufc_commands.DIG6_TIME,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 6/E(TIME)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG7_MARK,				up = ufc_commands.DIG7_MARK,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 7(MARK)'),					category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG8_FIX,				up = ufc_commands.DIG8_FIX,					cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 8/S(FIX)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DIG9_A_CAL,				up = ufc_commands.DIG9_A_CAL,				cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Priority Function Button - 9(A-CAL)'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.RCL,					up = ufc_commands.RCL,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Recall Button - RCL'),								category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.ENTR,					up = ufc_commands.ENTR,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Enter Button - ENTR'),								category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DED_INC,				up = ufc_commands.DED_INC,					cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP DED Increment/Decrement Switch - Increment'),			category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DED_DEC,				up = ufc_commands.DED_DEC,					cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP DED Increment/Decrement Switch - Decrement'),			category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DCS_UP,					up = ufc_commands.DCS_UP,					cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Data Control Switch - UP'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DCS_DOWN,				up = ufc_commands.DCS_DOWN,					cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP Data Control Switch - DOWN'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DCS_RTN,				up = ufc_commands.DCS_RTN,					cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP Data Control Switch - RET'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DCS_SEQ,				up = ufc_commands.DCS_SEQ,					cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP Data Control Switch - SEQ'),							category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DriftCO_WarnReset_ITER,	up = ufc_commands.DriftCO_WarnReset_ITER,	cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP DRIFT CUTOUT/WARN RESET Switch - Down'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DriftCO_WarnReset_ITER,												cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('ICP DRIFT CUTOUT/WARN RESET Switch - Up'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DRIFT_CUTOUT,														cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('ICP DRIFT CUTOUT/WARN RESET Switch - DRIFT C/O'),			category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.DRIFT_CUTOUT,														cockpit_device_id = devices.UFC,	value_down =  0.0,						name = _('ICP DRIFT CUTOUT/WARN RESET Switch - NORM'),				category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.WARN_RESET,				up = ufc_commands.WARN_RESET,				cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP DRIFT CUTOUT/WARN RESET Switch - WARN RESET /NORM'),	category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.Wx,						up = ufc_commands.Wx,						cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP FLIR Polarity Button'),								category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_INC,				up = ufc_commands.FLIR_INC,					cockpit_device_id = devices.UFC,	value_down =  1.0,	value_up = 0.0,		name = _('ICP FLIR Increment/Decrement Switch - Increment'),		category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_DEC,				up = ufc_commands.FLIR_DEC,					cockpit_device_id = devices.UFC,	value_down = -1.0,	value_up = 0.0,		name = _('ICP FLIR Increment/Decrement Switch - Decrement'),		category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_GAIN_Sw,														cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('ICP FLIR GAIN/LEVEL Switch - GAIN'),						category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_GAIN_Sw,														cockpit_device_id = devices.UFC,	value_down =  0.0,						name = _('ICP FLIR GAIN/LEVEL Switch - LVL'),						category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_GAIN_Sw,														cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('ICP FLIR GAIN/LEVEL Switch - AUTO'),						category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_GAIN_Sw_ITER,													cockpit_device_id = devices.UFC,	value_down =  1.0,						name = _('ICP FLIR GAIN/LEVEL Switch - Cycle Up'),					category = {_('Instrument Panel'), _('ICP')}},
{	down = ufc_commands.FLIR_GAIN_Sw_ITER,													cockpit_device_id = devices.UFC,	value_down = -1.0,						name = _('ICP FLIR GAIN/LEVEL Switch - Cycle Down'),				category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.SYM_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed =  0.3,					name = _('ICP HUD Symbology Intensity Knob - Up/Increase'),			category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.SYM_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed = -0.3,					name = _('ICP HUD Symbology Intensity Knob - Down/Decrease'),		category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.RET_DEPR_Knob_ITER,												cockpit_device_id = devices.UFC,	value_pressed =  0.3,					name = _('ICP Reticle Depression Control Knob - Up/Increase'),		category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.RET_DEPR_Knob_ITER,												cockpit_device_id = devices.UFC,	value_pressed = -0.3,					name = _('ICP Reticle Depression Control Knob - Down/Decrease'),	category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.BRT_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed =  0.3,					name = _('ICP Raster Intensity Knob - Up/Increase'),				category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.BRT_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed = -0.3,					name = _('ICP Raster Intensity Knob - Down/Decrease'),				category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.CONT_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed =  0.3,					name = _('ICP Raster Contrast Knob - Up/Increase'),					category = {_('Instrument Panel'), _('ICP')}},
{	pressed = ufc_commands.CONT_Knob_ITER,													cockpit_device_id = devices.UFC,	value_pressed = -0.3,					name = _('ICP Raster Contrast Knob - Down/Decrease'),				category = {_('Instrument Panel'), _('ICP')}},

----------------------------------------------------------------------
-- Multifunction Display Set (MFDS) ----------------------------------
----------------------------------------------------------------------

-- Left MFD
{	down = mfd_commands.OSB_1,				up = mfd_commands.OSB_1,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 1'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_2,				up = mfd_commands.OSB_2,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 2'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_3,				up = mfd_commands.OSB_3,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 3'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_4,				up = mfd_commands.OSB_4,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 4'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_5,				up = mfd_commands.OSB_5,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 5'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_6,				up = mfd_commands.OSB_6,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 6'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_7,				up = mfd_commands.OSB_7,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 7'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_8,				up = mfd_commands.OSB_8,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 8'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_9,				up = mfd_commands.OSB_9,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 9'),									category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_10,				up = mfd_commands.OSB_10,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 10'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_11,				up = mfd_commands.OSB_11,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 11'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_12,				up = mfd_commands.OSB_12,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 12'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_13,				up = mfd_commands.OSB_13,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 13'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_14,				up = mfd_commands.OSB_14,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 14'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_15,				up = mfd_commands.OSB_15,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 15'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_16,				up = mfd_commands.OSB_16,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 16'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_17,				up = mfd_commands.OSB_17,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 17'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_18,				up = mfd_commands.OSB_18,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 18'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_19,				up = mfd_commands.OSB_19,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 19'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_20,				up = mfd_commands.OSB_20,			cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD OSB 20'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.GAIN_Rocker_UP,		up = mfd_commands.GAIN_Rocker_UP,	cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD GAIN Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.GAIN_Rocker_DOWN,	up = mfd_commands.GAIN_Rocker_DOWN,	cockpit_device_id = devices.MFD_LEFT,	value_down = -1.0,	value_up = 0.0,		name = _('Left MFD GAIN Rocker Switch - Down/Decrease'),	category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.SYM_Rocker_UP,		up = mfd_commands.SYM_Rocker_UP,	cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD SYM Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.SYM_Rocker_DOWN,	up = mfd_commands.SYM_Rocker_DOWN,	cockpit_device_id = devices.MFD_LEFT,	value_down = -1.0,	value_up = 0.0,		name = _('Left MFD SYM Rocker Switch - Down/Decrease'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.CON_Rocker_UP,		up = mfd_commands.CON_Rocker_UP,	cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD CON Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.CON_Rocker_DOWN,	up = mfd_commands.CON_Rocker_DOWN,	cockpit_device_id = devices.MFD_LEFT,	value_down = -1.0,	value_up = 0.0,		name = _('Left MFD CON Rocker Switch - Down/Decrease'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.BRT_Rocker_UP,		up = mfd_commands.BRT_Rocker_UP,	cockpit_device_id = devices.MFD_LEFT,	value_down =  1.0,	value_up = 0.0,		name = _('Left MFD BRT Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.BRT_Rocker_DOWN,	up = mfd_commands.BRT_Rocker_DOWN,	cockpit_device_id = devices.MFD_LEFT,	value_down = -1.0,	value_up = 0.0,		name = _('Left MFD BRT Rocker Switch - Down/Decrease'),		category = {_('Instrument Panel'), _('MFDS')}},

-- Right MFD
{	down = mfd_commands.OSB_1,				up = mfd_commands.OSB_1,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 1'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_2,				up = mfd_commands.OSB_2,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 2'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_3,				up = mfd_commands.OSB_3,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 3'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_4,				up = mfd_commands.OSB_4,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 4'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_5,				up = mfd_commands.OSB_5,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 5'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_6,				up = mfd_commands.OSB_6,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 6'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_7,				up = mfd_commands.OSB_7,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 7'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_8,				up = mfd_commands.OSB_8,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 8'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_9,				up = mfd_commands.OSB_9,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 9'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_10,				up = mfd_commands.OSB_10,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 10'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_11,				up = mfd_commands.OSB_11,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 11'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_12,				up = mfd_commands.OSB_12,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 12'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_13,				up = mfd_commands.OSB_13,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 13'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_14,				up = mfd_commands.OSB_14,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 14'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_15,				up = mfd_commands.OSB_15,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 15'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_16,				up = mfd_commands.OSB_16,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 16'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_17,				up = mfd_commands.OSB_17,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 17'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_18,				up = mfd_commands.OSB_18,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 18'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_19,				up = mfd_commands.OSB_19,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 19'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.OSB_20,				up = mfd_commands.OSB_20,			cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD OSB 20'),								category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.GAIN_Rocker_UP,		up = mfd_commands.GAIN_Rocker_UP,	cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD GAIN Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.GAIN_Rocker_DOWN,	up = mfd_commands.GAIN_Rocker_DOWN,	cockpit_device_id = devices.MFD_RIGHT,	value_down = -1.0,	value_up = 0.0,		name = _('Right MFD GAIN Rocker Switch - Down/Decrease'),	category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.SYM_Rocker_UP,		up = mfd_commands.SYM_Rocker_UP,	cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD SYM Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.SYM_Rocker_DOWN,	up = mfd_commands.SYM_Rocker_DOWN,	cockpit_device_id = devices.MFD_RIGHT,	value_down = -1.0,	value_up = 0.0,		name = _('Right MFD SYM Rocker Switch - Down/Decrease'),	category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.CON_Rocker_UP,		up = mfd_commands.CON_Rocker_UP,	cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD CON Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.CON_Rocker_DOWN,	up = mfd_commands.CON_Rocker_DOWN,	cockpit_device_id = devices.MFD_RIGHT,	value_down = -1.0,	value_up = 0.0,		name = _('Right MFD CON Rocker Switch - Down/Decrease'),	category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.BRT_Rocker_UP,		up = mfd_commands.BRT_Rocker_UP,	cockpit_device_id = devices.MFD_RIGHT,	value_down =  1.0,	value_up = 0.0,		name = _('Right MFD BRT Rocker Switch - Up/Increase'),		category = {_('Instrument Panel'), _('MFDS')}},
{	down = mfd_commands.BRT_Rocker_DOWN,	up = mfd_commands.BRT_Rocker_DOWN,	cockpit_device_id = devices.MFD_RIGHT,	value_down = -1.0,	value_up = 0.0,		name = _('Right MFD BRT Rocker Switch - Down/Decrease'),	category = {_('Instrument Panel'), _('MFDS')}},

----------------------------------------------------------------------
-- Instruments -------------------------------------------------------
----------------------------------------------------------------------
-- SAI
{	down = sai_commands.cage,					up = sai_commands.cage,				cockpit_device_id = devices.SAI,	value_down =  1.0,		value_up = 0.0,		name = _('SAI Cage Knob - Pull'),								category = {_('Instrument Panel')}},
{	pressed = sai_commands.reference_EXT,											cockpit_device_id = devices.SAI,	value_pressed = -0.3,						name = _('SAI Cage Knob - CCW'),								category = {_('Instrument Panel')}},
{	pressed = sai_commands.reference_EXT,											cockpit_device_id = devices.SAI,	value_pressed =  0.3,						name = _('SAI Cage Knob - CW'),									category = {_('Instrument Panel')}},
-- Airspeed/Mach Indicator
{	pressed = ami_commands.SettingKnob,												cockpit_device_id = devices.AMI,	value_pressed = -0.01,						name = _('SET INDEX Knob - CCW/Decrease'),						category = {_('Instrument Panel')}},
{	pressed = ami_commands.SettingKnob,												cockpit_device_id = devices.AMI,	value_pressed =  0.01,						name = _('SET INDEX Knob - CW/Increase'),						category = {_('Instrument Panel')}},
-- Altimeter
{	pressed = alt_commands.ZERO,													cockpit_device_id = devices.AAU34,	value_pressed = -0.01,						name = _('Barometric Setting Knob - CCW/Decrease'),				category = {_('Instrument Panel')}},
{	pressed = alt_commands.ZERO,													cockpit_device_id = devices.AAU34,	value_pressed =  0.01,						name = _('Barometric Setting Knob - CW/Increase'),				category = {_('Instrument Panel')}},
-- ADI
{	pressed = iCommandADI_ZeroPitchTrimLeft,																														name = _('Pitch Trim Knob - CCW'),								category = {_('Instrument Panel')}},
{	pressed = iCommandADI_ZeroPitchTrimRight,																														name = _('Pitch Trim Knob - CW'),								category = {_('Instrument Panel')}},
-- EHSI
{	down = ehsi_commands.LeftKnobBtn,			up = ehsi_commands.LeftKnobBtn,		cockpit_device_id = devices.EHSI,	value_down =  1.0,		value_up = 0.0,		name = _('HDG Set Knob - Depress'),								category = {_('Instrument Panel')}},
{	pressed = ehsi_commands.LeftKnob,												cockpit_device_id = devices.EHSI,	value_pressed = -0.01,						name = _('HDG Set Knob - CCW/Decrease'),						category = {_('Instrument Panel')}},
{	pressed = ehsi_commands.LeftKnob,												cockpit_device_id = devices.EHSI,	value_pressed =  0.01,						name = _('HDG Set Knob - CW/Increase'),							category = {_('Instrument Panel')}},
{	down = ehsi_commands.RightKnobBtn,			up = ehsi_commands.RightKnobBtn,	cockpit_device_id = devices.EHSI,	value_down =  1.0,		value_up = 0.0,		name = _('CRS Set / Brightness Control Knob - Depress'),		category = {_('Instrument Panel')}},
{	pressed = ehsi_commands.RightKnob,												cockpit_device_id = devices.EHSI,	value_pressed = -0.01,						name = _('CRS Set / Brightness Control Knob - CCW/Decrease'),	category = {_('Instrument Panel')}},
{	pressed = ehsi_commands.RightKnob,												cockpit_device_id = devices.EHSI,	value_pressed =  0.01,						name = _('CRS Set / Brightness Control Knob - CW/Increase'),	category = {_('Instrument Panel')}},
{	down = ehsi_commands.ModeBtn,				up = ehsi_commands.ModeBtn,			cockpit_device_id = devices.EHSI,	value_down =  1.0,		value_up = 0.0,		name = _('Mode (M) Button - Depress'),							category = {_('Instrument Panel')}},

-- FUEL QTY SEL Panel
{	down = fuel_commands.FuelQtySelSw,			up = fuel_commands.FuelQtySelSw,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	value_up = 0.1,		name = _('FUEL QTY SEL Knob - TEST'),							category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw,													cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.1,						name = _('FUEL QTY SEL Knob - NORM'),							category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw,													cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.2,						name = _('FUEL QTY SEL Knob - RSVR'),							category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw,													cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.3,						name = _('FUEL QTY SEL Knob - INT WING'),						category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw,													cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.4,						name = _('FUEL QTY SEL Knob - EXT WING'),						category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw,													cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.5,						name = _('FUEL QTY SEL Knob - EXT CTR'),						category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw_ITER,												cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,						name = _('FUEL QTY SEL Knob - CW'),								category = {_('Instrument Panel')}},
{	down = fuel_commands.FuelQtySelSw_ITER,		up = fuel_commands.FuelQtySelSw_ITER,	cockpit_device_id = devices.FUEL_INTERFACE,	value_down = -1.0,	value_up = 0.0,		name = _('FUEL QTY SEL Knob - CCW'),							category = {_('Instrument Panel')}},
{	down = fuel_commands.ExtFuelTransferSw,												cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,						name = _('External Fuel Transfer Switch - NORM'),				category = {_('Instrument Panel')}},
{	down = fuel_commands.ExtFuelTransferSw,												cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,						name = _('External Fuel Transfer Switch - WING FIRST'),			category = {_('Instrument Panel')}},
{	down = fuel_commands.ExtFuelTransferSw_ITER,										cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,						name = _('External Fuel Transfer Switch - NORM/ WING FIRST'),	category = {_('Instrument Panel')}},

-- MISC Panel
{	down = control_commands.ApPitchAlt,				up = control_commands.ApPitchAlt,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Autopilot PITCH Switch - Up'),			category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApPitchAtt,				up = control_commands.ApPitchAtt,				cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Autopilot PITCH Switch - Down'),			category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApPitchAlt_EXT,			up = control_commands.ApPitchAlt_EXT,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Autopilot PITCH Switch - ALT HOLD'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApPitchAlt_EXT,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,					name = _('Autopilot PITCH Switch - A/P OFF'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApPitchAtt_EXT,			up = control_commands.ApPitchAtt_EXT,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Autopilot PITCH Switch - ATT HOLD'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,					name = _('Autopilot ROLL Switch - STRG SEL'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('Autopilot ROLL Switch - ATT HOLD'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll,																	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('Autopilot ROLL Switch - HDG SEL'),		category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll_ITER,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('Autopilot ROLL Switch - Up'),				category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll_ITER,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,					name = _('Autopilot ROLL Switch - Down'),			category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.AdvMode,																cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('ADV MODE Switch - Depressed'),			category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.AdvMode,																cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('ADV MODE Switch - Released'),				category = {_('Instrument Panel'), _('FLCS')}},
{	down = control_commands.AdvMode_ITER,															cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('ADV MODE Switch - Depressed/Released'),	category = {_('Instrument Panel'), _('FLCS')}},

-- ARM Panel
{	down = ufc_commands.RF_Sw,															cockpit_device_id = devices.UFC,				value_down = -1.0,					name = _('RF Switch - SILENT'),					category = {_('Instrument Panel')}},
{	down = ufc_commands.RF_Sw,															cockpit_device_id = devices.UFC,				value_down =  0.0,					name = _('RF Switch - QUIET'),					category = {_('Instrument Panel')}},
{	down = ufc_commands.RF_Sw,															cockpit_device_id = devices.UFC,				value_down =  1.0,					name = _('RF Switch - NORM'),					category = {_('Instrument Panel')}},
{	down = ufc_commands.RF_Sw_ITER,														cockpit_device_id = devices.UFC,				value_down =  1.0,					name = _('RF Switch - Up'),						category = {_('Instrument Panel')}},
{	down = ufc_commands.RF_Sw_ITER,														cockpit_device_id = devices.UFC,				value_down = -1.0,					name = _('RF Switch - Down'),					category = {_('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw,													cockpit_device_id = devices.MMC,				value_down = -1.0,					name = _('MASTER ARM Switch - SIMULATE'),		category = {_('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw,													cockpit_device_id = devices.MMC,				value_down =  0.0,					name = _('MASTER ARM Switch - OFF'),			category = {_('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw,													cockpit_device_id = devices.MMC,				value_down =  1.0,					name = _('MASTER ARM Switch - MASTER ARM'),		category = {_('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw_ITER,												cockpit_device_id = devices.MMC,				value_down =  1.0,					name = _('MASTER ARM Switch - Up'),				category = {_('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw_ITER,												cockpit_device_id = devices.MMC,				value_down = -1.0,					name = _('MASTER ARM Switch - Down'),			category = {_('Instrument Panel')}},
{	down = mmc_commands.AltRel,					up = mmc_commands.AltRel,				cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('ALT REL Button'),						category = {_('Instrument Panel')}},
-- LASER ARM Switch
{	down = sms_commands.LaserSw,														cockpit_device_id = devices.SMS,				value_down =  0.0,					name = _('LASER ARM Switch - OFF'),				category = {_('Instrument Panel')}},
{	down = sms_commands.LaserSw,														cockpit_device_id = devices.SMS,				value_down =  1.0,					name = _('LASER ARM Switch - ARM'),				category = {_('Instrument Panel')}},
{	down = sms_commands.LaserSw_ITER,													cockpit_device_id = devices.SMS,				value_down =  1.0,					name = _('LASER ARM Switch - ARM/OFF'),			category = {_('Instrument Panel')}},
--
{	down = ufc_commands.F_ACK,					up = ufc_commands.F_ACK,				cockpit_device_id = devices.UFC,				value_down =  1.0,	value_up = 0.0,	name = _('F-ACK Button'),						category = {_('Instrument Panel')}},
{	down = ufc_commands.IFF_IDENT,				up = ufc_commands.IFF_IDENT,			cockpit_device_id = devices.UFC,				value_down =  1.0,	value_up = 0.0,	name = _('IFF IDENT Button'),					category = {_('Instrument Panel')}},
{	down = cptlights_commands.MasterCaution,	up = cptlights_commands.MasterCaution,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('Master Caution Button'),				category = {_('Instrument Panel')}},

-- THREAT WARNING Panel
{	pressed = rwr_commands.IntKnob_ITER,									cockpit_device_id = devices.RWR,	value_pressed = -0.3,					name = _('RWR Intensity Knob - CCW/Decrease'),				category = {_('Instrument Panel'), _("RWR")}},
{	pressed = rwr_commands.IntKnob_ITER,									cockpit_device_id = devices.RWR,	value_pressed =  0.3,					name = _('RWR Intensity Knob - CW/Increase'),				category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.Handoff,			up = rwr_commands.Handoff,		cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control HANDOFF Button'),			category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.Launch,				up = rwr_commands.Launch,		cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control LAUNCH Button'),			category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.Mode,				up = rwr_commands.Mode,			cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control MODE Button'),				category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.UnknownShip,		up = rwr_commands.UnknownShip,	cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control UNKNOWN SHIP Button'),		category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.SysTest,			up = rwr_commands.SysTest,		cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control SYS TEST Button'),			category = {_('Instrument Panel'), _("RWR")}},
{	down = rwr_commands.TgtSep,				up = rwr_commands.TgtSep,		cockpit_device_id = devices.RWR,	value_down =  1.0,		value_up = 0.0,	name = _('RWR Indicator Control T Button'),					category = {_('Instrument Panel'), _("RWR")}},


---------------------------------------------
-- Right Auxiliary Console ------------------
---------------------------------------------
-- Clock
{	down = clock_commands.CLOCK_right_lev_down,		up = clock_commands.CLOCK_right_lev_down,	cockpit_device_id = devices.CLOCK,	value_down = 1.0,		value_up = 0.0,	name = _('Clock Elapsed Time Knob - START/STOP/RESET'),	category = {_('Right Auxiliary Console')}},
{	down = clock_commands.CLOCK_left_lev_up,		up = clock_commands.CLOCK_left_lev_up,		cockpit_device_id = devices.CLOCK,	value_down = 1.0,		value_up = 0.0,	name = _('Clock Winding and Setting Knob - PULL'),		category = {_('Right Auxiliary Console')}},
{	pressed = clock_commands.CLOCK_left_lev_rotate,												cockpit_device_id = devices.CLOCK,	value_pressed = -0.01,					name = _('Clock Winding and Setting Knob - CCW'),		category = {_('Right Auxiliary Console')}},
{	pressed = clock_commands.CLOCK_left_lev_rotate,												cockpit_device_id = devices.CLOCK,	value_pressed =  0.01,					name = _('Clock Winding and Setting Knob - CW'),		category = {_('Right Auxiliary Console')}},


---------------------------------------------
-- Left Auxiliary Console -------------------
---------------------------------------------
{	down = iCommandPlaneGear,																																		name = _('LG Handle - UP/DN'),						category = {_('Left Auxiliary Console')}},
{	down = iCommandPlaneGearUp,																																		name = _('LG Handle - UP'),							category = {_('Left Auxiliary Console')}},
{	down = iCommandPlaneGearDown,																																	name = _('LG Handle - DN'),							category = {_('Left Auxiliary Console')}},
{	down = mmc_commands.EmerStoresJett,		up = mmc_commands.EmerStoresJett,	cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('EMER STORES JETTISON Button'),			category = {_('Left Auxiliary Console')}},
{	down = gear_commands.HookSw,												cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('HOOK Switch - UP'),						category = {_('Left Auxiliary Console')}},
{	down = gear_commands.HookSw,												cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,					name = _('HOOK Switch - DN'),						category = {_('Left Auxiliary Console')}},
{	down = gear_commands.HookSw_ITER,											cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('HOOK Switch - UP/DN'),					category = {_('Left Auxiliary Console')}},
{	down = mmc_commands.GroundJett,												cockpit_device_id = devices.MMC,				value_down =  1.0,					name = _('GND JETT ENABLE Switch - ENABLE'),		category = {_('Left Auxiliary Console')}},
{	down = mmc_commands.GroundJett,												cockpit_device_id = devices.MMC,				value_down =  0.0,					name = _('GND JETT ENABLE Switch - OFF'),			category = {_('Left Auxiliary Console')}},
{	down = mmc_commands.GroundJett_ITER,										cockpit_device_id = devices.MMC,				value_down =  1.0,					name = _('GND JETT ENABLE Switch - ENABLE/OFF'),	category = {_('Left Auxiliary Console')}},
{	down = gear_commands.BrakesChannelSw,										cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('BRAKES Channel Switch - CHAN 1'),			category = {_('Left Auxiliary Console')}},
{	down = gear_commands.BrakesChannelSw,										cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,					name = _('BRAKES Channel Switch - CHAN 2'),			category = {_('Left Auxiliary Console')}},
{	down = gear_commands.BrakesChannelSw_ITER,									cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,					name = _('BRAKES Channel Switch - CHAN 1/CHAN 2'),	category = {_('Left Auxiliary Console')}},
{	down = gear_commands.AntiSkidSw_EXT,										cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('ANTI-SKID Switch - OFF'),					category = {_('Left Auxiliary Console')}},
{	down = gear_commands.AntiSkidSw_EXT,										cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  0.0,					name = _('ANTI-SKID Switch - ANTI-SKID'),			category = {_('Left Auxiliary Console')}},
{	down = gear_commands.AntiSkidSw_EXT,	up = gear_commands.AntiSkidSw_EXT,	cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('ANTI-SKID Switch - PARKING BRAKE'),		category = {_('Left Auxiliary Console')}},
{	down = gear_commands.ParkingSw,			up = gear_commands.ParkingSw,		cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('ANTI-SKID Switch - Up'),					category = {_('Left Auxiliary Console')}},
{	down = gear_commands.AntiSkidSw,											cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,					name = _('ANTI-SKID Switch - Down'),				category = {_('Left Auxiliary Console')}},
{	down = gear_commands.DownLockRelBtn,	up = gear_commands.DownLockRelBtn,	cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('DN LOCK REL Button'),						category = {_('Left Auxiliary Console')}},
{	down = control_commands.StoresConfig,										cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('STORES CONFIG Switch - CAT I'),			category = {_('Left Auxiliary Console')}},
{	down = control_commands.StoresConfig,										cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('STORES CONFIG Switch - CAT III'),			category = {_('Left Auxiliary Console')}},
{	down = control_commands.StoresConfig_ITER,									cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('STORES CONFIG Switch - CAT I/CAT III'),	category = {_('Left Auxiliary Console')}},
{	down = gear_commands.HornSilencerBtn,	up = gear_commands.HornSilencerBtn,	cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('HORN SILENCER Button'),					category = {_('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi,										cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,					name = _('LANDING TAXI LIGHTS Switch - TAXI'),		category = {_('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi,										cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,					name = _('LANDING TAXI LIGHTS Switch - OFF'),		category = {_('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi,										cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,					name = _('LANDING TAXI LIGHTS Switch - LANDING'),	category = {_('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi_ITER,									cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,					name = _('LANDING TAXI LIGHTS Switch - Up'),		category = {_('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi_ITER,									cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,					name = _('LANDING TAXI LIGHTS Switch - Down'),		category = {_('Left Auxiliary Console')}},

-- CMDS Control Panel
{	down = cmds_commands.RwrSrc,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('RWR Source Switch - ON'),						category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.RwrSrc,		cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('RWR Source Switch - OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.RwrSrc_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('RWR Source Switch - ON/OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.JmrSrc,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('JMR Source Switch - ON'),						category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.JmrSrc,		cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('JMR Source Switch - OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.JmrSrc_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('JMR Source Switch - ON/OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.MwsSrc,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('MWS Source Switch - ON'),						category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.MwsSrc,		cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('MWS Source Switch - OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.MwsSrc_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('MWS Source Switch - ON/OFF'),					category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O1Exp,			cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('O1 Expendable Category Switch - ON'),			category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O1Exp,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('O1 Expendable Category Switch - OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O1Exp_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('O1 Expendable Category Switch - ON/OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O2Exp,			cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('O2 Expendable Category Switch - ON'),			category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O2Exp,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('O2 Expendable Category Switch - OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.O2Exp_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('O2 Expendable Category Switch - ON/OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.ChExp,			cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('CH Expendable Category Switch - ON'),			category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.ChExp,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('CH Expendable Category Switch - OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.ChExp_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('CH Expendable Category Switch - ON/OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.FlExp,			cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('FL Expendable Category Switch - ON'),			category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.FlExp,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('FL Expendable Category Switch - OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.FlExp_ITER,	cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('FL Expendable Category Switch - ON/OFF'),		category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Jett,			cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('JETT Switch - JETT'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Jett,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('JETT Switch - OFF'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Jett_ITER,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('JETT Switch - JETT/OFF'),						category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('PROGRAM Knob - BIT'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm,			cockpit_device_id = devices.CMDS,	value_down =  0.1,	name = _('PROGRAM Knob - 1'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm,			cockpit_device_id = devices.CMDS,	value_down =  0.2,	name = _('PROGRAM Knob - 2'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm,			cockpit_device_id = devices.CMDS,	value_down =  0.3,	name = _('PROGRAM Knob - 3'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm,			cockpit_device_id = devices.CMDS,	value_down =  0.4,	name = _('PROGRAM Knob - 4'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm_ITER,		cockpit_device_id = devices.CMDS,	value_down = -1.0,	name = _('PROGRAM Knob - CCW'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Prgm_ITER,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('PROGRAM Knob - CW'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.0,	name = _('MODE Knob - OFF'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.1,	name = _('MODE Knob - STBY'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.2,	name = _('MODE Knob - MAN'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.3,	name = _('MODE Knob - SEMI'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.4,	name = _('MODE Knob - AUTO'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode,			cockpit_device_id = devices.CMDS,	value_down =  0.5,	name = _('MODE Knob - BYP'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode_ITER,		cockpit_device_id = devices.CMDS,	value_down = -1.0,	name = _('MODE Knob - CCW'),							category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},
{	down = cmds_commands.Mode_ITER,		cockpit_device_id = devices.CMDS,	value_down =  1.0,	name = _('MODE Knob - CW'),								category = {_('Left Auxiliary Console'), _('CMDS Control Panel')}},

-- HMCS Control Panel
{	pressed = hmcs_commands.IntKnob_ITER,	cockpit_device_id = devices.HMCS,	value_pressed = -0.3,	name = _('HMCS SYMBOLOGY INT Knob - CCW/Decrease'),	category = {_('Left Auxiliary Console')}},
{	pressed = hmcs_commands.IntKnob_ITER,	cockpit_device_id = devices.HMCS,	value_pressed =  0.3,	name = _('HMCS SYMBOLOGY INT Knob - CW/Increase'),	category = {_('Left Auxiliary Console')}},

-- THREAT WARNING AUX Panel
{	pressed = rwr_commands.BrtKnob_ITER,						cockpit_device_id = devices.RWR,	value_pressed = -0.3,				name = _('RWR Indicator Control DIM Knob - CCW/Decrease'),				category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	pressed = rwr_commands.BrtKnob_ITER,						cockpit_device_id = devices.RWR,	value_pressed =  0.3,				name = _('RWR Indicator Control DIM Knob - CW/Increase'),				category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.Power,									cockpit_device_id = devices.RWR,	value_down =  1.0,					name = _('RWR Indicator Control POWER Button - Depressed'),				category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.Power,									cockpit_device_id = devices.RWR,	value_down =  0.0,					name = _('RWR Indicator Control POWER Button - Released'),				category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.Power_ITER,								cockpit_device_id = devices.RWR,	value_down =  1.0,					name = _('RWR Indicator Control POWER Button - Depressed/Released'),	category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.Search,		up = rwr_commands.Search,	cockpit_device_id = devices.RWR,	value_down =  1.0,	value_up = 0.0,	name = _('RWR Indicator Control SEARCH Button'),						category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.ActPwr,		up = rwr_commands.ActPwr,	cockpit_device_id = devices.RWR,	value_down =  1.0,	value_up = 0.0,	name = _('RWR Indicator Control ACT/PWR Button'),						category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	down = rwr_commands.Altitude,	up = rwr_commands.Altitude,	cockpit_device_id = devices.RWR,	value_down =  1.0,	value_up = 0.0,	name = _('RWR Indicator Control ALTITUDE Button'),						category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},

-- ALT GEAR Handle
-- TODO:


---------------------------------------------
-- Right Console ----------------------------
---------------------------------------------

-- SNSR PWR Control Panel
{	down = sms_commands.LeftHDPT,		cockpit_device_id = devices.SMS,	value_down =  0.0,	name = _('LEFT HDPT Switch - OFF'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = sms_commands.LeftHDPT,		cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('LEFT HDPT Switch - ON'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = sms_commands.LeftHDPT_ITER,	cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('LEFT HDPT Switch - ON/OFF'),		category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = sms_commands.RightHDPT,		cockpit_device_id = devices.SMS,	value_down =  0.0,	name = _('RIGHT HDPT Switch - OFF'),		category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = sms_commands.RightHDPT,		cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('RIGHT HDPT Switch - ON'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = sms_commands.RightHDPT_ITER,	cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('RIGHT HDPT Switch - ON/OFF'),		category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = fcr_commands.PwrSw,			cockpit_device_id = devices.FCR,	value_down =  0.0,	name = _('FCR Switch - OFF'),				category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = fcr_commands.PwrSw,			cockpit_device_id = devices.FCR,	value_down =  1.0,	name = _('FCR Switch - FCR'),				category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = fcr_commands.PwrSw_ITER,		cockpit_device_id = devices.FCR,	value_down =  1.0,	name = _('FCR Switch - FCR/OFF'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw,			cockpit_device_id = devices.RALT,	value_down = -1.0,	name = _('RDR ALT Switch - OFF'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw,			cockpit_device_id = devices.RALT,	value_down =  0.0,	name = _('RDR ALT Switch - STBY'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw,			cockpit_device_id = devices.RALT,	value_down =  1.0,	name = _('RDR ALT Switch - RDR ALT'),		category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw_ITER,	cockpit_device_id = devices.RALT,	value_down =  1.0,	name = _('RDR ALT Switch - Up'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw_ITER,	cockpit_device_id = devices.RALT,	value_down = -1.0,	name = _('RDR ALT Switch - Down'),			category = {_('Right Console'), _('SNSR PWR Control Panel')}},

-- HUD Control Panel
{	down = mmc_commands.VvVah,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Scales Switch - OFF'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.VvVah,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Scales Switch - VAH'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.VvVah,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Scales Switch - VV/VAH'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.VvVah_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Scales Switch - Up'),						category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.VvVah_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Scales Switch - Down'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Flightpath Marker Switch - OFF'),			category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Flightpath Marker Switch - FPM'),			category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Flightpath Marker Switch - ATT/FPM'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Flightpath Marker Switch - Up'),			category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Flightpath Marker Switch - Down'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD DED/PFLD Data Switch - OFF'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData,		cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD DED/PFLD Data Switch - PFL'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD DED/PFLD Data Switch - DED'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData_EXT,	cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD DED/PFLD Data Switch - Up'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData_EXT,	cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD DED/PFLD Data Switch - Down'),			category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Depressible Reticle Switch - OFF'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet,		cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Depressible Reticle Switch - PRI'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Depressible Reticle Switch - STBY'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet_EXT,	cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Depressible Reticle Switch - Up'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet_EXT,	cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Depressible Reticle Switch - Down'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Velocity Switch - GND SPD'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Velocity Switch - TAS'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Velocity Switch - CAS'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Velocity Switch - Up'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Velocity Switch - Down'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Altitude Switch - AUTO'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Altitude Switch - BARO'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Altitude Switch - RADAR'),				category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Altitude Switch - Up'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Altitude Switch - Down'),					category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Brightness Control Switch - NIGHT'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD Brightness Control Switch - AUTO BRT'),	category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Brightness Control Switch - DAY'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD Brightness Control Switch - Up'),			category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD Brightness Control Switch - Down'),		category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test,			cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD TEST Switch - OFF'),						category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('HUD TEST Switch - ON'),						category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD TEST Switch - STEP'),						category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test_EXT,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('HUD TEST Switch - Up'),						category = {_('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test_EXT,		cockpit_device_id = devices.MMC,	value_down = -1.0,	name = _('HUD TEST Switch - Down'),						category = {_('Right Console'), _('HUD Control Panel')}},

-- Interior LIGHTING Control Panel
{	pressed = cptlights_commands.Consoles_EXT,													cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,					name = _('PRIMARY CONSOLES BRT Knob - CCW/Decrease'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.Consoles_EXT,													cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,					name = _('PRIMARY CONSOLES BRT Knob - CW/Increase'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.IntsPnl_EXT,													cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,					name = _('PRIMARY INST PNL BRT Knob - CCW/Decrease'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.IntsPnl_EXT,													cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,					name = _('PRIMARY INST PNL BRT Knob - CW/Increase'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.DataEntryDisplay_EXT,											cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,					name = _('PRIMARY DATA ENTRY DISPLAY BRT Knob - CCW/Decrease'),		category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.DataEntryDisplay_EXT,											cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,					name = _('PRIMARY DATA ENTRY DISPLAY BRT Knob - CW/Increase'),		category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.ConsolesFlood_EXT,												cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,					name = _('FLOOD CONSOLES BRT Knob - CCW/Decrease'),					category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.ConsolesFlood_EXT,												cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,					name = _('FLOOD CONSOLES BRT Knob - CW/Increase'),					category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.InstPnlFlood_EXT,												cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed = -0.3,					name = _('FLOOD INST PNL BRT Knob - CCW/Decrease'),					category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	pressed = cptlights_commands.InstPnlFlood_EXT,												cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_pressed =  0.3,					name = _('FLOOD INST PNL BRT Knob - CW/Increase'),					category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	down = cptlights_commands.MalIndLtsDim,				up = cptlights_commands.MalIndLtsDim,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down = -1.0,		value_up = 0.0,	name = _('MAL & IND LTS Switch - DIM/Center'),						category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	down = cptlights_commands.MalIndLtsBrt,				up = cptlights_commands.MalIndLtsBrt,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down =  1.0,		value_up = 0.0,	name = _('MAL & IND LTS Switch - BRT/Center'),						category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},

-- NUCLEAR CONSENT Switch Cover (not used)
-- NUCLEAR CONSENT Switch (not used)
-- PLAIN Cipher Switch
{	down = intercom_commands.PlainCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('PLAIN Cipher Switch - CRAD 2'),			category = {_('Right Console')}},
{	down = intercom_commands.PlainCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('PLAIN Cipher Switch - PLAIN'),			category = {_('Right Console')}},
{	down = intercom_commands.PlainCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('PLAIN Cipher Switch - CRAD 1'),			category = {_('Right Console')}},
{	down = intercom_commands.PlainCipherSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('PLAIN Cipher Switch - Up'),				category = {_('Right Console')}},
{	down = intercom_commands.PlainCipherSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('PLAIN Cipher Switch - Down'),				category = {_('Right Console')}},

-- AIR COND Control Panel
{	pressed = ecs_commands.TempKnob_ITER,		cockpit_device_id = devices.ECS_INTERFACE,	value_pressed = -0.1,	name = _('TEMP Knob - CCW'),			category = {_('Right Console'), _('AIR COND Control Panel')}},
{	pressed = ecs_commands.TempKnob_ITER,		cockpit_device_id = devices.ECS_INTERFACE,	value_pressed =  0.1,	name = _('TEMP Knob - CW'),				category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob,			cockpit_device_id = devices.ECS_INTERFACE,	value_down =  0.0,		name = _('AIR SOURCE Knob - OFF'),		category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob,			cockpit_device_id = devices.ECS_INTERFACE,	value_down =  0.1,		name = _('AIR SOURCE Knob - NORM'),		category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob,			cockpit_device_id = devices.ECS_INTERFACE,	value_down =  0.2,		name = _('AIR SOURCE Knob - DUMP'),		category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob,			cockpit_device_id = devices.ECS_INTERFACE,	value_down =  0.3,		name = _('AIR SOURCE Knob - RAM'),		category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob_ITER,		cockpit_device_id = devices.ECS_INTERFACE,	value_down =  1.0,		name = _('AIR SOURCE Knob - CW'),		category = {_('Right Console'), _('AIR COND Control Panel')}},
{	down = ecs_commands.AirSourceKnob_ITER,		cockpit_device_id = devices.ECS_INTERFACE,	value_down = -1.0,		name = _('AIR SOURCE Knob - CCW'),		category = {_('Right Console'), _('AIR COND Control Panel')}},

-- OXYGEN REGULATOR Panel
{	down = oxygen_commands.SupplyLever,																cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  0.0,					name = _('Supply Lever - OFF'),					category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.SupplyLever,																cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  0.5,					name = _('Supply Lever - ON'),					category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.SupplyLever,																cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Supply Lever - PBG'),					category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.SupplyLever_ITER,														cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Supply Lever - Up'),					category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.SupplyLever_ITER,														cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1.0,					name = _('Supply Lever - Down'),				category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.DiluterLever,															cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  0.0,					name = _('Diluter Lever - NORM'),				category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.DiluterLever,															cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Diluter Lever - 100 percent'),		category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.DiluterLever_ITER,														cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Diluter Lever - 100 percent/NORM'),	category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever_ITER,		up = oxygen_commands.EmergencyLever_ITER,		cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Emergency Lever - TEST MASK'),		category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever_ITER,														cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  0.0,					name = _('Emergency Lever - NORMAL'),			category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever_ITER,														cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Emergency Lever - EMERGENCY'),		category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever,															cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,					name = _('Emergency Lever - Up'),				category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLeverTestMask,	up = oxygen_commands.EmergencyLeverTestMask,	cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Emergency Lever - Down'),				category = {_('Right Console'), _('OXYGEN REGULATOR Panel')}},

-- Secure Voice Control Panel
{	down = ky58_commands.KY58_ModeSw_ITER,											cockpit_device_id = devices.KY58,	value_down = -1.0,					name = _('KY-58 MODE Knob - CCW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_ModeSw_ITER,											cockpit_device_id = devices.KY58,	value_down =  1.0,					name = _('KY-58 MODE Knob - CW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,												cockpit_device_id = devices.KY58,	value_down =  0.0,					name = _('KY-58 MODE Knob - P'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,												cockpit_device_id = devices.KY58,	value_down =  0.1,					name = _('KY-58 MODE Knob - C'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,												cockpit_device_id = devices.KY58,	value_down =  0.2,					name = _('KY-58 MODE Knob - LD'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_ModeSw,												cockpit_device_id = devices.KY58,	value_down =  0.3,					name = _('KY-58 MODE Knob - RV'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	pressed = ky58_commands.KY58_Volume_ITER,										cockpit_device_id = devices.KY58,	value_pressed = -0.5,				name = _('KY-58 VOLUME Knob - CCW/Decrease'),	category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	pressed = ky58_commands.KY58_Volume_ITER,										cockpit_device_id = devices.KY58,	value_pressed =  0.5,				name = _('KY-58 VOLUME Knob - CW/Increase'),	category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_PowerSw_ITER,											cockpit_device_id = devices.KY58,	value_down = -1.0,					name = _('KY-58 Power Knob - CCW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_PowerSw_ITER,											cockpit_device_id = devices.KY58,	value_down =  1.0,					name = _('KY-58 Power Knob - CW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,												cockpit_device_id = devices.KY58,	value_down =  0.0,					name = _('KY-58 Power Knob - OFF'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,												cockpit_device_id = devices.KY58,	value_down =  0.5,					name = _('KY-58 Power Knob - ON'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_PowerSw,												cockpit_device_id = devices.KY58,	value_down =  1.0,					name = _('KY-58 Power Knob - TD'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw_ITER,											cockpit_device_id = devices.KY58,	value_down = -1.0,					name = _('KY-58 FILL Knob - CCW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw_ITER,											cockpit_device_id = devices.KY58,	value_down =  1.0,					name = _('KY-58 FILL Knob - CW'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.1,					name = _('KY-58 FILL Knob - 1'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.2,					name = _('KY-58 FILL Knob - 2'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.3,					name = _('KY-58 FILL Knob - 3'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.4,					name = _('KY-58 FILL Knob - 4'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.5,					name = _('KY-58 FILL Knob - 5'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.6,					name = _('KY-58 FILL Knob - 6'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},
--{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.0,					name = _('KY-58 FILL Knob - Z 1-5'),			category = {_('Right Console'), _('Secure Voice Control Panel')}},
--{	down = ky58_commands.KY58_FillSw,												cockpit_device_id = devices.KY58,	value_down =  0.7,					name = _('KY-58 FILL Knob - Z ALL'),			category = {_('Right Console'), _('Secure Voice Control Panel')}},
--{	down = ky58_commands.KY58_FillSw_Pull,	up = ky58_commands.KY58_FillSw_Pull,	cockpit_device_id = devices.KY58,	value_down =  1.0,	value_up = 0.0,	name = _('KY-58 FILL Knob - PULL'),				category = {_('Right Console'), _('Secure Voice Control Panel')}},

-- AVIONICS POWER Panel
{	down = mmc_commands.MmcPwr,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('MMC Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mmc_commands.MmcPwr,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('MMC Switch - MMC'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mmc_commands.MmcPwr_ITER,	cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('MMC Switch - MMC/OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = sms_commands.StStaSw,		cockpit_device_id = devices.SMS,	value_down =  0.0,	name = _('ST STA Switch - OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = sms_commands.StStaSw,		cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('ST STA Switch - ST STA'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = sms_commands.StSta_ITER,		cockpit_device_id = devices.SMS,	value_down =  1.0,	name = _('ST STA Switch - ST STA/OFF'),		category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mmc_commands.MFD,			cockpit_device_id = devices.MMC,	value_down =  0.0,	name = _('MFD Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mmc_commands.MFD,			cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('MFD Switch - MFD'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mmc_commands.MFD_ITER,		cockpit_device_id = devices.MMC,	value_down =  1.0,	name = _('MFD Switch - MFD/OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ufc_commands.UFC_Sw,			cockpit_device_id = devices.UFC,	value_down =  0.0,	name = _('UFC Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ufc_commands.UFC_Sw,			cockpit_device_id = devices.UFC,	value_down =  1.0,	name = _('UFC Switch - UFC'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ufc_commands.UFC_Sw_ITER,	cockpit_device_id = devices.UFC,	value_down =  1.0,	name = _('UFC Switch - UFC/OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = gps_commands.PwrSw,			cockpit_device_id = devices.GPS,	value_down =  0.0,	name = _('GPS Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = gps_commands.PwrSw,			cockpit_device_id = devices.GPS,	value_down =  1.0,	name = _('GPS Switch - GPS'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = gps_commands.PwrSw_ITER,		cockpit_device_id = devices.GPS,	value_down =  1.0,	name = _('GPS Switch - GPS/OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = map_commands.PwrSw,			cockpit_device_id = devices.MAP,	value_down =  0.0,	name = _('MAP Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = map_commands.PwrSw,			cockpit_device_id = devices.MAP,	value_down =  1.0,	name = _('MAP Switch - MAP'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = map_commands.PwrSw_ITER,		cockpit_device_id = devices.MAP,	value_down =  1.0,	name = _('MAP Switch - MAP/OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = idm_commands.PwrSw,			cockpit_device_id = devices.IDM,	value_down =  0.0,	name = _('DL Switch - OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = idm_commands.PwrSw,			cockpit_device_id = devices.IDM,	value_down =  1.0,	name = _('DL Switch - DL'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = idm_commands.PwrSw_ITER,		cockpit_device_id = devices.IDM,	value_down =  1.0,	name = _('DL Switch - DL/OFF'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.0,	name = _('INS Knob - OFF'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.1,	name = _('INS Knob - STOR HDG (ALIGN)'),	category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.2,	name = _('INS Knob - NORM (ALIGN)'),		category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.3,	name = _('INS Knob - NAV'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.4,	name = _('INS Knob - CAL'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.5,	name = _('INS Knob - INFLT ALIGN'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob,		cockpit_device_id = devices.INS,	value_down =  0.6,	name = _('INS Knob - ATT'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob_ITER,	cockpit_device_id = devices.INS,	value_down =  1.0,	name = _('INS Knob - CW'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = ins_commands.ModeKnob_ITER,	cockpit_device_id = devices.INS,	value_down = -1.0,	name = _('INS Knob - CCW'),					category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mids_commands.PwrSw,			cockpit_device_id = devices.MIDS,	value_down =  0.0,	name = _('MIDS LVT Knob - ZERO'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mids_commands.PwrSw,			cockpit_device_id = devices.MIDS,	value_down =  0.1,	name = _('MIDS LVT Knob - OFF'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mids_commands.PwrSw,			cockpit_device_id = devices.MIDS,	value_down =  0.2,	name = _('MIDS LVT Knob - ON'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mids_commands.PwrSw_ITER,	cockpit_device_id = devices.MIDS,	value_down =  1.0,	name = _('MIDS LVT Knob - CW'),				category = {_('Right Console'), _('AVIONICS POWER Panel')}},
{	down = mids_commands.PwrSw_ITER,	cockpit_device_id = devices.MIDS,	value_down = -1.0,	name = _('MIDS LVT Knob - CCW'),			category = {_('Right Console'), _('AVIONICS POWER Panel')}},

-- ENGINE ANTI-ICE Switch
{	down = engine_commands.EngAntiIceSw,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('Engine ANTI ICE Switch - OFF'),		category = {_('Right Console')}},
{	down = engine_commands.EngAntiIceSw,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,	name = _('Engine ANTI ICE Switch - AUTO'),		category = {_('Right Console')}},
{	down = engine_commands.EngAntiIceSw,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('Engine ANTI ICE Switch - ON'),		category = {_('Right Console')}},
{	down = engine_commands.EngAntiIceSw_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('Engine ANTI ICE Switch - Up'),		category = {_('Right Console')}},
{	down = engine_commands.EngAntiIceSw_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('Engine ANTI ICE Switch - Down'),		category = {_('Right Console')}},

-- ANT SEL Panel
{	down = intercom_commands.IFF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('IFF ANT SEL Switch - LOWER'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.IFF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('IFF ANT SEL Switch - NORM'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.IFF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('IFF ANT SEL Switch - UPPER'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.IFF_AntSelSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('IFF ANT SEL Switch - Up'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.IFF_AntSelSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('IFF ANT SEL Switch - Down'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('UHF ANT SEL Switch - LOWER'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('UHF ANT SEL Switch - NORM'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('UHF ANT SEL Switch - UPPER'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('UHF ANT SEL Switch - Up'),		category = {_('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('UHF ANT SEL Switch - Down'),		category = {_('Right Console'), _('ANT SEL Panel')}},

-- VOICE MESSAGE Switch
{	down = intercom_commands.VMS_InhibitSw,			cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('Voice Message Inhibit Switch - INHIBIT'),					category = {_('Right Console')}},
{	down = intercom_commands.VMS_InhibitSw,			cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('Voice Message Inhibit Switch - VOICE MESSAGE'),			category = {_('Right Console')}},
{	down = intercom_commands.VMS_InhibitSw_ITER,	cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('Voice Message Inhibit Switch - VOICE MESSAGE/INHIBIT'),	category = {_('Right Console')}},

-- ZEROIZE Switch
{	down = intercom_commands.ZeroizeSwCvr,			cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('ZEROIZE Switch Cover - CLOSE'),							category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSwCvr,			cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('ZEROIZE Switch Cover - OPEN'),							category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSwCvr_ITER,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('ZEROIZE Switch Cover - OPEN/CLOSE'),						category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSw,				cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('ZEROIZE Switch - DATA'),									category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSw,				cockpit_device_id = devices.INTERCOM,	value_down =  0.0,	name = _('ZEROIZE Switch - OFF'),									category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSw,				cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('ZEROIZE Switch - OFP'),									category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSw_ITER,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,	name = _('ZEROIZE Switch - Up'),									category = {_('Right Console')}},
{	down = intercom_commands.ZeroizeSw_ITER,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,	name = _('ZEROIZE Switch - Down'),									category = {_('Right Console')}},


---------------------------------------------
-- Left Console -----------------------------
---------------------------------------------

-- UHF Backup Control Panel
{	down = iCommandPlaneUHFPresetChannelSelectorDec,																		name = _('UHF CHAN Knob - CCW/Decrease'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFPresetChannelSelectorInc,																		name = _('UHF CHAN Knob - CW/Increase'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FreqSelector100Mhz_ITER,		cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 1,		name = _('UHF A-3-2 Knob - CW/Increase'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FreqSelector100Mhz_ITER,		cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = -1,	name = _('UHF A-3-2 Knob - CCW/Decrease'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF100MhzSelector2,																					name = _('UHF A-3-2 Knob - 2'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF100MhzSelector3,																					name = _('UHF A-3-2 Knob - 3'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF100MhzSelectorA,																					name = _('UHF A-3-2 Knob - A'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF10MhzSelectorDec,																				name = _('UHF 10Mhz Manual Frequency Knob - Decrease'),		category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF10MhzSelectorInc,																				name = _('UHF 10Mhz Manual Frequency Knob - Increase'),		category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF1MhzSelectorDec,																					name = _('UHF 1Mhz Manual Frequency Knob - Decrease'),		category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF1MhzSelectorInc,																					name = _('UHF 1Mhz Manual Frequency Knob - Increase'),		category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF01MhzSelectorDec,																				name = _('UHF 0.1Mhz Manual Frequency Knob - Decrease'),	category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF01MhzSelectorInc,																				name = _('UHF 0.1Mhz Manual Frequency Knob - Increase'),	category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF0025MhzSelectorDec,																				name = _('UHF 0.025Mhz Manual Frequency Knob - Decrease'),	category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHF0025MhzSelectorInc,																				name = _('UHF 0.025Mhz Manual Frequency Knob - Increase'),	category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	pressed = iCommandPlaneUHFVolumeDec,																					name = _('UHF VOL Knob - CCW/Decrease'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	pressed = iCommandPlaneUHFVolumeInc,																					name = _('UHF VOL Knob - CW/Increase'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FunctionKnob_ITER,				cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 1,		name = _('UHF Function Knob - CW'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FunctionKnob_ITER,				cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = -1,	name = _('UHF Function Knob - CCW'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFunctionDialOFF,																					name = _('UHF Function Knob - OFF'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFunctionDialMAIN,																				name = _('UHF Function Knob - MAIN'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFunctionDialBOTH,																				name = _('UHF Function Knob - BOTH'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFunctionDialADF,																					name = _('UHF Function Knob - ADF'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FreqModeKnob_ITER,				cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 1,		name = _('UHF Mode Knob - CW'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.FreqModeKnob_ITER,				cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = -1,	name = _('UHF Mode Knob - CCW'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFreqModeDialMNL,																					name = _('UHF Mode Knob - MANUAL'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFreqModeDialPRESET,																				name = _('UHF Mode Knob - PRESET'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFFreqModeDialGRD,																					name = _('UHF Mode Knob - GUARD'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFSquelch,																							name = _('UHF SQUELCH Switch - ON/OFF'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.SquelchSw,						cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 1,		name = _('UHF SQUELCH Switch - ON'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.SquelchSw,						cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 0,		name = _('UHF SQUELCH Switch - OFF'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFPanelCover,																						name = _('UHF Access Door - OPEN/CLOSE'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.AccessDoor,						cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 1,		name = _('UHF Access Door - OPEN'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = uhf_commands.AccessDoor,						cockpit_device_id = devices.UHF_CONTROL_PANEL,	value_down = 0,		name = _('UHF Access Door - CLOSE'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFTTone,		up = iCommandPlaneUHFTTone,						value_down = 1,	value_up = 0,		name = _('UHF T-TONE Switch - TONE/OFF'),					category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFLoad,		up = iCommandPlaneUHFLoad,						value_down = 1,	value_up = 0,		name = _('UHF LOAD Button'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFTestDisplay,	up = iCommandPlaneUHFTestDisplay,				value_down = 1,	value_up = 0,		name = _('UHF TEST DISPLAY Button'),						category = {_('Left Console'), _('UHF Backup Control Panel')}},
{	down = iCommandPlaneUHFStatus,		up = iCommandPlaneUHFStatus,					value_down = 1,	value_up = 0,		name = _('UHF STATUS Button'),								category = {_('Left Console'), _('UHF Backup Control Panel')}},

-- AUDIO 1 Control Panel
{	down = intercom_commands.COM1_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  0.0,		name = _('COMM 1 (UHF) Mode Knob - OFF'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM1_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  0.5,		name = _('COMM 1 (UHF) Mode Knob - SQL'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM1_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('COMM 1 (UHF) Mode Knob - GD'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM1_ModeKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,		name = _('COMM 1 (UHF) Mode Knob - CCW'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM1_ModeKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('COMM 1 (UHF) Mode Knob - CW'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM2_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  0.0,		name = _('COMM 2 (VHF) Mode Knob - OFF'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM2_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  0.5,		name = _('COMM 2 (VHF) Mode Knob - SQL'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM2_ModeKnob,				cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('COMM 2 (VHF) Mode Knob - GD'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM2_ModeKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,		name = _('COMM 2 (VHF) Mode Knob - CCW'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	down = intercom_commands.COM2_ModeKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('COMM 2 (VHF) Mode Knob - CW'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.COM1_PowerKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('COMM 1 (UHF) Power Knob - CCW/Decrease'),		category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.COM1_PowerKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('COMM 1 (UHF) Power Knob - CW/Increase'),		category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.COM2_PowerKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('COMM 2 (VHF) Power Knob - CCW/Decrease'),		category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.COM2_PowerKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('COMM 2 (VHF) Power Knob - CW/Increase'),		category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.SecureVoiceKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('SECURE VOICE Knob - CCW/Decrease'),			category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.SecureVoiceKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('SECURE VOICE Knob - CW/Increase'),			category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.MSL_ToneKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('MSL Tone Knob - CCW/Decrease'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.MSL_ToneKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('MSL Tone Knob - CW/Increase'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.TF_ToneKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('TF Tone Knob - CCW/Decrease'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.TF_ToneKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('TF Tone Knob - CW/Increase'),					category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.THREAT_ToneKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('THREAT Tone Knob - CCW/Decrease'),			category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	pressed = intercom_commands.THREAT_ToneKnob_ITER,	cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('THREAT Tone Knob - CW/Increase'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},

-- AUDIO 2 Control Panel
{	pressed = intercom_commands.INTERCOM_Knob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('INTERCOM Knob - CCW/Decrease'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	pressed = intercom_commands.INTERCOM_Knob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('INTERCOM Knob - CW/Increase'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	pressed = intercom_commands.TACAN_Knob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('TACAN Knob - CCW/Decrease'),					category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	pressed = intercom_commands.TACAN_Knob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('TACAN Knob - CW/Increase'),					category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	pressed = intercom_commands.ILS_PowerKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed = -0.3,	name = _('ILS Power Knob - CCW/Decrease'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	pressed = intercom_commands.ILS_PowerKnob_ITER,		cockpit_device_id = devices.INTERCOM,	value_pressed =  0.3,	name = _('ILS Power Knob - CW/Increase'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down = -1.0,		name = _('HOT MIC CIPHER Switch - CIPHER'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down =  0.0,		name = _('HOT MIC CIPHER Switch - OFF'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw,			cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('HOT MIC CIPHER Switch - HOT MIC'),			category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw_ITER,		cockpit_device_id = devices.INTERCOM,	value_down = -1.0,		name = _('HOT MIC CIPHER Switch - Down'),				category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw_ITER,		cockpit_device_id = devices.INTERCOM,	value_down =  1.0,		name = _('HOT MIC CIPHER Switch - Up'),					category = {_('Left Console'), _('AUDIO 2 Control Panel')}},

-- ECM Pod Control Panel
-- TODO:

-- AVTR Control Panel
-- TODO:

-- EXT LIGHTING Control Panel
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,		name = _('ANTI-COLL Knob - OFF'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.1,		name = _('ANTI-COLL Knob - 1'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.2,		name = _('ANTI-COLL Knob - 2'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.3,		name = _('ANTI-COLL Knob - 3'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.4,		name = _('ANTI-COLL Knob - 4'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.5,		name = _('ANTI-COLL Knob - A'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.6,		name = _('ANTI-COLL Knob - B'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.7,		name = _('ANTI-COLL Knob - C'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('ANTI-COLL Knob - CCW'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.AntiCollKn_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('ANTI-COLL Knob - CW'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFlash,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,		name = _('FLASH STEADY Switch - STEADY'),			category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFlash,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('FLASH STEADY Switch - FLASH'),			category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFlash_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('FLASH STEADY Switch - FLASH/STEADY'),		category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('WING/TAIL Switch - DIM'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,		name = _('WING/TAIL Switch - OFF'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('WING/TAIL Switch - BRT'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('WING/TAIL Switch - Down'),				category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('WING/TAIL Switch - Up'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('FUSELAGE Switch - DIM'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,		name = _('FUSELAGE Switch - OFF'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('FUSELAGE Switch - BRT'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus_ITER,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('FUSELAGE Switch - Down'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus_ITER,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('FUSELAGE Switch - Up'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	pressed = extlights_commands.FormKn_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_pressed = -0.3,	name = _('FORM Knob - CCW/Decrease'),				category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	pressed = extlights_commands.FormKn_ITER,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_pressed =  0.3,	name = _('FORM Knob - CW/Increase'),				category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.0,		name = _('MASTER Switch - OFF'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.1,		name = _('MASTER Switch - ALL'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.2,		name = _('MASTER Switch - A-C'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.3,		name = _('MASTER Switch - FORM'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master,				cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  0.4,		name = _('MASTER Switch - NORM'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master_ITER,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,		name = _('MASTER Switch - CCW'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.Master_ITER,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,		name = _('MASTER Switch - CW'),						category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	pressed = extlights_commands.AerialRefuel_ITER,	cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_pressed = -0.3,	name = _('AERIAL REFUELING Knob - CCW/Decrease'),	category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	pressed = extlights_commands.AerialRefuel_ITER,	cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_pressed =  0.3,	name = _('AERIAL REFUELING Knob - CW/Increase'),	category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},

-- MANUAL TRIM Panel
{	pressed = control_commands.RollTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed =  0.3,	name = _('ROLL TRIM Wheel - L WING DN'),		category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	pressed = control_commands.RollTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed = -0.3,	name = _('ROLL TRIM Wheel - R WING DN'),		category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	pressed = control_commands.PitchTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed =  0.3,	name = _('PITCH TRIM Wheel - NOSE UP'),			category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	pressed = control_commands.PitchTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed = -0.3,	name = _('PITCH TRIM Wheel - NOSE DN'),			category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	pressed = control_commands.YawTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed = -0.3,	name = _('YAW TRIM Knob - L/CCW'),				category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	pressed = control_commands.YawTrim_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_pressed =  0.3,	name = _('YAW TRIM Knob - R/CW'),				category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	down = control_commands.TrimApDisc,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,		name = _('TRIM/AP DISC Switch - DISC'),			category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	down = control_commands.TrimApDisc,			cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,		name = _('TRIM/AP DISC Switch - NORM'),			category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	down = control_commands.TrimApDisc_ITER,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,		name = _('TRIM/AP DISC Switch - DISC/NORM'),	category = {_('Left Console'), _('MANUAL TRIM Panel')}},

-- ANTI G TEST Button
-- TODO:

-- TEST Switch Panel
{	down = engine_commands.FireOheatTestBtn,	up = engine_commands.FireOheatTestBtn,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('FIRE & OHEAT DETECT Test Button'),	category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = oxygen_commands.ObogsBitSw,			up = oxygen_commands.ObogsBitSw,		cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('OBOGS BIT Switch - BIT/OFF'),			category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = cptlights_commands.MalIndLtsTest,	up = cptlights_commands.MalIndLtsTest,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('MAL & IND LTS Test Button'),			category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.ProbeHeatSwTEST,		up = elec_commands.ProbeHeatSwTEST,		cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('PROBE HEAT Switch - TEST'),			category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.ProbeHeatSw,													cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,					name = _('PROBE HEAT Switch - OFF'),			category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.ProbeHeatSw,													cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,					name = _('PROBE HEAT Switch - PROBE HEAT'),		category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.ProbeHeatSw_ITER,		up = elec_commands.ProbeHeatSw_ITER,	cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('PROBE HEAT Switch - Down'),			category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.ProbeHeatSw_ITER,												cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,					name = _('PROBE HEAT Switch - Up'),				category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.EPU_GEN_TestSw,		up = elec_commands.EPU_GEN_TestSw,		cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('EPU/GEN Test Switch'),				category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.FlcsPwrTestSwMAINT,											cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,					name = _('FLCS PWR TEST Switch - MAINT'),		category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.FlcsPwrTestSwMAINT,											cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  0.0,					name = _('FLCS PWR TEST Switch - NORM'),		category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.FlcsPwrTestSwTEST,		up = elec_commands.FlcsPwrTestSwTEST,	cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('FLCS PWR TEST Switch - TEST'),		category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.FlcsPwrTestSw_ITER,											cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,					name = _('FLCS PWR TEST Switch - Down'),		category = {_('Left Console'), _('TEST Switch Panel')}},
{	down = elec_commands.FlcsPwrTestSw_ITER,	up = elec_commands.FlcsPwrTestSw_ITER,	cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('FLCS PWR TEST Switch - Up'),			category = {_('Left Console'), _('TEST Switch Panel')}},

-- DEFOG Lever
{	pressed = ecs_commands.DefogLever_ITER,	cockpit_device_id = devices.ECS_INTERFACE,	value_pressed = -0.3,	name = _('DEFOG Lever - Left/Decrease'),		category = {_('Left Console')}},
{	pressed = ecs_commands.DefogLever_ITER,	cockpit_device_id = devices.ECS_INTERFACE,	value_pressed =  0.3,	name = _('DEFOG Lever - Right/Increase'),		category = {_('Left Console')}},

-- FLT CONTROL Panel
{	down = control_commands.DigitalBackup,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('DIGITAL BACKUP Switch - OFF'),				category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.DigitalBackup,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('DIGITAL BACKUP Switch - BACKUP'),				category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.DigitalBackup_ITER,										cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('DIGITAL BACKUP Switch - OFF/BACKUP'),			category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.AltFlaps,												cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('ALT FLAPS Switch - NORM'),					category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.AltFlaps,												cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('ALT FLAPS Switch - EXTEND'),					category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.AltFlaps_ITER,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('ALT FLAPS Switch - NORM/EXTEND'),				category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.ManualTfFlyup,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('MANUAL TF FLYUP Switch - DISABLE'),			category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.ManualTfFlyup,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('MANUAL TF FLYUP Switch - ENABLE'),			category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.ManualTfFlyup_ITER,										cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('MANUAL TF FLYUP Switch - ENABLE/DISABLE'),	category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.LeFlaps,												cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  0.0,					name = _('LE FLAPS Switch - AUTO'),						category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.LeFlaps,												cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('LE FLAPS Switch - LOCK'),						category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.LeFlaps_ITER,											cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,					name = _('LE FLAPS Switch - AUTO/LOCK'),				category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.FlcsReset,			up = control_commands.FlcsReset,	cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('FLCS RESET Switch - OFF/RESET'),				category = {_('Left Console'), _('FLT CONTROL Panel')}},
{	down = control_commands.BitSw,				up = control_commands.BitSw,		cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('BIT Switch - OFF/BIT'),						category = {_('Left Console'), _('FLT CONTROL Panel')}},

-- Fuel Control Panel
{	down = fuel_commands.FuelMasterSwCvr,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	name = _('FUEL MASTER Switch Cover - CLOSE'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.FuelMasterSwCvr,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('FUEL MASTER Switch Cover - OPEN'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.FuelMasterSwCvr_ITER,	cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('FUEL MASTER Switch Cover - OPEN/CLOSE'),		category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.FuelMasterSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	name = _('FUEL MASTER Switch - MASTER'),				category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.FuelMasterSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('FUEL MASTER Switch - OFF'),					category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.FuelMasterSw_ITER,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('FUEL MASTER Switch - MASTER/OFF'),			category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.TankInertingSw,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	name = _('TANK INERTING Switch - OFF'),					category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.TankInertingSw,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('TANK INERTING Switch - TANK INERTING'),		category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.TankInertingSw_ITER,	cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('TANK INERTING Switch - TANK INERTING /OFF'),	category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	name = _('ENGINE FEED Knob - OFF'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.1,	name = _('ENGINE FEED Knob - NORM'),					category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.2,	name = _('ENGINE FEED Knob - AFT'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.3,	name = _('ENGINE FEED Knob - FWD'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw_ITER,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down = -1.0,	name = _('ENGINE FEED Knob - CCW'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.EngineFeedSw_ITER,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('ENGINE FEED Knob - CW'),						category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.AirRefuelSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  0.0,	name = _('AIR REFUEL Switch - CLOSE'),					category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.AirRefuelSw,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('AIR REFUEL Switch - OPEN'),					category = {_('Left Console'), _('Fuel Control Panel')}},
{	down = fuel_commands.AirRefuelSw_ITER,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down =  1.0,	name = _('AIR REFUEL Switch - OPEN/CLOSE'),				category = {_('Left Console'), _('Fuel Control Panel')}},

-- IFF Control Panel
{	down = iff_commands.MasterKnob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('IFF MASTER Knob - OFF'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.1,					name = _('IFF MASTER Knob - STBY'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.2,					name = _('IFF MASTER Knob - LOW'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.3,					name = _('IFF MASTER Knob - NORM'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.4,					name = _('IFF MASTER Knob - EMER'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob_ITER,											cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF MASTER Knob - CCW'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.MasterKnob_ITER,											cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF MASTER Knob - CW'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF M-4 CODE Switch - HOLD'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('IFF M-4 CODE Switch - A/B'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF M-4 CODE Switch - ZERO'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF M-4 CODE Switch - Down'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF M-4 CODE Switch - Up'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.CNI_Knob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('C & I Knob - BACKUP'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.CNI_Knob,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('C & I Knob - UFC'),										category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.CNI_Knob_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('C & I Knob - UFC/BACKUP'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF ENABLE Switch - M1/M3'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('IFF ENABLE Switch - OFF'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF ENABLE Switch - M3/MS'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF ENABLE Switch - Down'),								category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF ENABLE Switch - Up'),									category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF MODE 4 REPLY Switch - OUT'),							category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('IFF MODE 4 REPLY Switch - A'),							category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw,													cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF MODE 4 REPLY Switch - B'),							category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,					name = _('IFF MODE 4 REPLY Switch - Down'),							category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw_ITER,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF MODE 4 REPLY Switch - Up'),							category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4MonitorSw,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  0.0,					name = _('IFF MODE 4 MONITOR Switch - OUT'),						category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4MonitorSw,												cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF MODE 4 MONITOR Switch - AUDIO'),						category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4MonitorSw_ITER,											cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,					name = _('IFF MODE 4 MONITOR Switch - OUT/AUDIO'),					category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector1_Dec,	up = iff_commands.M1M3Selector1_Dec,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF MODE 1 Selector Lever (DIGIT 1) - Down/Decrease'),	category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector1_Inc,	up = iff_commands.M1M3Selector1_Inc,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF MODE 1 Selector Lever (DIGIT 1) - Up/Increase'),		category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector2_Dec,	up = iff_commands.M1M3Selector2_Dec,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF MODE 1 Selector Lever (DIGIT 2) - Down/Decrease'),	category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector2_Inc,	up = iff_commands.M1M3Selector2_Inc,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF MODE 1 Selector Lever (DIGIT 2) - Up/Increase'),		category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector3_Dec,	up = iff_commands.M1M3Selector3_Dec,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF MODE 3 Selector Lever (DIGIT 1) - Down/Decrease'),	category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector3_Inc,	up = iff_commands.M1M3Selector3_Inc,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF MODE 3 Selector Lever (DIGIT 1) - Up/Increase'),		category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector4_Dec,	up = iff_commands.M1M3Selector4_Dec,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF MODE 3 Selector Lever (DIGIT 2) - Down/Decrease'),	category = {_('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M1M3Selector4_Inc,	up = iff_commands.M1M3Selector4_Inc,	cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF MODE 3 Selector Lever (DIGIT 2) - Up/Increase'),		category = {_('Left Console'), _('IFF Control Panel')}},

-- CANOPY JETTISON T-Handle
{	down = cpt_commands.CanopyTHandle,													cockpit_device_id = devices.CPT_MECH,	value_down =  0.0,					name = _('CANOPY JETTISON T-Handle - STOW'),		category = {_('Left Console')}},
{	down = cpt_commands.CanopyTHandle,													cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('CANOPY JETTISON T-Handle - PULL'),		category = {_('Left Console')}},
{	down = cpt_commands.CanopyTHandle_ITER,												cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('CANOPY JETTISON T-Handle - PULL/STOW'),	category = {_('Left Console')}},
-- Canopy Handle
{	down = cpt_commands.CanopyHandle,													cockpit_device_id = devices.CPT_MECH,	value_down =  0.0,					name = _('Canopy Handle - UP'),						category = {_('Left Console')}},
{	down = cpt_commands.CanopyHandle,													cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('Canopy Handle - DOWN'),					category = {_('Left Console')}},
{	down = cpt_commands.CanopyHandle_ITER,												cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('Canopy Handle - DOWN/UP'),				category = {_('Left Console')}},
-- Canopy Switch
{	down = cpt_commands.CanopySwitchClose,		up = cpt_commands.CanopySwitchClose,	cockpit_device_id = devices.CPT_MECH,	value_down = -1.0,	value_up = 0.0,	name = _('Canopy Switch - CLOSE'),					category = {_('Left Console')}},
{	down = cpt_commands.CanopySwitchOpen,												cockpit_device_id = devices.CPT_MECH,	value_down =  0.0,					name = _('Canopy Switch - STOP'),					category = {_('Left Console')}},
{	down = cpt_commands.CanopySwitchOpen,												cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('Canopy Switch - OPEN'),					category = {_('Left Console')}},
{	down = cpt_commands.CanopySwitch_ITER,		up = cpt_commands.CanopySwitch_ITER,	cockpit_device_id = devices.CPT_MECH,	value_down = -1.0,	value_up = 0.0,	name = _('Canopy Switch - Down'),					category = {_('Left Console')}},
{	down = cpt_commands.CanopySwitch_ITER,												cockpit_device_id = devices.CPT_MECH,	value_down =  1.0,					name = _('Canopy Switch - Up'),						category = {_('Left Console')}},

-- EPU Control Panel
{	down = engine_commands.EpuSwCvrOn,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,	name = _('EPU Switch Cover for ON - CLOSE'),		category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSwCvrOn,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch Cover for ON - OPEN'),			category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSwCvrOn_ITER,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch Cover for ON - OPEN/CLOSE'),	category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSwCvrOff,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,	name = _('EPU Switch Cover for OFF - CLOSE'),		category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSwCvrOff,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch Cover for OFF - OPEN'),		category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSwCvrOff_ITER,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch Cover for OFF - OPEN/CLOSE'),	category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw,				cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('EPU Switch - OFF'),						category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw,				cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,	name = _('EPU Switch - NORM'),						category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw,				cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch - ON'),						category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw_ITER,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	name = _('EPU Switch - Down'),						category = {_('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw_ITER,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	name = _('EPU Switch - Up'),						category = {_('Left Console'), _('EPU Control Panel')}},

-- ELEC Control Panel
{	down = elec_commands.MainPwrSw,												cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,					name = _('MAIN PWR Switch - OFF'),			category = {_('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.MainPwrSw,												cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  0.0,					name = _('MAIN PWR Switch - BATT'),			category = {_('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.MainPwrSw,												cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('MAIN PWR Switch - MAIN PWR'),		category = {_('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.MainPwrSw_ITER,										cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1.0,					name = _('MAIN PWR Switch - Down'),			category = {_('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.MainPwrSw_ITER,										cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,					name = _('MAIN PWR Switch - Up'),			category = {_('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.CautionResetBtn,	up = elec_commands.CautionResetBtn,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('ELEC CAUTION RESET Button'),		category = {_('Left Console'), _('ELEC Control Panel')}},

-- ENG & JET START Control Panel
{	down = engine_commands.JfsSwStart1,			up = engine_commands.JfsSwStart1,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('JFS Switch - START 1 / OFF'),			category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.JfsSwStart2,			up = engine_commands.JfsSwStart2,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('JFS Switch - START 2 / OFF'),			category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSwCvr,												cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,					name = _('ENG CONT Switch Cover - CLOSE'),		category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSwCvr,												cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('ENG CONT Switch Cover - OPEN'),		category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSwCvr_ITER,											cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('ENG CONT Switch Cover - OPEN/CLOSE'),	category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSw,													cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,					name = _('ENG CONT Switch - PRI'),				category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSw,													cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('ENG CONT Switch - SEC'),				category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.EngContSw_ITER,												cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('ENG CONT Switch - PRI/SEC'),			category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.ABResetSwReset,		up = engine_commands.ABResetSwReset,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('AB RESET Switch - AB RESET/NORM'),	category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.ABResetSwEngData,	up = engine_commands.ABResetSwEngData,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('AB RESET Switch - ENG DATA/NORM'),	category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.MaxPowerSw,													cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  0.0,					name = _('MAX POWER Switch - OFF'),				category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.MaxPowerSw,													cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('MAX POWER Switch - MAX POWER'),		category = {_('Left Console'), _('ENG & JET START Control Panel')}},
{	down = engine_commands.MaxPowerSw_ITER,												cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,					name = _('MAX POWER Switch - MAX POWER/OFF'),	category = {_('Left Console'), _('ENG & JET START Control Panel')}},

-- MANUAL PITCH Override Switch
{	down = control_commands.ManualPitchOverride,		up = control_commands.ManualPitchOverride,		cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('MANUAL PITCH Override Switch - OVRD/NORM'),	category = {_('Left Console')}},

-- CHAFF/FLARE Dispense Button
{	down = cmds_commands.DispBtn,				up = cmds_commands.DispBtn,				cockpit_device_id = devices.CMDS,	value_down =  1.0,	value_up = 0.0,	name = _('CHAFF/FLARE Dispense Button'),	category = {_('Left Console')}},

--NightVision
{	down    = iCommandViewNightVisionGogglesOn   , name = _('Toggle goggles')   , category = _('Sensors')},
{	pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Gain goggles up')  , category = _('Sensors')},
{	pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Gain goggles down'), category = _('Sensors')},

----------------------------------------------
--				TEST FEATURE!!!				--
-- Weapon Adjustment
{combos = {{key = '9', reformers = {'RShift','RAlt'}}},		down = sms_commands.ChangeLaserCode100,		cockpit_device_id = devices.SMS,	value_down = 1,	name = _('Change Laser Code, Hundreds (5..7)'),		category = {_('Ground Adjustment')}},
{combos = {{key = '0', reformers = {'RShift','RAlt'}}},		down = sms_commands.ChangeLaserCode10,		cockpit_device_id = devices.SMS,	value_down = 1,	name = _('Change Laser Code, Tens (1..8)'),			category = {_('Ground Adjustment')}},
{combos = {{key = '-', reformers = {'RShift','RAlt'}}},		down = sms_commands.ChangeLaserCode1,		cockpit_device_id = devices.SMS,	value_down = 1,	name = _('Change Laser Code, Ones (1..8)'),			category = {_('Ground Adjustment')}},
----------------------------------------------

--------------------------------------------------------------------------------------
-- Special input for 3-pos 2-signals switches on joystick ----------------------------
--------------------------------------------------------------------------------------
{	down = ufc_commands.DRIFT_CUTOUT,				up = ufc_commands.DRIFT_CUTOUT,					cockpit_device_id = devices.UFC,				value_down =  1.0,	value_up = 0.0,	name = _('ICP DRIFT CUTOUT/WARN RESET Switch (special) - DRIFT C/O /NORM'),			category = {_('Special For Joystick'), _('Instrument Panel'), _('ICP')}},
{	down = control_commands.ApRoll,					up = control_commands.ApRoll,					cockpit_device_id = devices.CONTROL_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Autopilot ROLL Switch (special) - STRG SEL/ATT HOLD'),					category = {_('Special For Joystick'), _('Instrument Panel'), _('FLCS')}},
{	down = control_commands.ApRoll,					up = control_commands.ApRoll,					cockpit_device_id = devices.CONTROL_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Autopilot ROLL Switch (special) - HDG SEL/ATT HOLD'),						category = {_('Special For Joystick'), _('Instrument Panel'), _('FLCS')}},
{	down = ufc_commands.RF_Sw,						up = ufc_commands.RF_Sw,						cockpit_device_id = devices.UFC,				value_down = -1.0,	value_up = 0.0,	name = _('RF Switch (special) - SILENT/QUIET'),										category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = ufc_commands.RF_Sw,						up = ufc_commands.RF_Sw,						cockpit_device_id = devices.UFC,				value_down =  1.0,	value_up = 0.0,	name = _('RF Switch (special) - NORM/QUIET'),										category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw,				up = mmc_commands.MasterArmSw,					cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('MASTER ARM Switch (special) - SIMULATE/OFF'),								category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = mmc_commands.MasterArmSw,				up = mmc_commands.MasterArmSw,					cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('MASTER ARM Switch (special) - MASTER ARM/OFF'),							category = {_('Special For Joystick'), _('Instrument Panel')}},
{	down = gear_commands.AntiSkidSw,				up = gear_commands.AntiSkidSw,					cockpit_device_id = devices.GEAR_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('ANTI-SKID Switch (special) - OFF/ANTI-SKID'),								category = {_('Special For Joystick'), _('Left Auxiliary Console')}},
{	down = gear_commands.AntiSkidSw,				up = gear_commands.AntiSkidSw,					cockpit_device_id = devices.GEAR_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('ANTI-SKID Switch (special) - PARKING BRAKE/ANTI-SKID'),					category = {_('Special For Joystick'), _('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi,			up = extlights_commands.LandingTaxi,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('LANDING TAXI LIGHTS Switch (special) - TAXI/OFF'),						category = {_('Special For Joystick'), _('Left Auxiliary Console')}},
{	down = extlights_commands.LandingTaxi,			up = extlights_commands.LandingTaxi,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('LANDING TAXI LIGHTS Switch (special) - LANDING/OFF'),						category = {_('Special For Joystick'), _('Left Auxiliary Console')}},
{	down = ralt_commands.PwrSw,						up = ralt_commands.PwrSw,						cockpit_device_id = devices.RALT,				value_down = -1.0,	value_up = 0.0,	name = _('RDR ALT Switch (special) - OFF/STBY'),									category = {_('Special For Joystick'), _('Right Console'), _('SNSR PWR Control Panel')}},
{	down = ralt_commands.PwrSw,						up = ralt_commands.PwrSw,						cockpit_device_id = devices.RALT,				value_down =  1.0,	value_up = 0.0,	name = _('RDR ALT Switch (special) - RDR ALT/STBY'),								category = {_('Special For Joystick'), _('Right Console'), _('SNSR PWR Control Panel')}},
{	down = mmc_commands.VvVah,						up = mmc_commands.VvVah,						cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Scales Switch (special) - OFF/VAH'),									category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.VvVah,						up = mmc_commands.VvVah,						cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Scales Switch (special) - VV/VAH /VAH'),								category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm,						up = mmc_commands.AttFpm,						cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Flightpath Marker Switch (special) - OFF/FPM'),						category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.AttFpm,						up = mmc_commands.AttFpm,						cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Flightpath Marker Switch (special) - ATT/FPM /FPM'),					category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData,					up = mmc_commands.DedData,						cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD DED/PFLD Data Switch (special) - OFF/PFL'),							category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DedData,					up = mmc_commands.DedData,						cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD DED/PFLD Data Switch (special) - DED/PFL'),							category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet,					up = mmc_commands.DeprRet,						cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Depressible Reticle Switch (special) - OFF/PRI'),						category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.DeprRet,					up = mmc_commands.DeprRet,						cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Depressible Reticle Switch (special) - STBY/PRI'),					category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd,						up = mmc_commands.Spd,							cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Velocity Switch (special) - GND SPD/TAS'),							category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Spd,						up = mmc_commands.Spd,							cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Velocity Switch (special) - CAS/TAS'),								category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt,						up = mmc_commands.Alt,							cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Altitude Switch (special) - AUTO/BARO'),								category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Alt,						up = mmc_commands.Alt,							cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Altitude Switch (special) - RADAR/BARO'),								category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt,						up = mmc_commands.Brt,							cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD Brightness Control Switch (special) - NIGHT/AUTO BRT'),				category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Brt,						up = mmc_commands.Brt,							cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD Brightness Control Switch (special) - DAY/AUTO BRT'),					category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test,						up = mmc_commands.Test,							cockpit_device_id = devices.MMC,				value_down = -1.0,	value_up = 0.0,	name = _('HUD TEST Switch (special) - OFF/ON'),										category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = mmc_commands.Test,						up = mmc_commands.Test,							cockpit_device_id = devices.MMC,				value_down =  1.0,	value_up = 0.0,	name = _('HUD TEST Switch (special) - STEP/ON'),									category = {_('Special For Joystick'), _('Right Console'), _('HUD Control Panel')}},
{	down = oxygen_commands.SupplyLever,				up = oxygen_commands.SupplyLever,				cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  0.0,	value_up = 0.5,	name = _('Supply Lever (special) - OFF/ON'),										category = {_('Special For Joystick'), _('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.SupplyLever,				up = oxygen_commands.SupplyLever,				cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,	value_up = 0.5,	name = _('Supply Lever (special) - PBG/ON'),										category = {_('Special For Joystick'), _('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever,			up = oxygen_commands.EmergencyLever,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Emergency Lever (special) - TEST MASK/NORMAL'),							category = {_('Special For Joystick'), _('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = oxygen_commands.EmergencyLever,			up = oxygen_commands.EmergencyLever,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Emergency Lever (special) - EMERGENCY/NORMAL'),							category = {_('Special For Joystick'), _('Right Console'), _('OXYGEN REGULATOR Panel')}},
{	down = engine_commands.EngAntiIceSw,			up = engine_commands.EngAntiIceSw,				cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('Engine ANTI ICE Switch (special) - OFF/AUTO'),							category = {_('Special For Joystick'), _('Right Console')}},
{	down = engine_commands.EngAntiIceSw,			up = engine_commands.EngAntiIceSw,				cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('Engine ANTI ICE Switch (special) - ON/AUTO'),								category = {_('Special For Joystick'), _('Right Console')}},
{	down = intercom_commands.IFF_AntSelSw,			up = intercom_commands.IFF_AntSelSw,			cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('IFF ANT SEL Switch (special) - LOWER/NORM'),								category = {_('Special For Joystick'), _('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.IFF_AntSelSw,			up = intercom_commands.IFF_AntSelSw,			cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('IFF ANT SEL Switch (special) - UPPER/NORM'),								category = {_('Special For Joystick'), _('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw,			up = intercom_commands.UHF_AntSelSw,			cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('UHF ANT SEL Switch (special) - LOWER/NORM'),								category = {_('Special For Joystick'), _('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.UHF_AntSelSw,			up = intercom_commands.UHF_AntSelSw,			cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('UHF ANT SEL Switch (special) - UPPER/NORM'),								category = {_('Special For Joystick'), _('Right Console'), _('ANT SEL Panel')}},
{	down = intercom_commands.HotMicCipherSw,		up = intercom_commands.HotMicCipherSw,			cockpit_device_id = devices.INTERCOM,			value_down = -1.0,	value_up = 0.0,	name = _('HOT MIC CIPHER Switch (special) - CIPHER/OFF'),							category = {_('Special For Joystick'), _('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = intercom_commands.HotMicCipherSw,		up = intercom_commands.HotMicCipherSw,			cockpit_device_id = devices.INTERCOM,			value_down =  1.0,	value_up = 0.0,	name = _('HOT MIC CIPHER Switch (special) - HOT MIC/OFF'),							category = {_('Special For Joystick'), _('Left Console'), _('AUDIO 2 Control Panel')}},
{	down = extlights_commands.PosWingTail,			up = extlights_commands.PosWingTail,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('WING/TAIL Switch (special) - DIM/OFF'),									category = {_('Special For Joystick'), _('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosWingTail,			up = extlights_commands.PosWingTail,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('WING/TAIL Switch (special) - BRT/OFF'),									category = {_('Special For Joystick'), _('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus,				up = extlights_commands.PosFus,					cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down = -1.0,	value_up = 0.0,	name = _('FUSELAGE Switch (special) - DIM/OFF'),									category = {_('Special For Joystick'), _('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = extlights_commands.PosFus,				up = extlights_commands.PosFus,					cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	value_down =  1.0,	value_up = 0.0,	name = _('FUSELAGE Switch (special) - BRT/OFF'),									category = {_('Special For Joystick'), _('Left Console'), _('EXT LIGHTING Control Panel')}},
{	down = elec_commands.FlcsPwrTestSwMAINT,		up = elec_commands.FlcsPwrTestSwMAINT,			cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('FLCS PWR TEST Switch (special) - MAINT/NORM'),							category = {_('Special For Joystick'), _('Left Console'), _('TEST Switch Panel')}},
{	down = iff_commands.M4CodeSw,					up = iff_commands.M4CodeSw,						cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF M-4 CODE Switch (special) - HOLD/ A/B'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4CodeSw,					up = iff_commands.M4CodeSw,						cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF M-4 CODE Switch (special) - ZERO/ A/B'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw,					up = iff_commands.EnableSw,						cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF ENABLE Switch (special) - M1/M3 /OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.EnableSw,					up = iff_commands.EnableSw,						cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF ENABLE Switch (special) - M3/MS /OFF'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw,					up = iff_commands.M4ReplySw,					cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down = -1.0,	value_up = 0.0,	name = _('IFF MODE 4 REPLY Switch (special) - OUT/A'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = iff_commands.M4ReplySw,					up = iff_commands.M4ReplySw,					cockpit_device_id = devices.IFF_CONTROL_PANEL,	value_down =  1.0,	value_up = 0.0,	name = _('IFF MODE 4 REPLY Switch (special) - B/A'),								category = {_('Special For Joystick'), _('Left Console'), _('IFF Control Panel')}},
{	down = engine_commands.EpuSw,					up = engine_commands.EpuSw,						cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1.0,	value_up = 0.0,	name = _('EPU Switch (special) - OFF/NORM'),										category = {_('Special For Joystick'), _('Left Console'), _('EPU Control Panel')}},
{	down = engine_commands.EpuSw,					up = engine_commands.EpuSw,						cockpit_device_id = devices.ENGINE_INTERFACE,	value_down =  1.0,	value_up = 0.0,	name = _('EPU Switch (special) - ON/NORM'),											category = {_('Special For Joystick'), _('Left Console'), _('EPU Control Panel')}},
{	down = elec_commands.MainPwrSw,					up = elec_commands.MainPwrSw,					cockpit_device_id = devices.ELEC_INTERFACE,		value_down = -1.0,	value_up = 0.0,	name = _('MAIN PWR Switch (special) - OFF/BATT'),									category = {_('Special For Joystick'), _('Left Console'), _('ELEC Control Panel')}},
{	down = elec_commands.MainPwrSw,					up = elec_commands.MainPwrSw,					cockpit_device_id = devices.ELEC_INTERFACE,		value_down =  1.0,	value_up = 0.0,	name = _('MAIN PWR Switch (special) - MAIN PWR/BATT'),								category = {_('Special For Joystick'), _('Left Console'), _('ELEC Control Panel')}},
{	down = cpt_commands.CanopySwitchOpen,			up = cpt_commands.CanopySwitchOpen,				cockpit_device_id = devices.CPT_MECH,			value_down =  1.0,	value_up = 0.0,	name = _('Canopy Switch (special) - OPEN/STOP'),									category = {_('Special For Joystick'), _('Left Console')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT,		up = hotas_commands.THROTTLE_DOG_FIGHT,			cockpit_device_id = devices.HOTAS,				value_down = -1.0,	value_up = 0.0,	name = _('DOGFIGHT/Missile Override Switch (special) - MISSILE OVERRIDE/CENTER'),	category = {_('Special For Joystick'), _('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_DOG_FIGHT,		up = hotas_commands.THROTTLE_DOG_FIGHT,			cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('DOGFIGHT/Missile Override Switch (special) - DOGFIGHT/CENTER'),			category = {_('Special For Joystick'), _('Throttle Grip'), _('HOTAS')}},
{	down = hotas_commands.THROTTLE_SPEED_BRAKE,		up = hotas_commands.THROTTLE_SPEED_BRAKE,		cockpit_device_id = devices.HOTAS,				value_down =  1.0,	value_up = 0.0,	name = _('SPD BRK Switch (special) - Fwd/RETRACT /OFF'),							category = {_('Special For Joystick'), _('Throttle Grip'), _('HOTAS')}},

})

-- joystick axes 
join(res.axisCommands,{
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll,			name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch,			name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, 		name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneThrustCommon,	name = _('Thrust')},

{	action = iCommandWheelBrake,		name = _('Wheel Brake'),		category = {_('Systems')}},
{	action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left'),	category = {_('Systems')}},
{	action = iCommandRightWheelBrake,	name = _('Wheel Brake Right'),	category = {_('Systems')}},

-- Throttle Grip
{	action = hotas_commands.THROTTLE_MAN_RNG,		cockpit_device_id = devices.HOTAS,				name = _('MAN RNG Knob'),							category = {_('Throttle Grip'), _('HOTAS')}},
{	action = hotas_commands.THROTTLE_ANT_ELEV_AXIS, 	cockpit_device_id = devices.HOTAS,				name = _('ANT ELEV Knob'),							category = {_('Throttle Grip'), _('HOTAS')}},
{	action = hotas_commands.THROTTLE_RDR_CURSOR_X_AXIS,	cockpit_device_id = devices.HOTAS,				name = _('RDR CURSOR Switch - X axis'),				category = {_('Throttle Grip'), _('HOTAS')}},
{	action = hotas_commands.THROTTLE_RDR_CURSOR_Y_AXIS,	cockpit_device_id = devices.HOTAS,				name = _('RDR CURSOR Switch - Y axis'),				category = {_('Throttle Grip'), _('HOTAS')}},

-- MANUAL TRIM Panel
{	action = control_commands.RollTrim_AXIS,			cockpit_device_id = devices.CONTROL_INTERFACE,	name = _('ROLL TRIM Wheel'),						category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	action = control_commands.PitchTrim_AXIS,			cockpit_device_id = devices.CONTROL_INTERFACE,	name = _('PITCH TRIM Wheel'),						category = {_('Left Console'), _('MANUAL TRIM Panel')}},
{	action = control_commands.YawTrim_AXIS,				cockpit_device_id = devices.CONTROL_INTERFACE,	name = _('YAW TRIM Knob'),							category = {_('Left Console'), _('MANUAL TRIM Panel')}},

-- EXT LIGHTING Control Panel
{	action = extlights_commands.FormKn_AXIS,			cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	name = _('FORM Knob'),								category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},
{	action = extlights_commands.AerialRefuel_AXIS,		cockpit_device_id = devices.EXTLIGHTS_SYSTEM,	name = _('AERIAL REFUELING Knob'),					category = {_('Left Console'), _('EXT LIGHTING Control Panel')}},

-- Interior LIGHTING Control Panel
{	action = cptlights_commands.Consoles_AXIS,			cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('PRIMARY CONSOLES BRT Knob'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	action = cptlights_commands.IntsPnl_AXIS,			cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('PRIMARY INST PNL BRT Knob'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	action = cptlights_commands.DataEntryDisplay_AXIS,	cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('PRIMARY DATA ENTRY DISPLAY BRT Knob'),	category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	action = cptlights_commands.ConsolesFlood_AXIS,		cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('FLOOD CONSOLES BRT Knob'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	action = cptlights_commands.InstPnlFlood_AXIS,		cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('FLOOD INST PNL BRT Knob'),				category = {_('Right Console'), _('Interior LIGHTING Control Panel')}},
{	action = cptlights_commands.UtilityBrt_AXIS,		cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('Utility Light (Flashlight) BRT Knob'),	category = {_('Right Console')}},

-- AIR COND Control Panel
{	action = ecs_commands.TempKnob_AXIS,				cockpit_device_id = devices.ECS_INTERFACE,		name = _('TEMP Knob'),								category = {_('Right Console'), _('AIR COND Control Panel')}},
{	action = ecs_commands.DefogLever_AXIS,				cockpit_device_id = devices.ECS_INTERFACE,		name = _('DEFOG Lever'),							category = {_('Left Console')}},

-- Upfront Controls (UFC) / Integrated Control Panel (ICP)
{	action = ufc_commands.SYM_Knob_AXIS,				cockpit_device_id = devices.UFC,				name = _('HUD Symbology Intensity Knob'),			category = {_('Instrument Panel'), _('ICP')}},
{	action = ufc_commands.RET_DEPR_Knob_AXIS,			cockpit_device_id = devices.UFC,				name = _('Reticle Depression Control Knob'),		category = {_('Instrument Panel'), _('ICP')}},
{	action = ufc_commands.BRT_Knob_AXIS,				cockpit_device_id = devices.UFC,				name = _('Raster Intensity Knob'),					category = {_('Instrument Panel'), _('ICP')}},
{	action = ufc_commands.CONT_Knob_AXIS,				cockpit_device_id = devices.UFC,				name = _('Raster Contrast Knob'),					category = {_('Instrument Panel'), _('ICP')}},

-- Instruments
{	action = sai_commands.reference_AXIS,				cockpit_device_id = devices.SAI,				name = _('SAI Cage Knob'),							category = {_('Instrument Panel')}},
{	action = device_commands.Button_2,					cockpit_device_id = devices.ADI,				name = _('ADI Pitch Trim Knob'),					category = {_('Instrument Panel')}},

-- UHF Backup Control Panel
{	action = uhf_commands.VolumeKnob_AXIS,				cockpit_device_id = devices.UHF_CONTROL_PANEL,	name = _('UHF VOL Knob'),							category = {_('Left Console'), _('UHF Backup Control Panel')}},

-- AUDIO 1 Control Panel
{	action = intercom_commands.COM1_PowerKnob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('COMM 1 (UHF) Power Knob'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	action = intercom_commands.COM2_PowerKnob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('COMM 2 (VHF) Power Knob'),				category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	action = intercom_commands.SecureVoiceKnob_AXIS,	cockpit_device_id = devices.INTERCOM,			name = _('SECURE VOICE Knob'),						category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	action = intercom_commands.MSL_ToneKnob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('MSL Tone Knob'),							category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	action = intercom_commands.TF_ToneKnob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('TF Tone Knob'),							category = {_('Left Console'), _('AUDIO 1 Control Panel')}},
{	action = intercom_commands.THREAT_ToneKnob_AXIS,	cockpit_device_id = devices.INTERCOM,			name = _('THREAT Tone Knob'),						category = {_('Left Console'), _('AUDIO 1 Control Panel')}},

-- AUDIO 2 Control Panel
{	action = intercom_commands.INTERCOM_Knob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('INTERCOM Knob'),							category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	action = intercom_commands.TACAN_Knob_AXIS,			cockpit_device_id = devices.INTERCOM,			name = _('TACAN Knob'),								category = {_('Left Console'), _('AUDIO 2 Control Panel')}},
{	action = intercom_commands.ILS_PowerKnob_AXIS,		cockpit_device_id = devices.INTERCOM,			name = _('ILS Power Knob'),							category = {_('Left Console'), _('AUDIO 2 Control Panel')}},

-- HMCS Control Panel
{	action = hmcs_commands.IntKnob_AXIS,				cockpit_device_id = devices.HMCS,				name = _('HMCS SYMBOLOGY INT Knob'),				category = {_('Left Auxiliary Console')}},

-- RWR
{	action = rwr_commands.BrtKnob_AXIS,					cockpit_device_id = devices.RWR,			name = _('RWR Indicator Control DIM Knob'),			category = {_('Left Auxiliary Console'), _('THREAT WARNING AUX Panel'), _("RWR")}},
{	action = rwr_commands.IntKnob_AXIS,					cockpit_device_id = devices.RWR,			name = _('RWR Intensity Knob'),						category = {_('Instrument Panel'), _("RWR")}},

-- Secure Voice
{	action = ky58_commands.KY58_Volume_AXIS,			cockpit_device_id = devices.KY58,				name = _('KY-58 VOLUME Knob'),						category = {_('Right Console'), _('Secure Voice Control Panel')}},

-- AoA Indexer & AR Status Indicator
{	action = cptlights_commands.IndBrtAoA_AXIS,			cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('AOA Indexer Dimming Lever'),				category = {_('Instrument Panel')}},
{	action = cptlights_commands.IndBrtAR_AXIS,			cockpit_device_id = devices.CPTLIGHTS_SYSTEM,	name = _('AR Status Indicator Dimming Lever'),		category = {_('Instrument Panel')}},


})

return res
