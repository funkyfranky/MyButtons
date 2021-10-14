local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

local kneeboard_id = 100
if devices and devices.KNEEBOARD then
   kneeboard_id = devices.KNEEBOARD
end

return {
forceFeedback = {
	invertX		= false,
	invertY		= false,
	shake		= 0.5,
	swapAxes	= false,
	trimmer		= 1,
},
keyCommands = {

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- begin funkyfranky
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{down = device_commands.Button_4,                              up = device_commands.Button_4,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = -1,name = _('Manual Pip Control Switch Toggle'), category = {_('_My Buttons')}},
{down = device_commands.Button_3,                              up = device_commands.Button_3,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = -1, name = _('Gun Heater Switch Toggle'), category = {_('_My Buttons')}},
{down = device_commands.Button_12,                             up = device_commands.Button_12, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = -1, name = _('Rocket Jettison Switch Toggle'), category = {_('_My Buttons')}},

{down = hydro_commands.F86_CockpitDeviceCommand_FlightControl, up = hydro_commands.F86_CockpitDeviceCommand_FlightControl, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	value_up = 0, name = _('Flight Control Switch Alternate/Normal'), category = {_('_My Buttons')}},

{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, up = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1, value_up = 0, name = _('Landing & Taxi Lights Extend&On/Off'), category = {_('_My Buttons')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, up = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down =-1, value_up = 0, name = _('Landing & Taxi Lights Retract/Off'), category = {_('_My Buttons')}},

{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen, up = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen, cockpit_device_id = devices.AIR_INTERFACE, value_down = 1, value_up = 0, name = _('Engine Anti-Ice Extend/Ret'),	category = {_('_My Buttons')}},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen, up = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen, cockpit_device_id = devices.AIR_INTERFACE, value_down =-1, value_up = 0, name = _('Engine Anti-Ice Anti-Ice/Ret'),	category = {_('_My Buttons')}},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw,      up = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw,      cockpit_device_id = devices.AIR_INTERFACE, value_down = 1, value_up = 0, name = _('Pitot Heater Switch On/Off'), category = {_('_My Buttons')}},

{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector, up = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1, value_up = 0, name = _('Hydraulic Pressure Gage Utility/Normal'), category = {_('_My Buttons')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector, up = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector, cockpit_device_id = devices.HYDRO_INTERFACE, value_down =-1, value_up = 0, name = _('Hydraulic Pressure Gage Alternate/Normal'), category = {_('_My Buttons')}},

{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Rocket Fuze (Arming) Delay/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.WEAPON_SYSTEM, value_down =-1, value_up = 0, name = _('Rocket Fuze (Arming) Instant/Off'), category = {_('_My Buttons')}},

{down = engine_commands.F86_CockpitDeviceCommand_EmergFuel,	           up = engine_commands.F86_CockpitDeviceCommand_EmergFuel,            cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, value_up = -1, name = _('Emergency Fuel Switch Toggle'), category = {_('_My Buttons')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart,             up = engine_commands.F86_CockpitDeviceCommand_AirStart,             cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0, value_up = -1, name = _('Emergency Ignition Switch On/Off'), category = {_('_My Buttons')}},

{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw,     up = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw,     cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0, name = _('Engine Master Switch On/Off'), category = {_('_My Buttons')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw,	       up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw,        cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0, name = _('Generator Switch On/Off'), category = {_('_My Buttons')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw,   up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw,   cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0, name = _('Battery-Starter Battery/Off'), category = {_('_My Buttons')}},

{down = electric_commands.F86_CockpitDeviceCommand_InverterSw,         up = electric_commands.F86_CockpitDeviceCommand_InverterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,	value_up=-1,	name = _('Instrument Power Switch Alternate/Normal'),		category = {_('_My Buttons')}},


{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection, up = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up =-1, name = _('Fuel Densitometer Selection Switch Out/In'), category = {_('_My Buttons')}},

{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw,   up = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw,   cockpit_device_id = devices.LIGHT_INTERFACE,	     value_down = 1, value_up = -1, name = _('Compass Light Switch On/Off'), category = {_('_My Buttons')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer, up = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer, cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1, value_up = -1, name = _('Exterior Lighting Dimmer Bright/Dim'), category = {_('_My Buttons')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,       up = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,       cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1, value_up = 0,  name = _('Position and Fuselage Light Selector Switch Steady/Off'), category = {_('_My Buttons')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,       up = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,       cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down =-1, value_up = 0,  name = _('Position and Fuselage Light Selector Switch Flash/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0, name = _('Missile Control Switch LH&RH/RH'), category = {_('_My Buttons')}},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.WEAPON_SYSTEM, value_down =-1, value_up = 0, name = _('Missile Control Switch Salvo/RH'), category = {_('_My Buttons')}},

{down = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle, up = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle, cockpit_device_id = devices.HYDRO_INTERFACE, value_down =-1, value_up = 0.0, name = _('Speed Brake Switch Out/Hold'),	category = {_('_My Buttons')}},
{down = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle, up = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1, value_up = 0.0, name = _('Speed Brake Switch In/Hold'),	category = {_('_My Buttons')}},

{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1, value_up =-1, name = _('Manual Pip Control Switch Bomb/Normal'), category = {_('_My Buttons')}},

{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,	value_up =-1, name = _('Demolition Bomb Release Selector Switch Auto/Manual'), category = {_('_My Buttons')}},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1, value_up = 0, name = _('Demolition Bomb Arming Switch Nose&Tail/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down =-1, value_up = 0, name = _('Demolition Bomb Arming Switch Tail/Off'), category = {_('_My Buttons')}},

{down = iCommandPlaneGearUp, up = iCommandPlaneGearDown, name = _('Landing Gear Up/Down'), category = {_('_My Buttons')}},

{down = hydro_commands.F86_CockpitDeviceCommand_AlternateHydraulicOverrideSw, up = hydro_commands.F86_CockpitDeviceCommand_AlternateHydraulicOverrideSw, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 0, value_up = 1, name = _('Alternate Hydraulic Emergency Override Handle Pull/Push'), category = {_('_My Buttons')}},

{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,	value_up = 0, name = _('Rocket Release Selector Single/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.WEAPON_SYSTEM,	value_down =-1,	value_up = 0, name = _('Rocket Release Selector Auto/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,	value_up =-1, name = _('A-4 Sight Filament Selector Switch Secondary/Primary'), category = {_('_My Buttons')}},

-- Push to test buttons
--{down = electric_commands.F86_CockpitDeviceCommand_GenOff_PTLmp, up = electric_commands.F86_CockpitDeviceCommand_GenOff_PTLmp, cockpit_device_id = devices.ELEC_INTERFACE, electric, value_down = 1.0, value_up = 0.0, name = _('Generator Warning Light (Push To Test)'), category = {_('_My Buttons')}},
--{down = electric_commands.F86_CockpitDeviceCommand_MainInstInverterOffSelectAlt_PTLmp, up = electric_commands.F86_CockpitDeviceCommand_MainInstInverterOffSelectAlt_PTLmp, cockpit_device_id = devices.ELEC_INTERFACE, electric, value_down = 1.0, value_up = 0.0, name = _('Main Instrument Inverter Failure Warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = electric_commands.F86_CockpitDeviceCommand_BothInstInvertersOff_PTLmp, up = electric_commands.F86_CockpitDeviceCommand_BothInstInvertersOff_PTLmp, cockpit_device_id = devices.ELEC_INTERFACE, electric, value_down = 1.0, value_up = 0.0, name = _('Both Instrument (Main and alternate) Inverter Failure Warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = electric_commands.F86_CockpitDeviceCommand_MainRadarInverterOff_PTLmp, up = electric_commands.F86_CockpitDeviceCommand_MainRadarInverterOff_PTLmp, cockpit_device_id = devices.ELEC_INTERFACE, electric, value_down = 1.0, value_up = 0.0, name = _('Main Radar Inverter Failure Warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = hydro_commands.F86_CockpitDeviceCommand_AlternateFltContSysOper_PTLmp, up = hydro_commands.F86_CockpitDeviceCommand_AlternateFltContSysOper_PTLmp, cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Alternate-on Warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, up = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp, cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Outboard Drop Tank Empty Indicator Light (Push to test)'), category = {_('_My Buttons')}},
--{down = fire_detection_commands.F86_CockpitDeviceCommand_FwdWarning_TPLmp, up = fire_detection_commands.F86_CockpitDeviceCommand_FwdWarning_TPLmp, cockpit_device_id = devices.FIRE_DETECTION_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Forward Engine Compartment Fire-warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = fire_detection_commands.F86_CockpitDeviceCommand_AftWarning_TPLmp, up = fire_detection_commands.F86_CockpitDeviceCommand_AftWarning_TPLmp, cockpit_device_id = devices.FIRE_DETECTION_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Aft Engine Compartment Fire-warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = air_commands.F86_CockpitDeviceCommand_WindshieldAntiIceOverheatLmpTest, up = air_commands.F86_CockpitDeviceCommand_WindshieldAntiIceOverheatLmpTest, cockpit_device_id = devices.AIR_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Windshield Anti-Ice Overheat Warning Light (Push to test)'), category = {_('_My Buttons')}},
--{down = control_commands.F86_CockpitDeviceCommand_TakeOffPosIndTest, up = control_commands.F86_CockpitDeviceCommand_TakeOffPosIndTest, devices.CONTROL_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Take-off (Trim) Position Indicator Light (Push to test)'), category = {_('_My Buttons')}},

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- end funkyfranky
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Gameplay
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},

{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandSoundOnOff, name = _('Sound On/Off'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandViewBriefing, name = _('View briefing on/off'), category = _('General')},
{down = iCommandActivePauseOnOff, name = _('Active Pause'), category = _('Cheat')},
{down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('General')},

-- Communications
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Communications')},
{down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Communications')},
{down = iCommandPlaneFormation, name = _('Toggle Formation'), category = _('Communications')},
{down = iCommandPlaneJoinUp, name = _('Join Up Formation'), category = _('Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('Attack My Target'), category = _('Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover Me'), category = _('Communications')},
{down = iCommandAWACSHomeBearing, name = _('Request AWACS Home Airbase'), category = _('Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Communications')},
{down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Communications')},
{down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('Switch to main menu'), category = _('Communications')},

-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{                                      pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 Camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 Camera moving backward'), category = _('View')},

{down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
{down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
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

{down = iCommandViewFastKeyboard, name = _('Keyboard Rate Fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Keyboard Rate Slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Keyboard Rate Normal'), category = _('View')},
{down =  iCommandViewFastMouse, name = _('Mouse Rate Fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Mouse Rate Slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Mouse Rate Normal'), category = _('View')},

-- Cockpit view
{down = 3256,	cockpit_device_id  = 0,	value_down = 1.0,	name = _('Flashlight'),	category = _('View Cockpit')},

{down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
--// Save current cockpit camera angles for fast numpad jumps  
{down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')},
{pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Glance up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Glance down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Glance left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Glance right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Glance up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Glance down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Glance up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Glance down-right'), category = _('View Cockpit')},
{down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera snap view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera snap view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera snap view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera snap view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera snap view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera snap view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera snap view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRightSlow, name = _('Camera snap view down-right'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center Camera View'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return Camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return Camera Base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9,	up = iCommandViewSnapViewStop, name = _('Custom Snap View  9'), category = _('View Cockpit')},

{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

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

-- Padlock
{down = iCommandViewLock, name = _('Lock View (cycle padlock)'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--Kneeboard
{	down = iCommandPlaneShowKneeboard,																				name = _('Kneeboard ON/OFF'),						category = _('Kneeboard')},
{	down = iCommandPlaneShowKneeboard,	up = iCommandPlaneShowKneeboard,	value_down = 1.0,	value_up = -1.0,	name = _('Kneeboard glance view'),					category = _('Kneeboard')},
{	down = 3001,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard Next Page'),					category = _('Kneeboard')},
{	down = 3002,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard Previous Page'),				category = _('Kneeboard')},
{	down = 3003,	cockpit_device_id = kneeboard_id,						value_down = 1.0,						name = _('Kneeboard current position mark point'),	category = _('Kneeboard')},
--shortcuts navigation
{	down = 3004,	cockpit_device_id = kneeboard_id,						value_down =  1.0,						name = _('Kneeboard Make Shortcut'),				category = _('Kneeboard')},
{	down = 3005,	cockpit_device_id = kneeboard_id,						value_down =  1.0,						name = _('Kneeboard Next Shortcut'),				category = _('Kneeboard')},
{	down = 3005,	cockpit_device_id = kneeboard_id,						value_down = -1.0,						name = _('Kneeboard Previous Shortcut'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 0,							name = _('Kneeboard Jump To Shortcut  1'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 1,							name = _('Kneeboard Jump To Shortcut  2'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 2,							name = _('Kneeboard Jump To Shortcut  3'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 3,							name = _('Kneeboard Jump To Shortcut  4'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 4,							name = _('Kneeboard Jump To Shortcut  5'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 5,							name = _('Kneeboard Jump To Shortcut  6'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 6,							name = _('Kneeboard Jump To Shortcut  7'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 7,							name = _('Kneeboard Jump To Shortcut  8'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 8,							name = _('Kneeboard Jump To Shortcut  9'),			category = _('Kneeboard')},
{	down = iCommandPlaneKneeboardJumpBookmark,								value_down = 9,							name = _('Kneeboard Jump To Shortcut 10'),			category = _('Kneeboard')},

-- Cheat
{down = iCommandEnginesStart, name = _('Auto Start'),	category = _('Cheat')},
{down = iCommandEnginesStop,  name = _('Auto Stop') ,	category = _('Cheat')},

-- General
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot body'), category = _('General')},

-- View Cockpit
{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror Left On'), category = _('View Cockpit')},
{down = iCommandViewRightMirrorOn,	up = iCommandViewRightMirrorOff, name = _('Mirror Right On'), category = _('View Cockpit')},
{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},

-- Systems
{	down = aihelper_commands.AIHelperOnOff,			cockpit_device_id = devices.AIHelper, value_down = 1, name = _('Toggle AI Helper - ON/OFF'),		category = _('Systems')},
{	down = aihelper_commands.AIHelperIgnorePrompt,	cockpit_device_id = devices.AIHelper, value_down = 1, name = _('Ignore Current AI Helper Prompt'),	category = _('Systems')},

-- Flight Control
{down = iCommandPlaneUpStart,			up = iCommandPlaneUpStop,			name = _('Aircraft Down'),			category = _('Flight Control')},
{down = iCommandPlaneDownStart,			up = iCommandPlaneDownStop,			name = _('Aircraft Up'),			category = _('Flight Control')},
{down = iCommandPlaneLeftStart,			up = iCommandPlaneLeftStop,			name = _('Aircraft Bank Left'),		category = _('Flight Control')},
{down = iCommandPlaneRightStart,		up = iCommandPlaneRightStop,		name = _('Aircraft Bank Right'),	category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Aircraft Rudder Left'),	category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Aircraft Rudder Right'),	category = _('Flight Control')},
-- trimmer
{combos = {{key = "JOY_BTN9"}, },	pressed = iCommandPlaneTrimUp,			up = iCommandPlaneTrimStop,	name = _('Trim Up'),			category = {_('Flight Control'), _('Trimmer'), _('Stick Grip')}},
{combos = {{key = "JOY_BTN7"}, },	pressed = iCommandPlaneTrimDown,		up = iCommandPlaneTrimStop,	name = _('Trim Down'),			category = {_('Flight Control'), _('Trimmer'), _('Stick Grip')}},
{combos = {{key = "JOY_BTN10"}, },	pressed = iCommandPlaneTrimLeft,		up = iCommandPlaneTrimStop,	name = _('Trim Left'),			category = {_('Flight Control'), _('Trimmer'), _('Stick Grip')}},
{combos = {{key = "JOY_BTN8"}, },	pressed = iCommandPlaneTrimRight,		up = iCommandPlaneTrimStop,	name = _('Trim Right'),			category = {_('Flight Control'), _('Trimmer'), _('Stick Grip')}},
-- throttle
{pressed = iCommandThrottleIncrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Up'),		category = _('Flight Control')},
{pressed = iCommandThrottleDecrease, up = iCommandThrottleStop,  name = _('Thrust Smoothly Down'),	category = _('Flight Control')},
--{down = iCommandPlaneAUTIncreaseRegime,						name = _('Thrust Step Up'),			category = _('Flight Control')},
--{down = iCommandPlaneAUTDecreaseRegime,						name = _('Thrust Step Down'),		category = _('Flight Control')},

-- Communications
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, up = radio_commands.F86_CockpitDeviceCommand_ARC27_MicrophoneBtn, cockpit_device_id = devices.AN_ARC_27_COMMAND_SET, value_down = 1, value_up = 0, name = _('Microphone Button'), category = {_('Communications'), _('Throttle Grip'), _('AN/ARC-27 UHF Radio')}},

-- Systems
-- air brake
{	down = iCommandPlaneAirBrake,																					value_down = 1,		name = _('Speed Brake Switch - Up'),	category = {_('Flight Control'), _('Throttle Grip')}},
{	down = iCommandPlaneAirBrake,																					value_down = -1,	name = _('Speed Brake Switch - Down'),	category = {_('Flight Control'), _('Throttle Grip')}},
{	down = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = -1,	name = _('Speed Brake Switch - OUT'),	category = {_('Flight Control'), _('Throttle Grip')}},
{	down = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 0,		name = _('Speed Brake Switch - HOLD'),	category = {_('Flight Control'), _('Throttle Grip')}},
{	down = hydro_commands.F86_CockpitDeviceCommand_AirBrakesHandle,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,		name = _('Speed Brake Switch - IN'),	category = {_('Flight Control'), _('Throttle Grip')}},
-- smoke
{down = iCommandPlaneWingtipSmokeOnOff,		name = _('Smoke'),						category = _('Systems')},
-- flaps
{down = iCommandPlaneFlaps,																				name = _('Flaps Up/Down'),	category = _('Systems')},
{pressed = iCommandPlaneFlapsOn,		up = iCommandPlaneFlapsOn,		value_pressed = 1,	value_up = 0,	name = _('Flaps Down'),		category = _('Systems')},
{pressed = iCommandPlaneFlapsOff,	up = iCommandPlaneFlapsOff,		value_pressed = 1,	value_up = 0,	name = _('Flaps Up'),		category = _('Systems')},
{down = control_commands.F86_CockpitDeviceCommand_FlapsHandle,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0,  name = _('Flaps Stop'),  category = _('Systems')},
-- gear
{down = iCommandPlaneGear,					name = _('Landing Gear Up/Down'),		category = {_('Gear Systems'), _('Instrument Panel')}},
{down = iCommandPlaneGearUp,				name = _('Landing Gear Up'),			category = {_('Gear Systems'), _('Instrument Panel')}},
{down = iCommandPlaneGearDown,				name = _('Landing Gear Down'),			category = {_('Gear Systems'), _('Instrument Panel')}},
{down = hydro_commands.F86_CockpitDeviceCommand_EmergUpBtn, up = hydro_commands.F86_CockpitDeviceCommand_EmergUpBtn,	cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1, value_up = 0,	name = _('Gear Emergency Up Button'),	category = {_('Gear Systems'), _('Instrument Panel')}},
-- wheel brake
{down = iCommandPlaneWheelBrakeOn,		up = iCommandPlaneWheelBrakeOff,	  name = _('Wheel Brake On'),			category = _('Gear Systems')},
{down = iCommandPlaneWheelBrakeLeftOn,	up = iCommandPlaneWheelBrakeLeftOff,  name = _('Wheel Brake Left On/Off'),  category = _('Gear Systems')},
{down = iCommandPlaneWheelBrakeRightOn,	up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel Brake Right On/Off'), category = _('Gear Systems')},
{down = iCommandPlaneWheelParkingBrake,	up = iCommandPlaneWheelParkingBrake,	value_down = 1,	value_up = 0,	name = _('Wheel Parking Brake Handle'),	category = _('Gear Systems')},
-- canopy
{down = iCommandPlaneFonar,	up = iCommandPlaneFonar,	value_down = 1, value_up = 0,																name = _('Canopy Switch - OPEN/CLOSE'),								category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CockpitCanopyControlSw_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = -1,	name = _('Canopy Switch - OPEN'),	category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CockpitCanopyControlSw_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0,	name = _('Canopy Switch - OFF'),	category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CockpitCanopyControlSw_EXT, up = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CockpitCanopyControlSw_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1, value_up = 0,	name = _('Canopy Switch - CLOSE'),	category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyAlternateEmergencyJettisonHandle_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,	name = _('Canopy Alternate Emergency Jettison Handle - PULL/PUSH'),	category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyAlternateEmergencyJettisonHandle,		cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,	name = _('Canopy Alternate Emergency Jettison Handle - PULL'),		category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyAlternateEmergencyJettisonHandle,		cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0,	name = _('Canopy Alternate Emergency Jettison Handle - PUSH'),		category = _('Canopy')},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison, up = cockpit_mechanics_commands.F86_CockpitDeviceCommand_ManualCanopyJettison,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1, value_up = 0,	name = _('Manual Canopy Jettison'),	category = _('Canopy')},
-- jettison & ejection
{down = iCommandPlaneJettisonWeapons, up = iCommandPlaneJettisonWeaponsUp, name = _('Weapons Jettison'), category = {_('Armament'), _('Fuel System')}},	-- dublicate in drop tanks panel
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandleCover_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,		name = _('Emergency Jettison Handle Cover - OPEN/CLOSE'),	category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandleCover,		cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0.83,	name = _('Emergency Jettison Handle Cover - OPEN'),			category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandleCover,		cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0.0,	name = _('Emergency Jettison Handle Cover - CLOSE'),		category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle,						cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,		name = _('Emergency Jettison Handle (All) - PULL/PUSH'),									category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle_EXT,					cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,		name = _('Emergency Jettison Handle (All) - PULL'),											category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle_EXT,					cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0,		name = _('Emergency Jettison Handle (All) - PUSH'),											category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle_OnlyOutbdTanks,		cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,		name = _('Emergency Jettison Handle (Only Outbd Tanks) - ROTATE CW-PULL/PUSH-ROTATE CCW'),	category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle_OnlyOutbdTanks_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 1,		name = _('Emergency Jettison Handle (Only Outbd Tanks) - ROTATE CW-PULL'),					category = {_('Armament'), _('Fuel System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_EmergencyJettisonHandle_OnlyOutbdTanks_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS, value_down = 0,		name = _('Emergency Jettison Handle (Only Outbd Tanks) - PUSH-ROTATE CCW'),					category = {_('Armament'), _('Fuel System')}},
--
{down = iCommandPlaneEject,					name = _('Eject (3 times)'),			category = _('Systems')},
{down = iCommandPlaneJettisonFuelTanks, up   = iCommandPlaneJettisonFuelTanksUp, name = _('Jettison Fuel Tanks'), category = {_('Fuel System')}},	-- not a dublicate!!! feature command
-- Hydraulic
{down = hydro_commands.F86_CockpitDeviceCommand_AlternateHydraulicOverrideSw_EXT,	cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	name = _('Alternate Hydraulic Emergency Override Handle - PULL/PUSH'),	category = {_('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_AlternateHydraulicOverrideSw,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 0,	name = _('Alternate Hydraulic Emergency Override Handle - PULL'),		category = {_('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_AlternateHydraulicOverrideSw,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	name = _('Alternate Hydraulic Emergency Override Handle - PUSH'),		category = {_('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector_EXT,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	name = _('Hydraulic Pressure Gage Selector Switch - Up'),				category = {_('Instrument Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector_EXT,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = -1,	name = _('Hydraulic Pressure Gage Selector Switch - Down'),				category = {_('Instrument Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector,			cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	name = _('Hydraulic Pressure Gage Selector Switch - UTILITY'),			category = {_('Instrument Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector,			cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 0,	name = _('Hydraulic Pressure Gage Selector Switch - NORMAL'),			category = {_('Instrument Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HydPressIndicatorSelector,			cockpit_device_id = devices.HYDRO_INTERFACE, value_down = -1,	name = _('Hydraulic Pressure Gage Selector Switch - ALTERNATE'),		category = {_('Instrument Panel'), _('Hydraulic Systems')}},
-- Throttle Start-Stop
{down = control_commands.F86_CockpitDeviceCommand_EngineStart, cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Start Engine'), category = {_('Throttle Grip'), _('Engine')}},
{down = control_commands.F86_CockpitDeviceCommand_EngineStop,  cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1, name = _('Throttle - Stop Engine'),  category = {_('Throttle Grip'), _('Engine')}},
-- Emergency Fuel
{down = engine_commands.F86_CockpitDeviceCommand_EmergFuel_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Emergency Fuel Switch - ON/OFF'),	category = {_('Instrument Panel'), ('Fuel System')}},
{down = engine_commands.F86_CockpitDeviceCommand_EmergFuel,		cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Emergency Fuel Switch - ON'),		category = {_('Instrument Panel'), ('Fuel System')}},
{down = engine_commands.F86_CockpitDeviceCommand_EmergFuel,		cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1,	name = _('Emergency Fuel Switch - OFF'),	category = {_('Instrument Panel'), ('Fuel System')}},
-- Fire Warning
{down = fire_detection_commands.F86_CockpitDeviceCommand_FireDetectionTest_EXT,	cockpit_device_id = devices.FIRE_DETECTION_INTERFACE, value_down = 1,	name = _('Engine Fire Warning Light Test Switch - ON/OFF'),	category = {_('Instrument Panel'), _('Engine')}},
{down = fire_detection_commands.F86_CockpitDeviceCommand_FireDetectionTest,		cockpit_device_id = devices.FIRE_DETECTION_INTERFACE, value_down = 1,	name = _('Engine Fire Warning Light Test Switch - ON'),		category = {_('Instrument Panel'), _('Engine')}},
{down = fire_detection_commands.F86_CockpitDeviceCommand_FireDetectionTest,		cockpit_device_id = devices.FIRE_DETECTION_INTERFACE, value_down = 0,	name = _('Engine Fire Warning Light Test Switch - OFF'),	category = {_('Instrument Panel'), _('Engine')}},

-- Stick grip
{combos = {{key = "JOY_BTN3"}, },	down = iCommandPlane_HOTAS_NoseWheelSteeringButton, up = iCommandPlane_HOTAS_NoseWheelSteeringButtonOff, name = _('Nosewheel Steering Button'), category = {_('Stick Grip'), _('Gear Systems')}},
{combos = {{key = 'JOY_BTN1'}},		down = iCommandPlaneFire,							up = iCommandPlaneFireOff,															name = _('Trigger - SECOND DETENT(Gun Fire)'),	category = {_('Stick Grip'), _('Armament')}},
{									down = iCommandPlane_HOTAS_TriggerFirstStage,		up = iCommandPlane_HOTAS_TriggerFirstStage,	value_down = 0.5,	value_up = 0,		name = _('Trigger - FIRST DETENT'),				category = {_('Stick Grip'), _('Armament')}},
{combos = {{key = "JOY_BTN2"}, },	down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff,	name = _('Weapon Release'),		category = {_('Stick Grip'), _('Armament')}},

-- Instrument Panel
-- clock
{down = iCommandMechClock_RightLever_Down,	up = iCommandMechClock_RightLever_Down_up,	name = _('Clock Elapsed Time Mechanism Button - START/STOP/RESET'),	category = {_('Instrument Panel'), _('Clock')}},
{down = iCommandMechClock_LeftLever_Up,		up = iCommandMechClock_LeftLever_Down,		name = _('Clock Set Mechanism Knob - PULL/PUSH'),					category = {_('Instrument Panel'), _('Clock')}},
{pressed = iCommandMechClock_LeftLever_TurnRight,	name = _('Clock Set Mechanism Knob - CW/Increase'),	category = {_('Instrument Panel'), _('Clock')}},
{pressed = iCommandMechClock_LeftLever_TurnLeft,	name = _('Clock Set Mechanism Knob - CCW/Decrease'),	category = {_('Instrument Panel'), _('Clock')}},
-- radio compass
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 0.1,	name = _('AN/ARN-6 East/West Variation Knob - CW/West'),	category = {_('Instrument Panel'), _('AN/ARN-6 Radio Compass')}},
{pressed = radio_compass_commands.ARN6_SCALE_POS_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -0.1,	name = _('AN/ARN-6 East/West Variation Knob - CCW/East'),	category = {_('Instrument Panel'), _('AN/ARN-6 Radio Compass')}},
-- gyrocompass
{pressed = gyromagcompass_commands.F86_CockpitDeviceCommand_Heading_Correction_EXT,	cockpit_device_id = devices.GYROMAG_COMPASS, value_pressed = 0.1,	name = _('Directional Indicator East/West Variation Knob - CW/West'),	category = _('Instrument Panel')},
{pressed = gyromagcompass_commands.F86_CockpitDeviceCommand_Heading_Correction_EXT,	cockpit_device_id = devices.GYROMAG_COMPASS, value_pressed = -0.1,	name = _('Directional Indicator East/West Variation Knob - CCW/East'),	category = _('Instrument Panel')},
{down = gyromagcompass_commands.F86_CockpitDeviceCommand_FastSlave,	up = gyromagcompass_commands.F86_CockpitDeviceCommand_FastSlave,	cockpit_device_id = devices.GYROMAG_COMPASS,	value_down = 1, value_up = 0,	name = _('Directional Indicator Fast Slaving Button'),	category = _('Instrument Panel')},
-- baro altimeter
{pressed = device_commands.Button_2,	cockpit_device_id = devices.BARO_ALTIMETER, value_pressed = 0.2,	name = _('Barometric Pressure QFE Knob - CW/Increase'),		category = _('Instrument Panel')},
{pressed = device_commands.Button_2,	cockpit_device_id = devices.BARO_ALTIMETER, value_pressed = -0.2,	name = _('Barometric Pressure QFE Knob - CCW/Decrease'),	category = _('Instrument Panel')},
-- Attitude Indicator
{down = attitude_indicator_commands.F86_CockpitDeviceCommand_Cage, up = attitude_indicator_commands.F86_CockpitDeviceCommand_Cage,	cockpit_device_id = devices.ATTITUDE_INDICATOR, value_down = 1,	value_up = 0,	name = _('J-8 Attitude Indicator Cage Knob'),						category = {_('Instrument Panel')}},
{pressed = attitude_indicator_commands.F86_CockpitDeviceCommand_PitchTrim_EXT,														cockpit_device_id = devices.ATTITUDE_INDICATOR, value_pressed = 1,				name = _('J-8 Attitude Indicator Pitch Trim Knob - CW/Increase'),	category = {_('Instrument Panel')}},
{pressed = attitude_indicator_commands.F86_CockpitDeviceCommand_PitchTrim_EXT,														cockpit_device_id = devices.ATTITUDE_INDICATOR, value_pressed = -1,				name = _('J-8 Attitude Indicator Pitch Trim Knob - CCW/Decrease'),	category = {_('Instrument Panel')}},
-- Accelerometer
{down = device_commands.Button_1, up = device_commands.Button_1,	cockpit_device_id = devices.ACCELEROMETER,	value_down = 1, value_up = 0,	name = _('Accelerometer Reset Button'),	category = _('Instrument Panel')},
-- lamps test
{down = electric_commands.F86_CockpitDeviceCommand_MainInstInverterOffSelectAlt_PTLmp,	up = electric_commands.F86_CockpitDeviceCommand_MainInstInverterOffSelectAlt_PTLmp,	cockpit_device_id = devices.ELEC_INTERFACE,				value_down = 1,	value_up = 0,	name = _('Main Instrument Inverter OFF Select All Indicator Light Test'),	category = _('Instrument Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_BothInstInvertersOff_PTLmp,			up = electric_commands.F86_CockpitDeviceCommand_BothInstInvertersOff_PTLmp,			cockpit_device_id = devices.ELEC_INTERFACE,				value_down = 1,	value_up = 0,	name = _('Both Instrument Inverters OFF Indicator Light Test'),				category = _('Instrument Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_MainRadarInverterOff_PTLmp,			up = electric_commands.F86_CockpitDeviceCommand_MainRadarInverterOff_PTLmp,			cockpit_device_id = devices.ELEC_INTERFACE,				value_down = 1,	value_up = 0,	name = _('Radar Inverter OFF Indicator Light Test'),						category = _('Instrument Panel')},
{down = control_commands.F86_CockpitDeviceCommand_TakeOffPosIndTest,						up = control_commands.F86_CockpitDeviceCommand_TakeOffPosIndTest,					cockpit_device_id = devices.CONTROL_INTERFACE,			value_down = 1,	value_up = 0,	name = _('TakeOff Position Indicator Light Test'),							category = _('Instrument Panel')},
{down = hydro_commands.F86_CockpitDeviceCommand_AlternateFltContSysOper_PTLmp,			up = hydro_commands.F86_CockpitDeviceCommand_AlternateFltContSysOper_PTLmp,			cockpit_device_id = devices.HYDRO_INTERFACE,			value_down = 1,	value_up = 0,	name = _('Alternate ON Indicator Light Test'),								category = _('Instrument Panel')},
{down = fire_detection_commands.F86_CockpitDeviceCommand_FwdWarning_TPLmp,				up = fire_detection_commands.F86_CockpitDeviceCommand_FwdWarning_TPLmp,				cockpit_device_id = devices.FIRE_DETECTION_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Fire Warning System Fwd Indicator Light Test'),					category = _('Instrument Panel')},
{down = fire_detection_commands.F86_CockpitDeviceCommand_AftWarning_TPLmp,				up = fire_detection_commands.F86_CockpitDeviceCommand_AftWarning_TPLmp,				cockpit_device_id = devices.FIRE_DETECTION_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Fire Warning System Aft Indicator Light Test'),					category = _('Instrument Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_GenOff_PTLmp,							up = electric_commands.F86_CockpitDeviceCommand_GenOff_PTLmp,						cockpit_device_id = devices.ELEC_INTERFACE,				value_down = 1,	value_up = 0,	name = _('Generator OFF Indicator Light Test'),								category = _('Instrument Panel')},

-- Missile Control Panel
{down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1,			name = _('Missile Control Switch - Up'),		category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_37,		cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1,			name = _('Missile Control Switch - Down'),		category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_18,		cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1,			name = _('Missile Control Switch - LH & RH'),	category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_18,		cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0,			name = _('Missile Control Switch - RH'),		category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_18,		cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1,			name = _('Missile Control Switch - SALVO'),		category = {_('Missile Control Panel'), _('Armament')}},
{pressed = device_commands.Button_38,	cockpit_device_id = devices.WEAPON_SYSTEM, value_pressed = 1.0,		name = _('Missile Tone Volume - CW/Increase'),	category = {_('Missile Control Panel'), _('Armament')}},
{pressed = device_commands.Button_38,	cockpit_device_id = devices.WEAPON_SYSTEM, value_pressed = -1.0,	name = _('Missile Tone Volume - CCW/Decrease'),	category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_20,	up = device_commands.Button_20,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,	value_up = 0,	name = _('Missile Safe Launch Button'),	category = {_('Missile Control Panel'), _('Armament')}},
{down = device_commands.Button_53,	up = device_commands.Button_53,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,	value_up = 0,	name = _('G-Limit Indicator Light Test'),						category = {_('Missile Control Panel'), _('Armament')}},
{pressed = device_commands.Button_56,								cockpit_device_id = devices.WEAPON_SYSTEM, value_pressed = 1.0,				name = _('G-Limit Indicator Light Brightness - CW/Decrease'),	category = {_('Missile Control Panel'), _('Armament')}},
{pressed = device_commands.Button_56,								cockpit_device_id = devices.WEAPON_SYSTEM, value_pressed = -1.0,			name = _('G-Limit Indicator Light Brightness - CCW/Increase'),	category = {_('Missile Control Panel'), _('Armament')}},

-- Left side panel
{down = hydro_commands.F86_CockpitDeviceCommand_FlightControl_EXT,	up = hydro_commands.F86_CockpitDeviceCommand_FlightControl_EXT,	cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	value_up = 0,	name = _('Flight Control Switch - Up'),		category = {_('Left Side Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_FlightControl_EXT,	up = hydro_commands.F86_CockpitDeviceCommand_FlightControl_EXT,	cockpit_device_id = devices.HYDRO_INTERFACE, value_down = -1,	value_up = 0,	name = _('Flight Control Switch - Down'),	category = {_('Left Side Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_FlightControl,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 1,	name = _('Flight Control Switch - ALTERNATE ON'),	category = {_('Left Side Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_FlightControl,		cockpit_device_id = devices.HYDRO_INTERFACE, value_down = 0,	name = _('Flight Control Switch - NORMAL'),			category = {_('Left Side Panel'), _('Hydraulic Systems')}},
{down = hydro_commands.F86_CockpitDeviceCommand_FlightControlReset_EXT,	up = hydro_commands.F86_CockpitDeviceCommand_FlightControlReset_EXT,	cockpit_device_id = devices.HYDRO_INTERFACE, value_down = -1,	value_up = 0,	name = _('Flight Control Switch - RESET'),			category = {_('Left Side Panel'), _('Hydraulic Systems')}},
{down = control_commands.F86_CockpitDeviceCommand_RudderTrim,	up = control_commands.F86_CockpitDeviceCommand_RudderTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = -1,	value_up = 0,	name = _('Rudder Trim Switch - LEFT'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_RudderTrim,	up = control_commands.F86_CockpitDeviceCommand_RudderTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1,	value_up = 0,	name = _('Rudder Trim Switch - RIGHT'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LatAltTrim,																cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.1,					name = _('Lateral Alternate Trim Switch - NORMAL'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LatAltTrim,																cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.0,					name = _('Lateral Alternate Trim Switch - OFF'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LatAltTrim, up = control_commands.F86_CockpitDeviceCommand_LatAltTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.3, value_up = 0.0,	name = _('Lateral Alternate Trim Switch - LEFT'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LatAltTrim, up = control_commands.F86_CockpitDeviceCommand_LatAltTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.5, value_up = 0.0,	name = _('Lateral Alternate Trim Switch - RIGHT'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrim,																cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.1,					name = _('Longitudinal Alternate Trim Switch - NORMAL GRIP CONT'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrim,																cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.0,					name = _('Longitudinal Alternate Trim Switch - OFF'),				category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrim, up = control_commands.F86_CockpitDeviceCommand_LongAltTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.3, value_up = 0.0,	name = _('Longitudinal Alternate Trim Switch - NOSE DOWN'),			category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrim, up = control_commands.F86_CockpitDeviceCommand_LongAltTrim,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0.5, value_up = 0.0,	name = _('Longitudinal Alternate Trim Switch - NOSE UP'),			category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrimSwCover_EXT,	cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1,	name = _('Longitudinal Alternate Trim Switch Cover - OPEN/CLOSE'),	category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrimSwCover,		cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 1,	name = _('Longitudinal Alternate Trim Switch Cover - OPEN'),		category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = control_commands.F86_CockpitDeviceCommand_LongAltTrimSwCover,		cockpit_device_id = devices.CONTROL_INTERFACE, value_down = 0,	name = _('Longitudinal Alternate Trim Switch Cover - CLOSE'),		category = {_('Left Side Panel'), _('Flight Control'), _('Trimmer')}},
{down = air_commands.F86_CockpitDeviceCommand_PressRAM_Sw_EXT,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Pressure Control Switch - PRESS/RAM'),							category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_PressRAM_Sw,			cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Pressure Control Switch - PRESS'),								category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_PressRAM_Sw,			cockpit_device_id = devices.AIR_INTERFACE, value_down = -1,	name = _('Cockpit Pressure Control Switch - RAM'),									category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_275PSI_5PSI_Sw_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Pressure Schedule Selector Switch - 2.75 PSI/5 PSI'),				category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_275PSI_5PSI_Sw,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Pressure Schedule Selector Switch - 2.75 PSI'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_275PSI_5PSI_Sw,		cockpit_device_id = devices.AIR_INTERFACE, value_down = -1,	name = _('Cockpit Pressure Schedule Selector Switch - 5 PSI'),						category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{pressed = air_commands.F86_CockpitDeviceCommand_HeaterReostat_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed = 0.1,		name = _('Cockpit Air Temperature Control Rheostat - CW/HOT'),				category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{pressed = air_commands.F86_CockpitDeviceCommand_HeaterReostat_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_pressed = -0.1,	name = _('Cockpit Air Temperature Control Rheostat - CCW/COLD'),			category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControlSwCover_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Air Temperature Control Switch Cover - OPEN/CLOSE'),	category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControlSwCover,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,	name = _('Cockpit Air Temperature Control Switch Cover - OPEN'),		category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControlSwCover,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0,	name = _('Cockpit Air Temperature Control Switch Cover - CLOSE'),		category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,		name = _('Cockpit Air Temperature Control Switch - CW'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = -1,		name = _('Cockpit Air Temperature Control Switch - CCW'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0.1,	name = _('Cockpit Air Temperature Control Switch - AUTO'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0.0,	name = _('Cockpit Air Temperature Control Switch - OFF'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0.3,	name = _('Cockpit Air Temperature Control Switch - HOT'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_TemperatureControl,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0.5,	name = _('Cockpit Air Temperature Control Switch - COLD'),					category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_AirOutletSelectorLever_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,		name = _('Air Outlet Selector Lever - Up'),			category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_AirOutletSelectorLever_EXT,	cockpit_device_id = devices.AIR_INTERFACE, value_down = -1,		name = _('Air Outlet Selector Lever - Down'),		category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_AirOutletSelectorLever,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 1,		name = _('Air Outlet Selector Lever - DEFROST'),	category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_AirOutletSelectorLever,		cockpit_device_id = devices.AIR_INTERFACE, value_down = 0,		name = _('Air Outlet Selector Lever - BOTH'),		category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = air_commands.F86_CockpitDeviceCommand_AirOutletSelectorLever,		cockpit_device_id = devices.AIR_INTERFACE, value_down = -1,		name = _('Air Outlet Selector Lever - FLOOR'),		category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{down = device_commands.Button_39,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1,		name = _('Gun Selector Switch - CW'),			category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_39,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1,		name = _('Gun Selector Switch - CCW'),			category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_1,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,	name = _('Gun Selector Switch - ALL GUNS'),		category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_1,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,	name = _('Gun Selector Switch - LOWER GUNS'),	category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_1,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,	name = _('Gun Selector Switch - MID GUNS'),		category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_1,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -0.1,	name = _('Gun Selector Switch - UPPER GUNS'),	category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_1,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -0.2,	name = _('Gun Selector Switch - OFF'),			category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_40,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1,		name = _('Rocket Intervalometer Knob - CW'),	category = {_('Left Side Panel'), _('Armament')}},
{down = device_commands.Button_40,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1,		name = _('Rocket Intervalometer Knob - CCW'),	category = {_('Left Side Panel'), _('Armament')}},

-- AN/ARN-6 Radio Compass
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 Function Selector Switch - CW'),			category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_MODE_SELECT_ITER,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,		name = _('AN/ARN-6 Function Selector Switch - CCW'),		category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,		name = _('AN/ARN-6 Tuning Crank - CW/Increase Frequency'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_TUNE_FREQUENCY_EXT,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,		name = _('AN/ARN-6 Tuning Crank - CCW/Decrease Frequency'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 Scale Light Switch - Up'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_LIGHT_SW_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,		name = _('AN/ARN-6 Scale Light Switch - Down'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_LIGHT_SW,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 Scale Light Switch - HI'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_LIGHT_SW,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 0,			name = _('AN/ARN-6 Scale Light Switch - OFF'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_LIGHT_SW,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,		name = _('AN/ARN-6 Scale Light Switch - LO'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 Frequency Band Switch - CW/Increase'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_BAND_SELECT_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = -1,		name = _('AN/ARN-6 Frequency Band Switch - CCW/Decrease'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 0.1,	name = _('AN/ARN-6 Audio Volume Control - Up'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_GAIN_CONTROL_EXT,		cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -0.1,	name = _('AN/ARN-6 Audio Volume Control - Down'),			category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = 1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Right'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{pressed = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	up = radio_compass_commands.ARN6_LOOP_LR_SWITCH,	cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_pressed = -1,	value_up = 0,	name = _('AN/ARN-6 Loop Switch - Left'),	category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_BFO_SWITCH_EXT,			cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 CW-VOICE Switch - CW/VOICE'),			category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_BFO_SWITCH,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 1,			name = _('AN/ARN-6 CW-VOICE Switch - CW'),					category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{down = radio_compass_commands.ARN6_BFO_SWITCH,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS, value_down = 0,			name = _('AN/ARN-6 CW-VOICE Switch - VOICE'),				category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},

-- AN/ARC-27 UHF Radio
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT,	cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_down = 1,			name = _('AN/ARC-27 UHF Preset Channel Selector - CW/Increase'),	category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_PresetChannel_EXT,	cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_down = -1,		name = _('AN/ARC-27 UHF Preset Channel Selector - CCW/Decrease'),	category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,		cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_pressed = 0.1,	name = _('AN/ARC-27 UHF Audio Volume Knob - CW/Up'),				category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},
{pressed = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_EXT,		cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_pressed = -0.1,	name = _('AN/ARC-27 UHF Audio Volume Knob - CCW/Down'),				category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_down = 1,			name = _('AN/ARC-27 UHF Power Switch - CW'),						category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},
{down = radio_commands.F86_CockpitDeviceCommand_ARC27_Mode_EXT,			cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,	value_down = -1,		name = _('AN/ARC-27 UHF Power Switch - CCW'),						category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},

-- AN/APX-6 IFF Transponder
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Master Switch - CW'),				category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode_EXT,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = -1,	name = _('AN/APX-6 IFF Master Switch - CCW'),				category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,			cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Mode 2 Switch - Up'),					category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw_EXT,			cockpit_device_id = devices.AN_APX6_IFF,	value_down = -1,	name = _('AN/APX-6 IFF Mode 2 Switch - Down'),					category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Mode 2 Switch - MODE 2'),				category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = 0,		name = _('AN/APX-6 IFF Mode 2 Switch - OUT'),					category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode2Sw,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = -1,	name = _('AN/APX-6 IFF Mode 2 Switch - I/P'),					category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode3Sw_EXT,			cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Mode 3 Switch - MODE 3/OUT'),			category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode3Sw,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Mode 3 Switch - MODE 3'),				category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_Mode3Sw,				cockpit_device_id = devices.AN_APX6_IFF,	value_down = -1,	name = _('AN/APX-6 IFF Mode 3 Switch - OUT'),					category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSwCover_EXT,	cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Destruct Switch Cover - OPEN/CLOSE'),	category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSwCover,		cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Destruct Switch Cover - OPEN'),			category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSwCover,		cockpit_device_id = devices.AN_APX6_IFF,	value_down = 0,		name = _('AN/APX-6 IFF Destruct Switch Cover - CLOSE'),			category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, up = iff_commands.F86_CockpitDeviceCommand_APX6_DestructSw, cockpit_device_id = devices.AN_APX6_IFF, value_down = 1, value_up = -1,	name = _('AN/APX-6 IFF Destruct Switch'),	category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DialStopBtn_EXT,		cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Dial Stop Button - PRESSED/OFF'),		category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DialStopBtn,			cockpit_device_id = devices.AN_APX6_IFF,	value_down = 1,		name = _('AN/APX-6 IFF Dial Stop Button - PRESSED'),			category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},
{down = iff_commands.F86_CockpitDeviceCommand_APX6_DialStopBtn,			cockpit_device_id = devices.AN_APX6_IFF,	value_down = 0,		name = _('AN/APX-6 IFF Dial Stop Button - OFF'),				category = {_('AN/APX-6 IFF Transponder'), _('Right Side Panel')}},

-- Right forward console
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSwCover_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,	name = _('Generator Switch Cover - OPEN/CLOSE'),	category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSwCover,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,	name = _('Generator Switch Cover - OPEN'),			category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSwCover,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,	name = _('Generator Switch Cover - CLOSE'),			category = {_('Right Forward Console'), _('Electric System')}},
--{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,	name = _('Generator Switch - ON/OFF'),				category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Generator Switch - ON'),					category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw,			cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,		name = _('Generator Switch - OFF'),					category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT,	up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_EXT, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1, value_up = 0,			name = _('Generator Switch - RESET'),	category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_ITER,	up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_ITER, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0,		name = _('Generator Switch - Up'),		category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_ITER,	up = electric_commands.F86_CockpitDeviceCommand_GeneratorSw_ITER, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1, value_up = 0,	name = _('Generator Switch - Down'),	category = {_('Right Forward Console'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Engine Master Switch - ON/OFF'),			category = {_('Right Forward Console'), _('Engine')}},
{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Engine Master Switch - ON'),				category = {_('Right Forward Console'), _('Engine')}},
{down = electric_commands.F86_CockpitDeviceCommand_EngineMasterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,	name = _('Engine Master Switch - OFF'),				category = {_('Right Forward Console'), _('Engine')}},
--{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Battery-Starter Switch - BATTERY/OFF'),	category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Battery-Starter Switch - BATTERY'),		category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,		name = _('Battery-Starter Switch - OFF'),			category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT, up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = -1, value_up = 0,	name = _('Battery-Starter Switch - STARTER'),	category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_ITER,	up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_ITER, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1, value_up = 0,	name = _('Battery-Starter Switch - Up'),		category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_ITER,	up = electric_commands.F86_CockpitDeviceCommand_BatteryStarterSw_ITER, cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1, value_up = 0,	name = _('Battery-Starter Switch - Down'),		category = {_('Right Forward Console'), _('Engine'), _('Electric System')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_Cover_EXT,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Emergency (In-air) Ignition Switch Cover - OPEN/CLOSE'),	category = {_('Right Forward Console'), _('Engine')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_Cover,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Emergency (In-air) Ignition Switch Cover - OPEN'),		category = {_('Right Forward Console'), _('Engine')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_Cover,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,		name = _('Emergency (In-air) Ignition Switch Cover - CLOSE'),		category = {_('Right Forward Console'), _('Engine')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart_EXT,		cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,			name = _('Emergency (In-air) Ignition Switch - ON/OFF'),			category = {_('Right Forward Console'), _('Engine')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,			name = _('Emergency (In-air) Ignition Switch - ON'),				category = {_('Right Forward Console'), _('Engine')}},
{down = engine_commands.F86_CockpitDeviceCommand_AirStart,			cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,		name = _('Emergency (In-air) Ignition Switch - OFF'),				category = {_('Right Forward Console'), _('Engine')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrectionCover_EXT,	cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,		name = _('Fuel Densitometer Selection Switch Cover - OPEN/CLOSE'),	category = {_('Right Forward Console'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrectionCover,		cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,		name = _('Fuel Densitometer Selection Switch Cover - OPEN'),		category = {_('Right Forward Console'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrectionCover,		cockpit_device_id = devices.FUEL_INTERFACE, value_down = 0,		name = _('Fuel Densitometer Selection Switch Cover - CLOSE'),		category = {_('Right Forward Console'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection_EXT,		cockpit_device_id = devices.FUEL_INTERFACE,	value_down = 1,		name = _('Fuel Densitometer Selection Switch - OUT/IN'),			category = {_('Right Forward Console'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down = 1,		name = _('Fuel Densitometer Selection Switch - OUT'),				category = {_('Right Forward Console'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_DensitometerCorrection,			cockpit_device_id = devices.FUEL_INTERFACE,	value_down = -1,	name = _('Fuel Densitometer Selection Switch - IN'),				category = {_('Right Forward Console'), ('Fuel System')}},
{down = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,	up = electric_commands.F86_CockpitDeviceCommand_StopStarterBtn,	cockpit_device_id = devices.ELEC_INTERFACE,	  value_down = 1,  value_up = 0,  name = _('Stop-Starter Button'),	category = {_('Right Forward Console'), _('Engine')}},
{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE,	value_down = 1,			name = _('Compass Light Switch - ON/OFF'),							category = {_('Right Forward Console'), _('Interior Lighting')}},
{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw,		cockpit_device_id = devices.LIGHT_INTERFACE,	value_down = 1,			name = _('Compass Light Switch - ON'),								category = {_('Right Forward Console'), _('Interior Lighting')}},
{down = light_commands.F86_CockpitDeviceCommand_StandByCompassLightSw,		cockpit_device_id = devices.LIGHT_INTERFACE,	value_down = -1,		name = _('Compass Light Switch - OFF'),								category = {_('Right Forward Console'), _('Interior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer_EXT,	cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,		name = _('Exterior Lighting Dimmer Switch - BRIGHT/DIM'),		category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,		name = _('Exterior Lighting Dimmer Switch - BRIGHT'),			category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLtsDimmer,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = -1,	name = _('Exterior Lighting Dimmer Switch - DIM'),				category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,		name = _('Position and Fuselage Light Selector Switch - Up'),		category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts_EXT,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = -1,	name = _('Position and Fuselage Light Selector Switch - Down'),		category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,			cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 1,		name = _('Position and Fuselage Light Selector Switch - STEADY'),	category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,			cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = 0,		name = _('Position and Fuselage Light Selector Switch - OFF'),		category = {_('Right Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_PosAndFusLts,			cockpit_device_id = devices.NAV_LIGHTS_INTERFACE,	value_down = -1,	name = _('Position and Fuselage Light Selector Switch - FLASH'),	category = {_('Right Forward Console'), _('Exterior Lighting')}},

-- Left forward console
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,			name = _('Engine Anti-Ice & Screen Switch - Up'),		category = {_('Left Forward Console'), _('Engine')}},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen_EXT,		cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1,		name = _('Engine Anti-Ice & Screen Switch - Down'),		category = {_('Left Forward Console'), _('Engine')}},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen,			cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,			name = _('Engine Anti-Ice & Screen Switch - EXTEND'),	category = {_('Left Forward Console'), _('Engine')}},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen,			cockpit_device_id = devices.AIR_INTERFACE,	value_down = 0,			name = _('Engine Anti-Ice & Screen Switch - RET'),		category = {_('Left Forward Console'), _('Engine')}},
{down = air_commands.F86_CockpitDeviceCommand_EngineAntiIceScreen,			cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1,		name = _('Engine Anti-Ice & Screen Switch - ANTI-ICE'),	category = {_('Left Forward Console'), _('Engine')}},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw_EXT,			cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,			name = _('Pitot Heater Switch - ON/OFF'),				category = {_('Left Forward Console')}},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw,				cockpit_device_id = devices.AIR_INTERFACE,	value_down = 1,			name = _('Pitot Heater Switch - ON'),					category = {_('Left Forward Console')}},
{down = air_commands.F86_CockpitDeviceCommand_PitotHeater_Sw,				cockpit_device_id = devices.AIR_INTERFACE,	value_down = -1,		name = _('Pitot Heater Switch - OFF'),					category = {_('Left Forward Console')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT,	cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1,	name = _('Landing & Taxi Lights Switch - Up'),			category = {_('Left Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights_EXT,	cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = -1,	name = _('Landing & Taxi Lights Switch - Down'),		category = {_('Left Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 1,	name = _('Landing & Taxi Lights Switch - EXTEND & ON'),	category = {_('Left Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = 0,	name = _('Landing & Taxi Lights Switch - OFF'),			category = {_('Left Forward Console'), _('Exterior Lighting')}},
{down = nav_lights_commands.F86_CockpitDeviceCommand_LandAndTaxiLights,		cockpit_device_id = devices.NAV_LIGHTS_INTERFACE, value_down = -1,	name = _('Landing & Taxi Lights Switch - RETRACT'),		category = {_('Left Forward Console'), _('Exterior Lighting')}},
{down = hydro_commands.F86_CockpitDeviceCommand_HornCutOut,	up = hydro_commands.F86_CockpitDeviceCommand_HornCutOut,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1, value_up = 0,	name = _('Landing Gear Warning Horn Cutout Button'),	category = {_('Left Forward Console'), _('Gear Systems')}},

-- Drop tank control panel
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1,	name = _('Drop Tank Selector Switch - CW'),		category = {_('Drop Tank Control Panel'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_TankSelector_Sw_EXT,  cockpit_device_id = devices.FUEL_INTERFACE, value_down = -1,	name = _('Drop Tank Selector Switch - CCW'),	category = {_('Drop Tank Control Panel'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn,			up = fuel_commands.F86_CockpitDeviceCommand_TankJettison_Btn,			cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0,	name = _('Drop Tank Jettison Button'),					category = {_('Drop Tank Control Panel'), ('Fuel System')}},
{down = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp,	up = fuel_commands.F86_CockpitDeviceCommand_OutDropTanksEmpty_TPLmp,	cockpit_device_id = devices.FUEL_INTERFACE, value_down = 1, value_up = 0,		name = _('Outboard Drop Tank Empty Indicator Light'),	category = {_('Drop Tank Control Panel'), ('Fuel System')}},
{down = device_commands.Button_17, up = device_commands.Button_17,	cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1, value_up = 0,																					name = _('Bomb-Rocket-Tank Jettison Button'),			category = {_('Drop Tank Control Panel'), ('Fuel System')}},

-- Interior Light Control Panel
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Primary Light Rheostat - CW/Increase'),			category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Primary Light Rheostat - CCW/Decrease'),			category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,		cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Instrument Panel Auxiliary Light Rheostat - CW/Increase'),		category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{pressed = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_EXT,		cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Instrument Panel Auxiliary Light Rheostat - CCW/Decrease'),	category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = 0.5,  name = _('Console and Panel Light Rheostat - CW/Increase'),					category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{pressed = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_EXT,	cockpit_device_id = devices.LIGHT_INTERFACE, value_pressed = -0.5, name = _('Console and Panel Light Rheostat - CCW/Decrease'),					category = {_('Interior Light Control Panel'), _('Interior Lighting')}},

-- Left CB Switch Panel
-- line 1
{down = electric_commands.F86_CockpitDeviceCommand_CB_BombRocketTankSalvo_EXT,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bomb-Rocket-Tank Jettison Switch - ON/OFF'),				category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BombRocketTankSalvo,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bomb-Rocket-Tank Jettison Switch - ON'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BombRocketTankSalvo,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Bomb-Rocket-Tank Jettison Switch - OFF'),					category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_BombSel_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bomb Sel Switch - ON/OFF'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BombSel,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bomb Sel Switch - ON'),									category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BombSel,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Bomb Sel Switch - OFF'),									category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_GyrSynCompass_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Gyrosyn Compass Switch - ON/OFF'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_GyrSynCompass,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Gyrosyn Compass Switch - ON'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_GyrSynCompass,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Gyrosyn Compass Switch - OFF'),							category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_AntiIceScreens_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Anti-Ice and Screens Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AntiIceScreens,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Anti-Ice and Screens Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AntiIceScreens,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Anti-Ice and Screens Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_TurnBankInd_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Turn and Bank Indicator Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_TurnBankInd,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Turn and Bank Indicator Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_TurnBankInd,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Turn and Bank Indicator Switch - OFF'),					category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_RudderTrimTakeOffInd_EXT,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Rudder Trim and TakeOff Indicator Switch - ON/OFF'),		category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_RudderTrimTakeOffInd,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Rudder Trim and TakeOff Indicator Switch - ON'),			category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_RudderTrimTakeOffInd,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Rudder Trim and TakeOff Indicator Switch - OFF'),			category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_AltAilTrim_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Alternate Aileron Trim Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AltAilTrim,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Alternate Aileron Trim Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AltAilTrim,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Alternate Aileron Trim Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_AilHorizTrimAltHorizTrim_EXT,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Aileron and Horizontal Stabilizer Trim Switch - ON/OFF'),	category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AilHorizTrimAltHorizTrim,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Aileron and Horizontal Stabilizer Trim Switch - ON'),		category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AilHorizTrimAltHorizTrim,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Aileron and Horizontal Stabilizer Trim Switch - OFF'),		category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLightControl_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Light Control Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLightControl,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Light Control Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLightControl,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Landing Light Control Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLights_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Lights Switch - ON/OFF'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLights,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Lights Switch - ON'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGLights,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Landing Lights Switch - OFF'),								category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelDropTank_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fuel Drop Tank Switch - ON/OFF'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelDropTank,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fuel Drop Tank Switch - ON'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelDropTank,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Fuel Drop Tank Switch - OFF'),								category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_BusTieInControl_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bus Tie-In Control Switch - ON/OFF'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BusTieInControl,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Bus Tie-In Control Switch - ON'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_BusTieInControl,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Bus Tie-In Control Switch - OFF'),							category = _('Left CB Switch Panel')},

-- line 2
{down = electric_commands.F86_CockpitDeviceCommand_CB_SpeedBrake_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Speed Brake Switch - ON/OFF'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SpeedBrake,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Speed Brake Switch - ON'),									category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SpeedBrake,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Speed Brake Switch - OFF'),								category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearWarn_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Warning Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearWarn,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Warning Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearWarn,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Landing Gear Warning Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearControl_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Control Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearControl,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Control Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearControl,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Landing Gear Control Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearPosInd_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Position Indicator Switch - ON/OFF'),			category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearPosInd,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Landing Gear Position Indicator Switch - ON'),				category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LDGGearPosInd,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Landing Gear Position Indicator Switch - OFF'),			category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoosterAft_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Aft. Fuel Booster Pump Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoosterAft,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Aft. Fuel Booster Pump Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoosterAft,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Aft. Fuel Booster Pump Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_AltEmergHydContHydPressInd_EXT,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Alternate Emergency Hydraulic Control Switch - ON/OFF'),	category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AltEmergHydContHydPressInd,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Alternate Emergency Hydraulic Control Switch - ON'),		category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_AltEmergHydContHydPressInd,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Alternate Emergency Hydraulic Control Switch - OFF'),		category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_SightPower_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Power Switch - ON/OFF'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightPower,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Power Switch - ON'),									category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightPower,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Sight Power Switch - OFF'),								category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_SightHeater_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Heater Switch - ON/OFF'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightHeater,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Heater Switch - ON'),								category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightHeater,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Sight Heater Switch - OFF'),								category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_SightACPowerUnit_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight AC Power Unit Switch - ON/OFF'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightACPowerUnit,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight AC Power Unit Switch - ON'),							category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightACPowerUnit,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Sight AC Power Unit Switch - OFF'),						category = _('Left CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_ANARN6RadioCompass_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/ARN-6 Radio Compass Switch - ON/OFF'),					category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANARN6RadioCompass,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/ARN-6 Radio Compass Switch - ON'),						category = _('Left CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANARN6RadioCompass,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB AN/ARN-6 Radio Compass Switch - OFF'),						category = _('Left CB Switch Panel')},

-- Right CB Switch Panel
-- line 1
{down = electric_commands.F86_CockpitDeviceCommand_CB_EngMasterFuelShutOff_EXT,			cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Engine Master Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_EngMasterFuelShutOff,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Engine Master Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_EngMasterFuelShutOff,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Engine Master Switch - OFF'),									category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_EngIgn_EXT,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Engine Ignition Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_EngIgn,							cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Engine Ignition Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_EngIgn,							cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Engine Ignition Switch - OFF'),								category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelLevel_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fuel Level Switch - ON/OFF'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelLevel,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fuel Level Switch - ON'),										category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelLevel,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Fuel Level Switch - OFF'),										category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_InvGenFailureOvervoltLtsTest_EXT,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Inverter-Generator Failure Lights Test Switch - ON/OFF'),		category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_InvGenFailureOvervoltLtsTest,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Inverter-Generator Failure Lights Test Switch - ON'),			category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_InvGenFailureOvervoltLtsTest,		cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Inverter-Generator Failure Lights Test Switch - OFF'),			category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_ConsolePedLTS_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Console-Pedestal-Instrument Lights Switch - ON/OFF'),			category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ConsolePedLTS,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Console-Pedestal-Instrument Lights Switch - ON'),				category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ConsolePedLTS,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Console-Pedestal-Instrument Lights Switch - OFF'),				category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoostFwd_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fwd. Fuel Booster Pump Switch - ON/OFF'),						category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoostFwd,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Fwd. Fuel Booster Pump Switch - ON'),							category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_FuelBoostFwd,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Fwd. Fuel Booster Pump Switch - OFF'),							category = _('Right CB Switch Panel')},

-- line 2
{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapLh_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Left Wing Flap Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapLh,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Left Wing Flap Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapLh,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Left Wing Flap Switch - OFF'),									category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapRh_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Right Wing Flap Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapRh,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Right Wing Flap Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_WingFlapRh,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Right Wing Flap Switch - OFF'),								category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_LightFluor_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Canopy Control Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LightFluor,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Canopy Control Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_LightFluor,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Canopy Control Switch - OFF'),									category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_SightControl_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Control Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightControl,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB Sight Control Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_SightControl,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB Sight Control Switch - OFF'),									category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPC3Radio_EXT,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/ARC-27 Radio Switch - ON/OFF'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPC3Radio,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/ARC-27 Radio Switch - ON'),									category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPC3Radio,						cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB AN/ARC-27 Radio Switch - OFF'),								category = _('Right CB Switch Panel')},

{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPX6RadioIFF_EXT,				cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/APX-6 Radar IFF Switch - ON/OFF'),							category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPX6RadioIFF,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,	name = _('CB AN/APX-6 Radar IFF Switch - ON'),								category = _('Right CB Switch Panel')},
{down = electric_commands.F86_CockpitDeviceCommand_CB_ANAPX6RadioIFF,					cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,	name = _('CB AN/APX-6 Radar IFF Switch - OFF'),								category = _('Right CB Switch Panel')},

-- Center Pedestal
-- systems
{down = electric_commands.F86_CockpitDeviceCommand_InverterSw_EXT,	cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Instrument Power Switch - ALTERNATE/NORMAL'),	category = {_('Center Pedestal'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_InverterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,		name = _('Instrument Power Switch - ALTERNATE'),		category = {_('Center Pedestal'), _('Electric System')}},
{down = electric_commands.F86_CockpitDeviceCommand_InverterSw,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,	name = _('Instrument Power Switch - NORMAL'),			category = {_('Center Pedestal'), _('Electric System')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyDeclutchHandle_EXT,	cockpit_device_id = devices.COCKPIT_MECHANICS,	value_down = 1,	name = _('Canopy Declutch Handle - PULL/PUSH'),	category = {_('Center Pedestal'), _('Canopy')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyDeclutchHandle,		cockpit_device_id = devices.COCKPIT_MECHANICS,	value_down = 1,	name = _('Canopy Declutch Handle - PULL'),		category = {_('Center Pedestal'), _('Canopy')}},
{down = cockpit_mechanics_commands.F86_CockpitDeviceCommand_CanopyDeclutchHandle,		cockpit_device_id = devices.COCKPIT_MECHANICS,	value_down = 0,	name = _('Canopy Declutch Handle - PUSH'),		category = {_('Center Pedestal'), _('Canopy')}},
{down = hydro_commands.F86_CockpitDeviceCommand_EmergencyLdgGearsReleaseHandle,	cockpit_device_id = devices.HYDRO_INTERFACE,	value_down = 1,	name = _('Emergency Landing Gear Release Handle - PULL'),	category = {_('Center Pedestal'), _('Gear Systems')}},
-- sight
{down = device_commands.Button_22,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('Variable Sight Selector Unit - Target Speed Switch - CCW/Left'),					category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_22,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = -1,		name = _('Variable Sight Selector Unit - Target Speed Switch - CW/Right'),					category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_12,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0.0,		name = _('Variable Sight Selector Unit - Target Speed Switch - LO'),						category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_12,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0.5,		name = _('Variable Sight Selector Unit - Target Speed Switch - HI'),						category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_12,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1.0,		name = _('Variable Sight Selector Unit - Target Speed Switch - TR'),						category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CCW'),				category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_29,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - CW'),				category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_11,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0.0,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - ROCKET'),			category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_11,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0.1,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - GUN'),				category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_11,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0.2,		name = _('Variable Sight Selector Unit - Sight Function Selector Lever - BOMB'),			category = {_('Center Pedestal'), _('A-4 Sight')}},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CW/Increase'),	category = {_('Center Pedestal'), _('A-4 Sight')}},
{pressed = device_commands.Button_23,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.1,	name = _('Variable Sight Selector Unit - Rocket Depression Angle Selector - CCW/Decrease'),	category = {_('Center Pedestal'), _('A-4 Sight')}},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.1,	name = _('Bomb-Target Wind Control Knob - CW'),												category = {_('Center Pedestal'), _('A-4 Sight')}},
{pressed = device_commands.Button_21,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.1,	name = _('Bomb-Target Wind Control Knob - CCW'),											category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_24,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('A-4 Sight Filament Selector Switch - SECONDARY/PRIMARY'),							category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_15,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('A-4 Sight Filament Selector Switch - SECONDARY'),									category = {_('Center Pedestal'), _('A-4 Sight')}},
{down = device_commands.Button_15,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = -1,		name = _('A-4 Sight Filament Selector Switch - PRIMARY'),									category = {_('Center Pedestal'), _('A-4 Sight')}},
-- weapon
{down = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Gun Heater Switch - HEATER/OFF'),							category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_3,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Gun Heater Switch - HEATER'),								category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_3,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('Gun Heater Switch - OFF'),								category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Gun-Missile Selector Switch - CCW'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_25,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Gun-Missile Selector Switch - CW'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.0,	name = _('Gun-Missile Selector Switch - MISSILE'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.1,	name = _('Gun-Missile Selector Switch - GUNS'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.2,	name = _('Gun-Missile Selector Switch - SIGHT CAMERA & RADAR'),		category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.3,	name = _('Gun-Missile Selector Switch - OFF'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Release Selector Switch Cover - OPEN/CLOSE'),		category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_10,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Release Selector Switch Cover - OPEN'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_10,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('Rocket Release Selector Switch Cover - CLOSE'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Release Selector Switch - Up'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Rocket Release Selector Switch - Down'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_9,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Release Selector Switch - SINGLE'),				category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_9,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('Rocket Release Selector Switch - OFF'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_9,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Rocket Release Selector Switch - AUTO'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_30,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Jettison Switch - READY/OFF'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_12,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Jettison Switch - READY'),							category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_12,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Rocket Jettison Switch - OFF'),							category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_31,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Fuze (Arming) Switch - Up'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_31,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Rocket Fuze (Arming) Switch - Down'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_11,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Rocket Fuze (Arming) Switch - DELAY'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_11,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('Rocket Fuze (Arming) Switch - OFF'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_11,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Rocket Fuze (Arming) Switch - INSTANT'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_32,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Demolition Bomb Release Selector Switch - AUTO/MANUAL'),	category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_6,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Demolition Bomb Release Selector Switch - AUTO'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_6,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Demolition Bomb Release Selector Switch - MANUAL'),		category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Demolition Bomb Sequence Selector Switch - CW'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_33,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Demolition Bomb Sequence Selector Switch - CCW'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_8,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.1,	name = _('Demolition Bomb Sequence Selector Switch - ALL'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_8,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.0,	name = _('Demolition Bomb Sequence Selector Switch - OFF'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_8,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.5,	name = _('Demolition Bomb Sequence Selector Switch - LEFT'),		category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_8,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0.3,	name = _('Demolition Bomb Sequence Selector Switch - RIGHT'),		category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_34,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Demolition Bomb Arming Switch - Up'),						category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_34,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Demolition Bomb Arming Switch - Down'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_7,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('Demolition Bomb Arming Switch - NOSE & TAIL'),			category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_7,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 0,		name = _('Demolition Bomb Arming Switch - OFF'),					category = {_('Center Pedestal'), _('Armament')}},
{down = device_commands.Button_7,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('Demolition Bomb Arming Switch - TAIL ONLY'),				category = {_('Center Pedestal'), _('Armament')}},

-- Oxygen Regulator Panel
{down = oxygen_commands.F86_CockpitDeviceCommand_OxygenDiluterLever_EXT,	cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,	name = _('Oxygen Regulator Diluter Lever - NORMAL/100%'),			category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_OxygenDiluterLever,		cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,	name = _('Oxygen Regulator Diluter Lever - NORMAL'),				category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_OxygenDiluterLever,		cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 0,	name = _('Oxygen Regulator Diluter Lever - 100%'),					category = _('Oxygen Regulator Panel')},
{pressed = oxygen_commands.F86_CockpitDeviceCommand_OxygenSupplyLever_EXT,	cockpit_device_id = devices.OXYGEN_INTERFACE,	value_pressed = 0.1,	name = _('Oxygen Regulator Supply Lever - CW/ON'),		category = _('Oxygen Regulator Panel')},
{pressed = oxygen_commands.F86_CockpitDeviceCommand_OxygenSupplyLever_EXT,	cockpit_device_id = devices.OXYGEN_INTERFACE,	value_pressed = -0.1,	name = _('Oxygen Regulator Supply Lever - CCW/OFF'),	category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_WarningSystemSw_EXT,		cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,			name = _('Oxygen Regulator Warning Light Switch - ON/OFF'),	category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_WarningSystemSw,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,			name = _('Oxygen Regulator Warning Light Switch - ON'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_WarningSystemSw,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 0,			name = _('Oxygen Regulator Warning Light Switch - OFF'),	category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencySw_EXT,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1,		name = _('Oxygen Regulator Emergency Lever - Left'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencySw_EXT,			cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,			name = _('Oxygen Regulator Emergency Lever - Right'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencySw,				cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = -1,		name = _('Oxygen Regulator Emergency Lever - LEFT'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencySw,				cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 0,			name = _('Oxygen Regulator Emergency Lever - CENTER'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencySw,				cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,			name = _('Oxygen Regulator Emergency Lever - RIGHT'),		category = _('Oxygen Regulator Panel')},
{down = oxygen_commands.F86_CockpitDeviceCommand_EmergencyBtn,	up = oxygen_commands.F86_CockpitDeviceCommand_EmergencyBtn,	cockpit_device_id = devices.OXYGEN_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Oxygen Regulator Emergency Lever - PRESS'),		category = _('Oxygen Regulator Panel')},

-- A-4 Sight
{	pressed = iCommandPlaneIncreaseBase_Distance,	up = iCommandPlaneStopBase_Distance,						name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Increase'),				category = _('A-4 Sight')},
{	pressed = iCommandPlaneDecreaseBase_Distance,	up = iCommandPlaneStopBase_Distance,						name = _('A-4 Sight Wing Span Adjustment Knob - Wing Span Decrease'),				category = _('A-4 Sight')},
{	pressed = device_commands.Button_18,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 1,		name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CCW/Increase'),	category = {_('A-4 Sight'), _('Throttle Grip')}},
{	pressed = device_commands.Button_19,	cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 1,		name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - CW/Decrease'),	category = {_('A-4 Sight'), _('Throttle Grip')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 0,			name = _('A-4 Sight Manual Ranging Control (Throttle Twist Grip) - Return to CCW spring-loaded position'),	category = {_('A-4 Sight'), _('Throttle Grip')}},
{	down = iCommandPlaneDesignate_CageOn,	up = iCommandPlaneDesignate_CageOff,								name = _('A-4 Sight Electrical Caging Button (On Throttle)'),					category = {_('A-4 Sight'), _('Throttle Grip')}},
{	down = device_commands.Button_17,		cockpit_device_id = devices.A4_GUNSIGHT,	value_down = 1,			name = _('A-4 Sight Mechanical Caging Lever - ON/OFF'),								category = _('A-4 Sight')},
{combos = {{key = "JOY_BTN19"}, },	down = iCommandPlaneChangeLock,			up = iCommandPlaneChangeLockUp,										name = _('A-4 Sight Radar Target Selector Button'),								category = _('A-4 Sight')},
{	pressed = device_commands.Button_5,		cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = 0.2,	name = _('A-4 Sight Reticle Dimmer Control - CW/BRIGHT'),							category = _('A-4 Sight')},
{	pressed = device_commands.Button_5,		cockpit_device_id = devices.A4_GUNSIGHT,	value_pressed = -0.2,	name = _('A-4 Sight Reticle Dimmer Control - CCW/DIM'),								category = _('A-4 Sight')},
{	pressed = device_commands.Button_2,		cockpit_device_id = devices.AN_APG_30,		value_pressed = 1,		name = _('A-4 Sight Radar Range Sweep Rheostat - CW/Increase'),						category = _('A-4 Sight')},
{	pressed = device_commands.Button_2,		cockpit_device_id = devices.AN_APG_30,		value_pressed = -1,		name = _('A-4 Sight Radar Range Sweep Rheostat - CCW/Decrease'),					category = _('A-4 Sight')},
{	pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CW/Increase'),			category = _('A-4 Sight')},
{	pressed = device_commands.Button_35,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1,		name = _('A-4 Sight Bombing Altimeter Target Altitude Knob - CCW/Decrease'),		category = _('A-4 Sight')},
{	pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 1,		name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CW/Increase'),		category = _('A-4 Sight')},
{	pressed = device_commands.Button_36,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -1,		name = _('A-4 Sight Bombing Altimeter Index Altitude Handle - CCW/Decrease'), 		category = _('A-4 Sight')},

-- Manual Pip Control Panel
{down = device_commands.Button_41,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Manual Pip Control Switch - BOMB/NORMAL'),	category = {_('Manual Pip Control Panel')}},
{down = device_commands.Button_4,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Manual Pip Control Switch - BOMB'),			category = {_('Manual Pip Control Panel')}},
{down = device_commands.Button_4,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Manual Pip Control Switch - NORMAL'),			category = {_('Manual Pip Control Panel')}},
{pressed = device_commands.Button_42,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = 0.3,	name = _('Manual Pip Control Knob - CW'),				category = {_('Manual Pip Control Panel')}},
{pressed = device_commands.Button_42,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_pressed = -0.3,	name = _('Manual Pip Control Knob - CCW'), 				category = {_('Manual Pip Control Panel')}},
{down = device_commands.Button_43,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,			name = _('Manual Pip Control Change Calibrated Dials (Presets) - Up'),		category = {_('Manual Pip Control Panel')}},
{down = device_commands.Button_43,		cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,		name = _('Manual Pip Control Change Calibrated Dials (Presets) - Down'),	category = {_('Manual Pip Control Panel')}},

-- LABS Switch Panel
{down = device_commands.Button_45,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Start Switch - ON/OFF'),				category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_14,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Start Switch - ON'),					category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_14,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('LABS Start Switch - OFF'),				category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_44,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Gyro Caging Switch - UNCAGE/CAGE'),	category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_13,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Gyro Caging Switch - UNCAGE'),		category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_13,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('LABS Gyro Caging Switch - CAGE'),			category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_46,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Change-over Switch - LABS/A-4'),		category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_15,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = 1,		name = _('LABS Change-over Switch - LABS'),			category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},
{down = device_commands.Button_15,	cockpit_device_id = devices.WEAPON_SYSTEM,	value_down = -1,	name = _('LABS Change-over Switch - A-4'),			category = {_('LABS Switch Panel'), _('Instrument Panel'), _('Armament')}},


},
axisCommands = {

{action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
{action = iCommandViewZoomAbs				, name = _('Zoom View')},
{action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},

-- Flight Control
{combos = {{key = "JOY_X"}, },	action = iCommandPlaneRoll,			name = _('Roll'),	category = {_('Flight Control')}},
{combos = {{key = "JOY_Y"}, },	action = iCommandPlanePitch,		name = _('Pitch'),	category = {_('Flight Control')}},
{	action = iCommandPlaneRudder,		name = _('Rudder'),	category = {_('Flight Control')}},
{	action = iCommandPlaneThrustCommon,	name = _('Thrust'),	category = {_('Flight Control')}},

-- A-4 Sight
{action = iCommandPlaneSelecterVerticalAbs,											name = _('Manual Range'),										category = {_('A-4 Sight'), _('Throttle Grip')}},
{action = iCommandPlaneBase_DistanceAbs,											name = _('Wing Span'),											category = {_('A-4 Sight')}},
{action = device_commands.Button_28,	cockpit_device_id = devices.A4_GUNSIGHT,	name = _('Bomb-Target Wind Control Knob'),						category = {_('A-4 Sight'), _('Center Pedestal')}},
{action = device_commands.Button_8,		cockpit_device_id = devices.A4_GUNSIGHT,	name = _('A-4 Sight Reticle Dimmer Control'),					category = {_('A-4 Sight')}},
{action = device_commands.Button_49,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('A-4 Sight Bombing Altimeter Index Altitude Handle'),	category = {_('A-4 Sight')}},
{action = device_commands.Button_50,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('A-4 Sight Bombing Altimeter Target Altitude Knob'),	category = {_('A-4 Sight')}},
{action = device_commands.Button_3,		cockpit_device_id = devices.AN_APG_30,		name = _('A-4 Sight Radar Range Sweep Rheostat'),				category = {_('A-4 Sight')}},

-- wheel brake
{action = iCommandWheelBrake,		name = _('Wheel Brake'),		category = {_('Gear Systems')}},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left'),	category = {_('Gear Systems')}},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right'),	category = {_('Gear Systems')}},

-- Interior Light Control Panel
{action = light_commands.F86_CockpitDeviceCommand_InstPanelPrimLightControl_AXIS,	cockpit_device_id = devices.LIGHT_INTERFACE,	name = _('Instrument Panel Primary Light Rheostat'),	category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{action = light_commands.F86_CockpitDeviceCommand_InstPanelAuxLightControl_AXIS,	cockpit_device_id = devices.LIGHT_INTERFACE,	name = _('Instrument Panel Auxiliary Light Rheostat'),	category = {_('Interior Light Control Panel'), _('Interior Lighting')}},
{action = light_commands.F86_CockpitDeviceCommand_ConsoleAndPanelLightControl_AXIS,	cockpit_device_id = devices.LIGHT_INTERFACE,	name = _('Console and Panel Light Rheostat'),			category = {_('Interior Light Control Panel'), _('Interior Lighting')}},


{action = air_commands.F86_CockpitDeviceCommand_HeaterReostat_AXIS,			cockpit_device_id = devices.AIR_INTERFACE,		name = _('Cockpit Air Temperature Control Rheostat'),	category = {_('Left Side Panel'), _('Air Conditioning and Pressurization Systems')}},
{action = oxygen_commands.F86_CockpitDeviceCommand_OxygenSupplyLever_AXIS,	cockpit_device_id = devices.OXYGEN_INTERFACE,	name = _('Oxygen Regulator Supply Lever'),				category = {_('Oxygen Regulator Panel')}},

{action = device_commands.Button_51,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('Missile Tone Volume'),	category = {_('Missile Control Panel'), _('Armament')}},
{action = device_commands.Button_55,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('G-Limit Indicator Light Brightness'),	category = {_('Missile Control Panel'), _('Armament')}},

{action = attitude_indicator_commands.F86_CockpitDeviceCommand_PitchTrim_AXIS,	cockpit_device_id = devices.ATTITUDE_INDICATOR,	name = _('J-8 Attitude Indicator Pitch Trim Knob'),	category = {_('Instrument Panel')}},

{action = radio_compass_commands.ARN6_GAIN_CONTROL_AXIS,				cockpit_device_id = devices.AN_ARN_6_RADIO_COMPASS,		name = _('AN/ARN-6 Audio Volume Control'),		category = {_('AN/ARN-6 Radio Compass'), _('Right Side Panel')}},
{action = radio_commands.F86_CockpitDeviceCommand_ARC27_Volume_AXIS,	cockpit_device_id = devices.AN_ARC_27_COMMAND_SET,		name = _('AN/ARC-27 UHF Audio Volume Knob'),	category = {_('AN/ARC-27 UHF Radio'), _('Right Side Panel')}},

{action = device_commands.Button_52,	cockpit_device_id = devices.WEAPON_SYSTEM,	name = _('Manual Pip Control Knob'),	category = {_('Manual Pip Control Panel')}},


},
}