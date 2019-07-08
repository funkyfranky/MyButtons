local cockpit = folder .. "../../../Cockpit/Scripts/"
dofile(cockpit .. "devices.lua")
dofile(cockpit .. "command_defs.lua")



return {
keyCommands = {
-- Temporary ------------------------------------------------------------------------------
{combos = {{key = 'Home', reformers = {'RWin'}}}, down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{combos = {{key = 'End', reformers = {'RWin'}}}, down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},
-- ----------------------------------------------------------------------------------------



-- Gameplay -------------------------------------------------------------------------------
{combos = {{key = 'Pause', reformers = {'LShift', 'LWin'}}},down = iCommandActivePauseOnOff, name = _('Pause Active'), category = _('General')},
{combos = {{key = 'Esc'}},                                  down = iCommandQuit, name = _('Exit mission'), category = _('General')},
{combos = {{key = 'B', reformers = {'LAlt'}}},              down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
{combos = {{key = 'J', reformers = {'RAlt'}}},              down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
{combos = {{key = 'Pause'}},                                down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LCtrl'}}},             down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LAlt'}}},              down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{combos = {{key = 'Z', reformers = {'LShift'}}},            down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{combos = {{key = '\''}},                                   down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{combos = {{key = '\'', reformers = {'RShift'}}},           down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LCtrl'}}},             down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{combos = {{key = 'Tab', reformers = {'RCtrl', 'RShift'}}}, down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{combos = {{key = 'SysRQ'}},                                down = iCommandScreenShot, name = _('Screenshot'), category = _('General'), disabled = true},
{                                                           down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RShift'}}},        down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{combos = {{key = 'Pause', reformers = {'RCtrl'}}},         down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{combos = {{key = 'Y', reformers = {'LAlt'}}},              down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
{combos = {{key = 'C', reformers = {'LAlt'}}},              down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{combos = {{key = 'Enter', reformers = {'RCtrl'}}},         down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
{combos = {{key = 'P', reformers = {'RShift'}}},            down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},

{combos = {{key = '\'', reformers = {'LAlt'}}},             down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{combos = {{key = 'S',	 reformers = {'LCtrl'}}},			down = iCommandSoundOnOff,			name = _('Sound On/Off'),	 category = _('General')},

-- ----------------------------------------------------------------------------------------

{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},


-- Communications -------------------------------------------------------------------------
{combos = {{key = 'E', reformers = {'LWin'}}},              down = iCommandPlaneDoAndHome, name = _('COMM Dispatch wingmans - complete mission and RTB (easy communication only)'), category = _('Communications')},
{combos = {{key = 'R', reformers = {'LWin'}}},              down = iCommandPlaneDoAndBack, name = _('COMM Dispatch wingmans - complete mission and rejoin (easy communication only)'), category = _('Communications')},
{combos = {{key = 'T', reformers = {'LWin'}}},              down = iCommandPlaneFormation, name = _('COMM Toggle formation (easy communication only)'), category = _('Communications')},
{combos = {{key = 'Y', reformers = {'LWin'}}},              down = iCommandPlaneJoinUp, name = _('COMM Join up formation (easy communication only)'), category = _('Communications')},
{combos = {{key = 'Q', reformers = {'LWin'}}},              down = iCommandPlaneAttackMyTarget, name = _('COMM Attack my target (easy communication only)'), category = _('Communications')},
{combos = {{key = 'W', reformers = {'LWin'}}},              down = iCommandPlaneCoverMySix, name = _('COMM Cover me (easy communication only)'), category = _('Communications')},
{combos = {{key = 'U', reformers = {'LWin'}}},              down = iCommandAWACSHomeBearing, name = _('COMM Ask AWACS home airbase (easy communication only)'), category = _('Communications')},
{combos = {{key = 'G', reformers = {'LWin'}}},              down = iCommandPlane_EngageGroundTargets, name = _('COMM Attack Ground Targets (easy communication only)'), category = _('Communications')},
{combos = {{key = 'D', reformers = {'LWin'}}},              down = iCommandPlane_EngageAirDefenses, name = _('COMM Attack Air Defenses (easy communication only)'), category = _('Communications')},
{combos = {{key = '\\'}},                                   down = iCommandToggleCommandMenu, name = _('COMM Communication menu'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RShift'}}},           down = ICommandSwitchDialog, name = _('COMM Switch dialog'), category = _('Communications')},
{combos = {{key = '\\', reformers = {'RCtrl'}}},            down = ICommandSwitchToCommonDialog, name = _('COMM Switch to main menu'), category = _('Communications')},
-- TODO move down and implement - Made Dragon
{combos = {{key = '\\', reformers = {'RAlt'}}},             down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},
-- ----------------------------------------------------------------------------------------



-- Views ----------------------------------------------------------------------------------
{combos = {{key = 'Num4'}},                                 pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'Num6'}},                                 pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'Num8'}},                                 pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'Num2'}},                                 pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'Num9'}},                                 pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'Num3'}},                                 pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'Num1'}},                                 pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'Num7'}},                                 pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'Num5'}},                                 pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{combos = {{key = 'Num*'}},                                 pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{combos = {{key = 'Num/'}},                                 pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{combos = {{key = 'NumEnter'}},                             down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'RCtrl'}}},          pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'RCtrl'}}},          pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{combos = {{key = 'NumEnter', reformers = {'RCtrl'}}},      down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{combos = {{key = 'Num*', reformers = {'LAlt'}}},           down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{combos = {{key = 'Num/', reformers = {'LAlt'}}},           down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},

{combos = {{key = 'F1'}},                                   down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LCtrl'}}},            down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LAlt'}}},             down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{combos = {{key = 'F2'}},                                   down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LCtrl'}}},            down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{combos = {{key = 'F2', reformers = {'RAlt'}}},             down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{combos = {{key = 'F2', reformers = {'LAlt'}}},             down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{combos = {{key = 'F3'}},                                   down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{combos = {{key = 'F3', reformers = {'LCtrl'}}},            down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{combos = {{key = 'F4'}},                                   down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LShift'}}},           down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{combos = {{key = 'F4', reformers = {'LCtrl'}}},            down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{combos = {{key = 'F5'}},                                   down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{combos = {{key = 'F5', reformers = {'LCtrl'}}},            down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{combos = {{key = 'F6'}},                                   down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{combos = {{key = 'F6', reformers = {'LCtrl'}}},            down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{combos = {{key = 'F7'}},                                   down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{combos = {{key = 'F7', reformers = {'LCtrl'}}},            down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},
--{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
--{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{combos = {{key = 'F9'}},                                   down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{combos = {{key = 'F9', reformers = {'LAlt'}}},             down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{combos = {{key = 'F10'}},                                  down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{combos = {{key = 'F10', reformers = {'LCtrl'}}},           down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{combos = {{key = 'F11'}},                                  down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{combos = {{key = 'F11', reformers = {'LCtrl'}}},           down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{combos = {{key = 'F12'}},                                  down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LCtrl'}}},           down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{combos = {{key = 'F12', reformers = {'LShift'}}},          down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{combos = {{key = 'F1', reformers = {'LWin'}}} ,            down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},

{combos = {{key = ']', reformers = {'LShift'}}},            down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{combos = {{key = ']', reformers = {'LCtrl'}}},             down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{combos = {{key = ']', reformers = {'LAlt'}}},              down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{combos = {{key = '[', reformers = {'LShift'}}},            down =  iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{combos = {{key = '[', reformers = {'LCtrl'}}},             down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{combos = {{key = '[', reformers = {'LAlt'}}},              down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},
-- ----------------------------------------------------------------------------------------



-- Cockpit View ---------------------------------------------------------------------------
{combos = {{key = 'Num0'}},                                 down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RCtrl'}}},          down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
{combos = {{key = 'Num0', reformers = {'RAlt'}}},           down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
{combos = {{key = 'Num8', reformers = {'RShift'}}},         pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RShift'}}},         pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RShift'}}},         pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RShift'}}},         pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RShift'}}},         pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RShift'}}},         pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RShift'}}},         pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RShift'}}},         pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RCtrl'}}},          down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl'}}},          down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl'}}},          down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl'}}},          down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RCtrl'}}},          down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RCtrl'}}},          down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RCtrl'}}},          down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RCtrl'}}},          down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},

{combos = {{key = 'Num8', reformers = {'RAlt'}}},           down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RAlt'}}},           down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RAlt'}}},           down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RAlt'}}},           down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'RAlt'}}},           down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'RAlt'}}},           down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'RAlt'}}},           down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'RAlt'}}},           down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RShift'}}},         down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl'}}},          down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RAlt'}}},           down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{combos = {{key = 'Num0', reformers = {'LWin'}}},           down = iCommandViewSnapView0,   up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{combos = {{key = 'Num1', reformers = {'LWin'}}},           down = iCommandViewSnapView1,   up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'LWin'}}},           down = iCommandViewSnapView2,   up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{combos = {{key = 'Num3', reformers = {'LWin'}}},           down = iCommandViewSnapView3,   up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'LWin'}}},           down = iCommandViewSnapView4,   up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'LWin'}}},           down = iCommandViewSnapView5,   up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'LWin'}}},           down = iCommandViewSnapView6,   up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{combos = {{key = 'Num7', reformers = {'LWin'}}},           down = iCommandViewSnapView7,   up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{combos = {{key = 'Num8', reformers = {'LWin'}}},           down = iCommandViewSnapView8,   up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{combos = {{key = 'Num9', reformers = {'LWin'}}},           down = iCommandViewSnapView9,   up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{combos = {{key = 'N', reformers = {'RWin'}}},              down = iCommandViewLeftMirrorOn ,   up = iCommandViewLeftMirrorOff , name = _('Mirror glance'), category = _('View Cockpit')},

{combos = {{key = 'Num*', reformers = {'RShift'}}},         pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RShift'}}},         pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Cockpit Camera Motion (������������ ������ � ������) -----------------------------------
{combos = {{key = 'Num8', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{combos = {{key = 'Num2', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{combos = {{key = 'Num4', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{combos = {{key = 'Num6', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{combos = {{key = 'Num*', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{combos = {{key = 'Num/', reformers = {'RCtrl','RShift'}}, {key = 'Num-', reformers = {'RCtrl','RShift'}}}, pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{combos = {{key = 'Num5', reformers = {'RCtrl','RShift'}}}, down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{                                                           down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
{combos = {{key = 'F1', reformers = {'LShift'}}},           down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Extended View --------------------------------------------------------------------------
{combos = {{key = 'J', reformers = {'LShift'}}},            down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{combos = {{key = 'K', reformers = {'LAlt'}}},              down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
{combos = {{key = 'Home', reformers = {'RCtrl','RShift'}}}, down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{combos = {{key = 'End', reformers = {'RCtrl' ,'RShift'}}}, down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'RCtrl'}}},        down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{combos = {{key = 'Num+', reformers = {'RCtrl'}}},          down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{combos = {{key = 'PageDown', reformers = {'LCtrl'}}},      down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{combos = {{key = 'PageUp', reformers = {'LCtrl'}}},        down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{combos = {{key = 'Delete', reformers = {'LAlt'}}},         down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{combos = {{key = 'Insert', reformers = {'LAlt'}}},         down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},
-- ----------------------------------------------------------------------------------------



-- Padlock --------------------------------------------------------------------------------
{combos = {{key = 'Num.', reformers = {'RShift'}}},         down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RAlt'}}},           down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
{combos = {{key = 'Num.'}},                                 down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
{combos = {{key = 'NumLock'}},                              down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
{combos = {{key = 'Num.', reformers = {'RCtrl'}}},          down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},
-- ----------------------------------------------------------------------------------------



-- Labels ---------------------------------------------------------------------------------
{combos = {{key = 'F10', reformers = {'LShift'}}},          down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
{combos = {{key = 'F2', reformers = {'LShift'}}},           down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
{combos = {{key = 'F6', reformers = {'LShift'}}},           down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
{combos = {{key = 'F9', reformers = {'LShift'}}},           down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},
-- ----------------------------------------------------------------------------------------



-- Flight Controls ------------------------------------------------------------------------
-- Steer Controls
{combos = {{key = 'Up'}},                                   down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _("Flight NOSE DOWN"), category = _('Flight Control')},
{combos = {{key = 'Down'}},                                 down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight NOSE UP'), category = _('Flight Control')},
{combos = {{key = 'Left'}},                                 down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight BANK LEFT'), category = _('Flight Control')},
{combos = {{key = 'Right'}},                                down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight BANK RIGHT'), category = _('Flight Control')},
{combos = {{key = 'Z'}},                                    down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight RUDDER LEFT'), category = _('Flight Control')},
{combos = {{key = 'X'}},                                    down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight RUDDER RIGHT'), category = _('Flight Control')},
{combos = {{key = ',', reformers = {'RShift'}}},            down = device_commands.Button_99, up = device_commands.Button_99, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER LEFT 1 NOTCH'), category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RShift'}}},            down = device_commands.Button_100, up = device_commands.Button_100, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER RIGHT 1 NOTCH'), category = _('Flight Control')},


-- Generic Flight Controls
{combos = {{key = 'E', reformers = {'LCtrl'}}},             down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Oxygen Apparatus -----------------------------------------------------------------------
-- Valve
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _("Input.SpitfireLFMkIX.oxygen_valve_1"), category = _('Systems')},
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.OXYGEN, value_down = 0.0, name = _('Input.SpitfireLFMkIX.oxygen_valve_0'), category = _('Systems')},
{                                                           down = device_commands.Button_4, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Input.SpitfireLFMkIX.oxygen_valve'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Joystick -------------------------------------------------------------------------------
-- Safety Lever
{combos = {{key = 'Space', reformers = {'LShift'}}},        down = device_commands.Button_2, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.safety'), category = _('Stick')},

-- Triggers
{combos = {{key = 'Space'}},                                down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Input.SpitfireLFMkIX.trigger_0'), category = _('Stick')},
{combos = {{key = 'Space', reformers = {'RAlt'}}},          down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Input.SpitfireLFMkIX.trigger_1'), category = _('Stick')},
{                                                           down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trigger_2'), category = _('Stick')},

-- Wheel Brakes Lever
{combos = {{key = 'W'}},                                    down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Input.SpitfireLFMkIX.wheel_brakes'), category = _('Stick')},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.wheel_brakes_plus'), category = _('Stick')},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0,  name = _('Input.SpitfireLFMkIX.wheel_brakes_minus'), category = _('Stick')},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_4, name = _('Input.SpitfireLFMkIX.wheel_brakes_slider', 'Wheel Brakes (analog)'), category = _('Stick')},
-- ----------------------------------------------------------------------------------------



-- Main Panel -----------------------------------------------------------------------------
-- Altimeter
{                                                           pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.altimeter_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.SpitfireLFMkIX.altimeter_plus'), category = _('Front Dash')},
-- TODO make available only in slider configuration:
--{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_39, name = _('Input.SpitfireLFMkIX.altimeter_slider', 'Altimeter Pressure Set (analog)'), category = _('Front Dash')},

-- DI
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.di_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.SpitfireLFMkIX.di_plus'), category = _('Front Dash')},

-- Fuel Gauge Button
{                                                           down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.fuel_gauge'), category = _('Front Dash')},

-- Nav. Lights Toggle
{combos = {{key = 'U', reformers = {'LShift'}}},            down = device_commands.Button_7, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.nav_lights_1'), category = _('Front Dash')},
{combos = {{key = 'U', reformers = {'LCtrl'}}},             down = device_commands.Button_7, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.nav_lights_0'), category = _('Front Dash')},
{combos = {{key = 'U'}},                                    down = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.nav_lights'), category = _('Front Dash')},

-- Flaps Lever
{combos = {{key = 'F', reformers = {'LShift'}}},            down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.flaps_1'), category = _('Flight Control')},
{combos = {{key = 'F', reformers = {'LCtrl'}}},             down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.flaps_0'), category = _('Flight Control')},
{combos = {{key = 'F'}},                                    down = device_commands.Button_10, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.flaps'), category = _('Flight Control')},

-- U/C Indicator Blind
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_blind_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.uc_blind_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_blind'), category = _('Front Dash')},

-- Clock Setter Pinion - Wind-up
{combos = {{key = 'Q', reformers = {'RCtrl'}}},             pressed = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.clock_minus'), category = _('Front Dash')},
{combos = {{key = 'Q', reformers = {'RAlt'}}},              pressed = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.clock_plus'), category = _('Front Dash')},
-- Clock Setter Pinion - Pull
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.clock_mode_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.clock_mode_0'), category = _('Front Dash')},
{combos = {{key = 'Q', reformers = {'RShift'}}},            down = device_commands.Button_98, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.clock_mode'), category = _('Front Dash')},

-- Magnetos Toggles
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.magneto0_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto0_1'), category = _('Engine Controls')},
{combos = {{key = 'End', reformers = {'LShift'}}},          down = device_commands.Button_16, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.magneto1_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto1_1'), category = _('Engine Controls')},
{combos = {{key = 'End', reformers = {'RShift'}}},          down = device_commands.Button_18, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto1'), category = _('Engine Controls')},

-- Supercharger Mode Toggle
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_mode_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.supercharger_mode_0'), category = _('Engine Controls')},
{combos = {{key = 'S', reformers = {'RShift'}}},            down = device_commands.Button_20, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_mode'), category = _('Engine Controls')},

-- Illumination Controls - LH Rheostat
{combos = {{key = 'N', reformers = {'LShift'}}},            pressed = device_commands.Button_2, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.illumination_lh_plus'), category = _('Cockpit Illumination')},
{combos = {{key = 'N', reformers = {'LCtrl'}}},             pressed = device_commands.Button_2, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.illumination_lh_minus'), category = _('Cockpit Illumination')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_3, cockpit_device_id = devices.TERTIARY_CONTROLS, name = _('Input.SpitfireLFMkIX.illumination_lh_slider', 'LH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},
-- Illumination Controls - RH Rheostat
{combos = {{key = 'N', reformers = {'RShift'}}},            pressed = device_commands.Button_5, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.illumination_rh_plus'), category = _('Cockpit Illumination')},
{combos = {{key = 'N', reformers = {'RCtrl'}}},             pressed = device_commands.Button_5, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.illumination_rh_minus'), category = _('Cockpit Illumination')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_6, cockpit_device_id = devices.TERTIARY_CONTROLS, name = _('Input.SpitfireLFMkIX.illumination_rh_slider', 'RH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},

-- Starter Button Cover
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.starter_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.starter_cover_0'), category = _('Engine Controls')},
{combos = {{key = 'Home', reformers = {'LShift'}}},         down = device_commands.Button_22, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.starter_cover'), category = _('Engine Controls')},
-- Starter Button
{combos = {{key = 'Home'}},                                 down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.starter'), category = _('Engine Controls')},

-- Booster Coil Button Cover
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.booster_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.booster_cover_0'), category = _('Engine Controls')},
{combos = {{key = 'Delete', reformers = {'LShift'}}},       down = device_commands.Button_26, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.booster_cover'), category = _('Engine Controls')},
-- Booster Coil Button
{combos = {{key = 'Delete'}},                               down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.booster'), category = _('Engine Controls')},

-- Primer Pump
{combos = {{key = 'Insert', reformers = {'LShift'}}},       down = device_commands.Button_31, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.primer_lock'), category = _('Engine Controls')},
{combos = {{key = 'Insert'}},                               down = device_commands.Button_32, up = device_commands.Button_30, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.primer'), category = _('Engine Controls')},

-- Tank Pressurizer Lever
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer_1'), category = _('Systems')},
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer_0'), category = _('Systems')},
{                                                           down = device_commands.Button_34, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Magnetic Compass -----------------------------------------------------------------------
{combos = {{key = 'C', reformers = {'RAlt'}}},              pressed = device_commands.Button_18, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.compass_minus'), category = _('Front Dash')},
{combos = {{key = 'C', reformers = {'RCtrl'}}},             pressed = device_commands.Button_18, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Input.SpitfireLFMkIX.compass_plus'), category = _('Front Dash')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_19, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.compass_slider', 'Compass Course (analog)'), category = _('Front Dash')},
-- ----------------------------------------------------------------------------------------



-- Gun Sight and Tertiary Weapons Controls ------------------------------------------------
-- Gun Sight Setter Rings - Range
{combos = {{key = 'O', reformers = {'RShift'}}},            pressed = device_commands.Button_8, cockpit_device_id = devices.WEAPONS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_range_plus'), category = _('Gunsight')},
{combos = {{key = 'O', reformers = {'RCtrl'}}},             pressed = device_commands.Button_8, cockpit_device_id = devices.WEAPONS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.gun_sight_range_minus'), category = _('Gunsight')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_9, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_range_slider', 'Gunsight Range (analog)'), category = _('Gunsight')},
-- Gun Sight Setter Rings - Base
{combos = {{key = 'O', reformers = {'LShift'}}},            pressed = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_span_plus'), category = _('Gunsight')},
{combos = {{key = 'O', reformers = {'LCtrl'}}},             pressed = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.gun_sight_span_minus'), category = _('Gunsight')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_12, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_span_slider', 'Gunsight Base (analog)'), category = _('Gunsight')},
-- Gun Sight Tint Screen
{                                                           down = device_commands.Button_16, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_tint_1'), category = _('Gunsight')},
{                                                           down = device_commands.Button_16, cockpit_device_id = devices.WEAPONS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.gun_sight_tint_0'), category = _('Gunsight')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_tint'), category = _('Gunsight')},
-- Gun Sight Master Switch
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_master_1'), category = _('Gunsight')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.WEAPONS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.gun_sight_master_0'), category = _('Gunsight')},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_master'), category = _('Gunsight')},
-- Gun Sight Dimmer
{                                                           pressed = device_commands.Button_21, cockpit_device_id = devices.WEAPONS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_illumination_plus'), category = _('Gunsight')},
{                                                           pressed = device_commands.Button_21, cockpit_device_id = devices.WEAPONS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.gun_sight_illumination_minus'), category = _('Gunsight')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_22, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_illumination_slider'), category = _('Gunsight')},
-- ----------------------------------------------------------------------------------------



-- Port Wall ------------------------------------------------------------------------------
-- Elevator Trim Wheel
{combos = {{key = '.', reformers = {'RCtrl'}}},             down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_elevator_minus'), category = _('Flight Control')},
{combos = {{key = ';', reformers = {'RCtrl'}}},             down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_elevator_plus'), category = _('Flight Control')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.trim_elevator_slider', 'Trim Elevator (analog)'), category = _('Flight Control')},
-- Rudder Trim Wheel
{combos = {{key = ',', reformers = {'RCtrl'}}},             down = device_commands.Button_45, up = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_rudder_minus'), category = _('Flight Control')},
{combos = {{key = '/', reformers = {'RCtrl'}}},             down = device_commands.Button_47, up = device_commands.Button_47, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_rudder_plus'), category = _('Flight Control')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.trim_rudder_slider', 'Trim Rudder (analog)'), category = _('Flight Control')},

-- Radio Remote Channel Switcher - Off Button
{combos = {{key = '`', reformers = {'LCtrl'}}},             down = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_0'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - A Button
{combos = {{key = '1', reformers = {'LCtrl'}}},             down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_a'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - B Button
{combos = {{key = '2', reformers = {'LCtrl'}}},             down = device_commands.Button_11, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_b'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - C Button
{combos = {{key = '3', reformers = {'LCtrl'}}},             down = device_commands.Button_12, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_c'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - D Button
{combos = {{key = '4', reformers = {'LCtrl'}}},             down = device_commands.Button_13, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_d'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Dimmer Toggle
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_0'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Transmit Lock Toggle
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_lock_0'), category = _('VHF Radio')},
{combos = {{key = '5', reformers = {'LCtrl', 'LAlt'}}},     down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Mode Selector
{combos = {{key = '5', reformers = {'LAlt'}}},              down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_t'), category = _('VHF Radio')},
{combos = {{key = '5', reformers = {'LCtrl'}}},             down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_r'), category = _('VHF Radio')},
{combos = {{key = '5', reformers = {'LShift'}}},            down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_mode_rem'), category = _('VHF Radio')},

-- Throttle Quadrant - Throttle Lever
{combos = {{key = 'Num+'}},                                 pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.throttle_plus'), category = _('Engine Controls')},
{combos = {{key = 'Num-'}},                                 pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.throttle_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_5, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.SpitfireLFMkIX.throttle_slider', 'Throttle (analog)'), category = _('Engine Controls')},
-- Throttle Quadrant - Bomb Drop Button
{combos = {{key = 'Space', reformers = {'RShift'}}},        down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trigger_bomb'), category = _('Systems')},
-- Throttle Quadrant - Airscrew Lever
{combos = {{key = 'PageUp'}},                               pressed = device_commands.Button_7, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.pitch_plus'), category = _('Engine Controls')},
{combos = {{key = 'PageDown'}},                             pressed = device_commands.Button_7, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.pitch_minus'), category = _('Engine Controls')},
-- TODO make available only in slider configuration:
--{                                                           action = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.SpitfireLFMkIX.pitch_slider', 'Engine RPM (analog)'), category = _('Engine Controls')},
-- Throttle Quadrant - Mix Cut-Off Lever
{combos = {{key = 'M', reformers = {'LShift'}}},            down = device_commands.Button_9, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.mix_0'), category = _('Engine Controls')},
{combos = {{key = 'M', reformers = {'LCtrl'}}},             down = device_commands.Button_9, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.mix_1'), category = _('Engine Controls')},
{combos = {{key = 'M'}},                                    down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.mix'), category = _('Engine Controls')},
-- Throttle Quadrant - U/C Indicator Cut-Off Toggle
{                                                           down = device_commands.Button_99, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_down_indication_1'), category = _('Systems')},
{                                                           down = device_commands.Button_99, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.uc_down_indication_0'), category = _('Systems')},
{                                                           down = device_commands.Button_100, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_down_indication'), category = _('Systems')},

-- Radiator Control Toggle
{combos = {{key = 'A', reformers = {'LShift'}}},            down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_mode_1'), category = _('Systems')},
{combos = {{key = 'A', reformers = {'LCtrl'}}},             down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radiator_mode_0'), category = _('Systems')},
{combos = {{key = 'A'}},                                    down = device_commands.Button_34, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_mode'), category = _('Systems')},

-- Pitot Heater Toggle
{combos = {{key = 'P', reformers = {'LShift'}}},            down = device_commands.Button_35, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.pitot_1'), category = _('Systems')},
{combos = {{key = 'P', reformers = {'LCtrl'}}},             down = device_commands.Button_35, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.pitot_0'), category = _('Systems')},
{combos = {{key = 'P'}},                                    down = device_commands.Button_36, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.pitot'), category = _('Systems')},

-- Fuel Pump Toggle
{combos = {{key = '0', reformers = {'LShift'}}},            down = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_pump_1'), category = _('Engine Controls')},
{combos = {{key = '0', reformers = {'LCtrl'}}},             down = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_pump_0'), category = _('Engine Controls')},
{combos = {{key = '0'}},                                    down = device_commands.Button_44, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_pump'), category = _('Engine Controls')},

-- Carb. Air Control Lever
{combos = {{key = 'H', reformers = {'LShift'}}},            down = device_commands.Button_45, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.carburettor_flap_1'), category = _('Engine Controls')},
{combos = {{key = 'H', reformers = {'LCtrl'}}},             down = device_commands.Button_45, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.carburettor_flap_0'), category = _('Engine Controls')},
{combos = {{key = 'H'}},                                    down = device_commands.Button_46, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.carburettor_flap'), category = _('Engine Controls')},

-- Oil Diluter Button Cover
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.dilution_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.dilution_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.dilution_cover'), category = _('Engine Controls')},
-- Oil Diluter Button
{                                                           down = device_commands.Button_53, up = device_commands.Button_53, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.dilution'), category = _('Engine Controls')},

-- Supercharger Mode Test Button Cover
{                                                           down = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_55, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.supercharger_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_56, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_cover'), category = _('Engine Controls')},
-- Supercharger Mode Test Button
{                                                           down = device_commands.Button_57, up = device_commands.Button_57, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.supercharger_test'), category = _('Engine Controls')},

-- Radiator Flap Test Button Cover
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radiator_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_60, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_cover'), category = _('Engine Controls')},
-- Radiator Flap Test Button
{                                                           down = device_commands.Button_61, up = device_commands.Button_61, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.radiator_test'), category = _('Engine Controls')},
-- ----------------------------------------------------------------------------------------



-- Stbd. Wall -----------------------------------------------------------------------------
-- De-Icer Lever
{combos = {{key = 'P', reformers = {'LShift', 'LAlt'}}},    down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.deicer_1'), category = _('Systems')},
{combos = {{key = 'P', reformers = {'LCtrl', 'LAlt'}}},     down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.deicer_0'), category = _('Systems')},
{combos = {{key = 'P', reformers = {'LAlt'}}},              down = device_commands.Button_22, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.deicer'), category = _('Systems')},

-- U/C Emergency Release Lever
{combos = {{key = 'G', reformers = {'LShift', 'LCtrl'}}},   down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.uc_emergency'), category = _('Systems')},

-- Wobble Type Fuel Pump
{combos = {{key = 'Insert', reformers = {'LCtrl'}}},        down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.wobble'), category = _('Engine Controls')},

-- Morse Key & Apparatus - Upward Lamp Mode Selector
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.id_lamp_up_mode_2'), category = _('Radio')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.5, name = _('Input.SpitfireLFMkIX.id_lamp_up_mode_0'), category = _('Radio')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_up_mode_1'), category = _('Radio')},
{                                                           down = device_commands.Button_8, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_up_mode_plus'), category = _('Radio')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_up_mode_minus'), category = _('Radio')},
-- Morse Key & Apparatus - Downward Lamp Mode Selector
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.id_lamp_down_mode_2'), category = _('Radio')},
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.5, name = _('Input.SpitfireLFMkIX.id_lamp_down_mode_0'), category = _('Radio')},
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_down_mode_1'), category = _('Radio')},
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_down_mode_plus'), category = _('Radio')},
{                                                           down = device_commands.Button_14, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.id_lamp_down_mode_minus'), category = _('Radio')},
-- Morse Key & Apparatus - Morse Key
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.morse_key'), category = _('Radio')},

-- U/C Lever
{                                                           down = device_commands.Button_25, cockpit_device_id  = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.uc_0'), category = _('Systems')},
{                                                           down = device_commands.Button_25, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_1'), category = _('Systems')},
{combos = {{key = 'G'}},                                    down = device_commands.Button_26, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc'), category = _('Systems')},

-- I.F.F. Control Box - I.F.F. Upper Toggle (Type B)
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_b_1'), category = _('IFF')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.iff_b_0'), category = _('IFF')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_b'), category = _('IFF')},
-- I.F.F. Control Box - I.F.F. Lower Toggle (Type D)
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_d_1'), category = _('IFF')},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.iff_d_0'), category = _('IFF')},
{                                                           down = device_commands.Button_20, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_d'), category = _('IFF')},
-- I.F.F. Control Box - I.F.F. Protective Cover
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_cover_1'), category = _('IFF')},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.iff_cover_0'), category = _('IFF')},
{                                                           down = device_commands.Button_22, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.iff_cover'), category = _('IFF')},
-- I.F.F. Control Box - I.F.F. Fore Button (0)
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.iff_0'), category = _('IFF')},
-- I.F.F. Control Box - I.F.F. Aft Button (1)
{                                                           down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.TERTIARY_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.iff_1'), category = _('IFF')},
-- ----------------------------------------------------------------------------------------



-- Fuel Cocks & Tertiary ------------------------------------------------------------------
-- Fuel Cock
{combos = {{key = 'T', reformers = {'LShift'}}},            down = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary_1'), category = _('Engine Controls')},
{combos = {{key = 'T', reformers = {'LCtrl'}}},             down = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary_0'), category = _('Engine Controls')},
{combos = {{key = 'T'}},                                    down = device_commands.Button_38, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary'), category = _('Engine Controls')},

-- Droptank Cock
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank'), category = _('Engine Controls')},

-- Droptank Release Handle
{combos = {{key = 'T', reformers = {'LShift', 'LCtrl'}}},   down = device_commands.Button_13, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.droptank_release'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Canopy Controls ------------------------------------------------------------------------
-- Canopy Movement Controls
{combos = {{key = 'C', reformers = {'LShift'}}},            down = device_commands.Button_51, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.canopy_1'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LCtrl'}}},             down = device_commands.Button_51, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.canopy_0'), category = _('Systems')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.canopy'), category = _('Systems')},

-- Cockpit Jettison Pull Ball
{combos = {{key = 'C', reformers = {'LShift', 'LCtrl'}}},   down = device_commands.Button_57, up = device_commands.Button_57, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.canopy_jettison'), category = _('Systems')},

-- Side Door Movement Controls
{combos = {{key = 'C', reformers = {'LShift', 'LAlt'}}},    down = device_commands.Button_59, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.sidedoor_1'), category = _('Systems')},
{combos = {{key = 'C', reformers = {'LCtrl', 'LAlt'}}},     down = device_commands.Button_59, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.sidedoor_0'), category = _('Systems')},
{                                                           down = device_commands.Button_60, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.sidedoor'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Knee-board -----------------------------------------------------------------------------
{combos = {{key = ']'}},                                    down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page'), category = _('Kneeboard')},
{combos = {{key = '['}},                                    down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RShift'}}},            down = iCommandPlaneShowKneeboard, name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{combos = {{key = 'K'}},                                    down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard, value_down = 1.0, value_up = -1.0, name = _('Kneeboard glance view'), category = _('Kneeboard')},
{combos = {{key = 'K', reformers = {'RCtrl'}}} ,            down = device_commands.Button_3, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard current position mark point'), category = _('Kneeboard')},
-- ----------------------------------------------------------------------------------------

-- Night Vision Goggles -------------------------------------------------------------------
{combos = {{key = 'H', reformers = {'RShift'}}},            down = iCommandViewNightVisionGogglesOn, name = _('Night Vision Goggles'), category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift', 'RCtrl'}}},   pressed = iCommandPlane_Helmet_Brightess_Up, name = _('Night Vision Goggles Gain Up'), category = _('Sensors')},
{combos = {{key = 'H', reformers = {'RShift', 'RAlt'}}},    pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},
-- ----------------------------------------------------------------------------------------

-- FAC ------------------------------------------------------------------------------------
--{combos = {{key = 'B', reformers = {'LWin'}}},              down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
--{combos = {{key = 'L', reformers = {'LAlt'}}},              down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
--{combos = {{key = 'Z', reformers = {'LWin'}}},              down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
-- ----------------------------------------------------------------------------------------
},
}
