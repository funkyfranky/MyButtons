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

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: begin additonal buttons
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

------------------------------------------------
-- Right Side Panel ----------------------------
------------------------------------------------
-- Internal Lights
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Cargo Cabin Duty Lights On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.LIGHT_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Cargo Cabin Common Lights On/Off'), category = {_('_My Buttons')}},
-- External Lights
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down =-1.0, value_up = 0.0, name = _('Nav. Lights Dim/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1.0, value_up = 0.0, name = _('Nav. Lights Bright/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down =-1.0, value_up = 0.0, name = _('Formation Lights Dim/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1.0, value_up = 0.0, name = _('Formation Lights Bright/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_14, up = device_commands.Button_14, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1.0, value_up = 0.0, name = _('Tip Lights On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1.0, value_up = 0.0, name = _('Strobe Light On/Off'), category = {_('_My Buttons')}},
-- Engines
{down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Engine Dust Protection Left Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Engine Dust Protection Right Switch On/Off'), category = {_('_My Buttons')}},
-- Heating
{down = device_commands.Button_38, up = device_commands.Button_38, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Pitot Heater Left Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_39, up = device_commands.Button_39, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Pitot Heater Right Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id = devices.CLOCK,            value_down = 1.0, value_up = 0.0, name = _('Clock Heating Switch On/Off'), category = {_('_My Buttons')}},
{down = cb_start_cmd+75,           up = cb_start_cmd+75,           cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Battery Heating Switch On/Off'), category = {_('_My Buttons')}},
--
{down = device_commands.Button_5,  up = device_commands.Button_5,  cockpit_device_id = devices.SYS_CONTROLLER,   value_down = 1.0, value_up = 0.0, name = _('Flasher Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id = devices.SYS_CONTROLLER,   value_down = 1.0, value_up = 0.0, name = _('Transparent Switch On/Off'), category = {_('_My Buttons')}},
-- Electric System Panels
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Battery 1 On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Battery 2 On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Standby Generator On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Rectifier 1 On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Rectifier 2 On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Rectifier 3 On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('DC Ground Power On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Equitment Test Switch On/Off'), category = {_('_My Buttons')}},
------------------------------------------------
-- Center Overhead Panel -----------------------
------------------------------------------------
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.ENGINE_INTERFACE, value_down =-1.0, value_up = 0.0, name = _('Engine Selector Switch Left/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Engine Selector Switch Right/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_27,up = device_commands.Button_27,cockpit_device_id = devices.ENGINE_INTERFACE, value_down =-1.0, value_up = 0.0, name = _('Engine Start Mode ColdCranking/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_27,up = device_commands.Button_27,cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Engine Start Mode Start/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_12,up = device_commands.Button_12,cockpit_device_id = devices.ENGINE_INTERFACE, value_down =-1.0, value_up = 0.0, name = _('APU Start Mode FalseStart/ColdCraning'), category = {_('_My Buttons')}},
{down = device_commands.Button_12,up = device_commands.Button_12,cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('APU Start Mode Start/ColdCraning'), category = {_('_My Buttons')}},
{down = device_commands.Button_75,up = device_commands.Button_75,cockpit_device_id = devices.ENGINE_INTERFACE, value_down =-1.0, value_up = 0.0, name = _('Engine Ignition Test Switch Left/Center'), category = {_('_My Buttons')}},
{down = device_commands.Button_75,up = device_commands.Button_75,cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Engine Ignition Test Switch Right/Center'), category = {_('_My Buttons')}},
-- Hydraulic System Panel
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.HYDRO_SYS_INTERFACE, value_down = 1.0,	value_up = 0.0, name = _('Main Hydraulic Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.HYDRO_SYS_INTERFACE, value_down = 1.0,	value_up = 0.0, name = _('Auxiliary Hydraulic Switch On/Off'), category = {_('_My Buttons')}},
-- Fuel System Panel
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Shutoff Valve Left On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Shutoff Valve Right On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Crossfeed Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Bypass Switch On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Feed Tank On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Tank Pump Left On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.0, name = _('Tank Pump Right On/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_14,up = device_commands.Button_14,cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0.0, value_up = 0.5, name = _('Refueling Contol Check/Off'), category = {_('_My Buttons')}},
{down = device_commands.Button_14,up = device_commands.Button_14,cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0, value_up = 0.5, name = _('Refueling Contol Refuel/Off'), category = {_('_My Buttons')}},

{down = device_commands.Button_2, up = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, value_up = 0.0, name = _('Set Seat Copilot/Pilot'), category = _('_My Buttons')},
{down = device_commands.Button_3, up = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, value_up = 0.0, name = _('Set Seat Technican/Pilot'), category = _('_My Buttons')},

{down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Weapon Switch Safe/Armed'), category = {_('_My Buttons')}},

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: end additonal buttons
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Debug
{down = iCommandMissionRestart, name = _('Restart Mission'), category = _('Debug')},

-- Gameplay
{down = iCommandQuit, name = _('End mission'), category = _('General')},
{down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},

{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
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
{pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

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

-- Cockpit Camera Motion (œÂÂ‰‚ËÊÂÌËÂ Í‡ÏÂ˚ ‚ Í‡·ËÌÂ)
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
{down = iCommandPlaneShowKneeboard	, name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard	, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = 3001		, cockpit_device_id  = kneeboard_id, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = 3002		, cockpit_device_id  = kneeboard_id, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = 3003		, cockpit_device_id  = kneeboard_id,value_down  = 1.0, name = _('Kneeboard current position mark point')   , category = _('Kneeboard')},
--shortcuts navigation
{down = 3004		, cockpit_device_id  = kneeboard_id,value_down =  1.0, name = _('Kneeboard Make Shortcut'), category = _('Kneeboard')},
{down = 3005		, cockpit_device_id  = kneeboard_id,value_down =  1.0, name = _('Kneeboard Next Shortcut'), category = _('Kneeboard')},
{down = 3005		, cockpit_device_id  = kneeboard_id,value_down = -1.0, name = _('Kneeboard Previous Shortcut')   , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 0   , name = _('Kneeboard Jump To Shortcut  1')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 1   , name = _('Kneeboard Jump To Shortcut  2')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 2   , name = _('Kneeboard Jump To Shortcut  3')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 3   , name = _('Kneeboard Jump To Shortcut  4')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 4   , name = _('Kneeboard Jump To Shortcut  5')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 5   , name = _('Kneeboard Jump To Shortcut  6')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 6   , name = _('Kneeboard Jump To Shortcut  7')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 7   , name = _('Kneeboard Jump To Shortcut  8')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 8   , name = _('Kneeboard Jump To Shortcut  9')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = kneeboard_id,value_down = 9   , name = _('Kneeboard Jump To Shortcut 10') , category = _('Kneeboard')},

------------------------------------------------
-- Cheat ---------------------------------------
------------------------------------------------
{	down = iCommandEnginesStart,	name = _('Auto Start'),		category = _('Cheat')},
{	down = iCommandEnginesStop,		name = _('Auto Stop'),		category = _('Cheat')},

------------------------------------------------
-- General -------------------------------------
------------------------------------------------
{	down = iCommandCockpitShowPilotOnOff,	name = _('Show Pilot Body'),	category = _('General')},
{	down = iCommandDebriefing,				name = _('Debriefing window'),	category = _('General')},
{	down = iCommandToggleMirrors,			name = _('Toggle mirrors'),		category = _('General')},

------------------------------------------------
-- View ----------------------------------------
------------------------------------------------
{down = device_commands.Button_1, cockpit_device_id = devices.EXTERNAL_CARGO_VIEW, value_down = 1,	name = _('Cargo View'),	category = _('View')},

------------------------------------------------
-- View Cockpit --------------------------------
------------------------------------------------
{	down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0,	name = _('Set Pilot Seat'),					category = _('View Cockpit')},
{	down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0,	name = _('Set Copilot Seat'),				category = _('View Cockpit')},
{	down = device_commands.Button_3, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0,	name = _('Set Technician Seat'),			category = _('View Cockpit')},
{	down = device_commands.Button_4, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0,	name = _('Set Gunner Seat'),				category = _('View Cockpit')},
{	down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff,							name = _('Camera transpose mode on/off'),	category = _('View Cockpit')},
{down = device_commands.Button_6, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0,	name = _('Cargo Hatch View'),		category = _('View Cockpit')},
------------------------------------------------
-- External Cargo ------------------------------
------------------------------------------------
{	down = iCommandExternalCargoIndicator,	name = _('External Cargo Indicator'),	category = {_('External Cargo')}},
{	down = iCommandExtCargoHook,			name = _('External Cargo Hook'),		category = {_('External Cargo')}},
{	down = iCommandTacticalCargoUnhook,		up = iCommandTacticalCargoUnhook,	value_down = 1, value_up = 0,	name = _('External Cargo Tactical Unhook'),		category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = iCommandEmergencyCargoUnhook,	up = iCommandEmergencyCargoUnhook,	value_down = 1, value_up = 0,	name = _('External Cargo Emergency Unhook'),	category = {_('Ins Collective Stick'), _('External Cargo')}},

------------------------------------------------
-- Night Vision Goggles ------------------------
------------------------------------------------
{	down = iCommandViewNightVisionGogglesOn,		name = _('Night Vision Goggles'),			category = {_('Sensors')}},
{	pressed = iCommandPlane_Helmet_Brightess_Up,	name = _('Night Vision Goggles Gain Up'),	category = {_('Sensors')}},
{	pressed = iCommandPlane_Helmet_Brightess_Down,	name = _('Night Vision Goggles Gain Down'),	category = {_('Sensors')}},

------------------------------------------------
-- Checklist -----------------------------------
------------------------------------------------
{	down = device_commands.Button_1,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - Before Starting APU'),		category = {_('Crew')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - After Starting APU'),			category = {_('Crew')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - Engines on Idle'),			category = {_('Crew')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - Correction Lever Right'),		category = {_('Crew')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - Before Takeoff'),				category = {_('Crew')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Start List - Before Landing'),				category = {_('Crew')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.CHECKLIST,	value_down = 1,	name = _('Checklist: Wind Conditions'),							category = {_('Crew')}},

------------------------------------------------
-- Ins Cyclic Stick ----------------------------
------------------------------------------------
{	pressed = iCommandPlaneUpStart,		up = iCommandPlaneUpStop,																			name = _('Cyclic - Nose Down'),			category = {_('Ins Cyclic Stick'), _('Flight Control')}},
{	pressed = iCommandPlaneDownStart,	up = iCommandPlaneDownStop,																			name = _('Cyclic - Nose Up'),			category = {_('Ins Cyclic Stick'), _('Flight Control')}},
{	pressed = iCommandPlaneLeftStart,	up = iCommandPlaneLeftStop,																			name = _('Cyclic - Bank Left'),			category = {_('Ins Cyclic Stick'), _('Flight Control')}},
{	pressed = iCommandPlaneRightStart,	up = iCommandPlaneRightStop,																		name = _('Cyclic - Bank Right'),		category = {_('Ins Cyclic Stick'), _('Flight Control')}},

{	down = iCommandPlaneFire,			up = iCommandPlaneFire, value_down = 1, value_up = 0,													name = _('Release weapons'),			category = {_('Ins Cyclic Stick'), _('Armament System')}},
{down = device_commands.Button_86,	cockpit_device_id = devices.WEAPON_SYS,		value_down = -1.0,												name = _('RS Button Cover - OPEN/CLOSE'),	category = {_('Ins Cyclic Stick'), _('Armament System')}},
{down = device_commands.Button_86,	cockpit_device_id = devices.WEAPON_SYS,		value_down = 1.0,												name = _('RS Button Cover - OPEN'),			category = {_('Ins Cyclic Stick'), _('Armament System')}},
{down = device_commands.Button_86,	cockpit_device_id = devices.WEAPON_SYS,		value_down = 0.0,												name = _('RS Button Cover - CLOSE'),		category = {_('Ins Cyclic Stick'), _('Armament System')}},
{down = device_commands.Button_87, up = device_commands.Button_87,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('RS Button'),						category = {_('Ins Cyclic Stick'), _('Armament System')}},

{	down = device_commands.Button_25,	up = device_commands.Button_25, cockpit_device_id = devices.SPU_7, value_down = 1.0, value_up = 0.0,	name = _('Radio trigger - RADIO'),		category = {_('Ins Cyclic Stick'), _('Communications')}},
{	down = device_commands.Button_25,	up = device_commands.Button_25, cockpit_device_id = devices.SPU_7, value_down = 0.5, value_up = 0.0,	name = _('Radio trigger - ICS'),		category = {_('Ins Cyclic Stick'), _('Communications')}},

{	down = iCommandPlaneTrimOn, up = iCommandPlaneTrimOff,																					name = _('Trimmer Button'),				category = {_('Ins Cyclic Stick'), _('Trimmer')}},
{	down = iCommandPlaneTrimCancel,																											name = _('Trimmer - Reset'),			category = {_('Ins Cyclic Stick'), _('Trimmer')}},

{	down = iCommandPlaneWheelBrakeOn,	up = iCommandPlaneWheelBrakeOff,																	name = _('Wheel Brake'),				category = {_('Ins Cyclic Stick')}},
{	down = iCommandPlaneWheelParkingBrake,																									name = _('Wheel Parking Brake'),		category = {_('Ins Cyclic Stick')}},

{	down = iCommandAutopilotEmergOFF,	up = iCommandAutopilotEmergOFF_up,																	name = _('Turn Off Autopilot Button'),	category = {_('Ins Cyclic Stick'), _('Autopilot')}},

------------------------------------------------
-- Ins Collective Stick ------------------------
------------------------------------------------
{	down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop,				name = _('Collective - Up'),									category = {_('Ins Collective Stick'), _('Flight Control')}},
{	down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop,				name = _('Collective - Down'),									category = {_('Ins Collective Stick'), _('Flight Control')}},
{combos = {{key = "JOY_BTN8"}, },	down = iCommandPlane_ReadjustFreeTurbineRPM_Up,		up = iCommandPlane_ReadjustFreeTurbineRPM_Up,	value_down = 1, value_up = 0,	name = _('Readjust Free Turbine RPM Switch - Increase'),		category = {_('Ins Collective Stick'), _('Engines')}},
{combos = {{key = "JOY_BTN7"}, },	down = iCommandPlane_ReadjustFreeTurbineRPM_Down,	up = iCommandPlane_ReadjustFreeTurbineRPM_Down,	value_down = 1, value_up = 0,	name = _('Readjust Free Turbine RPM Switch - Decrease'),		category = {_('Ins Collective Stick'), _('Engines')}},
{combos = {{key = "JOY_BTN15"}, },	down = iCommandHelicopter_CollectiveStopper_Up,		up = iCommandHelicopter_CollectiveStopper_Down,									name = _('Collective brake - Assign altitude lever'),			category = {_('Ins Collective Stick'), _('Flight Control')}},
{	down = iCommandThrottleIncrease,	up = iCommandThrottleStop,																		name = _('Correction Lever - Increase'),						category = {_('Ins Collective Stick'), _('Engines')}},
{	down = iCommandThrottleDecrease,	up = iCommandThrottleStop,																		name = _('Correction Lever - Decrease'),						category = {_('Ins Collective Stick'), _('Engines')}},

{combos = {{key = "JOY_BTN_POV1_D"}, },	down = device_commands.Button_20, up = device_commands.Button_20,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, value_up = 0,	name = _('Left Headlight - Down'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN_POV1_U"}, },	down = device_commands.Button_20, up = device_commands.Button_20,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 2, value_up = 0,	name = _('Left Headlight - Up'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN_POV1_L"}, },	down = device_commands.Button_20, up = device_commands.Button_20,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 3, value_up = 0,	name = _('Left Headlight - Left'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN_POV1_R"}, },	down = device_commands.Button_20, up = device_commands.Button_20,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 4, value_up = 0,	name = _('Left Headlight - Right'),		category = {_('Ins Collective Stick'), _('External Lights')}},

{combos = {{key = "JOY_BTN4"}, },	down = device_commands.Button_21, up = device_commands.Button_21,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1, value_up = 0,	name = _('Right Headlight - Down'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN6"}, },	down = device_commands.Button_21, up = device_commands.Button_21,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 2, value_up = 0,	name = _('Right Headlight - Up'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN3"}, },	down = device_commands.Button_21, up = device_commands.Button_21,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 3, value_up = 0,	name = _('Right Headlight - Left'),		category = {_('Ins Collective Stick'), _('External Lights')}},
{combos = {{key = "JOY_BTN5"}, },	down = device_commands.Button_21, up = device_commands.Button_21,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 4, value_up = 0,	name = _('Right Headlight - Right'),	category = {_('Ins Collective Stick'), _('External Lights')}},

{	down = device_commands.Button_7, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1,				name = _('External Cargo Tactical Unhook Button Cover - OPEN/CLOSE'),	category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_2, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1,				name = _('External Cargo Tactical Unhook Button Cover - OPEN'),			category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_2, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 0,				name = _('External Cargo Tactical Unhook Button Cover - CLOSE'),		category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_9, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1,				name = _('External Cargo Emergency Unhook Button Cover - OPEN/CLOSE'),	category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_4, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1,				name = _('External Cargo Emergency Unhook Button Cover - OPEN'),		category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_4, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 0,				name = _('External Cargo Emergency Unhook Button Cover - CLOSE'),		category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_1, up = device_commands.Button_1,	cockpit_device_id = devices.EXT_CARGO_EQUIPMENT,	value_down = 1, value_up = 0,	name = _('External Cargo Tactical Unhook Button'),	category = {_('Ins Collective Stick'), _('External Cargo')}},
{	down = device_commands.Button_3, up = device_commands.Button_3,	cockpit_device_id = devices.EXT_CARGO_EQUIPMENT,	value_down = 1, value_up = 0,	name = _('External Cargo Emergency Unhook Button'),	category = {_('Ins Collective Stick'), _('External Cargo')}},

------------------------------------------------
-- Ins Rudder ----------------------------------
------------------------------------------------
{	down = iCommandPlaneLeftRudderStart,	up = iCommandPlaneLeftRudderStop,	name = _('Rudder Left'),	category = {_('Ins Rudder'), _('Flight Control')}},
{	down = iCommandPlaneRightRudderStart,	up = iCommandPlaneRightRudderStop,	name = _('Rudder Right'),	category = {_('Ins Rudder'), _('Flight Control')}},

------------------------------------------------
-- Engines Levers ------------------------------
------------------------------------------------
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_60, value_down = 1.0,	name = _('Throttle Up'),									category = _('Engines')},
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_60, value_down = -1.0,	name = _('Throttle Down'),									category = _('Engines')},
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_58, value_down = 1.0,	name = _('Left Throttle up (Idle-Medium-Auto-Full)'),		category = _('Engines')},
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_58, value_down = -1.0,	name = _('Left Throttle down (Idle-Medium-Auto-Full)'),		category = _('Engines')},
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_59, value_down = 1.0,	name = _('Right Throttle up (Idle-Medium-Auto-Full)'),		category = _('Engines')},
{	cockpit_device_id = devices.ENGINE_INTERFACE, down = device_commands.Button_59, value_down = -1.0,	name = _('Right Throttle down (Idle-Medium-Auto-Full)'),	category = _('Engines')},
{	down = iCommandHelicopter_Left_Engine_Lock,															name = _('Cut-off valve left engine'),						category = _('Engines')},
{	down = iCommandHelicopter_Right_Engine_Lock,														name = _('Cut-off valve right engine'),						category = _('Engines')},
{	down = iCommandHelicopter_Rotor_Lock,																name = _('Rotor Brake Handle - UP/DOWN'),					category = _('Engines')},
{	down = device_commands.Button_11, cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0,	name = _('Rotor Brake Handle - UP'),						category = _('Engines')},
{	down = device_commands.Button_11, cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0.0,	name = _('Rotor Brake Handle - DOWN'),						category = _('Engines')},

------------------------------------------------
-- Systems -------------------------------------
------------------------------------------------
{	down = iCommandPlaneFonar,																	name = _('Cockpit Door'),						category = _('Systems')},
{	down = iCommandPlaneEject,																	name = _('Leave Helicopter (3 times)'),			category = _('Systems')},
--{	down = iCommandPlane_SPU9_radio_change,														name = _('SPU-7 Radio communicator selector'),	category = _('Systems')},

{	down = device_commands.Button_13,  value_down = 1,	cockpit_device_id = devices.CPT_MECH,	name = _('Open/Close Left Door'),				category = _('Systems')},
{	down = device_commands.Button_14,  value_down = 1,	cockpit_device_id = devices.CPT_MECH,	name = _('Open/Close Cargo Doors'),				category = _('Systems')},

{	down = device_commands.Button_18,  value_down = 1,	cockpit_device_id = devices.CPT_MECH,	name = _('Open/Close Left Blister'),			category = _('Systems')},
{	down = device_commands.Button_19,  value_down = 1,	cockpit_device_id = devices.CPT_MECH,	name = _('Open/Close Right Blister'),			category = _('Systems')},

------------------------------------------------
-- Left Pilot Dashboard ------------------------
------------------------------------------------
-- Attitude Indicator
{	pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_LEFT, value_pressed = -0.5,										name = _('Left Attitude Indicator Zero Pitch Knob - Decrease'),		category = {_('Left Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_LEFT, value_pressed = 0.5,										name = _('Left Attitude Indicator Zero Pitch Knob - Increase'),		category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.AGB_3K_LEFT, value_down = 1, value_up = 0,	name = _('Left Attitude Indicator Cage Knob'),						category = {_('Left Dashboard'), _('Instruments')}},
-- Barometric Altimeter
{	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_L, value_pressed = -1.0,									name = _('Left Altimeter QFE Knob - Decrease'),						category = {_('Left Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_L, value_pressed = 1.0,									name = _('Left Altimeter QFE Knob - Increase'),						category = {_('Left Dashboard'), _('Instruments')}},
-- Variometer
{	pressed = device_commands.Button_2, cockpit_device_id = devices.VARIOMETER_L, value_pressed = -1.0,										name = _('Left Variometer Adjustment Knob - CCW/Decrease'),			category = {_('Left Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.VARIOMETER_L, value_pressed = 1.0,										name = _('Left Variometer Adjustment Knob - CW/Increase'),			category = {_('Left Dashboard'), _('Instruments')}},
-- HSI
{	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_L, value_pressed = -0.1,											name = _('Left HSI Course Knob - Decrease'),						category = {_('Left Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_L, value_pressed = 0.1,												name = _('Left HSI Course Knob - Increase'),						category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.HSI_L, value_down = 1,													name = _('Left HSI Radio Compass Selector Switch - ARC-9/ARC-UD'),	category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.HSI_L, value_down = 0,													name = _('Left HSI Radio Compass Selector Switch - ARC-9'),			category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.HSI_L, value_down = 1,													name = _('Left HSI Radio Compass Selector Switch - ARC-UD'),		category = {_('Left Dashboard'), _('Instruments')}},
-- Radio Altimeter
{	pressed = iCommandRALT_DangerousAltitudeRotaryRight,																					name = _('Radar Altimeter Dangerous Altitude Knob - CCW/Decrease'),	category = {_('Left Dashboard'), _('Instruments')}},
{	pressed = iCommandRALT_DangerousAltitudeRotaryLeft,																						name = _('Radar Altimeter Dangerous Altitude Knob - CW/Increase'),	category = {_('Left Dashboard'), _('Instruments')}},
{	down = iCommandRALT_Test, up = iCommandRALT_Test_up,																					name = _('Radar Altimeter Test Button'),							category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.RADAR_ALTIMETER,	value_down = 1,										name = _('Radar Altimeter Power Switch - ON/OFF'),					category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.RADAR_ALTIMETER,	value_down = 1,										name = _('Radar Altimeter Power Switch - ON'),						category = {_('Left Dashboard'), _('Instruments')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.RADAR_ALTIMETER,	value_down = 0,										name = _('Radar Altimeter Power Switch - OFF'),						category = {_('Left Dashboard'), _('Instruments')}},
-- UV-26
{	down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.UV_26, value_down = 1, value_up = 0,	name = _('UV-26 Launch Button'),									category = {_('Left Dashboard'), _('Ins Countermeasures dispensers UV-26')}},
-- Pitot System
{	down = device_commands.Button_2, value_down = 1,	cockpit_device_id = devices.FM_PROXY,												name = _('Pitot Static Pressure System Selector - CW'),				category = {_('Left Dashboard')}},
{	down = device_commands.Button_2, value_down = -1,	cockpit_device_id = devices.FM_PROXY,												name = _('Pitot Static Pressure System Selector - CCW'),			category = {_('Left Dashboard')}},
{	down = device_commands.Button_1, value_down = 0.0,	cockpit_device_id = devices.FM_PROXY,												name = _('Pitot Static Pressure System Selector - RIGHT'),			category = {_('Left Dashboard')}},
{	down = device_commands.Button_1, value_down = 0.1,	cockpit_device_id = devices.FM_PROXY,												name = _('Pitot Static Pressure System Selector - COMMON'),			category = {_('Left Dashboard')}},
{	down = device_commands.Button_1, value_down = 0.2,	cockpit_device_id = devices.FM_PROXY,												name = _('Pitot Static Pressure System Selector - LEFT'),			category = {_('Left Dashboard')}},
-- Headlight
{	down = device_commands.Button_22,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Left Headlight Power Switch - Up'),						category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_22,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = -1,										name = _('Left Headlight Power Switch - Down'),						category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_18,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = -1,										name = _('Left Headlight Power Switch - RETRACT'),					category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_18,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 0,										name = _('Left Headlight Power Switch - OFF'),						category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_18,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Left Headlight Power Switch - LIGHT'),					category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Taxi Light Power Switch - ON/OFF'),						category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_17,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Taxi Light Power Switch - ON'),							category = {_('Left Dashboard'), _('External Lights')}},
{	down = device_commands.Button_17,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 0,										name = _('Taxi Light Power Switch - OFF'),							category = {_('Left Dashboard'), _('External Lights')}},
-- Accelerometer
{	down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.CPT_MECH, value_down = 1, value_up = 0,		name = _('Accelerometer Reset Button'),								category = {_('Left Dashboard'), _('Instruments')}},

------------------------------------------------
-- Right pilot dashboard -----------------------
------------------------------------------------
-- Attitude Indicator
{	pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_RIGHT, value_pressed = -0.5,										name = _('Right Attitude Indicator Zero Pitch Knob - Decrease'),	category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_5, cockpit_device_id = devices.AGB_3K_RIGHT, value_pressed = 0.5,										name = _('Right Attitude Indicator Zero Pitch Knob - Increase'),	category = {_('Right Dashboard'), _('Instruments')}},
{	down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.AGB_3K_RIGHT, value_down = 1, value_up = 0,	name = _('Right Attitude Indicator Cage Knob'),						category = {_('Right Dashboard'), _('Instruments')}},
-- Barometric Altimeter
{	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_R, value_pressed = -1.0,									name = _('Right Altimeter QFE Knob - Decrease'),					category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.BAR_ALTIMETER_R, value_pressed = 1.0,									name = _('Right Altimeter QFE Knob - Increase'),					category = {_('Right Dashboard'), _('Instruments')}},
-- Variometer
{	pressed = device_commands.Button_2, cockpit_device_id = devices.VARIOMETER_R, value_pressed = -1.0,										name = _('Right Variometer Adjustment Knob - CCW/Decrease'),		category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.VARIOMETER_R, value_pressed = 1.0,										name = _('Right Variometer Adjustment Knob - CW/Increase'),			category = {_('Right Dashboard'), _('Instruments')}},
-- HSI
{	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_R, value_pressed = -0.1,											name = _('Right HSI Course Knob - Decrease'),						category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.HSI_R, value_pressed = 0.1,												name = _('Right HSI Course Knob - Increase'),						category = {_('Right Dashboard'), _('Instruments')}},
-- Clock
{	down = device_commands.Button_1, up = device_commands.Button_1,	cockpit_device_id = devices.CLOCK, value_down = 1, value_up = 0,		name = _('Mech Clock Left Lever - Down'),							category = {_('Right Dashboard'), _('Instruments')}},
{	down = iCommandMechClock_LeftLever_Up,																									name = _('Mech Clock Left Lever - Up'),								category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = iCommandMechClock_LeftLever_TurnRight,																						name = _('Mech Clock Left Lever - CW/Right'),						category = {_('Right Dashboard'), _('Instruments')}},
{	pressed = iCommandMechClock_LeftLever_TurnLeft,																							name = _('Mech Clock Left Lever - CCW/Left'),						category = {_('Right Dashboard'), _('Instruments')}},
{	down = iCommandMechClock_RightLever_Down, up = iCommandMechClock_RightLever_Down_up,													name = _('Mech Clock Right Lever - Down'),							category = {_('Right Dashboard'), _('Instruments')}},
{	down = iCommandMechClock_RightLever_Rotate_left,																						name = _('Mech Clock Right Lever - CCW/Left'),						category = {_('Right Dashboard'), _('Instruments')}},
{	down = iCommandMechClock_RightLever_Rotate_right,																						name = _('Mech Clock Right Lever - CW/Right'),						category = {_('Right Dashboard'), _('Instruments')}},
-- Fuel Indicator
{	down = device_commands.Button_13, cockpit_device_id = devices.FUELSYS_INTERFACE, value_down = -1,									name = _('Fuel Quantity Indicator Mode Selector Switch - CCW/Left'),	category = {_('Right Dashboard'), _('Instruments')}},
{	down = device_commands.Button_13, cockpit_device_id = devices.FUELSYS_INTERFACE, value_down = 1,									name = _('Fuel Quantity Indicator Mode Selector Switch - CW/Right'),	category = {_('Right Dashboard'), _('Instruments')}},
-- Doppler Navigator
{	down = device_commands.Button_14,	cockpit_device_id = devices.DISS_15, value_down = 1,												name = _('Doppler Navigator Test Switch - TEST/WORK'),				category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_11,	cockpit_device_id = devices.DISS_15, value_down = 1,												name = _('Doppler Navigator Test Switch - TEST'),					category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_11,	cockpit_device_id = devices.DISS_15, value_down = 0,												name = _('Doppler Navigator Test Switch - WORK'),					category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_15,	cockpit_device_id = devices.DISS_15, value_down = 1,												name = _('Doppler Navigator Mode Switch - LAND/SEA'),				category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.DISS_15, value_down = 0,												name = _('Doppler Navigator Mode Switch - LAND'),					category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.DISS_15, value_down = 1,												name = _('Doppler Navigator Mode Switch - SEA'),					category = {_('Right Dashboard'), _('Doppler Navigator'), _('Instruments')}},
{	down = device_commands.Button_3, up = device_commands.Button_3,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator ON Button'),							category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_2, up = device_commands.Button_2,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator OFF Button'),							category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_5, up = device_commands.Button_5,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Increase Map Angle Button'),			category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_4, up = device_commands.Button_4,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Decrease Map Angle Button'),			category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_7, up = device_commands.Button_7,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Increase Path Button'),					category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_6, up = device_commands.Button_6,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Decrease Path Button'),					category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_9, up = device_commands.Button_9,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Increase Deviation Button'),			category = {_('Right Dashboard'), _('Doppler Navigator')}},
{	down = device_commands.Button_8, up = device_commands.Button_8,	cockpit_device_id = devices.DISS_15, value_down = 1, value_up = 0,		name = _('Doppler Navigator Decrease Deviation Button'),			category = {_('Right Dashboard'), _('Doppler Navigator')}},
-- Headlight
{	down = device_commands.Button_23,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Right Headlight Power Switch - Up'),						category = {_('Right Dashboard'), _('External Lights')}},
{	down = device_commands.Button_23,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = -1,										name = _('Right Headlight Power Switch - Down'),					category = {_('Right Dashboard'), _('External Lights')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = -1,										name = _('Right Headlight Power Switch - RETRACT'),					category = {_('Right Dashboard'), _('External Lights')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 0,										name = _('Right Headlight Power Switch - OFF'),						category = {_('Right Dashboard'), _('External Lights')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1,										name = _('Right Headlight Power Switch - LIGHT'),					category = {_('Right Dashboard'), _('External Lights')}},
-- Armament
{	down = device_commands.Button_78,	cockpit_device_id = devices.WEAPON_SYS, value_down = -1,											name = _('PKT Seat Selector Switch - FLIGHT ENGINEER/PILOT'),		category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_77,	cockpit_device_id = devices.WEAPON_SYS, value_down = 0,												name = _('PKT Seat Selector Switch - PILOT'),						category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_77,	cockpit_device_id = devices.WEAPON_SYS, value_down = 1,												name = _('PKT Seat Selector Switch - FLIGHT ENGINEER'),				category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_73,	cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,											name = _('ESBR Power Switch - ON/OFF'),								category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYS, value_down = 1,												name = _('ESBR Power Switch - ON'),									category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_28,	cockpit_device_id = devices.WEAPON_SYS, value_down = 0,												name = _('ESBR Power Switch - OFF'),								category = {_('Right Dashboard'), _('Armament System')}},
{	down = device_commands.Button_74,	cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,											name = _('ESBR Position Selector - Rotate'),						category = {_('Right Dashboard'), _('Armament System')}},

------------------------------------------------
-- Circuit breakers ----------------------------
------------------------------------------------
{	down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 1 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 2 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 3 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 4 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 5 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 6 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 7 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 8 CB switcher'),	category = {_('Overhead CB Panels')}},
{	down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0,	name = _('Group 9 CB switcher'),	category = {_('Overhead CB Panels')}},
-- TODO: All CBs


------------------------------------------------
-- Left Side Panel -----------------------------
------------------------------------------------
-- Internal Lights
{	pressed = device_commands.Button_15, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1,	name = _('Left Red Lights Group 1 Rheostat - CW'),				category = {_('Left Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_15, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1,	name = _('Left Red Lights Group 1 Rheostat - CCW'),				category = {_('Left Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_16, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 1,	name = _('Left Red Lights Group 2 Rheostat - CW'),				category = {_('Left Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_16, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -1,	name = _('Left Red Lights Group 2 Rheostat - CCW'),				category = {_('Left Side Panel'), _('Internal Lights')}},
-- Signal Flare Dispenser
{	down = device_commands.Button_11,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Cassette 1 Power Switch - ON/OFF'),	category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Cassette 1 Power Switch - ON'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Signal Flare Dispenser Cassette 1 Power Switch - OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Red Signal Flare Launch Button - ON/OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Red Signal Flare Launch Button - ON'),				category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 1 Red Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Green Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Green Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 1 Green Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_15,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Yellow Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 Yellow Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 1 Yellow Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 White Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 1 White Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 1 White Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_16,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Cassette 2 Power Switch - ON/OFF'),	category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Signal Flare Dispenser Cassette 2 Power Switch - ON'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Signal Flare Dispenser Cassette 2 Power Switch - OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_18,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Red Signal Flare Launch Button - ON/OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Red Signal Flare Launch Button - ON'),				category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 2 Red Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_17,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Green Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Green Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 2 Green Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Yellow Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 Yellow Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 2 Yellow Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 White Signal Flare Launch Button - ON/OFF'),		category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 1,		name = _('EKSR-46 Cassette 2 White Signal Flare Launch Button - ON'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.SIGNAL_FLARES,	value_down = 0,		name = _('EKSR-46 Cassette 2 White Signal Flare Launch Button - OFF'),			category = {_('Left Side Panel'), _('Signal Flare Dispenser')}},
-- Test Panel
{	down = device_commands.Button_21, up = device_commands.Button_21,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('IV-500E Vibration Sensor Test Button'),			category = {_('Left Side Panel'), _('Engines')}},
{	down = device_commands.Button_23, up = device_commands.Button_23,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Cold Temperature Sensor Test Button'),			category = {_('Left Side Panel'), _('Engines')}},
{	down = device_commands.Button_22, up = device_commands.Button_22,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Hot Temperature Sensor Test Button'),				category = {_('Left Side Panel'), _('Engines')}},
{	down = device_commands.Button_19, up = device_commands.Button_19,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Left Engine Temperature Regulator Test Button'),	category = {_('Left Side Panel'), _('Engines')}},
{	down = device_commands.Button_20, up = device_commands.Button_20,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Right Engine Temperature Regulator Test Button'),	category = {_('Left Side Panel'), _('Engines')}},
{	down = device_commands.Button_2,									cockpit_device_id = devices.SARPP12DM,			value_down = 1,						name = _('SARPP-12 Mode Switch - MANUAL/AUTO'),				category = {_('Left Side Panel')}},
{	down = device_commands.Button_1,									cockpit_device_id = devices.SARPP12DM,			value_down = 1,						name = _('SARPP-12 Mode Switch - MANUAL'),					category = {_('Left Side Panel')}},
{	down = device_commands.Button_1,									cockpit_device_id = devices.SARPP12DM,			value_down = 0,						name = _('SARPP-12 Mode Switch - AUTO'),					category = {_('Left Side Panel')}},
--
{	down = device_commands.Button_16,	up = device_commands.Button_16,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,		value_down = 1.0, value_up = 0.0,	name = _('ANO Code Button'),							category = {_('Left Side Panel')}},
{	down = device_commands.Button_1,	up = device_commands.Button_1,	cockpit_device_id = devices.MISC_SYSTEMS_INTERFACE,	value_down = 1,						name = _('Alarm Bell Button'),							category = {_('Left Side Panel')}},
-- External Cargo
{	down = iCommandExternalCargoAutounhook,																		name = _('External Cargo Autounhook Switch - ON/OFF'),	category = {_('Left Side Panel'), _('External Cargo')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.EXT_CARGO_EQUIPMENT,	value_down = 1,		name = _('External Cargo Autounhook Switch - ON'),		category = {_('Left Side Panel'), _('External Cargo')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.EXT_CARGO_EQUIPMENT,	value_down = 0,		name = _('External Cargo Autounhook Switch - OFF'),		category = {_('Left Side Panel'), _('External Cargo')}},
-- Ri-65
{	down = device_commands.Button_5, up = device_commands.Button_5,	cockpit_device_id = devices.VMS,	value_down = 1.0, value_up = 0.0,	name = _('RI-65 OFF Button'),					category = {_('Left Side Panel'), _('RI-65 Panel')}},
{	down = device_commands.Button_3, up = device_commands.Button_3,	cockpit_device_id = devices.VMS,	value_down = 1.0, value_up = 0.0,	name = _('RI-65 Repeat Button'),				category = {_('Left Side Panel'), _('RI-65 Panel')}},
{	down = device_commands.Button_4, up = device_commands.Button_4,	cockpit_device_id = devices.VMS,	value_down = 1.0, value_up = 0.0,	name = _('RI-65 Check Button'),					category = {_('Left Side Panel'), _('RI-65 Panel')}},
{	down = device_commands.Button_22,								cockpit_device_id = devices.SPU_7,	value_down = 1,						name = _('RI-65 Amplifier Switch - ON/OFF'),	category = {_('Left Side Panel'), _('RI-65 Panel')}},
{	down = device_commands.Button_21,								cockpit_device_id = devices.SPU_7,	value_down = 1,						name = _('RI-65 Amplifier Switch - ON'),		category = {_('Left Side Panel'), _('RI-65 Panel')}},
{	down = device_commands.Button_21,								cockpit_device_id = devices.SPU_7,	value_down = 0,						name = _('RI-65 Amplifier Switch - OFF'),		category = {_('Left Side Panel'), _('RI-65 Panel')}},
-- IFF Transponder
{	down = device_commands.Button_11,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Erase Button Cover - OPEN/CLOSE'),		category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_4,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Erase Button Cover - OPEN'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_4,								cockpit_device_id = devices.IFF,	value_down = 0,						name = _('IFF Transponder Erase Button Cover - CLOSE'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_12,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Disaster Switch Cover - OPEN/CLOSE'),		category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_6,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Disaster Switch Cover - OPEN'),			category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_6,								cockpit_device_id = devices.IFF,	value_down = 0,						name = _('IFF Transponder Disaster Switch Cover - CLOSE'),			category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_13,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Disaster Switch - ON/OFF'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_7,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Disaster Switch - ON'),					category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_7,								cockpit_device_id = devices.IFF,	value_down = 0,						name = _('IFF Transponder Disaster Switch - OFF'),					category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_5, up = device_commands.Button_5,	cockpit_device_id = devices.IFF,	value_down = 1.0, value_up = 0.0,	name = _('IFF Transponder Erase Button'),							category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_10,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Device Mode Switch - 1/2'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_3,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Device Mode Switch - 2'),					category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_3,								cockpit_device_id = devices.IFF,	value_down = 0,						name = _('IFF Transponder Device Mode Switch - 1'),					category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_9,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Device Selector Switch - WORK/RESERVE'),	category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Device Selector Switch - RESERVE'),		category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.IFF,	value_down = 0,						name = _('IFF Transponder Device Selector Switch - WORK'),			category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_8,								cockpit_device_id = devices.IFF,	value_down = 1,						name = _('IFF Transponder Mode Selector Switch - CW/Right'),		category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_8,								cockpit_device_id = devices.IFF,	value_down = -1,					name = _('IFF Transponder Mode Selector Switch - CCW/Left'),		category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.IFF,	value_down = 0.0,					name = _('IFF Transponder Mode Selector Switch - AUTO'),			category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.IFF,	value_down = 0.1,					name = _('IFF Transponder Mode Selector Switch - KD'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.IFF,	value_down = 0.2,					name = _('IFF Transponder Mode Selector Switch - +-15'),			category = {_('Left Side Panel'), _('IFF Transponder')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.IFF,	value_down = 0.3,					name = _('IFF Transponder Mode Selector Switch - KP'),				category = {_('Left Side Panel'), _('IFF Transponder')}},
-- Recorder P-503B
{	down = device_commands.Button_3,	cockpit_device_id = devices.RECORDER_P503B,	value_down = 1,			name = _('Recorder P-503B Power Switch - ON/OFF'),						category = {_('Left Side Panel'), _('Recorder P-503B')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.RECORDER_P503B,	value_down = 1,			name = _('Recorder P-503B Power Switch - ON'),							category = {_('Left Side Panel'), _('Recorder P-503B')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.RECORDER_P503B,	value_down = 0,			name = _('Recorder P-503B Power Switch - OFF'),							category = {_('Left Side Panel'), _('Recorder P-503B')}},
{	pressed = device_commands.Button_4,	cockpit_device_id = devices.RECORDER_P503B,	value_pressed = 0.2,	name = _('Recorder P-503B Backlight Brightness Knob - CW/Increase'),	category = {_('Left Side Panel'), _('Recorder P-503B')}},
{	pressed = device_commands.Button_4,	cockpit_device_id = devices.RECORDER_P503B,	value_pressed = -0.2,	name = _('Recorder P-503B Backlight Brightness Knob - CCW/Decrease'),	category = {_('Left Side Panel'), _('Recorder P-503B')}},

------------------------------------------------
-- Left Triangular Panel -----------------------
------------------------------------------------
{	down = device_commands.Button_12,	cockpit_device_id = devices.LIGHT_SYSTEM,			value_down = 1,		name = _('Left Plafond Switch - Up'),						category = {_('Left Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.LIGHT_SYSTEM,			value_down = -1,	name = _('Left Plafond Switch - Down'),						category = {_('Left Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.LIGHT_SYSTEM,			value_down = -1,	name = _('Left Plafond Switch - WHITE'),					category = {_('Left Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.LIGHT_SYSTEM,			value_down = 0,		name = _('Left Plafond Switch - OFF'),						category = {_('Left Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.LIGHT_SYSTEM,			value_down = 1,		name = _('Left Plafond Switch - RED'),						category = {_('Left Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_22,	cockpit_device_id = devices.CPT_MECH,				value_down = 1,		name = _('Left Fan Switch - ON/OFF'),						category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.CPT_MECH,				value_down = 1,		name = _('Left Fan Switch - ON'),							category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.CPT_MECH,				value_down = 0,		name = _('Left Fan Switch - OFF'),							category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.AGB_3K_LEFT,			value_down = 1,		name = _('Left Attitude Indicator Power Switch - ON/OFF'),	category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.AGB_3K_LEFT,			value_down = 1,		name = _('Left Attitude Indicator Power Switch - ON'),		category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.AGB_3K_LEFT,			value_down = 0,		name = _('Left Attitude Indicator Power Switch - OFF'),		category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.CORRECTION_INTERRUPT,	value_down = 1,		name = _('VK-53 Power Switch - ON/OFF'),					category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.CORRECTION_INTERRUPT,	value_down = 1,		name = _('VK-53 Power Switch - ON'),						category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.CORRECTION_INTERRUPT,	value_down = 0,		name = _('VK-53 Power Switch - OFF'),						category = {_('Left Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SPUU_52,				value_down = 1,		name = _('SPUU-52 Power Switch - ON/OFF'),					category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SPUU_52,				value_down = 1,		name = _('SPUU-52 Power Switch - ON'),						category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SPUU_52,				value_down = 0,		name = _('SPUU-52 Power Switch - OFF'),						category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.VMS,					value_down = 1,		name = _('RI-65 Power Switch - ON/OFF'),					category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.VMS,					value_down = 1,		name = _('RI-65 Power Switch - ON'),						category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.VMS,					value_down = 0,		name = _('RI-65 Power Switch - OFF'),						category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_40, up = device_commands.Button_40,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Left Pitot Heater Test Button'),	category = {_('Left Triangular Panel')}},
-- windscreen wiper switch
{	down = device_commands.Button_25,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.0,					name = _('Left Windscreen Wiper Switch - OFF'),		category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_25,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.1,					name = _('Left Windscreen Wiper Switch - START'),	category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_25,	up = device_commands.Button_25,	cockpit_device_id = devices.CPT_MECH,	value_down = 0.2,	value_up = 0.0,	name = _('Left Windscreen Wiper Switch - RESET'),	category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_25,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.3,					name = _('Left Windscreen Wiper Switch - SPEED 1'),	category = {_('Left Triangular Panel')}},
{	down = device_commands.Button_25,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.4,					name = _('Left Windscreen Wiper Switch - SPEED 2'),	category = {_('Left Triangular Panel')}},

------------------------------------------------
-- Left Overhead Panel -------------------------
------------------------------------------------
-- R-863
{	down = device_commands.Button_14,		cockpit_device_id = devices.R_863, value_down = -1,			name = _('R-863 Channel Knob - Decrease'),		category = {_('Left Overhead Panel'), _('Radio R-863')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('R-863 Channel Knob - Increase'),		category = {_('Left Overhead Panel'), _('Radio R-863')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('R-863 Modulation Switch - AM/FM'),	category = {_('Left Overhead Panel'), _('Radio R-863')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.R_863, value_down = 0,			name = _('R-863 Modulation Switch - AM'),		category = {_('Left Overhead Panel'), _('Radio R-863')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('R-863 Modulation Switch - FM'),		category = {_('Left Overhead Panel'), _('Radio R-863')}},
-- Anti-Icing
{	down = device_commands.Button_76,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Anti-Icing Mode Switch - MANUAL/AUTO'),					category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_30,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Anti-Icing Mode Switch - MANUAL'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_30,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,						name = _('Anti-Icing Mode Switch - AUTO'),							category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_31, up = device_commands.Button_31,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Anti-Icing OFF Button'),									category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_77,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Left Engine Heater Switch - ON/OFF'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_32,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Left Engine Heater Switch - ON'),							category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_32,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,						name = _('Left Engine Heater Switch - OFF'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_78,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Right Engine Heater Switch - MANUAL/AUTO'),				category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_33,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Right Engine Heater Switch - MANUAL'),					category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_33,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,						name = _('Right Engine Heater Switch - AUTO'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_79,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Glass Heater Switch - MANUAL/AUTO'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_34,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Glass Heater Switch - MANUAL'),							category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_34,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,						name = _('Glass Heater Switch - AUTO'),								category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_80,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Ice Detector Heater Switch - MANUAL/AUTO'),				category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_35,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Ice Detector Heater Switch - MANUAL'),					category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_35,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,						name = _('Ice Detector Heater Switch - AUTO'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_36, up = device_commands.Button_36,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1.0, value_up = 0.0,	name = _('Ice Detector Heater Test Button'),						category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_81,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,					name = _('Anti-Icing System Amperemeter Selector Switch - CCW'),	category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
{	down = device_commands.Button_81,									cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,						name = _('Anti-Icing System Amperemeter Selector Switch - CW'),		category = {_('Left Overhead Panel'), _('Anti-Icing System Panel')}},
-- Weapon System
{	down = device_commands.Button_55,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('Rocket Serie 8-16-4 Switch - Up'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_55,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0,		name = _('Rocket Serie 8-16-4 Switch - Down'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1,		name = _('Rocket Serie 8-16-4 Switch - 4'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('Rocket Serie 8-16-4 Switch - 16'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Rocket Serie 8-16-4 Switch - 8'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_56,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('Rocket Pylons 1-2-5-6/Auto/3-4 Switch - Up'),			category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_56,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0,		name = _('Rocket Pylons 1-2-5-6/Auto/3-4 Switch - Down'),		category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_21,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1,		name = _('Rocket Pylons 1-2-5-6/Auto/3-4 Switch - 3-4'),		category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_21,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('Rocket Pylons 1-2-5-6/Auto/3-4 Switch - AUTO'),		category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_21,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Rocket Pylons 1-2-5-6/Auto/3-4 Switch - 1-2-5-6'),	category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_57,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('Mode UPK/PKT/RS Switch - Up'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_57,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0,		name = _('Mode UPK/PKT/RS Switch - Down'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_22,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1,		name = _('Mode UPK/PKT/RS Switch - RS'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_22,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('Mode UPK/PKT/RS Switch - PKT'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_22,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Mode UPK/PKT/RS Switch - UPK'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_58,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('Cut Off Switch - ON/OFF'),							category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Cut Off Switch - ON'),								category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('Cut Off Switch - OFF'),								category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_61,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('GUV Mode Switch - Increase'),							category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_61,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1.0,		name = _('GUV Mode Switch - Decrease'),							category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_60,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('800 or 624-622-800 Switch Cover - OPEN/CLOSE'),		category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_53,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('800 or 624-622-800 Switch Cover - OPEN'),				category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_53,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('800 or 624-622-800 Switch Cover - CLOSE'),			category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_59,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0,		name = _('800 or 624-622-800 Switch - 800/624-622-800'),		category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_41,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('800 or 624-622-800 Switch - 800'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_41,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('800 or 624-622-800 Switch - 624-622-800'),			category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_79,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Left PYROCARTRIDGE Switch - CCW'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_79,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1,		name = _('Left PYROCARTRIDGE Switch - CW'),						category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_80,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Right PYROCARTRIDGE Switch - CCW'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_80,		cockpit_device_id = devices.WEAPON_SYS, value_down = -1,		name = _('Right PYROCARTRIDGE Switch - CW'),					category = {_('Left Overhead Panel'), _('Armament System')}},
{	pressed = device_commands.Button_97,	cockpit_device_id = devices.WEAPON_SYS, value_pressed = 0.01,	name = _('Burst Lenght Increase'),								category = {_('Left Overhead Panel'), _('Armament System')}},
{	pressed = device_commands.Button_97,	cockpit_device_id = devices.WEAPON_SYS, value_pressed = -0.01,	name = _('Burst Lenght Decrease'),								category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_99,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Gun Camera Switch - ON/OFF'),							category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_98,		cockpit_device_id = devices.WEAPON_SYS, value_down = 1,			name = _('Gun Camera Switch - ON'),								category = {_('Left Overhead Panel'), _('Armament System')}},
{	down = device_commands.Button_98,		cockpit_device_id = devices.WEAPON_SYS, value_down = 0,			name = _('Gun Camera Switch - OFF'),							category = {_('Left Overhead Panel'), _('Armament System')}},

------------------------------------------------
-- Center Overhead Panel -----------------------
------------------------------------------------
{	down = iCommandHelicopter_Selected_Engine_start,			up = iCommandHelicopter_Selected_Engine_start_up,										name = _('Start-up Engine Button'),						category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandHelicopter_Selected_Engine_interrupt_start,	up = iCommandHelicopter_Selected_Engine_interrupt_start_up,								name = _('Interrupt Start-up Sequence Button'),			category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandPlane_APU_Start,								up = iCommandPlane_APU_Off,																name = _('Start APU Button'),							category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandHelicopter_APU_stop,							up = iCommandHelicopter_APU_stop_up,													name = _('Stop APU Button'),							category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandHelicopter_Engine_Select,											value_down = 1,													name = _('Engine Selector Switch - Right'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandHelicopter_Engine_Select,											value_down = -1,												name = _('Engine Selector Switch - Left'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,												name = _('Engine Selector Switch - LEFT'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,													name = _('Engine Selector Switch - OFF'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,													name = _('Engine Selector Switch - RIGHT'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandEngineLaunchMethod,													value_down = 1,													name = _('Engine Start Mode Switch - Up'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = iCommandEngineLaunchMethod,													value_down = -1,												name = _('Engine Start Mode Switch - Down'),			category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_27,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,												name = _('Engine Start Mode Switch - COLD CRANKING'),	category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_27,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,													name = _('Engine Start Mode Switch - OFF'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_27,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,													name = _('Engine Start Mode Switch - START'),			category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_73,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,													name = _('APU Start Mode Switch - Up'),					category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_73,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,												name = _('APU Start Mode Switch - Down'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = -1,												name = _('APU Start Mode Switch - FALSE START'),		category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,													name = _('APU Start Mode Switch - COLD CRANKING'),		category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,													name = _('APU Start Mode Switch - START'),				category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_75, up = device_commands.Button_75, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1.0,	value_up = 0.0,	name = _('Engine Ignition Test Switch - LEFT'),			category = {_('Center Overhead Panel'), _('Engines')}},
{	down = device_commands.Button_75, up = device_commands.Button_75, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0,	value_up = 0.0,	name = _('Engine Ignition Test Switch - RIGHT'),		category = {_('Center Overhead Panel'), _('Engines')}},
-- Fire Protection System Panels
{	down = device_commands.Button_13,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,					name = _('Fire Detector Test Switch - EXTINGUISH/TEST'),	category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_10,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,					name = _('Fire Detector Test Switch - EXTINGUISH'),			category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_10,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 0,					name = _('Fire Detector Test Switch - TEST'),				category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_14,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,					name = _('Squib Test Switch - II/I'),						category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_11,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,					name = _('Squib Test Switch - II'),							category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_11,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 0,					name = _('Squib Test Switch - I'),							category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_15,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,					name = _('Check Fire Circuits Switch - CW'),				category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_15,								cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = -1,				name = _('Check Fire Circuits Switch - CCW'),				category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_1, up = device_commands.Button_1,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 1 Left Engine Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_2, up = device_commands.Button_2,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 1 Right Engine Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_3, up = device_commands.Button_3,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 1 KO-50 Heater Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_4, up = device_commands.Button_4,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 1 APU-GEAR Extinguish Button'),			category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_5, up = device_commands.Button_5,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 2 Left Engine Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_6, up = device_commands.Button_6,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 2 Right Engine Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_7, up = device_commands.Button_7,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 2 KO-50 Heater Extinguish Button'),		category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_8, up = device_commands.Button_8,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Sequence 2 APU-GEAR Extinguish Button'),			category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
{	down = device_commands.Button_9, up = device_commands.Button_9,	cockpit_device_id = devices.FIRE_EXTING_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Fire Signal OFF Button'),							category = {_('Center Overhead Panel'), _('Fire Protection System Panel')}},
-- Hydraulic System Panel
{	down = device_commands.Button_7,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Main Hydraulic Switch - ON/OFF'),					category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Main Hydraulic Switch - ON'),						category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 0,					name = _('Main Hydraulic Switch - OFF'),					category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_8,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Auxiliary Hydraulic Switch Cover - OPEN/CLOSE'),	category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_6,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Auxiliary Hydraulic Switch Cover - OPEN'),		category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_6,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 0,					name = _('Auxiliary Hydraulic Switch Cover - CLOSE'),		category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_9,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Auxiliary Hydraulic Switch - ON/OFF'),			category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,					name = _('Auxiliary Hydraulic Switch - ON'),				category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 0,					name = _('Auxiliary Hydraulic Switch - OFF'),				category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
{	down = device_commands.Button_3, up = device_commands.Button_3,	cockpit_device_id = devices.HYDRO_SYS_INTERFACE,	value_down = 1,	value_up = 0,	name = _('Auxiliary Hydraulic OFF Button'),					category = {_('Center Overhead Panel'), _('Hydraulic System Panel')}},
-- Fuel System Panel
{	down = device_commands.Button_18,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Shutoff Valve Switch Cover - OPEN/CLOSE'),	category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Shutoff Valve Switch Cover - OPEN'),			category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Left Shutoff Valve Switch Cover - CLOSE'),		category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Shutoff Valve Switch Cover - OPEN/CLOSE'),	category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Shutoff Valve Switch Cover - OPEN'),		category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Right Shutoff Valve Switch Cover - CLOSE'),		category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Crossfeed Switch Cover - OPEN/CLOSE'),			category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_11,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Crossfeed Switch Cover - OPEN'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_11,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Crossfeed Switch Cover - CLOSE'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_21,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Bypass Switch Cover - OPEN/CLOSE'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Bypass Switch Cover - OPEN'),						category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Bypass Switch Cover - CLOSE'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_16,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Shutoff Valve Switch - ON/OFF'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Shutoff Valve Switch - ON'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Left Shutoff Valve Switch - OFF'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_17,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Shutoff Valve Switch - ON/OFF'),			category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Shutoff Valve Switch - ON'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Right Shutoff Valve Switch - OFF'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_22,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Crossfeed Switch - ON/OFF'),						category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Crossfeed Switch - ON'),							category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Crossfeed Switch - OFF'),							category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_23,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Bypass Switch - ON/OFF'),							category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Bypass Switch - ON'),								category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Bypass Switch - OFF'),							category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_24,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Feed Tank Pump Switch - ON/OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Feed Tank Pump Switch - ON'),						category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Feed Tank Pump Switch - OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_25,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Tank Pump Switch - ON/OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Left Tank Pump Switch - ON'),						category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Left Tank Pump Switch - OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_26,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Tank Pump Switch - ON/OFF'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Right Tank Pump Switch - ON'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0,		name = _('Right Tank Pump Switch - OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_15,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1,		name = _('Refueling Control Switch - Up'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_15,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = -1,	name = _('Refueling Control Switch - Down'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0.0,	name = _('Refueling Control Switch - CHECK'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 0.5,	name = _('Refueling Control Switch - OFF'),					category = {_('Center Overhead Panel'), _('Fuel System Panel')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.FUELSYS_INTERFACE,	value_down = 1.0,	name = _('Refueling Control Switch - REFUEL'),				category = {_('Center Overhead Panel'), _('Fuel System Panel')}},

------------------------------------------------
-- Right Overhead Panel ------------------------
------------------------------------------------
-- GMC
{	down = device_commands.Button_4,	cockpit_device_id = devices.GMK1A,	value_down = 1,												name = _('GMC Mode Switch - ASTROCOMPASS'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.GMK1A,	value_down = 0,												name = _('GMC Mode Switch - GYROCOMPASS'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.GMK1A,	value_down = -1,											name = _('GMC Mode Switch - MAGNETIC COMPASS'),		category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.GMK1A,	value_down = 1,												name = _('GMC Mode Switch - Right'),				category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.GMK1A,	value_down = -1,											name = _('GMC Mode Switch - Left'),					category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.GMK1A,	value_down = 1,												name = _('GMC Hemisphere Switch - NORTH/SOUTH'),	category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.GMK1A,	value_down = 1,												name = _('GMC Hemisphere Switch - SOUTH'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.GMK1A,	value_down = 0,												name = _('GMC Hemisphere Switch - NORTH'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.GMK1A, value_down = 1, value_up = 0,	name = _('GMC Set Course Switch - RIGHT'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.GMK1A, value_down = -1, value_up = 0,	name = _('GMC Set Course Switch - LEFT'),			category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	pressed = device_commands.Button_10, cockpit_device_id = devices.GMK1A, value_pressed =  0.5,										name = _('GMC Set Latitude Knob - Increase'),		category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	pressed = device_commands.Button_10, cockpit_device_id = devices.GMK1A, value_pressed = -0.5,										name = _('GMC Set Latitude Knob - Decrease'),		category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.GMK1A, value_down = 1, value_up = 0,	name = _('GMC Control Switch - 300'),				category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.GMK1A, value_down = -1, value_up = 0,	name = _('GMC Control Switch - 0'),					category = {_('Right Overhead Panel'), _('GMC Control Panel')}},
-- ARC-UD
{	down = device_commands.Button_1,		cockpit_device_id = devices.ARC_UD, value_down = 0.0,										name = _('ARC-UD Mode Selector Switch - POWER OFF'),		category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ARC_UD, value_down = 0.1,										name = _('ARC-UD Mode Selector Switch - NARROW BAND'),		category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ARC_UD, value_down = 0.2,										name = _('ARC-UD Mode Selector Switch - WIDE BAND'),		category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ARC_UD, value_down = 0.3,										name = _('ARC-UD Mode Selector Switch - PULSE SIGNAL'),		category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ARC_UD, value_down = 0.4,										name = _('ARC-UD Mode Selector Switch - RADIO COMPASS'),	category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ARC_UD, value_down = 1,											name = _('ARC-UD Mode Selector Switch - CW'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ARC_UD, value_down = -1,										name = _('ARC-UD Mode Selector Switch - CCW'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.0,										name = _('ARC-UD Channel Selector Switch - 1'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.1,										name = _('ARC-UD Channel Selector Switch - 2'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.2,										name = _('ARC-UD Channel Selector Switch - 3'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.3,										name = _('ARC-UD Channel Selector Switch - 4'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.4,										name = _('ARC-UD Channel Selector Switch - 5'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ARC_UD, value_down = 0.5,										name = _('ARC-UD Channel Selector Switch - 6'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.ARC_UD, value_down = 1,											name = _('ARC-UD Channel Selector Switch - CW/Increase'),	category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.ARC_UD, value_down = -1,										name = _('ARC-UD Channel Selector Switch - CCW/Decrease'),	category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_10,		cockpit_device_id = devices.ARC_UD, value_down = 1.0,										name = _('ARC-UD Wave Switch - MW/DW'),						category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.ARC_UD, value_down = 1,											name = _('ARC-UD Wave Switch - MW'),						category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.ARC_UD, value_down = 0,											name = _('ARC-UD Wave Switch - DW'),						category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_9,		cockpit_device_id = devices.ARC_UD, value_down = 1.0,										name = _('ARC-UD Sensitivity Switch - MORE/LESS'),			category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ARC_UD, value_down = 1,											name = _('ARC-UD Sensitivity Switch - MORE'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ARC_UD, value_down = 0,											name = _('ARC-UD Sensitivity Switch - LESS'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	pressed = device_commands.Button_11,	cockpit_device_id = devices.ARC_UD, value_pressed =  0.5,									name = _('ARC-UD Volume Knob - CW/Increase'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	pressed = device_commands.Button_11,	cockpit_device_id = devices.ARC_UD, value_pressed = -0.5,									name = _('ARC-UD Volume Knob - CCW/Decrease'),				category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0,	name = _('ARC-UD Control Button'),							category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_7, up = device_commands.Button_7, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0,	name = _('ARC-UD Left Antenna Button'),						category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.ARC_UD, value_down = 1, value_up = 0,	name = _('ARC-UD Right Antenna Button'),					category = {_('Right Overhead Panel'), _('ARC-UD Control Panel')}},
-- ARC-9
{	pressed = device_commands.Button_12,	cockpit_device_id = devices.ARC_9, value_pressed = -0.4,										name = _('ARC-9 Volume Knob - CCW/Decrease'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	pressed = device_commands.Button_12,	cockpit_device_id = devices.ARC_9, value_pressed = 0.4,											name = _('ARC-9 Volume Knob - CW/Increase'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Signal Mode Switch - TLF/TLG'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ARC_9, value_down = 1,												name = _('ARC-9 Signal Mode Switch - TLF'),							category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ARC_9, value_down = 0,												name = _('ARC-9 Signal Mode Switch - TLG'),							category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ARC_9, value_down = -1.0,											name = _('ARC-9 Mode Selector Switch - CCW'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Mode Selector Switch - CW'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.ARC_9, value_down = -1.0, value_up = 0.0,	name = _('ARC-9 Loop Antenna Switch - LEFT'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.ARC_9, value_down = 1.0, value_up = 0.0,	name = _('ARC-9 Loop Antenna Switch - RIGHT'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	pressed = device_commands.Button_15,	cockpit_device_id = devices.ARC_9, value_pressed = -0.2,										name = _('ARC-9 Backup Frequency Dial Tune Knob - Decrease'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	pressed = device_commands.Button_15,	cockpit_device_id = devices.ARC_9, value_pressed = 0.2,											name = _('ARC-9 Backup Frequency Dial Tune Knob - Increase'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_16,		cockpit_device_id = devices.ARC_9, value_down = -1.0,											name = _('ARC-9 Backup Frequency Dial 100 kHz Knob - Decrease'),	category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_16,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Backup Frequency Dial 100 kHz Knob - Increase'),	category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_17,		cockpit_device_id = devices.ARC_9, value_down = -1.0,											name = _('ARC-9 Backup Frequency Dial 10 kHz Knob - Decrease'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_17,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Backup Frequency Dial 10 kHz Knob - Increase'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	pressed = device_commands.Button_18,	cockpit_device_id = devices.ARC_9, value_pressed = -0.2,										name = _('ARC-9 Main Frequency Dial Tune Knob - Decrease'),			category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	pressed = device_commands.Button_18,	cockpit_device_id = devices.ARC_9, value_pressed = 0.2,											name = _('ARC-9 Main Frequency Dial Tune Knob - Increase'),			category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_19,		cockpit_device_id = devices.ARC_9, value_down = -1.0,											name = _('ARC-9 Main Frequency Dial 100 kHz Knob - Decrease'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_19,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Main Frequency Dial 100 kHz Knob - Increase'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.ARC_9, value_down = -1.0,											name = _('ARC-9 Main Frequency Dial 10 kHz Knob - Decrease'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_20,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Main Frequency Dial 10 kHz Knob - Increase'),		category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_21,		cockpit_device_id = devices.ARC_9, value_down = 1.0,											name = _('ARC-9 Dial Selector Switch - MAIN/BACKUP'),				category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_11,		cockpit_device_id = devices.ARC_9, value_down = 1,												name = _('ARC-9 Dial Selector Switch - MAIN'),						category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
{	down = device_commands.Button_11,		cockpit_device_id = devices.ARC_9, value_down = 0,												name = _('ARC-9 Dial Selector Switch - BACKUP'),					category = {_('Right Overhead Panel'), _('ARC-9 Control Panel')}},
-- KO-50 Heater
{	down = device_commands.Button_8,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Mode Switch - Up'),					category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_8,								cockpit_device_id = devices.HEATER_KO50,	value_down = -1,				name = _('KO-50 Heater Mode Switch - Down'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_3,								cockpit_device_id = devices.HEATER_KO50,	value_down = -1,				name = _('KO-50 Heater Mode Switch - AUTO'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_3,								cockpit_device_id = devices.HEATER_KO50,	value_down = 0,					name = _('KO-50 Heater Mode Switch - OFF'),					category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_3,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Mode Switch - MANUAL'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_9,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Regime Switch - Up'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_9,								cockpit_device_id = devices.HEATER_KO50,	value_down = -1,				name = _('KO-50 Heater Regime Switch - Down'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_4,								cockpit_device_id = devices.HEATER_KO50,	value_down = -1,				name = _('KO-50 Heater Regime Switch - MEDIUM'),			category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_4,								cockpit_device_id = devices.HEATER_KO50,	value_down = 0,					name = _('KO-50 Heater Regime Switch - FULL'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_4,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Regime Switch - FILLING'),			category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_7,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Fan Switch - ON/OFF'),				category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.HEATER_KO50,	value_down = 1,					name = _('KO-50 Heater Fan Switch - ON'),					category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_2,								cockpit_device_id = devices.HEATER_KO50,	value_down = 0,					name = _('KO-50 Heater Fan Switch - OFF'),					category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	down = device_commands.Button_1, up = device_commands.Button_1,	cockpit_device_id = devices.HEATER_KO50,	value_down = 1,	value_up = 0,	name = _('KO-50 Heater Start Button'),						category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	pressed = device_commands.Button_10,							cockpit_device_id = devices.HEATER_KO50,	value_pressed = 0.5,			name = _('KO-50 Heater Temperature Knob - CW/Increase'),	category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},
{	pressed = device_commands.Button_10,							cockpit_device_id = devices.HEATER_KO50,	value_pressed = -0.5,			name = _('KO-50 Heater Temperature Knob - CCW/Decrease'),	category = {_('Right Overhead Panel'), _('KO-50 Heater Control Panel')}},

------------------------------------------------
-- Right Triangular Panel ----------------------
------------------------------------------------
{	down = device_commands.Button_14,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('5.5 V Lights Power Switch - ON/OFF'),				category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('5.5 V Lights Power Switch - ON'),					category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 0,		name = _('5.5 V Lights Power Switch - OFF'),				category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.SPU_7,			value_down = 1,		name = _('Laryngophone Switch - ON/OFF'),					category = {_('Right Triangular Panel'), _('Communications')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SPU_7,			value_down = 1,		name = _('Laryngophone Switch - ON'),						category = {_('Right Triangular Panel'), _('Communications')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SPU_7,			value_down = 0,		name = _('Laryngophone Switch - OFF'),						category = {_('Right Triangular Panel'), _('Communications')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.ARC_UD,			value_down = 1.0,	name = _('ARC-UD Lock Switch - LOCK/UNLOCK'),				category = {_('Right Triangular Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.ARC_UD,			value_down = 1,		name = _('ARC-UD Lock Switch - LOCK'),						category = {_('Right Triangular Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.ARC_UD,			value_down = 0,		name = _('ARC-UD Lock Switch - UNLOCK'),					category = {_('Right Triangular Panel'), _('ARC-UD Control Panel')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.DISS_15,		value_down = 1,		name = _('Doppler Navigator Power Switch - ON/OFF'),		category = {_('Right Triangular Panel'), _('Doppler Navigator')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.DISS_15,		value_down = 1,		name = _('Doppler Navigator Power Switch - ON'),			category = {_('Right Triangular Panel'), _('Doppler Navigator')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.DISS_15,		value_down = 0,		name = _('Doppler Navigator Power Switch - OFF'),			category = {_('Right Triangular Panel'), _('Doppler Navigator')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.JADRO_1A,		value_down = 1.0,	name = _('Jadro-1A Power Switch - ON/OFF'),					category = {_('Right Triangular Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.JADRO_1A,		value_down = 1,		name = _('Jadro-1A Power Switch - ON'),						category = {_('Right Triangular Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.JADRO_1A,		value_down = 0,		name = _('Jadro-1A Power Switch - OFF'),					category = {_('Right Triangular Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.GMK1A,			value_down = 1,		name = _('GMC Power Switch - ON/OFF'),						category = {_('Right Triangular Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.GMK1A,			value_down = 1,		name = _('GMC Power Switch - ON'),							category = {_('Right Triangular Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_1,	cockpit_device_id = devices.GMK1A,			value_down = 0,		name = _('GMC Power Switch - OFF'),							category = {_('Right Triangular Panel'), _('GMC Control Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.AGB_3K_RIGHT,	value_down = 1,		name = _('Right Attitude Indicator Power Switch - ON/OFF'),	category = {_('Right Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.AGB_3K_RIGHT,	value_down = 1,		name = _('Right Attitude Indicator Power Switch - ON'),		category = {_('Right Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.AGB_3K_RIGHT,	value_down = 0,		name = _('Right Attitude Indicator Power Switch - OFF'),	category = {_('Right Triangular Panel'), _('Instruments')}},
{	down = device_commands.Button_23,	cockpit_device_id = devices.CPT_MECH,		value_down = 1,		name = _('Right Fan Switch - ON/OFF'),						category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_21,	cockpit_device_id = devices.CPT_MECH,		value_down = 1,		name = _('Right Fan Switch - ON'),							category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_21,	cockpit_device_id = devices.CPT_MECH,		value_down = 0,		name = _('Right Fan Switch - OFF'),							category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Right Plafond Switch - Up'),						category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_13,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = -1,	name = _('Right Plafond Switch - Down'),					category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = -1,	name = _('Right Plafond Switch - WHITE'),					category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 0,		name = _('Right Plafond Switch - OFF'),						category = {_('Right Triangular Panel'), _('Internal Lights')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Right Plafond Switch - RED'),						category = {_('Right Triangular Panel'), _('Internal Lights')}},
-- windscreen wiper switch
{	down = device_commands.Button_26,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.0,					name = _('Right Windscreen Wiper Switch - OFF'),		category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_26,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.1,					name = _('Right Windscreen Wiper Switch - START'),		category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_26,	up = device_commands.Button_26,	cockpit_device_id = devices.CPT_MECH,	value_down = 0.2,	value_up = 0.0,	name = _('Right Windscreen Wiper Switch - RESET'),		category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_26,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.3,					name = _('Right Windscreen Wiper Switch - SPEED 1'),	category = {_('Right Triangular Panel')}},
{	down = device_commands.Button_26,									cockpit_device_id = devices.CPT_MECH,	value_down = 0.4,					name = _('Right Windscreen Wiper Switch - SPEED 2'),	category = {_('Right Triangular Panel')}},

------------------------------------------------
-- Right Side Panel ----------------------------
------------------------------------------------
-- Internal Lights
{	pressed = device_commands.Button_17,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = 1,	name = _('Right Red Lights Group 1 Rheostat - CW'),		category = {_('Right Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_17,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = -1,	name = _('Right Red Lights Group 1 Rheostat - CCW'),	category = {_('Right Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_18,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = 1,	name = _('Right Red Lights Group 2 Rheostat - CW'),		category = {_('Right Side Panel'), _('Internal Lights')}},
{	pressed = device_commands.Button_18,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = -1,	name = _('Right Red Lights Group 2 Rheostat - CCW'),	category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_24,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Cargo Cabin Duty Lights Switch - ON/OFF'),	category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_22,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Cargo Cabin Duty Lights Switch - ON'),		category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_22,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 0,		name = _('Cargo Cabin Duty Lights Switch - OFF'),		category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_25,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Cargo Cabin Common Lights Switch - ON/OFF'),	category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_23,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 1,		name = _('Cargo Cabin Common Lights Switch - ON'),		category = {_('Right Side Panel'), _('Internal Lights')}},
{	down = device_commands.Button_23,		cockpit_device_id = devices.LIGHT_SYSTEM,	value_down = 0,		name = _('Cargo Cabin Common Lights Switch - OFF'),		category = {_('Right Side Panel'), _('Internal Lights')}},
-- External Lights
{	down = iCommandPlaneLightsOnOff,														value_down = -1,	name = _('Nav. Lights Switch - Down'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = iCommandPlaneLightsOnOff,														value_down = 1,		name = _('Nav. Lights Switch - Up'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = -1,	name = _('Nav. Lights Switch - DIM'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 0,		name = _('Nav. Lights Switch - OFF'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1,		name = _('Nav. Lights Switch - BRIGHT'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = iCommandPlaneFormationLights,													value_down = -1,	name = _('Formation Lights Switch - Down'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = iCommandPlaneFormationLights,													value_down = 1,		name = _('Formation Lights Switch - Up'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = -1,	name = _('Formation Lights Switch - DIM'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 0,		name = _('Formation Lights Switch - OFF'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1,		name = _('Formation Lights Switch - BRIGHT'),	category = {_('Right Side Panel'), _('External Lights')}},
{	down = iCommandPlaneRotorTipLights,																			name = _('Tip Lights Switch - ON/OFF'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1,		name = _('Tip Lights Switch - ON'),				category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 0,		name = _('Tip Lights Switch - OFF'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = iCommandPlaneAntiCollisionLights,																	name = _('Strobe Light Switch - ON/OFF'),		category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 1,		name = _('Strobe Light Switch - ON'),			category = {_('Right Side Panel'), _('External Lights')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.NAVLIGHT_SYSTEM,	value_down = 0,		name = _('Strobe Light Switch - OFF'),			category = {_('Right Side Panel'), _('External Lights')}},
-- Engines
{	down = device_commands.Button_61, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Left Engine Dust Protection Switch - ON/OFF'),	category = {_('Right Side Panel'), _('Engines')}},
{	down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Left Engine Dust Protection Switch - ON'),		category = {_('Right Side Panel'), _('Engines')}},
{	down = device_commands.Button_28, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,	name = _('Left Engine Dust Protection Switch - OFF'),		category = {_('Right Side Panel'), _('Engines')}},
{	down = device_commands.Button_62, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Right Engine Dust Protection Switch - ON/OFF'),	category = {_('Right Side Panel'), _('Engines')}},
{	down = device_commands.Button_29, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,	name = _('Right Engine Dust Protection Switch - ON'),		category = {_('Right Side Panel'), _('Engines')}},
{	down = device_commands.Button_29, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,	name = _('Right Engine Dust Protection Switch - OFF'),		category = {_('Right Side Panel'), _('Engines')}},
-- Heating
{	down = device_commands.Button_82,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Left Pitot Heater Switch - ON/OFF'),		category = {_('Right Side Panel')}},
{	down = device_commands.Button_38,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Left Pitot Heater Switch - ON'),			category = {_('Right Side Panel')}},
{	down = device_commands.Button_38,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,		name = _('Left Pitot Heater Switch - OFF'),			category = {_('Right Side Panel')}},
{	down = device_commands.Button_83,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Right Pitot Heater Switch - ON/OFF'),		category = {_('Right Side Panel')}},
{	down = device_commands.Button_39,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 1,		name = _('Right Pitot Heater Switch - ON'),			category = {_('Right Side Panel')}},
{	down = device_commands.Button_39,	cockpit_device_id = devices.ENGINE_INTERFACE,	value_down = 0,		name = _('Right Pitot Heater Switch - OFF'),		category = {_('Right Side Panel')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.CLOCK,				value_down = 1,		name = _('Clock Heating Switch - ON/OFF'),			category = {_('Right Side Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.CLOCK,				value_down = 1,		name = _('Clock Heating Switch - ON'),				category = {_('Right Side Panel')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.CLOCK,				value_down = 0,		name = _('Clock Heating Switch - OFF'),				category = {_('Right Side Panel')}},
{	down = cb_start_cmd + 76,			cockpit_device_id = devices.ELEC_INTERFACE,		value_down = 1,		name = _('Battery Heating Switch - ON/OFF'),		category = {_('Right Side Panel')}},
{	down = cb_start_cmd + 75,			cockpit_device_id = devices.ELEC_INTERFACE,		value_down = 1,		name = _('Battery Heating Switch - ON'),			category = {_('Right Side Panel')}},
{	down = cb_start_cmd + 75,			cockpit_device_id = devices.ELEC_INTERFACE,		value_down = 0,		name = _('Battery Heating Switch - OFF'),			category = {_('Right Side Panel')}},
--
{	down = device_commands.Button_8,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 1,		name = _('Flasher Switch - ON/OFF'),				category = {_('Right Side Panel'), _('Warning Lights')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 1,		name = _('Flasher Switch - ON'),					category = {_('Right Side Panel'), _('Warning Lights')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 0,		name = _('Flasher Switch - OFF'),					category = {_('Right Side Panel'), _('Warning Lights')}},
{	down = device_commands.Button_9,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 1,		name = _('Transparent Switch - DAY/NIGHT'),			category = {_('Right Side Panel'), _('Warning Lights')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 1,		name = _('Transparent Switch - NIGHT'),				category = {_('Right Side Panel'), _('Warning Lights')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.SYS_CONTROLLER,		value_down = 0,		name = _('Transparent Switch - DAY'),				category = {_('Right Side Panel'), _('Warning Lights')}},
-- Electric System Panels
{	down = device_commands.Button_111,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Battery 1 Switch - ON/OFF'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Battery 1 Switch - ON'),											category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Battery 1 Switch - OFF'),											category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_112,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Battery 2 Switch - ON/OFF'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Battery 2 Switch - ON'),											category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Battery 2 Switch - OFF'),											category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_113,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Standby Generator Switch - ON/OFF'),								category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Standby Generator Switch - ON'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Standby Generator Switch - OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_108,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 1 Switch - ON/OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_7,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 1 Switch - ON'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_7,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Rectifier 1 Switch - OFF'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_109,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 2 Switch - ON/OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_5,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 2 Switch - ON'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_5,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Rectifier 2 Switch - OFF'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_110,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 3 Switch - ON/OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Rectifier 3 Switch - ON'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Rectifier 3 Switch - OFF'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_114,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('DC Ground Power Switch - ON/OFF'),								category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('DC Ground Power Switch - ON'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('DC Ground Power Switch - OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_115,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Equipment Test Switch - ON/OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_9,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Equipment Test Switch - ON'),										category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_9,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Equipment Test Switch - OFF'),									category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_116,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('DC Voltmeter Selector Switch - CCW'),								category = {_('Right Side Panel'), _('Electric Panels')}},
{	down = device_commands.Button_116,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('DC Voltmeter Selector Switch - CW'),								category = {_('Right Side Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_117,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = -0.2,	name = _('Standby Generator Voltage Adjustment Rheostat - CCW/Decrease'),	category = {_('Right Side Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_117,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = 0.2,	name = _('Standby Generator Voltage Adjustment Rheostat - CW/Increase'),	category = {_('Right Side Panel'), _('Electric Panels')}},

------------------------------------------------
-- Electrical Control Panel --------------------
------------------------------------------------
{	down = device_commands.Button_118,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Generator 1 Switch - ON/OFF'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Generator 1 Switch - ON'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Generator 1 Switch - OFF'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_119,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Generator 2 Switch - ON/OFF'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_16,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('Generator 2 Switch - ON'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_16,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('Generator 2 Switch - OFF'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_120,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('AC Ground Power Switch - ON/OFF'),							category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('AC Ground Power Switch - ON'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_14,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('AC Ground Power Switch - OFF'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_121,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('115V Inverter Switch - Down'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_121,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('115V Inverter Switch - Up'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('115V Inverter Switch - AUTO'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('115V Inverter Switch - OFF'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_12,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('115V Inverter Switch - MANUAL'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_122,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('36V Inverter Switch - Down'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_122,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('36V Inverter Switch - Up'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('36V Inverter Switch - AUTO'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 0,			name = _('36V Inverter Switch - OFF'),									category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('36V Inverter Switch - MANUAL'),								category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_123,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = -1,		name = _('AC Voltmeter Selector Switch - CCW'),							category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	down = device_commands.Button_123,		cockpit_device_id = devices.ELEC_INTERFACE,	value_down = 1,			name = _('AC Voltmeter Selector Switch - CW'),							category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_124,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = -0.2,	name = _('Generator 1 Voltage Adjustment Rheostat - CCW/Decrease'),		category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_124,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = 0.2,	name = _('Generator 1 Voltage Adjustment Rheostat - CW/Increase'),		category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_125,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = -0.2,	name = _('Generator 2 Voltage Adjustment Rheostat - CCW/Decrease'),		category = {_('Electrical Control Panel'), _('Electric Panels')}},
{	pressed = device_commands.Button_125,	cockpit_device_id = devices.ELEC_INTERFACE,	value_pressed = 0.2,	name = _('Generator 2 Voltage Adjustment Rheostat - CW/Increase'),		category = {_('Electrical Control Panel'), _('Electric Panels')}},

------------------------------------------------
-- Center Console ------------------------------
------------------------------------------------
-- Autopilot
{	down = device_commands.Button_3, up = device_commands.Button_3, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Heading Channel ON Button'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_2, up = device_commands.Button_2, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Roll/Pitch Channel ON Button'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_1, up = device_commands.Button_1, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Altitude Channel ON Button'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_5, up = device_commands.Button_5, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Heading Channel OFF Button'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_4, up = device_commands.Button_4, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Altitude Channel OFF Button'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_6, up = device_commands.Button_6, value_down = 1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Altitude Control Switch - Up'),			category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_7, up = device_commands.Button_7, value_down = -1, value_up = 0,	cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Altitude Control Switch - Down'),		category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_13, value_pressed = -0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Heading Adjustment Knob - CCW/Left'),	category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_13, value_pressed = 0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Heading Adjustment Knob - CW/Right'),	category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_14, value_pressed = -0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Roll Adjustment Knob - CCW/Left'),		category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_14, value_pressed = 0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Roll Adjustment Knob - CW/Right'),		category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_15, value_pressed = -0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Pitch Adjustment Knob - CCW/Left'),		category = {_('Center Console'), _('Autopilot')}},
{	pressed = device_commands.Button_15, value_pressed = 0.5,										cockpit_device_id = devices.AUTOPILOT,	name = _('Autopilot Pitch Adjustment Knob - CW/Right'),		category = {_('Center Console'), _('Autopilot')}},
{	down = device_commands.Button_1, value_down = 1, cockpit_device_id = devices.AUTOPILOT_ADJUSTMENT,										name = _('Adjust Autopilot'),								category = {_('Autopilot')}},
-- SPUU-52
{	down = device_commands.Button_7,								cockpit_device_id = devices.SPUU_52,	value_down = 1,					name = _('SPUU-52 Test Engage Button - ON/OFF'),		category = {_('Center Console'), _('SPUU-52')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.SPUU_52,	value_down = 1,					name = _('SPUU-52 Test Engage Button - ON'),			category = {_('Center Console'), _('SPUU-52')}},
{	down = device_commands.Button_1,								cockpit_device_id = devices.SPUU_52,	value_down = 0,					name = _('SPUU-52 Test Engage Button - OFF'),			category = {_('Center Console'), _('SPUU-52')}},
{	down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.SPUU_52,	value_down = -1, value_up = 0,	name = _('SPUU-52 Test Switch - P'),					category = {_('Center Console'), _('SPUU-52')}},
{	down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.SPUU_52,	value_down = 1, value_up = 0,	name = _('SPUU-52 Test Switch - t'),					category = {_('Center Console'), _('SPUU-52')}},
{	pressed = device_commands.Button_8, 							cockpit_device_id = devices.SPUU_52,	value_pressed = -0.5,			name = _('SPUU-52 Test Adjustment Knob - CCW/Left'),	category = {_('Center Console'), _('SPUU-52')}},
{	pressed = device_commands.Button_8, 							cockpit_device_id = devices.SPUU_52,	value_pressed = 0.5,			name = _('SPUU-52 Test Adjustment Knob - CW/Right'),	category = {_('Center Console'), _('SPUU-52')}},
-- Radio R-863
{	down = device_commands.Button_6,		cockpit_device_id = devices.R_863, value_down = -0.1,		name = _('Radio R-863 Frequency Dial 10MHz Knob - Decrease'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.R_863, value_down = 0.1,		name = _('Radio R-863 Frequency Dial 10MHz Knob - Increase'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_7,		cockpit_device_id = devices.R_863, value_down = -0.1,		name = _('Radio R-863 Frequency Dial 1MHz Knob - Decrease'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_7,		cockpit_device_id = devices.R_863, value_down = 0.1,		name = _('Radio R-863 Frequency Dial 1MHz Knob - Increase'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_8,		cockpit_device_id = devices.R_863, value_down = -0.1,		name = _('Radio R-863 Frequency Dial 100kHz Knob - Decrease'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_8,		cockpit_device_id = devices.R_863, value_down = 0.1,		name = _('Radio R-863 Frequency Dial 100kHz Knob - Increase'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_9,		cockpit_device_id = devices.R_863, value_down = -0.1,		name = _('Radio R-863 Frequency Dial 25kHz Knob - Decrease'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_9,		cockpit_device_id = devices.R_863, value_down = 0.1,		name = _('Radio R-863 Frequency Dial 25kHz Knob - Increase'),		category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_13,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Unit Switch - DIAL/MEMORY'),					category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Unit Switch - MEMORY'),						category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.R_863, value_down = 0,			name = _('Radio R-863 Unit Switch - DIAL'),							category = {_('Center Console'), _('Radio R-863')}},
{	pressed = device_commands.Button_16,	cockpit_device_id = devices.R_863, value_pressed = -0.2,	name = _('Radio R-863 Volume Knob - CCW/Decrease'),					category = {_('Center Console'), _('Radio R-863')}},
{	pressed = device_commands.Button_16,	cockpit_device_id = devices.R_863, value_pressed = 0.2,		name = _('Radio R-863 Volume Knob - CW/Increase'),					category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_15,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Squelch Switch - ON/OFF'),					category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Squelch Switch - ON'),						category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.R_863, value_down = 0,			name = _('Radio R-863 Squelch Switch - OFF'),						category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_17,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 ARC Switch - ON/OFF'),						category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_11,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 ARC Switch - ON'),							category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_11,		cockpit_device_id = devices.R_863, value_down = 0,			name = _('Radio R-863 ARC Switch - OFF'),							category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_18,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Emergency Receiver Switch - ON/OFF'),			category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_10,		cockpit_device_id = devices.R_863, value_down = 1,			name = _('Radio R-863 Emergency Receiver Switch - ON'),				category = {_('Center Console'), _('Radio R-863')}},
{	down = device_commands.Button_10,		cockpit_device_id = devices.R_863, value_down = 0,			name = _('Radio R-863 Emergency Receiver Switch - OFF'),			category = {_('Center Console'), _('Radio R-863')}},
-- Electric Panel
{	down = device_commands.Button_126,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('Net on Rectifier Switch Cover - OPEN/CLOSE'),		category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_21,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('Net on Rectifier Switch Cover - OPEN'),			category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_21,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,		name = _('Net on Rectifier Switch Cover - CLOSE'),			category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_127,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('Net on Rectifier Switch - ON/OFF'),				category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('Net on Rectifier Switch - ON'),					category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_19,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,		name = _('Net on Rectifier Switch - OFF'),					category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_128,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('36V Transformer Selector Switch - Up'),			category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_128,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1,	name = _('36V Transformer Selector Switch - Down'),			category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = -1,	name = _('36V Transformer Selector Switch - AUXILIARY'),	category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 0,		name = _('36V Transformer Selector Switch - OFF'),			category = {_('Center Console'), _('Electric Panels')}},
{	down = device_commands.Button_20,	cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1,		name = _('36V Transformer Selector Switch - MAIN'),			category = {_('Center Console'), _('Electric Panels')}},
--
{	down = device_commands.Button_10,	cockpit_device_id = devices.SYS_CONTROLLER, value_down = 1,		name = _('Lamps Check Switch - Up'),			category = {_('Center Console'), _('Electric Panels'), _('Warning Lights')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.SYS_CONTROLLER, value_down = -1,	name = _('Lamps Check Switch - Down'),			category = {_('Center Console'), _('Electric Panels'), _('Warning Lights')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.SYS_CONTROLLER, value_down = -1,	name = _('Lamps Check Switch - FLASHER'),		category = {_('Center Console'), _('Electric Panels'), _('Warning Lights')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.SYS_CONTROLLER, value_down = 0,		name = _('Lamps Check Switch - OFF'),			category = {_('Center Console'), _('Electric Panels'), _('Warning Lights')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.SYS_CONTROLLER, value_down = 1,		name = _('Lamps Check Switch - LAMPS'),			category = {_('Center Console'), _('Electric Panels'), _('Warning Lights')}},
-- Engines Control Panel
{	down = iCommandElectronicControlSystemLeftEngine,																									name = _('Left Engine EEC Switch - ON/OFF'),		category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_1,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Left Engine EEC Switch - ON'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_1,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,					name = _('Left Engine EEC Switch - OFF'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_84,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Left Engine ER Switch - ON/OFF'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_52,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Left Engine ER Switch - ON'),				category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_52,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,					name = _('Left Engine ER Switch - OFF'),			category = {_('Center Console'), _('Engines')}},
{	down = iCommandElectronicControlSystemRightEngine,																									name = _('Right Engine EEC Switch - ON/OFF'),		category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_3,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Right Engine EEC Switch - ON'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_3,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,					name = _('Right Engine EEC Switch - OFF'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_85,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Right Engine ER Switch - ON/OFF'),		category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_53,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1,					name = _('Right Engine ER Switch - ON'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_53,									cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 0,					name = _('Right Engine ER Switch - OFF'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_50, up = device_commands.Button_50,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, value_up = 0,		name = _('Left Engine FT Test Switch - ST1/WORK'),	category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_50, up = device_commands.Button_50,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1, value_up = 0,	name = _('Left Engine FT Test Switch - ST2/WORK'),	category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_51, up = device_commands.Button_51,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, value_up = 0,		name = _('Right Engine FT Test Switch - ST1/WORK'),	category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_51, up = device_commands.Button_51,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1, value_up = 0,	name = _('Right Engine FT Test Switch - ST2/WORK'),	category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_54, up = device_commands.Button_54,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1, value_up = 0,		name = _('CT Test Switch - RIGHT/WORK'),			category = {_('Center Console'), _('Engines')}},
{	down = device_commands.Button_54, up = device_commands.Button_54,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1, value_up = 0,	name = _('CT Test Switch - LEFT/WORK'),				category = {_('Center Console'), _('Engines')}},

------------------------------------------------
-- Right Auxiliary Panel -----------------------
------------------------------------------------
-- UV-26
{	down = iCommand_UV26_Power,																		name = _('UV-26 Power Switch - ON/OFF'),						category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.UV_26,	value_down = 1,			name = _('UV-26 Power Switch - ON'),							category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_10,	cockpit_device_id = devices.UV_26,	value_down = 0,			name = _('UV-26 Power Switch - OFF'),							category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{combos = {{key = "JOY_BTN26"}, },	down = iCommandPlaneCMDDispence,				up = iCommandPlaneCMDDispenceOff,				name = _('UV-26 Start Dispensing Button'),						category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{combos = {{key = "JOY_BTN21"}, },	down = iCommandPlaneCMDDispenceStop,			up = iCommandPlaneCMDDispenceStopOff,			name = _('UV-26 Stop Dispensing Button'),						category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = iCommandPlaneCMDChangeRippleQuantity,	up = iCommandPlaneCMDChangeRippleQuantityOff,	name = _('UV-26 Number of Flare Sequences Button'),				category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = iCommandPlaneCMDChangeRippleInterval,	up = iCommandPlaneCMDChangeRippleIntervalOff,	name = _('UV-26 Delay Between Sequences Button'),				category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = iCommandPlaneCMDChangeBurstAmount,		up = iCommandPlaneCMDChangeBurstAmountOff,		name = _('UV-26 Number of Flares in Sequence Button'),			category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = iCommandPlaneCMDCancelCurrentProgram,	up = iCommandPlaneCMDCancelCurrentProgramOff,	name = _('UV-26 Reset Current Program Button'),					category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.UV_26,	value_down = 1.0,		name = _('UV-26 Change Dispensing Board Switch - Right'),		category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_14,	cockpit_device_id = devices.UV_26,	value_down = -1.0,		name = _('UV-26 Change Dispensing Board Switch - Left'),		category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.UV_26,	value_down = 0.0,		name = _('UV-26 Change Dispensing Board Switch - LEFT'),		category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.UV_26,	value_down = 0.5,		name = _('UV-26 Change Dispensing Board Switch - BOTH'),		category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.UV_26,	value_down = 1.0,		name = _('UV-26 Change Dispensing Board Switch - RIGHT'),		category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = iCommandPlaneCMDShowAmountOrProgram,														name = _('UV-26 Flares Amount Switch - COUNTER/PROGRAMMING'),	category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.UV_26,	value_down = 1,			name = _('UV-26 Flares Amount Switch - PROGRAMMING'),			category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
{	down = device_commands.Button_3,	cockpit_device_id = devices.UV_26,	value_down = 0,			name = _('UV-26 Flares Amount Switch - COUNTER'),				category = {_('Right Auxiliary Panel'), _('Ins Countermeasures dispensers UV-26')}},
-- R-828
{	down = iCommandPlane_R_828_Channel_next,													name = _('Radio R-828 Channel Selector - Next'),		category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = iCommandPlane_R_828_Channel_prevous,													name = _('Radio R-828 Channel Selector - Previous'),	category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = iCommandPlane_R_828_Noise_Reductor_on_off,											name = _('Radio R-828 Squelch Switch - ON/OFF'),		category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.R_828,	value_down = 1,		name = _('Radio R-828 Squelch Switch - ON'),			category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_4,	cockpit_device_id = devices.R_828,	value_down = 0,		name = _('Radio R-828 Squelch Switch - OFF'),			category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = iCommandPlane_R_828_ASU, up = iCommandPlane_R_828_ASU_up,							name = _('Radio R-828 Tuner Button'),					category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	pressed = iCommandPlane_R_828_volume_up,													name = _('Radio R-828 Volume Knob - CW/Increase'),		category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	pressed = iCommandPlane_R_828_volume_down,													name = _('Radio R-828 Volume Knob - CCW/Decrease'),		category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = iCommandPlane_R_828_Power_on_off,													name = _('Radio R-828 Power Switch - ON/OFF'),			category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.R_828,	value_down = 1,		name = _('Radio R-828 Power Switch - ON'),				category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.R_828,	value_down = 0,		name = _('Radio R-828 Power Switch - OFF'),				category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.R_828,	value_down = 1,		name = _('Radio R-828 Compass Switch - COMM/NAV'),		category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.R_828,	value_down = 1,		name = _('Radio R-828 Compass Switch - NAV'),			category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.R_828,	value_down = 0,		name = _('Radio R-828 Compass Switch - COMM'),			category = {_('Right Auxiliary Panel'), _('Radio R-828 VHF-1')}},
-- Jadro - 1A
{	down = device_commands.Button_10,		cockpit_device_id = devices.JADRO_1A,	value_down = -1.0,		name = _('Radio Jadro-1A Mode Selector Switch - CCW/Left'),			category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_10,		cockpit_device_id = devices.JADRO_1A,	value_down = 1.0,		name = _('Radio Jadro-1A Mode Selector Switch - CW/Right'),			category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.0,		name = _('Radio Jadro-1A Mode Selector Switch - OFF'),				category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.5,		name = _('Radio Jadro-1A Mode Selector Switch - OM'),				category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_1,		cockpit_device_id = devices.JADRO_1A,	value_down = 1.0,		name = _('Radio Jadro-1A Mode Selector Switch - AM'),				category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.JADRO_1A,	value_down = -0.1,		name = _('Radio Jadro-1A Frequency Dial 1MHz Knob - Decrease'),		category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_2,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.1,		name = _('Radio Jadro-1A Frequency Dial 1MHz Knob - Increase'),		category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.JADRO_1A,	value_down = -0.1,		name = _('Radio Jadro-1A Frequency Dial 100kHz Knob - Decrease'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_3,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.1,		name = _('Radio Jadro-1A Frequency Dial 100kHz Knob - Increase'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.JADRO_1A,	value_down = -0.1,		name = _('Radio Jadro-1A Frequency Dial 10kHz Knob - Decrease'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_4,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.1,		name = _('Radio Jadro-1A Frequency Dial 10kHz Knob - Increase'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_5,		cockpit_device_id = devices.JADRO_1A,	value_down = -0.1,		name = _('Radio Jadro-1A Frequency Dial 1kHz Knob - Decrease'),		category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_5,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.1,		name = _('Radio Jadro-1A Frequency Dial 1kHz Knob - Increase'),		category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.JADRO_1A,	value_down = -0.1,		name = _('Radio Jadro-1A Frequency Dial 100Hz Knob - Decrease'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_6,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.1,		name = _('Radio Jadro-1A Frequency Dial 100Hz Knob - Increase'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	pressed = device_commands.Button_12,	cockpit_device_id = devices.JADRO_1A,	value_pressed = -1.0,	name = _('Radio Jadro-1A Volume Knob - CCW/Decrease'),				category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	pressed = device_commands.Button_12,	cockpit_device_id = devices.JADRO_1A,	value_pressed = 1.0,	name = _('Radio Jadro-1A Volume Knob - CW/Increase'),				category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_11,		cockpit_device_id = devices.JADRO_1A,	value_down = 1.0,		name = _('Radio Jadro-1A Squelch Switch - ON/OFF'),					category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_8,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.7,		name = _('Radio Jadro-1A Squelch Switch - ON'),						category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_8,		cockpit_device_id = devices.JADRO_1A,	value_down = 0.0,		name = _('Radio Jadro-1A Squelch Switch - OFF'),					category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},
{	down = device_commands.Button_9, up = device_commands.Button_9,	cockpit_device_id = devices.JADRO_1A,	value_down = 1.0, value_up = 0.0,	name = _('Radio Jadro-1A Control Button'),	category = {_('Right Auxiliary Panel'), _('Radio Jadro-1A')}},

------------------------------------------------
-- Auxiliary Back Panels -----------------------
------------------------------------------------
{	pressed = device_commands.Button_19,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = 1,	name = _('Flight Engineer Red Lights Group 1 Rheostat - CW'),	category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
{	pressed = device_commands.Button_19,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = -1,	name = _('Flight Engineer Red Lights Group 1 Rheostat - CCW'),	category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
{	pressed = device_commands.Button_20,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = 1,	name = _('Flight Engineer Red Lights Group 2 Rheostat - CW'),	category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
{	pressed = device_commands.Button_20,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = -1,	name = _('Flight Engineer Red Lights Group 2 Rheostat - CCW'),	category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
{	pressed = device_commands.Button_21,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = 1,	name = _('Lights 5.5V Rheostat - CW'),							category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
{	pressed = device_commands.Button_21,	cockpit_device_id = devices.LIGHT_SYSTEM,	value_pressed = -1,	name = _('Lights 5.5V Rheostat - CCW'),							category = {_('Auxiliary Back Panels'), _('Internal Lights')}},
-- Doppler Navigator
{	down = device_commands.Button_16,	cockpit_device_id = devices.DISS_15,	value_down = -1,	name = _('Doppler Navigator Test Switch - CCW'),	category = {_('Auxiliary Back Panels'), _('Doppler Navigator')}},
{	down = device_commands.Button_16,	cockpit_device_id = devices.DISS_15,	value_down = 1,		name = _('Doppler Navigator Test Switch - CW'),		category = {_('Auxiliary Back Panels'), _('Doppler Navigator')}},

------------------------------------------------
-- Intercom Panels -----------------------------
------------------------------------------------
{	pressed = device_commands.Button_15,	value_pressed = -0.2,	cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Main Volume Knob - CCW/Decrease'),			category = {_('SPU-7 Intercom Panels')}},
{	pressed = device_commands.Button_15,	value_pressed = 0.2,	cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Main Volume Knob - CW/Increase'),			category = {_('SPU-7 Intercom Panels')}},
{	pressed = device_commands.Button_16,	value_pressed = -0.2,	cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Listening Volume Knob - CCW/Decrease'),		category = {_('SPU-7 Intercom Panels')}},
{	pressed = device_commands.Button_16,	value_pressed = 0.2,	cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Listening Volume Knob - CW/Increase'),		category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_17,		value_down = -1,		cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Radio Source Select Rotary - CCW/Left'),	category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_17,		value_down = 1,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Radio Source Select Rotary - CW/Right'),	category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_18,		value_down = 1,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Mode Switch - RADIO/ICS'),					category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_4,		value_down = 1,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Mode Switch - ICS'),						category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_4,		value_down = 0,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Mode Switch - RADIO'),						category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_20,		value_down = 1,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Network Switch - 1/2'),						category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_7,		value_down = 1,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Network Switch - 1'),						category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_7,		value_down = 0,			cockpit_device_id = devices.SPU_7,	name = _('SPU-7 Network Switch - 2'),						category = {_('SPU-7 Intercom Panels')}},
{	down = device_commands.Button_8, up = device_commands.Button_8,	cockpit_device_id = devices.SPU_7,	value_down = 1.0, value_up = 0.0,	name = _('SPU-7 Circular Call Button'),	category = {_('SPU-7 Intercom Panels')}},

------------------------------------------------
-- Sight ---------------------------------------
------------------------------------------------
{	pressed = device_commands.Button_2, cockpit_device_id = devices.PKV,	value_pressed = -0.5,	name = _('Sight Intensity Knob - CCW/Decrease'),			category = {_('Overhead CB Panels'), _('PKV')}},
{	pressed = device_commands.Button_2, cockpit_device_id = devices.PKV,	value_pressed = 0.5,	name = _('Sight Intensity Knob - CW/Increase'),				category = {_('Overhead CB Panels'), _('PKV')}},
{	pressed = device_commands.Button_4, cockpit_device_id = devices.PKV,	value_pressed = -0.1,	name = _('Sight Limb Knob - CCW/Decrease'),					category = {_('PKV')}},
{	pressed = device_commands.Button_4, cockpit_device_id = devices.PKV,	value_pressed = 0.1,	name = _('Sight Limb Knob - CW/Increase'),					category = {_('PKV')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.PKV,	value_down = 1,			name = _('Sight Fixed Reticle Mask Lever - SET UP/REMOVE'),	category = {_('PKV')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.PKV,	value_down = 0.5,		name = _('Sight Fixed Reticle Mask Lever - SET UP'),		category = {_('PKV')}},
{	down = device_commands.Button_5,	cockpit_device_id = devices.PKV,	value_down = 0.0,		name = _('Sight Fixed Reticle Mask Lever - REMOVE'),		category = {_('PKV')}},
{	down = device_commands.Button_8,	cockpit_device_id = devices.PKV,	value_down = 1,			name = _('Sight Filter - SET UP/REMOVE'),					category = {_('PKV')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.PKV,	value_down = 1,			name = _('Sight Filter - SET UP'),							category = {_('PKV')}},
{	down = device_commands.Button_6,	cockpit_device_id = devices.PKV,	value_down = 0,			name = _('Sight Filter - REMOVE'),							category = {_('PKV')}},

------------------------------------------------
-- Overhead CB Panels --------------------------
------------------------------------------------
{	down = device_commands.Button_62,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,					name = _('Emergency Release Switch Cover - OPEN/CLOSE'),	category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_52,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,						name = _('Emergency Release Switch Cover - OPEN'),			category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_52,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,						name = _('Emergency Release Switch Cover - CLOSE'),			category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_5, up = device_commands.Button_5,		cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('Emergency Release Switch'),						category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_64,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,					name = _('Emergency Explode Switch Cover - OPEN/CLOSE'),	category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_51,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,						name = _('Emergency Explode Switch Cover - OPEN'),			category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_51,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,						name = _('Emergency Explode Switch Cover - CLOSE'),			category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_63,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,					name = _('Emergency Explode Switch - ON/OFF'),				category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_4,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,						name = _('Emergency Explode Switch - ON'),					category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_4,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,						name = _('Emergency Explode Switch - OFF'),					category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_31, up = device_commands.Button_31,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('PUS Arming Button'),								category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_65,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,					name = _('RS/GUV Selector Switch - ON/OFF'),				category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_30,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,						name = _('RS/GUV Selector Switch - ON'),					category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_30,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,						name = _('RS/GUV Selector Switch - OFF'),					category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_26, up = device_commands.Button_26,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('Lamps Check Button'),								category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_81,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,					name = _('Mine Arms Main Switch - ON/OFF'),					category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_76,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,						name = _('Mine Arms Main Switch - ON'),						category = {_('Overhead CB Panels'), _('Armament System')}},
{	down = device_commands.Button_76,									cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,						name = _('Mine Arms Main Switch - OFF'),					category = {_('Overhead CB Panels'), _('Armament System')}},

------------------------------------------------
-- Navigatorís Weapons Control Panel -----------
------------------------------------------------
{	down = device_commands.Button_14, up = device_commands.Button_14,	cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0,	name = _('Lamps Test Button'),						category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_67,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('Second Pilot Emergency Release Switch Cover - OPEN/CLOSE'),	category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_50,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,			name = _('Second Pilot Emergency Release Switch Cover - OPEN'),			category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_50,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,			name = _('Second Pilot Emergency Release Switch Cover - CLOSE'),		category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_75, up = device_commands.Button_75,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('Second Pilot Emergency Release Switch'),	category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_66,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('Second Pilot Emergency Explode Switch Cover - OPEN/CLOSE'),	category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_49,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,			name = _('Second Pilot Emergency Explode Switch Cover - OPEN'),			category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_49,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,			name = _('Second Pilot Emergency Explode Switch Cover - CLOSE'),		category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_68,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('Second Pilot Emergency Explode Switch - ON/OFF'),				category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,			name = _('Second Pilot Emergency Explode Switch - ON'),					category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_7,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,			name = _('Second Pilot Emergency Explode Switch - OFF'),				category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_69,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('Main Bomb Switch - ON/OFF'),									category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,			name = _('Main Bomb Switch - ON'),										category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_2,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,			name = _('Main Bomb Switch - OFF'),										category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_70,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('ESBR Heating Switch - ON/OFF'),								category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,			name = _('ESBR Heating Switch - ON'),									category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_12,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,			name = _('ESBR Heating Switch - OFF'),									category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_71,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,		name = _('Pylon Setup Selector Switch - CW'),							category = {_('Right Weapons Control Panel'), _('Armament System')}},
{	down = device_commands.Button_71,	cockpit_device_id = devices.WEAPON_SYS,	value_down = -1.0,		name = _('Pylon Setup Selector Switch - CCW'),							category = {_('Right Weapons Control Panel'), _('Armament System')}},

------------------------------------------------
-- Armament System -----------------------------
------------------------------------------------
-- Overhead
{	down = device_commands.Button_54,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0,	name = _('Weapon Safe/Armed Switch - ON/OFF'),	category = {_('Armament System')}},
{	down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1,		name = _('Weapon Safe/Armed Switch - ON'),		category = {_('Armament System')}},
{	down = device_commands.Button_27,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 0,		name = _('Weapon Safe/Armed Switch - OFF'),		category = {_('Armament System')}},
--
{	down = device_commands.Button_11, up = device_commands.Button_11,	cockpit_device_id = devices.WEAPON_SYS,	value_down = 1.0, value_up = 0.0,	name = _('Release Bomb'),	category = {_('Armament System')}},

--Gunners AI Panel
{	down = device_commands.Button_91, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AI Panel Show/Hide'), category = _('Gunners AI Panel')},
{	down = device_commands.Button_92, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Gunner ROE Iterate'), category = _('Gunners AI Panel')},
{	down = device_commands.Button_92, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Gunner Burst Switch'), category = _('Gunners AI Panel')},
{	down = device_commands.Button_93, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Back Gunner ROE Iterate'), category = _('Gunners AI Panel')},
{	down = device_commands.Button_93, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Back Gunner Burst Switch'), category = _('Gunners AI Panel')},
{	down = device_commands.Button_96,	cockpit_device_id = devices.WEAPON_SYS,		value_down = 1.0,	name = _('Show Gunners Panel'),	category = {_('Hints'), _('Armament System')}},

},
axisCommands = {

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: begin additonal axes
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{action = device_commands.Button_5,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Left Group 1 Rheostat")},
{action = device_commands.Button_6,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Left Group 2 Rheostat")},
{action = device_commands.Button_7,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Right Group 1 Rheostat")},
{action = device_commands.Button_8,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Right Group 2 Rheostat")},
{action = device_commands.Button_9,  cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Central Group 1 Rheostat")},
{action = device_commands.Button_10, cockpit_device_id = devices.LIGHT_SYSTEM, name = _("Red Lights Brightness Central Group 2 Rheostat")},

---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: end additonal axes
---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{action = iCommandViewHorizontalAbs			, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewVerticalAbs			, name = _('Absolute Camera Vertical View')},
{action = iCommandViewZoomAbs				, name = _('Zoom View')},
{action = iCommandViewRollAbs 				, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewHorTransAbs 			, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs 			, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs 	, name = _('Absolute Longitude Shift Camera View')},

-- joystick axes
{	action = iCommandPlaneRoll,			name = _('Flight Control Cyclic Roll')},
{	action = iCommandPlanePitch,		name = _('Flight Control Cyclic Pitch')},
{	action = iCommandPlaneRudder,		name = _('Flight Control Rudder')},
{combos = {{key = "JOY_Z", filter = {curvature = {0}, deadzone = 0, invert = false, saturationX = 1, saturationY = 1, slider = false},}, },	action = iCommandPlaneCollective,	name = _('Flight Control Collective')},
{combos = {{key = "JOY_SLIDER1", filter = {curvature = {0}, deadzone = 0, invert = false, saturationX = 1, saturationY = 1, slider = false},}, },	action = iCommandPlaneThrustCommon,	name = _('Corrector')},

{action = iCommandHelicopterRotorEngineBrake_ByAxis, name = _('Rotor Brake Handle')},

{action = iCommandWheelBrake, name = _('Wheel brake')},

{action = device_commands.Button_65, cockpit_device_id = devices.ENGINE_INTERFACE, name = _("Throttle Left")},
{action = device_commands.Button_66, cockpit_device_id = devices.ENGINE_INTERFACE, name = _("Throttle Right")},

{action = device_commands.Button_16, cockpit_device_id = devices.AUTOPILOT, name = _("Autopilot Heading Adjustment")},
{action = device_commands.Button_17, cockpit_device_id = devices.AUTOPILOT, name = _("Autopilot Roll Adjustment")},
{action = device_commands.Button_18, cockpit_device_id = devices.AUTOPILOT, name = _("Autopilot Pitch Adjustment")},


},
}