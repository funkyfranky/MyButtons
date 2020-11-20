local cockpit = folder.."../../../Cockpit/Scripts/"
dofile(cockpit.."devices.lua")
dofile(cockpit.."command_defs.lua")


return {

forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = {

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: begin additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- WEAPON_SYSTEM
{down = device_commands.Button_1,  up = device_commands.Button_1,  cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Master Arm ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Outer Wing Guns Arm ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Jettison Fuselage Stores ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Main Rocket Switch ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Rocket Emergency Release ON/OFF'), category = _('_My Buttons')},

-- CONTROL_SYSTEM
{down = device_commands.Button_5,  up = device_commands.Button_7,  cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 1.0, name = _('Landing Gear RETRACT/EXTEND'), category = _('_My Buttons')},

-- ENGINE_SYSTEM
{down = iCommandLeftEngineStop, up= iCommandLeftEngineStart, name = _('Throttle STOP/IDLE'), category = _('_My Buttons')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Throttle Control LOCK/UNLOCK'), category = _('_My Buttons')},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Govenor Automation ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, value_up = 1.0, name = _('Govenor Automation OFF/ON'), category = _('_My Buttons')},

-- FUEL_SYSTEM
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.FUEL_SYSTEM,    value_down = 0.0, value_up = 0.5, name = _('Fuel Gauge Selector FWD/CENTER'), category = _('_My Buttons')},
{down = device_commands.Button_2,  up = device_commands.Button_2,  cockpit_device_id = devices.FUEL_SYSTEM,    value_down = 1.0, value_up = 0.5, name = _('Fuel Gauge Selector AFT/CENTER'), category = _('_My Buttons')},

-- ELEC_INTERFACE
{down = device_commands.Button_8,  up = device_commands.Button_43, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 1.0, name = _('CB Navigation Lights ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_14, up = device_commands.Button_49, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 1.0, name = _('CB Generator ON/OFF'), category = _('_My Buttons')},
{down = device_commands.Button_15, up = device_commands.Button_50, cockpit_device_id = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 1.0, name = _('CB Battery ON/OFF'), category = _('_My Buttons')},

-- COCKPIT SIGHT
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.PILOT_SIGHT, value_down = 1.0, value_up = 0.0, name = _('Gun Sight Smoked Screen ON/OFF'), category = _('_My Buttons')},

-- ARTIFICIAL HORIZON
{down = device_commands.Button_2, up = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_down = -1.0, value_up = 1.0, name = _('Horizon CAGE/UNCAGE'), category = _('_My Buttons')},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: end additional commands
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


{down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},


-- Gameplay
{down = iCommandActivePauseOnOff, name = _('Pause Active'), category = _('General')},
{down = iCommandQuit, name = _('Exit mission'), category = _('General')},
{down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandSoundOnOff,			name = _('Sound On/Off'),	 category = _('General')},


-- Communications
{down = iCommandPlaneDoAndHome, name = _('COMM Dispatch wingmans - complete mission and RTB (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneDoAndBack, name = _('COMM Dispatch wingmans - complete mission and rejoin (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneFormation, name = _('COMM Toggle formation (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneJoinUp, name = _('COMM Join up formation (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneAttackMyTarget, name = _('COMM Attack my target (easy communication only)'), category = _('Communications')},
{down = iCommandPlaneCoverMySix, name = _('COMM Cover me (easy communication only)'), category = _('Communications')},
{down = iCommandAWACSHomeBearing, name = _('COMM Ask AWACS home airbase (easy communication only)'), category = _('Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('COMM Attack Ground Targets (easy communication only)'), category = _('Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('COMM Attack Air Defenses (easy communication only)'), category = _('Communications')},
{down = iCommandToggleCommandMenu, name = _('COMM Communication menu'), category = _('Communications')},
{down = ICommandSwitchDialog, name = _('COMM Switch dialog'), category = _('Communications')},
{down = ICommandSwitchToCommonDialog, name = _('COMM Switch to main menu'), category = _('Communications')},
{down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},

-- View                                                    
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}}, pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}}, pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}}, pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}}, pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

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
{down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
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
{down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
{pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},
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

{down = iCommandViewLeftMirrorOn ,	up = iCommandViewLeftMirrorOff , name = _('Mirror left glance'), category = _('View Cockpit')},


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
{down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
{down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},

-- Padlock
{down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
{down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
{down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
{down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
{down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},


-- Labels
{down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
{down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
{down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
{down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},

-- Stick Buttons --------------------------------------------------------------------------
-- Trigger Buttons
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Input.FW190A8.safety'), category = _('Stick')},
{combos = defaultDeviceAssignmentFor("fire"),               down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Input.FW190A8.trigger_a'), category = _('Stick')},
{combos = {{key = 'JOY_BTN2'}},                             down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Input.FW190A8.trigger_b1'), category = _('Stick')},
{combos = {{key = 'JOY_BTN3'}},                             down = device_commands.Button_14, up = device_commands.Button_14, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Input.FW190A8.trigger_b2'), category = _('Stick')},
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Input.FW190A8.trigger_t'), category = _('Stick')},
-- ----------------------------------------------------------------------------------------

-- Flight Control
{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Flight Nose Down'), category = _('Flight Control')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight Nose Up'), category = _('Flight Control')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight Left Wing Down'), category = _('Flight Control')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight Right Wing Down'), category = _('Flight Control')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight Rudder Left'), category = _('Flight Control')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight Rudder Right'), category = _('Flight Control')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = 1.0, 	name = _('Throttle Increase'), category = _('Flight Control')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ENGINE_SYSTEM, value_pressed = -1.0,	name = _('Throttle Decrease'), category = _('Flight Control')},

-- Systems
{down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake Both'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeLeftOn, up = iCommandPlaneWheelBrakeLeftOff, name = _('Wheel brake Left'), category = _('Systems')},
{down = iCommandPlaneWheelBrakeRightOn, up = iCommandPlaneWheelBrakeRightOff, name = _('Wheel brake Right'), category = _('Systems')},
{down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = -1.0, name = _('Canopy Opening'), category = _('Systems')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.CPT_MECH, value_pressed = 1.0, name = _('Canopy Closing'), category = _('Systems')},
{down = device_commands.Button_7, cockpit_device_id  = devices.CPT_MECH, value_down = 1.0, name = _('Canopy Emergency Release'), category = _('Systems')},

{pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon Cage'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = 1.0, name = _('Horizon Uncage'), category = _('Front Dash')},

{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = 0.05, name = _('Compass Bezel CW'), category = _('Front Dash')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = -0.05, name = _('Compass Bezel CCW'), category = _('Front Dash')},

--Altimeter 
{pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = -0.04, name = _('Altimeter Pressure Decrease'), category = _('Front Dash')},
{pressed = device_commands.Button_1, cockpit_device_id = devices.ALTIMETER, value_pressed = 0.04, name = _('Altimeter Pressure Increase'), category = _('Front Dash')},

--- Kneeboard
{down = device_commands.Button_1, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = device_commands.Button_2, cockpit_device_id  = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard,	name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = device_commands.Button_3	, cockpit_device_id  = devices.KNEEBOARD,value_down = 1.0, name = _('Kneeboard current position mark point')  , category = _('Kneeboard')},



-- REVI 16 B Gun Sight --------------------------------------------------------------------
-- Gun Sight Brightness Rheostat
{pressed = device_commands.Button_2, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = -1.0, name = _('Input.Bf109K4.cb_p112_plus'), category = _('REVI 16 B Gunsight')},
{pressed = device_commands.Button_2, cockpit_device_id = devices.PILOT_SIGHT, value_pressed = 1.0, name = _('Input.Bf109K4.cb_p112_minus'), category = _('REVI 16 B Gunsight')},
-- Gun Sight Smoked Screen Controls
{down = device_commands.Button_4, cockpit_device_id = devices.PILOT_SIGHT, value_down = 1.0, name = _('Input.Bf109K4.gun_sight_tint_1'), category = _('REVI 16 B Gunsight')},
{down = device_commands.Button_4, cockpit_device_id = devices.PILOT_SIGHT, value_down = 0.0, name = _('Input.Bf109K4.gun_sight_tint_0'), category = _('REVI 16 B Gunsight')},
{down = device_commands.Button_5, cockpit_device_id = devices.PILOT_SIGHT, value_down = 1.0, name = _('Input.Bf109K4.gun_sight_tint'), category = _('REVI 16 B Gunsight')},
-- ----------------------------------------------------------------------------------------



--Weapon System
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Bomb Emergency Release'), category = _('Weapon System')},
{down = device_commands.Button_2, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Master Arm ON/OFF'), category = _('Weapon System')},
{down = device_commands.Button_21, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Outer Wing Guns Arm ON/OFF'), category = _('Weapon System')},

{down = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = -1.0,   name = _('Bomb fusing selector Left'), category = _('Weapon System')},
{down = device_commands.Button_17, cockpit_device_id  = devices.WEAPON_SYSTEM, value_down = 1.0,   name = _('Bomb fusing selector Right'), category = _('Weapon System')},
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Bomb fusing selector dive OV'), category = _('Weapon System')},
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1, name = _('Bomb fusing selector dive MV'), category = _('Weapon System')},
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2, name = _('Bomb fusing selector OFF'), category = _('Weapon System')},
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3, name = _('Bomb fusing selector level MV'), category = _('Weapon System')},
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4, name = _('Bomb fusing selector level OV'), category = _('Weapon System')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 1 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 1 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 2 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_6, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 2 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_8, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 3 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_8, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 3 Increase'), category = _('Weapon System')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = -0.1,   name = _('Ammo counter 4 Decrease'), category = _('Weapon System')},
{pressed = device_commands.Button_10, cockpit_device_id  = devices.WEAPON_SYSTEM, value_pressed = 0.1,   name = _('Ammo counter 4 Increase'), category = _('Weapon System')},

{down = device_commands.Button_22, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Main Rocket Switch ON'), category = _('Weapon System')},
{down = device_commands.Button_22, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Main Rocket Switch OFF'), category = _('Weapon System')},
{down = device_commands.Button_23, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Main Rocket Switch - toggle ON / OFF'), category = _('Weapon System')},

{down = device_commands.Button_24, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release ON'), category = _('Weapon System')},
{down = device_commands.Button_24, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _('Rocket Emergency Release OFF'), category = _('Weapon System')},
{down = device_commands.Button_25, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _('Rocket Emergency Release - toggle ON / OFF'), category = _('Weapon System')},



--landing gear
{down = device_commands.Button_10, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Up/Down'), category = _('Systems')},

{down = device_commands.Button_11, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover'), category = _('Systems')},
{down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Retraction Cover Down'), category = _('Systems')},
{down = device_commands.Button_6, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction Cover Up'), category = _('Systems')},

{down = device_commands.Button_5, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Retraction'), category = _('Systems')},
{down = device_commands.Button_7, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Extending'), category = _('Systems')},

{down = device_commands.Button_9, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Release'), category = _('Systems')},
{down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 0.0, name = _('Landing Gear Emergency Handle Push'), category = _('Systems')},
{down = device_commands.Button_8, cockpit_device_id = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Landing Gear Emergency Handle Pull'), category = _('Systems')},

--flaps
{down = device_commands.Button_1, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Up'), category = _('Flight Control')},
{down = device_commands.Button_2, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Take Off'), category = _('Flight Control')},
{down = device_commands.Button_3, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, name = _('Flaps Landing'), category = _('Flight Control')},

--engine control
{down = device_commands.Button_8, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, value_up = 0.5, name = _('Starter Power'), category = _('Engine Control')},
{down = device_commands.Button_9, up = device_commands.Button_10, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.5, name = _('Starter Clutch'), category = _('Engine Control')},
{down = device_commands.Button_7, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Starter Switch Cover'), category = _('Engine Control')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Starter Brushes Retract'), category = _('Engine Control')},


{down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0,	 name = _('Magneto Switch Forward'), category = _('Engine Control')},
{down = device_commands.Button_5, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = -1.0,	 name = _('Magneto Switch Backward'), category = _('Engine Control')},

{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('Magneto Switch OFF'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.3, name = _('Magneto Switch 1'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.6, name = _('Magneto Switch 2'), category = _('Engine Control')},
{down = device_commands.Button_4, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 0.9, name = _('Magneto Switch 1+2'), category = _('Engine Control')},

{down = device_commands.Button_14, up = device_commands.Button_14, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Engine RPM Increase'), category = _('Engine Control')}, --TODO: RENAME!!
{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.ENGINE_SYSTEM, value_down = -1.0, value_up = 0.0, name = _('Engine RPM Decrease'), category = _('Engine Control')}, --TODO: RENAME!!
{down = device_commands.Button_15,                                 cockpit_device_id = devices.ENGINE_SYSTEM, value_down = -1.0, name = _('Prop Feathering'), category = _('Engine Control')}, --TODO: RENAME!!


{down = iCommandLeftEngineStart, name = _('Throttle to START'), category = _('Engine Control')},
{down = iCommandLeftEngineStop, name = _('Throttle to STOP'), category = _('Engine Control')},
{down = device_commands.Button_12, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Throttle Control Lock'), category = _('Engine Control')},

{down = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Input.Bf109K4.cb_e103_0'), category = _('Engine Control')},
{down = device_commands.Button_13, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 0.0, name = _('Input.Bf109K4.cb_e103_1'), category = _('Engine Control')},
{down = device_commands.Button_16, cockpit_device_id  = devices.ENGINE_SYSTEM, value_down = 1.0, name = _('Input.Bf109K4.cb_e103'), category = _('Engine Control')},


--oxygen
{down = device_commands.Button_2, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Oxygen Emergency Knob'), category = _('Oxygen System')},
{down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 0.0, name = _('Emergency Oxygen ON'), category = _('Oxygen System')},
{down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN_SYSTEM, value_down = 1.0, name = _('Emergency Oxygen OFF'), category = _('Oxygen System')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = -0.5, name = _('Oxygen Valve Close'), category = _('Oxygen System')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.OXYGEN_SYSTEM, value_pressed = 0.5, name = _('Oxygen Valve Open'), category = _('Oxygen System')},

--trimmer
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Trim Elevator Down'), category = _('Flight Control')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id  = devices.CONTROL_SYSTEM, value_down = -1.0, value_up = 0.0, name = _('Trim Elevator Up'), category = _('Flight Control')},

{pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = -0.4, name = _('Radiator Flaps Close'), category = _('Engine Control')},
{pressed = device_commands.Button_14, cockpit_device_id  = devices.CONTROL_SYSTEM, value_pressed = 0.4, name = _('Radiator Flaps Open'), category = _('Engine Control')},

--fuel system
{down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Selector Valve Up'), category = _('Fuel Control')},
{down = device_commands.Button_5, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Selector Valve Down'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Selector Valve OFF'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.1, name = _('Fuel Selector Valve AFT Tank Closed'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.3, name = _('Fuel Selector Valve FWD Tank Closed'), category = _('Fuel Control')},
{down = device_commands.Button_1, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.2, name = _('Fuel Selector Valve Open'), category = _('Fuel Control')},

{down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector to the Right'), category = _('Fuel Control')},
{down = device_commands.Button_6, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Fuel Gauge Selector to the Left'), category = _('Fuel Control')},

{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.0, name = _('Fuel Gauge Selector FWD'), category = _('Fuel Control')},
{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 0.5, name = _('Fuel Gauge Selector OFF'), category = _('Fuel Control')},
{down = device_commands.Button_2, cockpit_device_id = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Fuel Gauge Selector AFT'), category = _('Fuel Control')},

{down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, name = _('Cold Start/Wind Screen Washer to the Right'), category = _('Fuel Control')},
{down = device_commands.Button_8, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = -1.0, name = _('Cold Start/Wind Screen Washer to the Left'), category = _('Fuel Control')},

{down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id  = devices.FUEL_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Primer Pump'), category = _('Fuel Control')},

--radio
{down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Channel Selector CW'), category = _('VHF Radio')},
{down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, name = _('Radio Channel Selector CCW'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Channel Selector I'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.1, name = _('Radio Channel Selector II'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.2, name = _('Radio Channel Selector III'), category = _('VHF Radio')},
{down = device_commands.Button_1, cockpit_device_id = devices.VHF_RADIO, value_down = 0.3, name = _('Radio Channel Selector IV'), category = _('VHF Radio')},

{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO/ADF'), category = _('VHF Radio')},
{down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Radio Mode ADF'), category = _('VHF Radio')},
{down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Radio Mode RADIO'), category = _('VHF Radio')},

{pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.2, name = _('Radio Volume Increase'), category = _('VHF Radio')},
{pressed = device_commands.Button_4, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.2, name = _('Radio Volume Decrease'), category = _('VHF Radio')},

{pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = 0.1, name = _('Radio Tuning Increase'), category = _('VHF Radio')},
{pressed = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_pressed = -0.1, name = _('Radio Tuning Decrease'), category = _('VHF Radio')},

--electric
{down = device_commands.Button_75, up = device_commands.Button_75, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('Electric Kill-switch'), category = _('Electric System')},
{down = device_commands.Button_3, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Circuit Breakers Fore Cover (toggle)'), category = _('Electric System')},
{down = device_commands.Button_78, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, name = _('Circuit Breakers Aft Cover (toggle)'), category = _('Electric System')},

-- Abwurf_Waffe
{down = device_commands.Button_5,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Drop Ordnance & Optional Armament On'), category = _('Electric System')},
{down = device_commands.Button_40, up = device_commands.Button_40, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Drop Ordnance & Optional Armament Off'), category = _('Electric System')},
{down = device_commands.Button_79,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Drop Ordnance & Optional Armament (toggle)'), category = _('Electric System')},
-- Gun_Camera_Reticle
{down = device_commands.Button_6,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Gun Sight and Gun Camera On'), category = _('Electric System')},
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Gun Sight and Gun Camera Off'), category = _('Electric System')},
{down = device_commands.Button_80,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Gun Sight and Gun Camera (toggle)'), category = _('Electric System')},
-- Instrumentation
{down = device_commands.Button_7,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Instruments On'), category = _('Electric System')},
{down = device_commands.Button_42, up = device_commands.Button_42, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Instruments Off'), category = _('Electric System')},
{down = device_commands.Button_81,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Instruments (toggle)'), category = _('Electric System')},
-- Recognition_Light
{down = device_commands.Button_8,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Navigation Lights On'), category = _('Electric System')},
{down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Navigation Lights Off'), category = _('Electric System')},
{down = device_commands.Button_82,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Navigation Lights (toggle)'), category = _('Electric System')},
-- Cockpit_Light
{down = device_commands.Button_9,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Cabin Illumination On'), category = _('Electric System')},
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Cabin Illumination Off'), category = _('Electric System')},
{down = device_commands.Button_83,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Cabin Illumination (toggle)'), category = _('Electric System')},
-- Heizbekleidung
{down = device_commands.Button_10,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Clothes Heating On'), category = _('Electric System')},
{down = device_commands.Button_45, up = device_commands.Button_45, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Clothes Heating Off'), category = _('Electric System')},
{down = device_commands.Button_84,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Clothes Heating (toggle)'), category = _('Electric System')},
-- Pitot_Heat
{down = device_commands.Button_11,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Pitot Heating On'), category = _('Electric System')},
{down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Pitot Heating Off'), category = _('Electric System')},
{down = device_commands.Button_85,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Pitot Heating (toggle)'), category = _('Electric System')},
-- Zundung
{down = device_commands.Button_12,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Ignition On'), category = _('Electric System')},
{down = device_commands.Button_47, up = device_commands.Button_47, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Ignition Off'), category = _('Electric System')},
{down = device_commands.Button_86,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Ignition (toggle)'), category = _('Electric System')},
-- FuG_25
{down = device_commands.Button_13,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 25a IFF On'), category = _('Electric System')},
{down = device_commands.Button_48, up = device_commands.Button_48, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG 25a IFF Off'), category = _('Electric System')},
{down = device_commands.Button_87,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 25a IFF (toggle)'), category = _('Electric System')},
-- Generator
{down = device_commands.Button_14,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Generator On'), category = _('Electric System')},
{down = device_commands.Button_49, up = device_commands.Button_49, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Generator Off'), category = _('Electric System')},
{down = device_commands.Button_88,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Generator (toggle)'), category = _('Electric System')},
-- Sammler
{down = device_commands.Button_15,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Battery On'), category = _('Electric System')},
{down = device_commands.Button_50, up = device_commands.Button_50, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Battery Off'), category = _('Electric System')},
{down = device_commands.Button_89,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Battery (toggle)'), category = _('Electric System')},



-- Aussenaschluss
{down = device_commands.Button_16,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB External Power On'), category = _('Electric System')},
{down = device_commands.Button_51, up = device_commands.Button_51, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB External Power Off'), category = _('Electric System')},
{down = device_commands.Button_90,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB External Power (toggle)'), category = _('Electric System')},
-- Fuel_Pump_Vorder
{down = device_commands.Button_17,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Fore Tank Fuel Pump On'), category = _('Electric System')},
{down = device_commands.Button_52, up = device_commands.Button_52, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Fore Tank Fuel Pump Off'), category = _('Electric System')},
{down = device_commands.Button_91,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Fore Tank Fuel Pump (toggle)'), category = _('Electric System')},
-- Fuel_Pump_Hinten
{down = device_commands.Button_18,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Aft Tank Fuel Pump On'), category = _('Electric System')},
{down = device_commands.Button_53, up = device_commands.Button_53, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Aft Tank Fuel Pump Off'), category = _('Electric System')},
{down = device_commands.Button_92,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Aft Tank Fuel Pump (toggle)'), category = _('Electric System')},
-- Fuel_Pump_Abwurf
{down = device_commands.Button_19,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Drop Tank Fuel Pump On'), category = _('Electric System')},
{down = device_commands.Button_54, up = device_commands.Button_54, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Drop Tank Fuel Pump Off'), category = _('Electric System')},
{down = device_commands.Button_93,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Drop Tank Fuel Pump (toggle)'), category = _('Electric System')},
-- Fuel_Pump_Zusatz
{down = device_commands.Button_20,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Aux. Tank Fuel Pump On'), category = _('Electric System')},
{down = device_commands.Button_55, up = device_commands.Button_55, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Aux. Tank Fuel Pump Off'), category = _('Electric System')},
{down = device_commands.Button_94,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Aux. Tank Fuel Pump (toggle)'), category = _('Electric System')},



-- FT_Anlage
{down = device_commands.Button_21,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 16 ZY Radio On'), category = _('Electric System')},
{down = device_commands.Button_56, up = device_commands.Button_56, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG 16 ZY Radio Off'), category = _('Electric System')},
{down = device_commands.Button_95,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 16 ZY Radio (toggle)'), category = _('Electric System')},
-- Fahrwerk_Antrieb
{down = device_commands.Button_22,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Undercarriage Drives On'), category = _('Electric System')},
{down = device_commands.Button_57, up = device_commands.Button_57, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Undercarriage Drives Off'), category = _('Electric System')},
{down = device_commands.Button_96,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Undercarriage Drives (toggle)'), category = _('Electric System')},
-- Landeklappen
{down = device_commands.Button_23,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Landing Flaps On'), category = _('Electric System')},
{down = device_commands.Button_58, up = device_commands.Button_58, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Landing Flaps Off'), category = _('Electric System')},
{down = device_commands.Button_97,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Landing Flaps (toggle)'), category = _('Electric System')},
-- Luftschraube_1
{down = device_commands.Button_24,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Prop. Pitch Drive On'), category = _('Electric System')},
{down = device_commands.Button_59, up = device_commands.Button_59, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Prop. Pitch Drive Off'), category = _('Electric System')},
{down = device_commands.Button_98,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Prop. Pitch Drive (toggle)'), category = _('Electric System')},
-- Luftschraube_2
{down = device_commands.Button_25,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Prop. Pitch Controls On'), category = _('Electric System')},
{down = device_commands.Button_60, up = device_commands.Button_60, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Prop. Pitch Controls Off'), category = _('Electric System')},
{down = device_commands.Button_99,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Prop. Pitch Controls (toggle)'), category = _('Electric System')},
-- Hohentrimm
{down = device_commands.Button_26,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Stabilizer Trim On'), category = _('Electric System')},
{down = device_commands.Button_61, up = device_commands.Button_61, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Stabilizer Trim Off'), category = _('Electric System')},
{down = device_commands.Button_100,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Stabilizer Trim (toggle)'), category = _('Electric System')},
-- Wende_Horizont
{down = device_commands.Button_27,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Artificial Horizon On'), category = _('Electric System')},
{down = device_commands.Button_62, up = device_commands.Button_62, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Artificial Horizon Off'), category = _('Electric System')},
{down = device_commands.Button_101,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Artificial Horizon (toggle)'), category = _('Electric System')},
-- Umformer
{down = device_commands.Button_28,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Motor-Generator On'), category = _('Electric System')},
{down = device_commands.Button_63, up = device_commands.Button_63, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Motor-Generator Off'), category = _('Electric System')},
{down = device_commands.Button_102,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Motor-Generator (toggle)'), category = _('Electric System')},
-- Kompass_Anlage
{down = device_commands.Button_29,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Repeater Compass On'), category = _('Electric System')},
{down = device_commands.Button_64, up = device_commands.Button_64, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Repeater Compass Off'), category = _('Electric System')},
{down = device_commands.Button_103,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Repeater Compass (toggle)'), category = _('Electric System')},
-- Fahrwerk_Betatigung
{down = device_commands.Button_30,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Undercarriage Controls On'), category = _('Electric System')},
{down = device_commands.Button_65, up = device_commands.Button_65, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Undercarriage Controls Off'), category = _('Electric System')},
{down = device_commands.Button_104,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Undercarriage Controls (toggle)'), category = _('Electric System')},
-- FuG_25a_Sprengung
{down = device_commands.Button_31,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 25a IFF Self-Destruct On'), category = _('Electric System')},
{down = device_commands.Button_66, up = device_commands.Button_66, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB FuG 25a IFF Self-Destruct Off'), category = _('Electric System')},
{down = device_commands.Button_105,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB FuG 25a IFF Self-Destruct (toggle)'), category = _('Electric System')},



-- Schusswaffen_Aussen
{down = device_commands.Button_32,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Outer Wing Guns On'), category = _('Electric System')},
{down = device_commands.Button_67, up = device_commands.Button_67, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Outer Wing Guns Off'), category = _('Electric System')},
{down = device_commands.Button_106,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Outer Wing Guns (toggle)'), category = _('Electric System')},
-- Schusswaffen_Innen
{down = device_commands.Button_33,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Inner Wing Guns On'), category = _('Electric System')},
{down = device_commands.Button_68, up = device_commands.Button_68, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Inner Wing Guns Off'), category = _('Electric System')},
{down = device_commands.Button_107,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Inner Wing Guns (toggle)'), category = _('Electric System')},
-- Schusswaffen_Rumpf
{down = device_commands.Button_34,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Cowling Guns On'), category = _('Electric System')},
{down = device_commands.Button_69, up = device_commands.Button_69, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _('CB Cowling Guns Off'), category = _('Electric System')},
{down = device_commands.Button_108,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _('CB Cowling Guns (toggle)'), category = _('Electric System')},



---- 
--{down = device_commands.Button_35,                                  cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' On'), category = _('Electric System')},
--{down = device_commands.Button_70, up = device_commands.Button_70, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _(' Off'), category = _('Electric System')},
--{down = device_commands.Button_109,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' (toggle)'), category = _('Electric System')},
---- 
--{down = device_commands.Button_36,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' On'), category = _('Electric System')},
--{down = device_commands.Button_71, up = device_commands.Button_71, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _(' Off'), category = _('Electric System')},
--{down = device_commands.Button_110,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' (toggle)'), category = _('Electric System')},
---- 
--{down = device_commands.Button_37,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' On'), category = _('Electric System')},
--{down = device_commands.Button_72, up = device_commands.Button_72, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _(' Off'), category = _('Electric System')},
--{down = device_commands.Button_111,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' (toggle)'), category = _('Electric System')},
---- 
--{down = device_commands.Button_38,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' On'), category = _('Electric System')},
--{down = device_commands.Button_73, up = device_commands.Button_73, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _(' Off'), category = _('Electric System')},
--{down = device_commands.Button_112,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' (toggle)'), category = _('Electric System')},
---- 
--{down = device_commands.Button_39,                                 cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' On'), category = _('Electric System')},
--{down = device_commands.Button_74, up = device_commands.Button_74, cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0, value_up = 0.0, name = _(' Off'), category = _('Electric System')},
--{down = device_commands.Button_113,                                cockpit_device_id  = devices.ELEC_INTERFACE, value_down = 1.0,                 name = _(' (toggle)'), category = _('Electric System')},



{pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = 0.007, name = _('Instrument Brightness Increase'), category = _('Electric System')},
{pressed = device_commands.Button_1, cockpit_device_id = devices.LIGHT_SYSTEM, value_pressed = -0.007, name = _('Instrument Brightness Decrease'), category = _('Electric System')},

-- Clock Bezel
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_pressed = 1.0, name = _('Input.Bf109K4.clock_scale_plus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.CLOCK, value_pressed = -1.0, name = _('Input.Bf109K4.clock_scale_minus'), category = _('Front Dash')},
-- Clock Setter Pinion
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CLOCK, value_pressed = -1.0, name = _('Input.Bf109K4.clock_pinion_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.CLOCK, value_pressed = 1.0, name = _('Input.Bf109K4.clock_pinion_plus'), category = _('Front Dash')},
-- Clock Freeze Lever
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Input.Bf109K4.clock_stop_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.CLOCK, value_down = 0.0, name = _('Input.Bf109K4.clock_stop_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.CLOCK, value_down = 1.0, name = _('Input.Bf109K4.clock_stop'), category = _('Front Dash')},
-- Clock Stopwatch Button
{                                                           down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.CLOCK, value_down = 1.0, value_up = 0.0, name = _('Input.Bf109K4.clock_stopwatch'), category = _('Front Dash')},

},
axisCommands = {

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: begin additional axes
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

{action = device_commands.Button_13, cockpit_device_id  = devices.CONTROL_SYSTEM, name = _('Radiator Flaps Control'),       category = _('My Axes')},
{action = device_commands.Button_1 , cockpit_device_id  = devices.LIGHT_SYSTEM,   name = _('Instrument Lights Brightness'), category = _('My Axes')},

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- FF: end additional axes
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust"), action = device_commands.Button_3, cockpit_device_id  = devices.ENGINE_SYSTEM, name = _('Throttle')},

-- TrackIR axes
{action = iCommandViewVerticalAbs		, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs		, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs		, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs		, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs	, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs			, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs			, name = _('Zoom View')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

{action = device_commands.Button_4, cockpit_device_id  = devices.CPT_MECH, name = _('Canopy Crank')},

{action = device_commands.Button_3, cockpit_device_id = devices.PILOT_SIGHT, name = _('Input.Bf109K4.cb_p112_slider', 'Gunsight Brightness (analog)'), category = _('REVI 16 B Gunsight')},

    -- Clock Bezel
    {                                                           action = device_commands.Button_3, cockpit_device_id = devices.CLOCK, name = _('Input.Bf109K4.clock_scale_slider'), category = _('Front Dash')},

},
}
