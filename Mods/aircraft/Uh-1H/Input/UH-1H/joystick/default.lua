local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")

return {

--modifiers = {
--['JOY_BTN6'] = 'JOY_BTN6',
--},

forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = {
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky begin custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 1.0, value_up = 0.0,  name = _('Battery Switch On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_9,                                  cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 1.0,                  name = _('Battery Switch On'), category = _('_My Buttons')},
{down = device_commands.Button_9,                                  cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 0.0,                  name = _('Battery Switch Off'), category = _('_My Buttons')},
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.ENGINE_INTERFACE,    value_down = 1.0, value_up = 0.0,  name = _('Low RPM Warning Switch On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_5,  up = device_commands.Button_5,  cockpit_device_id = devices.HYDRO_SYS_INTERFACE, value_down = 1.0, value_up = 0.0,  name = _('Hydraulic Control Switch On/Off'), category = _('_My Buttons')}, 
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id = devices.HYDRO_SYS_INTERFACE, value_down = 1.0, value_up = 0.0,  name = _('Force Trim Switch On/Off'), category = _('_My Buttons')}, 
{down = device_commands.Button_3,  up = device_commands.Button_3,  cockpit_device_id = devices.FUELSYS_INTERFACE,   value_down = 0.0, value_up =18.0,  name = _('Main Fuel Switch On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_14, up = device_commands.Button_14, cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down = 1.0, value_up = 0.0,  name = _('Anti Collision Light Switch On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.RADAR_ALTIMETER,     value_down = 1.0, value_up = 0.0,  name = _('Radar Altimeter Power Switch On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 1.0, value_up = 0.0,  name = _('Starter-Generator STARTER/STBY GEN On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.XM_130,              value_down = 0.0, value_up = 0.0,  name = _('Flare SAFE/ARMED Switcher On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id = devices.ENGINE_INTERFACE,    value_down = 0.0, value_up = 1.0,  name = _('Governor Auto/Emer On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down =-1.0, value_up = 0.0,  name = _('Dome Light Green/Off'), category = _('_My Buttons')},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down = 1.0, value_up = 0.0,  name = _('Dome Light White/Off'), category = _('_My Buttons')},
{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.ELEC_INTERFACE,      value_down =-1.0, value_up = 0.0,  name = _('Inverter Main/Off'), category = _('_My Buttons')},
{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 1.0, value_up = 0.0,  name = _('Inverter Spare/Off'), category = _('_My Buttons')},

{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down = 1.0, value_up = 0.0,  name = _('Nav Lights Bright/Dim'), category = _('_My Buttons')},
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down = 1.0, value_up = 0.0,  name = _('Nav Lights Steady/Off'), category = _('_My Buttons')},
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.NAVLIGHT_SYSTEM,     value_down =-1.0, value_up = 0.0,  name = _('Nav Lights Flash/Off'), category = _('_My Buttons')},

{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.ELEC_INTERFACE,      value_down =-1.0, value_up = 0.0,  name = _('Inverter MAIN On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id = devices.ELEC_INTERFACE,      value_down = 1.0, value_up = 0.0,  name = _('Inverter SPARE On/Off'), category = _('_My Buttons')},

{down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id  = devices.ELEC_INTERFACE,     value_down = 1.0, value_up = 0.0,  name = _('Main Generator On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id  = devices.ELEC_INTERFACE,     value_down = 1.0, value_up = 0.0,  name = _('Main generator RESET/Off'), category = _('_My Buttons')},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id  = devices.ELEC_INTERFACE,     value_down = 1.0, value_up = 0.0,  name = _('Starter-Generator STARTER/STBYGEN'), category = _('_My Buttons')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.ELEC_INTERFACE,     value_down = 1.0, value_up = 0.0,  name = _('Non-Ess Bus NORMAL/MANUAL'), category = _('_My Buttons')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id  = devices.ELEC_INTERFACE,     value_down = 0.0, value_up = 1.0,  name = _('Pitot Heater On/Off'), category = _('_My Buttons')},

{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.XM_130,              value_down = 0.0, value_up = 0.0,  name = _('SAFE/ARMED Switcher Toggle'), category = _('_My Buttons')},

{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.NAVLIGHT_SYSTEM,    value_down = 1.0,  value_up = 1.0,  name = _('Landing Light Switch Toggle'), category = _('_My Buttons')},

{down = device_commands.Button_7,  up = device_commands.Button_7,  cockpit_device_id  = devices.NAVLIGHT_SYSTEM,    value_down = 1.0,  value_up = 0.0,  name = _('Landing Light Extend/Stop'), category = _('_My Buttons')},
{down = device_commands.Button_7,  up = device_commands.Button_7,  cockpit_device_id  = devices.NAVLIGHT_SYSTEM,    value_down =-1.0,  value_up = 0.0,  name = _('Landing Light Retract/Stop'), category = _('_My Buttons')},

{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id  = devices.NAVLIGHT_SYSTEM,    value_down = 1.0,  value_up = 0.0,  name = _('Search Light On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id  = devices.NAVLIGHT_SYSTEM,    value_down =-1.0,  value_up = 0.0,  name = _('Search Light Stow/Off'), category = _('_My Buttons')},

{down = device_commands.Button_28, up = device_commands.Button_29, cockpit_device_id = devices.WEAPON_SYS,          value_down = 1.0,  value_up = 1.0,  name = _('AutoPilot Attitude/Level'), category = _('_My Buttons')},
{down = device_commands.Button_30, up = device_commands.Button_29, cockpit_device_id = devices.WEAPON_SYS,          value_down = 1.0,  value_up = 1.0,  name = _('AutoPilot Orbit/Level'), category = _('_My Buttons')},

{down = device_commands.Button_4,  up = device_commands.Button_4, cockpit_device_id  = devices.MARKER_BEACON,       value_down = 1.0,  value_up = 1.0,  name = _('Marker Beacon Sensitivity High/Low Toggle'),category = _("_My Buttons")},
{down = device_commands.Button_6,  up = device_commands.Button_6, cockpit_device_id  = devices.GMCS,                value_down = 1.0,  value_up = 1.0,  name = _('GMC Operating Mode Slave/Gyro Toggle'), category = _('_My Buttons')},

{down = device_commands.Button_21, up = device_commands.Button_21,cockpit_device_id  = devices.WEAPON_SYS,          value_down = 1.0,  value_up =-1.0,  name = _('Armament Selector Up/Down'), category = _('_My Buttons')},

{down = device_commands.Button_8,  up = device_commands.Button_8, cockpit_device_id  = devices.WEAPON_SYS,          value_down = 1.0,  value_up = 0.0,  name = _('Armament Selector ARMED/SAFE'), category = _('_My Buttons')},
{down = device_commands.Button_8,  up = device_commands.Button_8, cockpit_device_id  = devices.WEAPON_SYS,          value_down =-1.0,  value_up = 0.0,  name = _('Armament Selector OFF/SAFE'), category = _('_My Buttons')},
{down = device_commands.Button_9,  up = device_commands.Button_9, cockpit_device_id  = devices.WEAPON_SYS,          value_down = 1.0,  value_up = 0.0,  name = _('Gun Selector RIGHT/ALL'), category = _('_My Buttons')},
{down = device_commands.Button_9,  up = device_commands.Button_9, cockpit_device_id  = devices.WEAPON_SYS,          value_down =-1.0,  value_up = 0.0,  name = _('Gun Selector LEFT/ALL'), category = _('_My Buttons')},

{down = device_commands.Button_8,  up = device_commands.Button_8, cockpit_device_id  = devices.IFF,                 value_down = 0.1,  value_up = 0.0,  name = _('Transponder APX-72 STBY/OFF'), category = _('_My Buttons')},
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- funkyfranky begin custom assignments
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Cheat - Temporary
{down = iCommandEnginesStart, name = _('Auto Start'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Auto Stop') , category = _('Cheat')},

-- General
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
--{down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get New Plane - respawn'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into other aircraft'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
--{down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('General')},
{down = iCommandDebriefing, name = _('Debriefing window'), category = _('General')},
{down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandSoundOnOff,			name = _('Sound On/Off'),	 category = _('General')},
{down = device_commands.Button_1, cockpit_device_id = devices.CREWE, value_down = 1.0, name = _('Show crew indicator'), category = _('General')},

{down = iCommandNetCrewRequestControl,	name = _('Request Aircraft Control'),	category = _('Flight Control')},

-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN5'}}, pressed = iCommandViewCenter, name = _('Center View'), category = _('View')},
         

{pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View')},


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
{down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 Nearest AC view'), category = _('View')},
{down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},

{down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{down = iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},

-- View Cockpit
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
--{down = iCommandViewCockpitChangeSeat, name = _('Change Seat'), category = _('View Cockpit')},


{down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},
--{down = iCommandViewPanToggle, name = _('Camera pan mode toggle'), category = _('View Cockpit')},

{down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{down = iCommandViewCameraDownRight, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraUpRightSlow, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{down = iCommandViewSnapView0, up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{down = iCommandViewSnapView1, up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{down = iCommandViewSnapView2, up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{down = iCommandViewSnapView3, up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{down = iCommandViewSnapView4, up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{down = iCommandViewSnapView5, up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{down = iCommandViewSnapView6, up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{down = iCommandViewSnapView7, up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{down = iCommandViewSnapView8, up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{down = iCommandViewSnapView9, up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{down = iCommandViewPitHeadOnOff, name = _('Head shift movement on / off'), category = _('View Cockpit')},

{pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},

-- Cockpit Camera Motion (Передвижение камеры в кабине)
{pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
{down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},


-- View Extended

{down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{down = iCommandViewKeepTerrain, name = _('Keep terrain camera altitude'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},

-- View Padlock
{down = iCommandViewLock, name = _('Lock view (cycle padlock)'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Unlock view (stop padlock)'), category = _('View Padlock')},
{down = iCommandAllMissilePadlock, name = _('All missiles padlock'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Threat missile padlock'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Lock terrain view'), category = _('View Padlock')},

-- Labels
{down = iCommandMarkerState, name = _('All Labels'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Aircraft Labels'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Missile Labels'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Vehicle & Ship Labels'), category = _('Labels')},

--MainPanel
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.FUELSYS_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Fuel Indicator Test'), category = _('Main Panel')},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Fire Detector Test'), category = _("Main Panel")},

---Pedestal
{down = device_commands.Button_3, cockpit_device_id  = devices.FUELSYS_INTERFACE, value_down = 0.0, name = _('Main Fuel Switch'), category = _('Pedestal')},
{down = device_commands.Button_17, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = 0.0, name = _('De-Ice Switch'), category = _('Pedestal')},
{down = device_commands.Button_16, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = 0.0, name = _('Governor Auto/Emer'), category = _('Pedestal')},
{down = device_commands.Button_22, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, name = _('Low RPM Warning Switch'), category = _('Pedestal')},

{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.SYS_CONTROLLER, value_down = 1.0, value_up = 0.0, name = _('Caution Panel Test/Reset Switch Reset'), category = _('Pedestal')},
{down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.SYS_CONTROLLER, value_down = -1.0, value_up = 0.0, name = _('Caution Panel Test/Reset Switch Test'), category = _('Pedestal')},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.SYS_CONTROLLER, value_down = 1.0, value_up = 0.0, name = _('Caution Panel Dim Switch Bright'), category = _('Pedestal')},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.SYS_CONTROLLER, value_down = -1.0, value_up = 0.0, name = _('Caution Panel Dim Switch Dim'), category = _('Pedestal')},

-- Ins Cyclick Stick
{pressed = iCommandPlaneUpStart    , up = iCommandPlaneUpStop  ,   name = _('Cyclic nose down'), category = _('Ins Cyclic Stick')},
{pressed = iCommandPlaneDownStart  , up = iCommandPlaneDownStop,   name = _('Cyclic nose up'), category = _('Ins Cyclic Stick')},
{pressed = iCommandPlaneLeftStart  , up = iCommandPlaneLeftStop,   name = _('Cyclic bank left'), category = _('Ins Cyclic Stick')},
{pressed = iCommandPlaneRightStart , up = iCommandPlaneRightStop,  name = _('Cyclic bank right'), category = _('Ins Cyclic Stick')},

{combos = {{key = 'JOY_BTN2'}},down = iCommandPlaneFire, up = iCommandPlaneFire, value_down = 1, value_up = 0,  name = _("Pilot weapon release/Machinegun fire"),  category = _("Ins Cyclic Stick")},
{down = iCommandPlanePickleOn,    up = iCommandPlanePickleOn, value_down = 1, value_up = 0, name = _('Copilot weapon release'), category = _('Ins Cyclic Stick')},

{combos = {{key = 'JOY_BTN1'}},	down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _("Pilot's radio trigger RADIO (call radio menu)"), category = _('Ins Cyclic Stick')},
{								down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.INTERCOM, value_down = 0.5, value_up = 0.0, name = _("Pilot's radio trigger ICS (call radio menu)"), category = _('Ins Cyclic Stick')},

{	down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _("Co-pilot's radio trigger RADIO (call radio menu)"), category = _('Ins Cyclic Stick')},
{	down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.INTERCOM, value_down = 0.5, value_up = 0.0, name = _("Co-pilot's radio trigger ICS (call radio menu)"), category = _('Ins Cyclic Stick')},

-- VoIP radio global command
-- in case you need to open commands in the cockpit
-- global commands
{	down = iCommandVoIPRadioPushToTalkEnableDisableVoice, up = iCommandVoIPRadioPushToTalkEnableDisableVoice, value_down = 1.0, value_up = 0.0, name = _("radio trigger RADIO (VOIP)"),	category = _('Ins Cyclic Stick')},
{	down = iCommandVoIPIntercomPushToTalkEnableDisableVoice, up = iCommandVoIPIntercomPushToTalkEnableDisableVoice, value_down = 0.5, value_up = 0.0, name = _("radio trigger ICS (VOIP)"),		category = _('Ins Cyclic Stick')},
-- old local commands
-- {	down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.INTERCOM, value_down = 1.0, value_up = 0.0, name = _("radio trigger RADIO (VOIP)"),	category = _('Ins Cyclic Stick')},
-- {	down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.INTERCOM, value_down = 0.5, value_up = 0.0, name = _("radio trigger ICS (VOIP)"),		category = _('Ins Cyclic Stick')},

{combos = {{key = 'JOY_BTN3'}}, down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Pilot Trimmer'), category = _('Ins Cyclic Stick')},
{down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Trimmer reset'), category = _('Ins Cyclic Stick')},

-- Flexible sight
{down = device_commands.Button_5, cockpit_device_id = devices.FLEX_SIGHT, value_down = 0.0, name = _('Toggle Flexible Sight'), category = _('Flexible Sight')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.FLEX_SIGHT, value_pressed = -0.5, name = _('Flexible Sight Intensity Decrease'), category = _('Flexible Sight')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.FLEX_SIGHT, value_pressed = 0.5, name = _('Flexible Sight Intensity Increase'), category = _('Flexible Sight')},
{down = device_commands.Button_3, cockpit_device_id = devices.FLEX_SIGHT, value_down = 1.0, name = _('Flexible Sight Main Lamp'), category = _('Flexible Sight')},
{down = device_commands.Button_3, cockpit_device_id = devices.FLEX_SIGHT, value_down = 0.0, name = _('Flexible Sight Lamp Off'), category = _('Flexible Sight')},
{down = device_commands.Button_3, cockpit_device_id = devices.FLEX_SIGHT, value_down = -1.0, name = _('Flexible Sight Backup Lamp'), category = _('Flexible Sight')},

{down = device_commands.Button_5, cockpit_device_id = devices.PILOT_SIGHT, value_down = 0.0, name = _('Pilot Sight Armed/Docked'), category = _('Pilot Sight')},
{down = device_commands.Button_7, cockpit_device_id = devices.PILOT_SIGHT, value_down = 1.0, name = _('Pilot Sight Switch'), category = _('Pilot Sight')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = -0.5, name = _('Pilot Sight Intensity Decrease'), category = _('Pilot Sight')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = 0.5, name = _('Pilot Sight Intensity Increase'), category = _('Pilot Sight')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = -0.5, name = _('Pilot Sight Elevation Decrease'), category = _('Pilot Sight')},
{pressed = device_commands.Button_4, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = 0.5, name = _('Pilot Sight Elevation Increase'), category = _('Pilot Sight')},


-- External Cargo
{down = iCommandExtCargoHook,																														name = _('External Cargo Hook'),				category = _("External Cargo")},
{down = iCommandExternalCargoAutounhook,																											name = _('External Cargo Autounhook'),			category = _("External Cargo")},
{down = iCommandExternalCargoIndicator,																												name = _("External Cargo Indicator"),			category = _("External Cargo"), },
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1, value_up = 0,																													name = _('External Cargo Pilot Unhook'),		category = _("External Cargo")},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, value_down = 1, value_up = 0,		name = _('External Cargo CoPilot Unhook'),		category = _("External Cargo")},
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.EXT_CARGO_EQUIPMENT, 								  value_down = 1,					name = _('External Cargo Safety'),				category = _("External Cargo")},


-- Weapon System
{down = device_commands.Button_20, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Off/Safe/Armed Up'), category = _('Armament System')},
{down = device_commands.Button_20, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Off/Safe/Armed Down'), category = _('Armament System')},
{down = device_commands.Button_21, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Armament Selector Up'), category = _('Armament System')},
{down = device_commands.Button_21, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Armament Selector Down'), category = _('Armament System')},
{down = device_commands.Button_22, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Rocket Pair Increase'), category = _('Armament System')},
{down = device_commands.Button_22, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Rocket Pair Decrease'), category = _('Armament System')},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Jettison Switch'), category = _('Armament System')},
{down = device_commands.Button_25, cockpit_device_id  = devices.WEAPON_SYS, value_down = 0.0, name = _('Jettison Switch Cover'), category = _('Armament System')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, value_up = 0.0, name = _('Rocket Reset Button'), category = _('Armament System')},
{down = device_commands.Button_24, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('Gun Selector Switch Up'), category = _('Armament System')},
{down = device_commands.Button_24, cockpit_device_id  = devices.WEAPON_SYS, value_down = -1.0, name = _('Gun Selector Switch Down'), category = _('Armament System')},
{down = device_commands.Button_26, cockpit_device_id  = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot'), category = _('Cheat')},
{down = device_commands.Button_28, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ATTITUDE HOLD'), category = _('Cheat')},
{down = device_commands.Button_29, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot LEVEL FLIGHT'), category = _('Cheat')},
{down = device_commands.Button_30, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AutoPilot ORBIT'), category = _('Cheat')},

{down = device_commands.Button_35, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Open/Close Right Gunner Door'), category = _('Armament System')},
{down = device_commands.Button_36, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Open/Close Left Gunner Door'), category = _('Armament System')},

-- Ins Collective Stick
{down = iCommandPlaneCollectiveIncrease, pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = _('Collective up'), category = _('Ins Collective Stick')},
{down = iCommandPlaneCollectiveDecrease, pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = _('Collective down'), category = _('Ins Collective Stick')},

{pressed = device_commands.Button_25,	cockpit_device_id = devices.ENGINE_INTERFACE, value_pressed = 1.0,	name = _('Throttle Up'), category = _('Ins Collective Stick')},
{pressed = device_commands.Button_25,	cockpit_device_id = devices.ENGINE_INTERFACE, value_pressed = -1.0,	name = _('Throttle Down'), category = _('Ins Collective Stick')},
{down = device_commands.Button_28,	cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0,	name = _('Throttle Stop Switch'), category = _('Ins Collective Stick')},

--SearchLight Control
{down = iCommandPlane_SpotLight_up, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Retract'), category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_down, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Extend'),  category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_left, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Left'),  category = _('Ins Collective Stick')},
{down = iCommandPlane_SpotLight_right, up = iCommandPlane_SpotLight_vert_stop, name = _('Search light Right'), category = _('Ins Collective Stick')},

--LandingLight Control
{down = device_commands.Button_12, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing Light Switch'), category = _('Ins Collective Stick')},

{down = device_commands.Button_38, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Landing light Extend'), category = _('Ins Collective Stick')},
{down = device_commands.Button_38, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Landing light Stop'), category = _('Ins Collective Stick')},
{down = device_commands.Button_38, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Landing light Retract'), category = _('Ins Collective Stick')},

{down = device_commands.Button_37, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Search light On'), category = _('Ins Collective Stick')},
{down = device_commands.Button_37, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Search light Off'), category = _('Ins Collective Stick')},
{down = device_commands.Button_37, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Search light Stow'), category = _('Ins Collective Stick')},

--Ins Rudder
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Rudder left'), category = _('Ins Rudder')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Rudder right'), category = _('Ins Rudder')},

--Ins Engines Start-Up Control Panel and levers
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Start-up engine'), category = _('Ins Collective Stick')},
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Increase Turbine RPM'), category = _('Ins Collective Stick')},
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id  = devices.ENGINE_INTERFACE, value_down = -1.0, value_up = 0.0, name = _('Decrease Turbine RPM'), category = _('Ins Collective Stick')},

-- Ins Overhead panel (Верхняя панель)
{down = device_commands.Button_13, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Nav Lights Dim/Bright'), category = _('Ins Overhead panel')},
{down = device_commands.Button_2, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Nav Lights Off'), category = _('Ins Overhead panel')},
{down = device_commands.Button_2, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Nav Lights Steady'), category = _('Ins Overhead panel')},
{down = device_commands.Button_2, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Nav Lights Flash'), category = _('Ins Overhead panel')},
{down = device_commands.Button_14, cockpit_device_id  = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Anti Collision Light Switch'), category = _('Ins Overhead panel')},

{down = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = -1.0, name = _('Dome Light Green'), category = _('Ins Overhead panel')},
{down = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 0.0, name = _('Dome Light Off'), category = _('Ins Overhead panel')},
{down = device_commands.Button_21, cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_down = 1.0, name = _('Dome Light White'), category = _('Ins Overhead panel')},

{pressed = device_commands.Button_22,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Overhead Console Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_22,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Overhead Console Light Increase'), category = _("Ins Overhead panel")},

{pressed = device_commands.Button_23,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Pedestal Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_23,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Pedestal Light Increase'), category = _("Ins Overhead panel")},

{pressed = device_commands.Button_24,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Secondary Instrument Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_24,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Secondary Instrument Light Increase'), category = _("Ins Overhead panel")},

{pressed = device_commands.Button_25,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Engine Instrument Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_25,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Engine Instrument Light Increase'), category = _("Ins Overhead panel")},

{pressed = device_commands.Button_26,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Copilot Instrument Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_26,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Copilot Instrument Light Increase'), category = _("Ins Overhead panel")},

{pressed = device_commands.Button_27,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = -0.4, name = _('Pilot Instrument Light Decrease'), category = _("Ins Overhead panel")},
{pressed = device_commands.Button_27,cockpit_device_id = devices.NAVLIGHT_SYSTEM, value_pressed = 0.4,  name = _('Pilot Instrument Light Increase'), category = _("Ins Overhead panel")},

{down = device_commands.Button_20, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Main Generator Cover'), category = _('Ins Overhead panel')},
{down = device_commands.Button_10, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Main Generator Switch'), category = _('Ins Overhead panel')},
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Main generator RESET'), category = _('Ins Overhead panel')},
{down = device_commands.Button_9, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Battery Switch'), category = _('Ins Overhead panel')},
{down = device_commands.Button_11, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Starter-Generator STARTER/STBY GEN'), category = _('Ins Overhead panel')},
{down = device_commands.Button_12, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Non-Ess Bus NORMAL ON/MANUAL ON'), category = _('Ins Overhead panel')},

{down = device_commands.Button_15, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Inverter switch'), category = _('Ins Overhead panel')},
{down = device_commands.Button_8, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = -1.0, name = _('Inverter MAIN ON'), category = _('Ins Overhead panel')},
{down = device_commands.Button_8, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.0, name = _('Inverter OFF'), category = _('Ins Overhead panel')},
{down = device_commands.Button_8, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Inverter SPARE ON'), category = _('Ins Overhead panel')},

{down = device_commands.Button_13, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Voltmeter AC switch'), category = _('Ins Overhead panel')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.0, name = _('Voltmeter AC, AB phase'), category = _('Ins Overhead panel')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.1, name = _('Voltmeter AC, AC phase'), category = _('Ins Overhead panel')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.2, name = _('Voltmeter AC, BC phase'), category = _('Ins Overhead panel')},

{down = device_commands.Button_14, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Voltmeter DC switch'), category = _('Ins Overhead panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.0, name = _('Voltmeter DC, BAT'), category = _('Ins Overhead panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.1, name = _('Voltmeter DC, MAIN GEN'), category = _('Ins Overhead panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.2, name = _('Voltmeter DC, STBY GEN'), category = _('Ins Overhead panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.3, name = _('Voltmeter DC, ESS BUS'), category = _('Ins Overhead panel')},
{down = device_commands.Button_4, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.4, name = _('Voltmeter DC, NON-ESS BUS'), category = _('Ins Overhead panel')},
{down = device_commands.Button_17, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.0, name = _('Pitot Heater Switch'), category = _('Ins Overhead panel')},

-- Systems
{down = iCommandPlaneFonar, name = _('Cockpit door open/close'), category = _('Systems')},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Chip detector XMSN'), category = _('Systems')}, 
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.ENGINE_INTERFACE, value_down = -1.0,value_up = 0.0, name = _('Chip detector TAIL ROTOR'), category = _('Systems')}, 

{down = device_commands.Button_5, cockpit_device_id  = devices.HYDRO_SYS_INTERFACE, value_down = 1.0,name = _('Hydraulic Control Switch'), category = _('Systems')}, 
{down = device_commands.Button_6, cockpit_device_id  = devices.HYDRO_SYS_INTERFACE, value_down = 1.0,name = _('Force Trim Switch'), category = _('Systems')}, 

-- Radio Communications
{down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Radio Communications')},
--{down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Radio Communications')},
{down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Radio Communications')},
{down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Radio Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Radio Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Radio Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Radio Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Radio Communications')},
{down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Radio Communications')},

--AN/ARN-82
{down = device_commands.Button_8, 	cockpit_device_id  = devices.ARN_82, value_down = 1.0,		name = _('VOR/ILS Mode Select (totary)'),  category = _("VOR/ILS Control panel")},
{down = device_commands.Button_3, 	cockpit_device_id  = devices.ARN_82, value_down = 0.8,		name = _('VOR/ILS Power OFF'), 			category = _("VOR/ILS Control panel")},
{down = device_commands.Button_3,	cockpit_device_id  = devices.ARN_82, value_down = 0.9, 		name = _('VOR/ILS Power PWR'), 			category = _("VOR/ILS Control panel")},
{down = device_commands.Button_3, 	cockpit_device_id  = devices.ARN_82, value_down = 1.0,		name = _('VOR/ILS Power TEST'), 			category = _("VOR/ILS Control panel")},
{down = device_commands.Button_5,	cockpit_device_id  = devices.ARN_82, value_down = -1.0,		name = _('VOR/ILS Freq. MHz Decrease'), 	category = _("VOR/ILS Control panel")},
{down = device_commands.Button_5,	cockpit_device_id  = devices.ARN_82, value_down = 1.0, 		name = _('VOR/ILS Freq. MHz Increase'), 	category = _("VOR/ILS Control panel")},
{down = device_commands.Button_6,	cockpit_device_id  = devices.ARN_82, value_down = -1.0,		name = _('VOR/ILS Freq. kHz Decrease'), 	category = _("VOR/ILS Control panel")},
{down = device_commands.Button_6,	cockpit_device_id  = devices.ARN_82, value_down = 1.0,		name = _('VOR/ILS Freq. kHz Increase'), 	category = _("VOR/ILS Control panel")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.ARN_82, value_pressed = -1.0,	name = _('VOR/ILS Volume Decrease'), 		category = _("VOR/ILS Control panel")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.ARN_82, value_pressed = 1.0,	name = _('VOR/ILS Volume Increase'), 		category = _("VOR/ILS Control panel")},

--AN/ARC-131
{down = device_commands.Button_6, 	cockpit_device_id  = devices.VHF_ARC_134, value_down = 1,			name = _('VHF AM Radio Power Switch'), 	category = _("VHF AM Radio Control panel")},
{down = device_commands.Button_2,up=device_commands.Button_2, cockpit_device_id  = devices.VHF_ARC_134, value_down = 1,value_up= 0,name = _('VHF AM Radio Test'),category = _("VHF AM Radio Control panel")},
{down = device_commands.Button_8,	cockpit_device_id  = devices.VHF_ARC_134, value_down = -1.0,		name = _('VHF AM Radio Freq. MHz Decrease'), 	category = _("VHF AM Radio Control panel")},
{down = device_commands.Button_8,	cockpit_device_id  = devices.VHF_ARC_134, value_down = 1.0, 		name = _('VHF AM Radio Freq. MHz Increase'), 	category = _("VHF AM Radio Control panel")},
{down = device_commands.Button_9,	cockpit_device_id  = devices.VHF_ARC_134, value_down = -1.0,		name = _('VHF AM Radio Freq. kHz Decrease'), 	category = _("VHF AM Radio Control panel")},
{down = device_commands.Button_9,	cockpit_device_id  = devices.VHF_ARC_134, value_down = 1.0,		name = _('VHF AM Radio Freq. kHz Increase'), 	category = _("VHF AM Radio Control panel")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.VHF_ARC_134, value_pressed = -1.0,	name = _('VHF AM Radio Volume Decrease'), 		category = _("VHF AM Radio Control panel")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.VHF_ARC_134, value_pressed = 1.0,	name = _('VHF AM Radio Volume Increase'), 		category = _("VHF AM Radio Control panel")},

--AN/ARC-134
{down = device_commands.Button_13, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0,		name = _('VHF FM Radio Squelch Select (rotary)'), category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.0,		name = _('VHF FM Radio Squelch DIS'), 	category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.1,		name = _('VHF FM Radio Squelch CARR'), category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.2,		name = _('VHF FM Radio Squelch TONE'), category = _("VHF FM Radio Control panel")},

{down = device_commands.Button_14, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0,		name = _('VHF FM Radio Mode Select (rotary)'), category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_7, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.0,		name = _('VHF FM Radio Mode OFF'), 	category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_7, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.1,		name = _('VHF FM Radio Mode TR'), 		category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_7, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.2,		name = _('VHF FM Radio Mode RETRAN'), category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_7, 	cockpit_device_id  = devices.VHF_ARC_131, value_down = 0.3,		name = _('VHF FM Radio Mode HOME'), 	category = _("VHF FM Radio Control panel")},

{pressed = device_commands.Button_8,cockpit_device_id  = devices.VHF_ARC_131, value_pressed = -1.0,	name = _('VHF FM Radio Volume Decrease'), 	category = _("VHF FM Radio Control panel")},
{pressed = device_commands.Button_8,cockpit_device_id  = devices.VHF_ARC_131, value_pressed = 1.0,	name = _('VHF FM Radio Volume Increase'), 	category = _("VHF FM Radio Control panel")},

{down = device_commands.Button_12,	cockpit_device_id  = devices.VHF_ARC_131, value_down = -1.0,		name = _('VHF FM Radio 50kHz Decrease'), category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_12,	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0, 		name = _('VHF FM Radio 50kHz Increase'), category = _("VHF FM Radio Control panel")},

{down = device_commands.Button_11,	cockpit_device_id  = devices.VHF_ARC_131, value_down = -1.0,		name = _('VHF FM Radio 100kHz Decrease'), 	category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_11,	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0, 		name = _('VHF FM Radio 100kHz Increase'), 	category = _("VHF FM Radio Control panel")},

{down = device_commands.Button_10,	cockpit_device_id  = devices.VHF_ARC_131, value_down = -1.0,		name = _('VHF FM Radio 1MHz Decrease'), 	category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_10,	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0, 		name = _('VHF FM Radio 1MHz Increase'), 	category = _("VHF FM Radio Control panel")},

{down = device_commands.Button_9,	cockpit_device_id  = devices.VHF_ARC_131, value_down = -1.0,		name = _('VHF FM Radio 10MHz Decrease'), 	category = _("VHF FM Radio Control panel")},
{down = device_commands.Button_9,	cockpit_device_id  = devices.VHF_ARC_131, value_down = 1.0, 		name = _('VHF FM Radio 10MHz Increase'), 	category = _("VHF FM Radio Control panel")},

--AN/ARC-51
{pressed = device_commands.Button_9,cockpit_device_id  = devices.UHF_ARC_51, value_pressed = -1.0,	name = _('UHF Radio Volume Decrease'), 	category = _("UHF Radio Control panel")},
{pressed = device_commands.Button_9,cockpit_device_id  = devices.UHF_ARC_51, value_pressed = 1.0, 	name = _('UHF Radio Volume Increase'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_10,	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0, 		name = _('UHF Radio Squelch Switch'), 		category = _("UHF Radio Control panel")},

{down = device_commands.Button_16, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0,		name = _('UHF Radio Mode Select(rotary)'), category = _("UHF Radio Control panel")},
{down = device_commands.Button_6, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.0,		name = _('UHF Radio Mode OFF'), 		category = _("UHF Radio Control panel")},
{down = device_commands.Button_6, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.1,		name = _('UHF Radio Mode T/R'), 		category = _("UHF Radio Control panel")},
{down = device_commands.Button_6, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.2,		name = _('UHF Radio Mode T/R+G'), 		category = _("UHF Radio Control panel")},
{down = device_commands.Button_6, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.3,		name = _('UHF Radio Mode ADF'), 		category = _("UHF Radio Control panel")},

{down = device_commands.Button_15, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0,		name = _('UHF Radio Freq. Mode Select(rotary)'), category = _("UHF Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.0,		name = _('UHF Radio Freq. Mode PRESET'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.1,		name = _('UHF Radio Freq. Mode MAN'), 		category = _("UHF Radio Control panel")},
{down = device_commands.Button_5, 	cockpit_device_id  = devices.UHF_ARC_51, value_down = 0.2,		name = _('UHF Radio Freq. Mode GD XMIT'), 	category = _("UHF Radio Control panel")},

{down = device_commands.Button_11,	cockpit_device_id  = devices.UHF_ARC_51, value_down = -1.0,		name = _('UHF Preset Channel Decrease'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_11,	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0, 		name = _('UHF Preset Channel Increase'), 	category = _("UHF Radio Control panel")},

{down = device_commands.Button_12,	cockpit_device_id  = devices.UHF_ARC_51, value_down = -1.0,		name = _('UHF Radio 10MHz Decrease'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_12,	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0, 		name = _('UHF Radio 10MHz Increase'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_13,	cockpit_device_id  = devices.UHF_ARC_51, value_down = -1.0,		name = _('UHF Radio 1MHz Decrease'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_13,	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0, 		name = _('UHF Radio 1MHz Increase'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_14,	cockpit_device_id  = devices.UHF_ARC_51, value_down = -1.0,		name = _('UHF Radio 50kHz Decrease'), 	category = _("UHF Radio Control panel")},
{down = device_commands.Button_14,	cockpit_device_id  = devices.UHF_ARC_51, value_down = 1.0, 		name = _('UHF Radio 50kHz Increase'), 	category = _("UHF Radio Control panel")},

--AN/ARN-83
{down = device_commands.Button_10, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 1.0, name = _('ADF Mode Select (rotary)'), category = _("ADF Set Control panel")},
{down = device_commands.Button_1, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.0, name = _('ADF Mode OFF'), 			category = _("ADF Set Control panel")},
{down = device_commands.Button_1, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.1, name = _('ADF Mode ADF'), 			category = _("ADF Set Control panel")},
{down = device_commands.Button_1, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.2, name = _('ADF Mode ANT'), 			category = _("ADF Set Control panel")},
{down = device_commands.Button_1, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.3, name = _('ADF Mode LOOP'), 			category = _("ADF Set Control panel")},

{down = device_commands.Button_11, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 1.0, name = _('ADF Band Select (rotary)'), category = _("ADF Set Control panel")},
{down = device_commands.Button_2, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = -1,  name = _('ADF Band 190-400 kHz'), 	category = _("ADF Set Control panel")},
{down = device_commands.Button_2, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 0,	  name = _('ADF Band 400-850 kHz'), 	category = _("ADF Set Control panel")},
{down = device_commands.Button_2, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 1,	  name = _('ADF Band 850-1750 kHz'), 	category = _("ADF Set Control panel")},

{pressed = device_commands.Button_7,cockpit_device_id  = devices.ADF_ARN_83, value_pressed = -1.0,name = _('ADF Frequency Decrease'), category = _("ADF Set Control panel")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.ADF_ARN_83, value_pressed = 1.0, name = _('ADF Frequency Increase'), category = _("ADF Set Control panel")},

{pressed = device_commands.Button_8,cockpit_device_id  = devices.ADF_ARN_83, value_pressed = -1.0,	name = _('ADF Gain Decrease'), category = _("ADF Set Control panel")},
{pressed = device_commands.Button_8,cockpit_device_id  = devices.ADF_ARN_83, value_pressed = 1.0, 	name = _('ADF Gain Increase'), category = _("ADF Set Control panel")},

{down = device_commands.Button_5,up = device_commands.Button_5,cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.0, value_up = 0.2,	name = _('ADF Loop Left High'), 	category = _("ADF Set Control panel")},
{down = device_commands.Button_5,up = device_commands.Button_5,cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.1, value_up = 0.2,	name = _('ADF Loop Left Low'), 	category = _("ADF Set Control panel")},
{down = device_commands.Button_5,up = device_commands.Button_5,cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.3, value_up = 0.2,	name = _('ADF Loop Right Low'), 	category = _("ADF Set Control panel")},
{down = device_commands.Button_5,up = device_commands.Button_5,cockpit_device_id  = devices.ADF_ARN_83, value_down = 0.4, value_up = 0.2,	name = _('ADF Loop Right High'), 	category = _("ADF Set Control panel")},

{down = device_commands.Button_9, 	cockpit_device_id  = devices.ADF_ARN_83, value_down = 1.0,		name = _('ADF BFO Switch'), 	category = _("ADF Set Control panel")},

--Intercom
{pressed = device_commands.Button_11,cockpit_device_id  = devices.INTERCOM, value_pressed = -1.0,	name = _('Intercom Volume Decrease'), 	category = _("Intercom Control Panel")},
{pressed = device_commands.Button_11,cockpit_device_id  = devices.INTERCOM, value_pressed = 1.0, 	name = _('Intercom Volume Increase'), 	category = _("Intercom Control Panel")},

{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.0, 	name = _('Intercom Mode PVT'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.1, 	name = _('Intercom Mode INT'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.2, 	name = _('Intercom Mode 1'), 					category = _("Intercom Control Panel")},
{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.3, 	name = _('Intercom Mode 2'), 					category = _("Intercom Control Panel")},
{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.4, 	name = _('Intercom Mode 3'), 					category = _("Intercom Control Panel")},
{down = device_commands.Button_8,cockpit_device_id  = devices.INTERCOM, value_down = 0.5, 	name = _('Intercom Mode 4'), 					category = _("Intercom Control Panel")},
{down = device_commands.Button_12,cockpit_device_id  = devices.INTERCOM, value_down = 1.0, 	name = _('Intercom Mode Selector (rotary)'), 	category = _("Intercom Control Panel")},

{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.0, 	name = _('Intercom Receiver #1'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.1, 	name = _('Intercom Receiver #2'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.2, 	name = _('Intercom Receiver #3'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.3, 	name = _('Intercom Receiver #4'), 				category = _("Intercom Control Panel")},
{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.4, 	name = _('Intercom Receiver INT'), 			category = _("Intercom Control Panel")},
{down = device_commands.Button_13,cockpit_device_id  = devices.INTERCOM, value_down = 0.5, 	name = _('Intercom Receiver NAV'), 			category = _("Intercom Control Panel")},

--GMC
{down = device_commands.Button_6,cockpit_device_id  = devices.GMCS, value_down = 1.0,  		name = _('GMC Operating Mode Slave/Gyro'),		 category = _('Systems')},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.GMCS, value_pressed = 1.0,	name = _('GMC Manual Heading Decrease'),category = _("Systems")},
{pressed = device_commands.Button_7,cockpit_device_id  = devices.GMCS, value_pressed = -1.0, 	name = _('GMC Manual Heading Increase'),category = _("Systems")},
{down = device_commands.Button_8,cockpit_device_id  = devices.GMCS, value_down = 1.0,  		name = _('GMC Pointer #1 ADF/VOR'), 			 category = _('Systems')},
{pressed = device_commands.Button_9,cockpit_device_id  = devices.GMCS, value_pressed = -1.0,	name = _('GMC Synchronizing o'),		 category = _("Systems")},
{pressed = device_commands.Button_9,cockpit_device_id  = devices.GMCS, value_pressed = 1.0, 	name = _('GMC Synchronizing +'),		 category = _("Systems")},

--Course Indicator
{pressed = device_commands.Button_2,cockpit_device_id  = devices.COURSE_IND, value_pressed = -0.5,	name = _('Course Indicator OBS Decrease'),category = _("Systems")},
{pressed = device_commands.Button_2,cockpit_device_id  = devices.COURSE_IND, value_pressed = 0.5, 	name = _('Course Indicator OBS Increase'),category = _("Systems")},

--Marker Beacon
{pressed = device_commands.Button_3,cockpit_device_id  = devices.MARKER_BEACON, value_pressed = -1.0,	name = _('Marker Beacon Volume Decrease'),		category = _("Systems")},
{pressed = device_commands.Button_3,cockpit_device_id  = devices.MARKER_BEACON, value_pressed = 1.0, 	name = _('Marker Beacon Volume Increase'),		category = _("Systems")},
{down = device_commands.Button_4, 	cockpit_device_id  = devices.MARKER_BEACON, value_down = 1.0,		name = _('Marker Beacon Sensitivity High/Low'),category = _("Systems")},

--Clock 
{down = device_commands.Button_3, cockpit_device_id  = devices.CLOCK, value_down = 1.0,  name = _('Clock Winding/Adjust'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.CLOCK, value_pressed = -0.2, name = _('Clock Winding/Adjust Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.CLOCK, value_pressed = 0.2, name = _('Clock Winding/Adjust Increase'), category = _('Front Dash')},

--Copilot Altimeter 
{pressed = device_commands.Button_2, cockpit_device_id = devices.AAU32, value_pressed = -1.0, name = _('Altimeter Copilot, Pressure Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.AAU32, value_pressed = 1.0, name = _('Altimeter Copilot, Pressure Increase'), category = _('Front Dash')},

--Pilot Altimeter 
{pressed = device_commands.Button_2, cockpit_device_id = devices.AAU7, value_pressed = -1.0, name = _('Altimeter Pilot, Pressure Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.AAU7, value_pressed = 1.0, name = _('Altimeter Pilot, Pressure Increase'), category = _('Front Dash')},

--Pilot's attitude indicator
{pressed = device_commands.Button_3, cockpit_device_id  = devices.ADI_PILOT, value_pressed = -0.5, name = _('Attitude Indicator pilot, Pitch Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_3, cockpit_device_id  = devices.ADI_PILOT, value_pressed = 0.5, name = _('Attitude Indicator pilot, Pitch Increase'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ADI_PILOT, value_pressed = -0.5, name = _('Attitude Indicator pilot, Roll Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.ADI_PILOT, value_pressed = 0.5, name = _('Attitude Indicator pilot, Roll Increase'), category = _('Front Dash')},

--Copilot's attitude indicator
{pressed = device_commands.Button_3, cockpit_device_id  = devices.ADI_OPERATOR, value_pressed = -0.5, name = _('Copilot Gyro, Pitch Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_3, cockpit_device_id  = devices.ADI_OPERATOR, value_pressed = 0.5, name = _('Copilot Gyro, Pitch Increase'), category = _('Front Dash')},
{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id  = devices.ADI_OPERATOR, value_down = 1, value_up = 0, name = _('Copilot Gyro Cage'), category = _('Front Dash')},

--Radar Altimeter
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.RADAR_ALTIMETER, value_down = 1.0, value_up	= 0.0, name = _('Radar Altimeter, Test'), category = _('Front Dash')},
{pressed = device_commands.Button_6, cockpit_device_id = devices.RADAR_ALTIMETER, value_pressed = -0.1, name = _('Radar Altimeter, Hight Altitude Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_6, cockpit_device_id = devices.RADAR_ALTIMETER, value_pressed = 0.1, value_up = 0, name = _('Radar Altimeter, Hight Altitude Increase'), category = _('Front Dash')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.RADAR_ALTIMETER, value_pressed = -0.1, name = _('Radar Altimeter, Low Altitude Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_5, cockpit_device_id = devices.RADAR_ALTIMETER, value_pressed = 0.1, value_up = 0, name = _('Radar Altimeter, Low Altitude Increase'), category = _('Front Dash')},

--Night Vision Goggles
{down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggles')   , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},

--Windshield wipers
{down = device_commands.Button_3, cockpit_device_id = devices.CPT_MECH, value_down = -1.0, name = _('Wiper Mode Selector Down'), category = _('Ins Overhead panel')},
{down = device_commands.Button_3, cockpit_device_id = devices.CPT_MECH, value_down = 1.0, name = _('Wiper Mode Selector Up'), category = _('Ins Overhead panel')},
{up = device_commands.Button_1, down = device_commands.Button_1, cockpit_device_id = devices.CPT_MECH, value_up = 0.0, value_down = -1.0, name = _('Windshield Mode Decrease'), category = _('Ins Overhead panel')},
{up = device_commands.Button_1, down = device_commands.Button_1, cockpit_device_id = devices.CPT_MECH, value_up = 0.0, value_down = 1.0, name = _('Windshield Mode Increase'), category = _('Ins Overhead panel')},

--Circuit breakers
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.0,  name = _('CB IFF APX 1'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.01, name = _('CB IFF APX 2'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.02, name = _('CB Prox. warn.'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.03, name = _('CB Marker beacon'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.04, name = _('CB VHF Nav. (ARN-82)'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.05, name = _('CB LF Nav. (ARN-83)'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.06, name = _('CB Intercom CPLT'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.07, name = _('CB Intercom PLT'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.08, name = _('CB Wind wiper PLT'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.09, name = _('CB Wind wiper CPLT'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.10, name = _('CB KY-28 voice security'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.11, name = _('CB Search light power'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.12, name = _('CB Landing light power'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.13, name = _('CB Landing & Search light control'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.14, name = _('CB Anticollision light '), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.15, name = _('CB Heated blanket 1'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.16, name = _('CB Heated blanket 2'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.17, name = _('CB Voltmeter Non Ess Bus'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.18, name = _('CB Pitot tube'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.19, name = _('CB Cabin heater (Outlet valve)'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.20, name = _('CB Cabin heater (Air valve)'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.21, name = _('CB RPM Warning system'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.22, name = _('CB Engine anti-ice'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.23, name = _('CB Fire detector'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.24, name = _('CB LH fuel boost pump'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.25, name = _('CB Turn & Slip indicator'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.26, name = _('CB TEMP indicator'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.27, name = _('CB HYD Control'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.28, name = _('CB FORCE Trim'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.29, name = _('CB Rescue hoist PWR'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.30, name = _('CB Rescue hoist CTL'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.31, name = _('CB Rescue hoist cable cutter'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.32, name = _('CB ARC-102 HF Static INVTR'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.33, name = _('CB HF ANT COUPLR'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.34, name = _('CB HF ARC-102'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.35, name = _('CB FM Radio'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.36, name = _('CB UHF Radio'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.37, name = _('CB FM 2 Radio'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.38, name = _('CB VHF AM Radio'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.39, name = _('CB Fuselage lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.40, name = _('CB Navigation lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.41, name = _('CB Dome lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.42, name = _('CB Cockpit lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.43, name = _('CB Caution lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.44, name = _('CB Console lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.45, name = _('CB INST Panel lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.46, name = _('CB INST SEC lights'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.47, name = _('CB Cargo hook release'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.48, name = _('CB EXT Stores jettison'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.49, name = _('CB Spare inverter PWR'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.50, name = _('CB Inverter CTRL'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.51, name = _('CB Main inverter PWR'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.52, name = _('CB Generator & Bus Reset'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.53, name = _('CB STBY Generator Field'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.54, name = _('CB Governor Control'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.55, name = _('CB IDLE Stop release'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.56, name = _('CB RH fuel boost pump'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.57, name = _('CB Fuel TRANS'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.58, name = _('CB Fuel valves'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.59, name = _('CB Starter Relay'), category = _('Circuit breaker panel')},
{down = device_commands.Button_18, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 0.60, name = _('CB Ignition system'), category = _('Circuit breaker panel')},

{down = device_commands.Button_8, cockpit_device_id = devices.RADAR_ALTIMETER, value_down = 1.0,  name = _('Radar Altimeter Power Switch'), category = _('Circuit breaker panel')},

--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},

{down = iCommandPlaneEject, name = _('Leave Helicopter (3 times)'), category = _('Systems')},

{down = iCommandViewCockpitChangeSeat, value_down = 1, name = _('Set Pilot Seat'), category = _('View Cockpit')},
{down = iCommandViewCockpitChangeSeat, value_down = 2, name = _('Set Operator Seat'), category = _('View Cockpit')},
{down = iCommandViewCockpitChangeSeat, value_down = 3, name = _('Set Left Gunner Seat'), category = _('View Cockpit')},
{down = iCommandViewCockpitChangeSeat, value_down = 4, name = _('Set Right Gunner Seat'), category = _('View Cockpit')},

{down = device_commands.Button_27, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('Toggle Weapon Hints'), category = _('Cheat')},

--Gunners AI Panel
{down = device_commands.Button_37, cockpit_device_id = devices.WEAPON_SYS, value_down = 1.0, name = _('AI Panel Show/Hide'), category = _('Gunners AI Panel')},

{down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Left ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_38, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Left Burst Switch'), category = _('Gunners AI Panel')},

{down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Operator ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_39, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Operator Burst Switch'), category = _('Gunners AI Panel')},

{down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.0, name = _('AI Right ROE Iterate'), category = _('Gunners AI Panel')},
{down = device_commands.Button_40, cockpit_device_id = devices.WEAPON_SYS, value_down = 0.1, name = _('AI Right Burst Switch'), category = _('Gunners AI Panel')},

{down = device_commands.Button_11, cockpit_device_id = devices.XM_130, value_down = 0.0, name = _('Ripple Fire Cover'), category = _('Pedestal')},
{down = device_commands.Button_12, cockpit_device_id = devices.XM_130, value_down = 0.0, name = _('Ripple Fire Switch'), category = _('Pedestal')},
{down = device_commands.Button_13, cockpit_device_id = devices.XM_130, value_down = 0.0, name = _('SAFE/ARMED Switcher'), category = _('Pedestal')},
{down = device_commands.Button_14, cockpit_device_id = devices.XM_130, value_down = 0.0, name = _('Chaff Mode Switch'), category = _('Pedestal')},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.XM_130, value_down = 1.0, value_up = 0.0, name = _('Flare Dispense Button'), category = _('Pedestal')},
{down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.XM_130, value_down = 1.0, value_up = 0.0, name = _('Armed Lamp Test Button'), category = _('Pedestal')},

{down = 3256, cockpit_device_id = 0, value_down = 1.0, name = _('Flashlight'), category = _('View Cockpit')},
{down = 3255, cockpit_device_id = 0, value_down = 1.0, name = _('Flashlight Color - Toggle Green/White'), category = {_('View Cockpit')}},

},

axisCommands = {

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll  , name = _('Flight Control Cyclic Roll')	},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch , name = _('Flight Control Cyclic Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, name = _('Flight Control Rudder')		},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneCollective, name = _('Flight Control Collective')},
{action = device_commands.Button_26, cockpit_device_id  = devices.ENGINE_INTERFACE, name = _('Throttle')},

-- systems
{action = device_commands.Button_28,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Overhead Console Light Knob'),		category = _("Ins Overhead panel")},
{action = device_commands.Button_29,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Pedestal Light Knob'),				category = _("Ins Overhead panel")},
{action = device_commands.Button_30,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Secondary Instrument Light Knob'),	category = _("Ins Overhead panel")},
{action = device_commands.Button_31,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Engine Instrument Light Knob'),		category = _("Ins Overhead panel")},
{action = device_commands.Button_32,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Copilot Instrument Light Knob'),		category = _("Ins Overhead panel")},
{action = device_commands.Button_33,	cockpit_device_id = devices.NAVLIGHT_SYSTEM,	name = _('Pilot Instrument Light Knob'),		category = _("Ins Overhead panel")},
{action = device_commands.Button_12,	cockpit_device_id = devices.ADF_ARN_83,		name = _('ADF Gain Knob'),				category = _("ADF Set Control panel")},
{action = device_commands.Button_15,	cockpit_device_id = devices.VHF_ARC_131,	name = _('VHF FM Radio Volume Knob'),	category = _("VHF FM Radio Control panel")},
{action = device_commands.Button_14,	cockpit_device_id = devices.INTERCOM,		name = _('C1611 Intercom Volume Knob'),	category = _("Intercom Control Panel")},
{action = device_commands.Button_17,	cockpit_device_id = devices.UHF_ARC_51,		name = _('UHF Radio Volume Knob'),		category = _("UHF Radio Control panel")},
{action = device_commands.Button_5,		cockpit_device_id = devices.MARKER_BEACON,	name = _('Marker Beacon Volume Knob'),	category = _("Systems")},

-- TrackIR axes
{action = iCommandViewVerticalAbs, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs, name = _('Zoom View')},

},
--Cargo view 
{down = device_commands.Button_1, cockpit_device_id = devices.EXTERNAL_CARGO_VIEW, value_down = 1, name = _('Cargo View'), category = _('View')},

}
