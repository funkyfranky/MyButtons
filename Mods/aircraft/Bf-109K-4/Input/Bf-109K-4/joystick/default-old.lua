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

-- fvh
{down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('LH Radiator Cut-Off On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_45, up = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('RH Radiator Cut-Off On/Off'), category = _('_My Buttons')},

-- Engine Controls & Throttle Quadrant ----------------------------------------------------
-- E 103 Propellor Automation Switch
{down = device_commands.Button_58, up = device_commands.Button_58, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Governor Automation On/Off'), category = _('_My Buttons')},
-- Cold Weather Start Valve Handle
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Engine Cold Weather Start On/Off'), category = _('_My Buttons')},

-- Fuel System Controls -------------------------------------------------------------------
-- Schnellstop
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Engine Cut-Off On/Off'), category = _('_My Buttons')},
-- MW Stoff - Kraftstoff Valve Lever
{down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Fuel Switch FUEL/MW'), category = _('_My Buttons')},
-- Stoff Tank Dump Valve Pull Handle
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Fuel/MW Jettison On/Off'), category = _('_My Buttons')},

{down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.OXYGEN, value_down = 1.0, value_up = 0.0, name = _('Oxygen Operating Valve Open/Close'), category = _('_My Buttons')},

        -- T 100 MW 50 Operating Switch
{down = device_commands.Button_36, up = device_commands.Button_36, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('MW 50 Boost System On/Off'), category = _('_My Buttons')},

        -- P 150 Wing Armament Switch
{down = device_commands.Button_34, up = device_commands.Button_34, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Wing Cannons On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('SZKK 3 Weapon Control On/Off'), category = _('_My Buttons')},

-- V 114 MK 108 / R 21 Switch
{down = device_commands.Button_81, up = device_commands.Button_81, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Cannon/Rockets Rockets/Cannons'), category = _('_My Buttons')},

{down = device_commands.Button_1,  up = device_commands.Button_2,  cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 1.0, name = _('Undercarriage Plunger Up/Down'), category = _('_My Buttons')},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Tail Wheel Locked/Free'), category = _('_My Buttons')},


        -- Temporary ------------------------------------------------------------------------------        
        {															down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
        {															down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},

        {															down = device_commands.Button_1,up = device_commands.Button_1, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0,value_up = 0.0, name = _('Signal Starter Crew'), category = _('Engine Controls')},
        -- ----------------------------------------------------------------------------------------



        -- Gameplay -------------------------------------------------------------------------------
        {															down = iCommandActivePauseOnOff, name = _('Pause Active'), category = _('General')},
        {															down = iCommandQuit, name = _('Exit mission'), category = _('General')},
        {															down = iCommandViewBriefing, name = _('Briefing window'), category = _('General')},
        {															down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},
        {															down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
        {															down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
        {															down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
        {															down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
        {															down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
        {															down = iCommandDebriefing, name = _('Show debriefing window'), category = _('General')},
        {															down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
        {															down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
        {															down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
        {															down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
        {															down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
        {															down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
        {															down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
        {															down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
        {															down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},
        {															down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
        -- ----------------------------------------------------------------------------------------



        -- Communications -------------------------------------------------------------------------
        {															down = iCommandPlaneDoAndHome, name = _('COMM Dispatch wingmans - complete mission and RTB (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlaneDoAndBack, name = _('COMM Dispatch wingmans - complete mission and rejoin (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlaneFormation, name = _('COMM Toggle formation (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlaneJoinUp, name = _('COMM Join up formation (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlaneAttackMyTarget, name = _('COMM Attack my target (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlaneCoverMySix, name = _('COMM Cover me (easy communication only)'), category = _('Communications')},
        {															down = iCommandAWACSHomeBearing, name = _('COMM Ask AWACS home airbase (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlane_EngageGroundTargets, name = _('COMM Attack Ground Targets (easy communication only)'), category = _('Communications')},
        {															down = iCommandPlane_EngageAirDefenses, name = _('COMM Attack Air Defenses (easy communication only)'), category = _('Communications')},
        {															down = iCommandToggleCommandMenu, name = _('COMM Communication menu'), category = _('Communications')},
        {															down = ICommandSwitchDialog, name = _('COMM Switch dialog'), category = _('Communications')},
        {															down = ICommandSwitchToCommonDialog, name = _('COMM Switch to main menu'), category = _('Communications')},
        -- TODO move down and implement - Made Dragon
        {															down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},
        -- ----------------------------------------------------------------------------------------



        -- Views ----------------------------------------------------------------------------------
		{combos = {{key = 'JOY_BTN_POV1_L'}}, 						pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_R'}}, 						pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_U'}}, 						pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_D'}}, 						pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_UR'}}, 						pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_DR'}}, 						pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_DL'}}, 						pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
		{combos = {{key = 'JOY_BTN_POV1_UL'}}, 						pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
		{                                                           pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

        {															pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
        {															pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
        {															down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
        {															pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
        {															pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
        {															down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
        {															down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
        {															down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},
         															
        {															down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
        {															down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
        {															down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
        {															down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
        {															down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
        {															down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
        {															down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
        {															down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
        {															down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
        {															down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
        {															down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
        {															down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
        {															down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
        {															down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
        {															down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
        {															down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
        {															down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
        {															down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},
        --{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
        --{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
        {															down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
        {															down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
        {															down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
        {															down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
        {															down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
        {															down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
        {															down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
        {															down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
        {															down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
        {															down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},
         															
        {															down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
        {															down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
        {															down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
        {															down =  iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
        {															down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
        {															down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},
        -- ----------------------------------------------------------------------------------------



        -- Cockpit View ---------------------------------------------------------------------------
        {															down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
        {															down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
        {															down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
        {															pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
        {															pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
        {															pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
        {															pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
        {															pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
        {															pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
        {															pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
        {															pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},
         															
        {															down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
        {															down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
        {															down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
        {															down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
        {															down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},
         															
        {															down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
        {															down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
        {															down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
        {															down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},
         															
        {															down = iCommandViewSnapView0,   up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView1,   up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView2,   up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView3,   up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView4,   up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView5,   up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView6,   up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView7,   up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView8,   up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
        {															down = iCommandViewSnapView9,   up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},
         															
        {															down = iCommandViewLeftMirrorOn ,   up = iCommandViewLeftMirrorOff , name = _('Mirror glance'), category = _('View Cockpit')},
         															
        {															pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
        {															pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},
        -- ----------------------------------------------------------------------------------------



        -- Cockpit Camera Motion (������������ ������ � ������) -----------------------------------
        {															pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
        {															pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
        {															pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
        {															pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
        {															pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
        {															pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
        {															down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},
         															
        {															down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
        {															down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
        -- ----------------------------------------------------------------------------------------



        -- Extended View --------------------------------------------------------------------------
        {															down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
        {															down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
        {															down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
        {															down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
        {															down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
        {															down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
        {															down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
        {															down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
        {															down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
        {															down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},
        -- ----------------------------------------------------------------------------------------



        -- Padlock --------------------------------------------------------------------------------
        {															down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
        {															down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
        {															down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
        {															down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
        {															down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},
        -- ----------------------------------------------------------------------------------------



        -- Labels ---------------------------------------------------------------------------------
        {															down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
        {															down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
        {															down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
        {															down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},
        -- ----------------------------------------------------------------------------------------



        -- Stick Buttons --------------------------------------------------------------------------
        -- Trigger Buttons
        {combos = {{key = 'JOY_BTN1', reformers = {'LShift'}}},     down = device_commands.Button_74, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Guns Safety Lever (toggle)'), category = _('Stick')},
        {combos = {{key = 'JOY_BTN1'}},     						down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Fire Machineguns (A)'), category = _('Stick')},
        {combos = {{key = 'JOY_BTN2'}},     						down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Fire Cannon / Rockets (B1)'), category = _('Stick')},
        {															down = device_commands.Button_53, up = device_commands.Button_53, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Bomb Release (B2)'), category = _('Stick')},
        {															down = device_commands.Button_54, up = device_commands.Button_54, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Gun Camera (T)'), category = _('Stick')},

        -- Charge Button
        {															down = device_commands.Button_55, up = device_commands.Button_55, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Charge MK 108 (D)'), category = _('Stick')},
        
        -- ----------------------------------------------------------------------------------------



        -- Flight Controls ------------------------------------------------------------------------
        -- Steer Controls
        {															down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Flight NOSE DOWN'), category = _('Flight Control')},
        {															down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight NOSE UP'), category = _('Flight Control')},
        {															down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight BANK LEFT'), category = _('Flight Control')},
        {															down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight BANK RIGHT'), category = _('Flight Control')},
        {															down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight RUDDER LEFT'), category = _('Flight Control')},
        {															down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight RUDDER RIGHT'), category = _('Flight Control')},

        -- Trim Controls
        {															down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Trim Stabilizer NOSE UP'), category = _('Flight Control')},
        {															down = device_commands.Button_9, up = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Trim Stabilizer NOSE DOWN'), category = _('Flight Control')},

        -- Generic Flight Controls
        {															down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},
        -- ----------------------------------------------------------------------------------------



        -- Fuse Box -------------------------------------------------------------------------------
        -- A 100 Generator Cut-Off
        {															down = device_commands.Button_75, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Generator ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_92, up = device_commands.Button_92, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Generator OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_76, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Generator (toggle)'), category = _('Right Switch Panel')},

        -- D 100 Pitot / Heating CB
        {															down = device_commands.Button_12, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Pitot / Windscreen Heating ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_12, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Pitot / Windscreen Heating OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_13, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Pitot / Windscreen Heating (toggle)'), category = _('Right Switch Panel')},

        -- C 100 Nav. Lights CB
        {															down = device_commands.Button_6, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Nav. Lights ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_6, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Nav. Lights OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_7, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Nav. Lights (toggle)'), category = _('Right Switch Panel')},

        -- C 101 Pit Lights CB
        {															down = device_commands.Button_9, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Dashboard UV Lights ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_9, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Dashboard UV Lights OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_10, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Dashboard UV Lights (toggle)'), category = _('Right Switch Panel')},

        -- V 101 Ordnance CB
        {															down = device_commands.Button_24, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Wing / Drop Ordnance ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_24, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Wing / Drop Ordnance OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_25, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Wing / Drop Ordnance (toggle)'), category = _('Right Switch Panel')},

        -- V 100 Ignition / Systematic CB
        {															down = device_commands.Button_3, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Ignition ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_3, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Ignition OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_4, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Ignition (toggle)'), category = _('Right Switch Panel')},

        -- Spotlights CB
        -- TODO implement if any - Made Dragon
        --{                                                           down = device_commands.Button_27, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Spotlights ON'), category = _('Right Switch Panel')},
        --{                                                           down = device_commands.Button_27, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Spotlights OFF'), category = _('Right Switch Panel')},
        --{                                                           down = device_commands.Button_28, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Spotlights (toggle)'), category = _('Right Switch Panel')},

        -- A 101 Battery Cut-Off
        {															down = device_commands.Button_78, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Battery ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_78, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Battery OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_79, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Battery (toggle)'), category = _('Right Switch Panel')},

        -- F 135 FuG 16 zu / Radio CB
        {															down = device_commands.Button_18, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Radio Transceiver ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_18, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Radio Transceiver OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_19, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Radio Transceiver (toggle)'), category = _('Right Switch Panel')},

        -- F 211 FuG25a / IFF CB
        {															down = device_commands.Button_21, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('IFF Transceiver ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_21, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('IFF Transceiver OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_22, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('IFF Transceiver (toggle)'), category = _('Right Switch Panel')},

        -- E 101 Fuel Pump CB
        {															down = device_commands.Button_15, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Fuel Pump(s) ON'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_15, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Fuel Pump(s) OFF'), category = _('Right Switch Panel')},
        {															down = device_commands.Button_16, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Fuel Pump(s) (toggle)'), category = _('Right Switch Panel')},
        -- ----------------------------------------------------------------------------------------



        -- Dashboard Electrical -------------------------------------------------------------------
        -- A 104 Kill Switch
        {															down = device_commands.Button_1, up = device_commands.Button_1, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Kill Switch'), category = _('Front Dash')},

        -- P 102 SZKK3 Master Switch
        {															down = device_commands.Button_32, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('SZKK 3 Weapon Control ON'), category = _('Front Dash')},
        {															down = device_commands.Button_32, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('SZKK 3 Weapon Control OFF'), category = _('Front Dash')},
        {															down = device_commands.Button_33, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('SZKK 3 Weapon Control (toggle)'), category = _('Front Dash')},

        -- P 102 / LH SZ 500 Counter Pinion
        {															pressed = device_commands.Button_2, cockpit_device_id = devices.WEAPONS_CONTROLS, value_pressed = 1.0, name = _('SZKK 3 LH Ammo Counter INCREASE'), category = _('Front Dash')},
        {															pressed = device_commands.Button_2, cockpit_device_id = devices.WEAPONS_CONTROLS, value_pressed = -1.0, name = _('SZKK 3 LH Ammo Counter DECREASE'), category = _('Front Dash')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_3, cockpit_device_id = devices.WAPONS_CONTROLS, name = _('SZKK 3 LH Ammo Counter (analog)'), category = _('Front Dash')},

        -- P 102 / RH SZ 500 Counter Pinion
        {															pressed = device_commands.Button_5, cockpit_device_id = devices.WEAPONS_CONTROLS, value_pressed = 1.0, name = _('SZKK 3 RH Ammo Counter INCREASE'), category = _('Front Dash')},
        {															pressed = device_commands.Button_5, cockpit_device_id = devices.WEAPONS_CONTROLS, value_pressed = -1.0, name = _('SZKK 3 RH Ammo Counter DECREASE'), category = _('Front Dash')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_6, cockpit_device_id = devices.WAPONS_CONTROLS, name = _('SZKK 3 RH Ammo Counter (analog)'), category = _('Front Dash')},

        -- T 100 MW 50 Operating Switch
        {                                                           down = device_commands.Button_36, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('MW 50 Boost System ON'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_36, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('MW 50 Boost System OFF'), category = _('Front Dash')},
        {															down = device_commands.Button_37, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('MW 50 Boost System (toggle)'), category = _('Front Dash')},

        -- P 150 Wing Armament Switch
        {															down = device_commands.Button_34, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Wing Cannons ON'), category = _('Front Dash')},
        {															down = device_commands.Button_34, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Wing Cannons OFF'), category = _('Front Dash')},
        {															down = device_commands.Button_35, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Wing Cannons (toggle)'), category = _('Front Dash')},

        -- V 114 MK 108 / R 21 Switch
        {															down = device_commands.Button_81, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Cannon/Rockets ROCKETS'), category = _('Front Dash')},
        {															down = device_commands.Button_81, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Cannon/Rockets CANNON'), category = _('Front Dash')},
        {															down = device_commands.Button_82, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Cannon/Rockets (toggle)'), category = _('Front Dash')},

        -- R 101 SZK 244 A Bomb Panel Master Switch
        -- Operated internally via ZSK 244 A Mode Control
        -- R 101 ZSK 244 A Mode Selector
        {                                                           down = device_commands.Button_14, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Bomb Fusing Selector NEXT MODE'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_16, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Bomb Fusing Selector PREVIOUS MODE'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.0, name = _('Bomb Fusing Selector DIVE (INSTANT)'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.25, name = _('Bomb Fusing Selector DIVE (DELAYED)'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.5, name = _('Bomb Fusing Selector OFF'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.75, name = _('Bomb Fusing Selector LEVEL (DELAYED)'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_15, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Bomb Fusing Selector LEVEL (INSTANT)'), category = _('Front Dash')},
        -- ----------------------------------------------------------------------------------------



        -- Dashboard Mechanical -------------------------------------------------------------------
        -- Clock Scale
        {                                                           pressed = device_commands.Button_52, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Clock Turn Scale CLOCKWISE'), category = _('Front Dash')},
        {                                                           pressed = device_commands.Button_52, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Clock Turn Scale COUNTERCLOCKWISE'), category = _('Front Dash')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_53, cockpit_device_id = devices.CONTROLS, name = _('Clock Turn Scale (analog)'), category = _('Front Dash')},
        -- Clock Setter Pinion
        {															pressed = device_commands.Button_55, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Clock Winding/Adjust DECREASE'), category = _('Front Dash')},
        {															pressed = device_commands.Button_55, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Clock Winding/Adjust INCREASE'), category = _('Front Dash')},
        -- Clock Freeze Lever
        {                                                           down = device_commands.Button_56, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Clock Winding/Adjust ADJUST'), category = _('Front Dash')},
        {                                                           down = device_commands.Button_56, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Clock Winding/Adjust WINDING'), category = _('Front Dash')},
        {															down = device_commands.Button_57, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Clock Winding/Adjust TOGGLE'), category = _('Front Dash')},
        -- Clock Stopwatch Button
        {                                                           down = device_commands.Button_58, up = device_commands.Button_58, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Clock Start/Stop/Reset Chronometer'), category = _('Front Dash')},
		
		--Remote compass 
		{															pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = -1.0, name = _('Compass course Decrease'), category = _('Front Dash')},
		{															pressed = device_commands.Button_2, cockpit_device_id = devices.REMOTE_COMPASS, value_pressed = 1.0,  name = _('Compass course Increase'), category = _('Front Dash')},

		--Gyro Horizon Indicator
		{															pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed = -1.0, name = _('Horizon Cage Decrease'), category = _('Front Dash')},
		{															pressed = device_commands.Button_2, cockpit_device_id  = devices.ARTIFICIAL_HORIZON, value_pressed =  1.0, name = _('Horizon Cage Increase'), category = _('Front Dash')},

		--Altimeter 
		{															pressed = device_commands.Button_1, cockpit_device_id  = devices.ALTIMETER, value_pressed = -1.0, name = _('Altimeter pressure set Decrease'), category = _('Front Dash')},
		{															pressed = device_commands.Button_1, cockpit_device_id  = devices.ALTIMETER, value_pressed =  1.0, name = _('Altimeter pressure set Increase'), category = _('Front Dash')},

        -- ----------------------------------------------------------------------------------------



        -- P 112 REVI 16 B Gun Sight --------------------------------------------------------------
        -- P 112 Gun Sight Brightness Rheostat
        {															pressed = device_commands.Button_45, cockpit_device_id = devices.FUSEBOX, value_pressed = 1.0, name = _('Gunsight Brightness INCREASE'), category = _('REVI 16 B Gunsight')},
        {															pressed = device_commands.Button_45, cockpit_device_id = devices.FUSEBOX, value_pressed = -1.0, name = _('Gunsight Brightness DECREASE'), category = _('REVI 16 B Gunsight')},
        -- TODO make available only in slider configuration: (done Steshov)
        --{                                                           action = device_commands.Button_46, cockpit_device_id = devices.FUSEBOX, name = _('Gunsight Brightness (analog)'), category = _('REVI 16 B Gunsight')},

        -- P 9 / P 10 REVI Power Plug and Socket
        --{                                                           down = device_commands.Button_47, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Gunsight Power Cord PLUG IN'), category = _('REVI 16 B Gunsight')},
        --{                                                           down = device_commands.Button_47, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Gunsight Power Cord PULL OFF'), category = _('REVI 16 B Gunsight')},
        --{combos = {{key = 'O', reformers = {'LAlt'}}},              down = device_commands.Button_48, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Gunsight Power (toggle)'), category = _('REVI 16 B Gunsight')},

        -- P 112 Gun Sight Folding Controls
        {															down = device_commands.Button_7, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Gunsight Fold DOWN'), category = _('REVI 16 B Gunsight')},
        {															down = device_commands.Button_7, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.0, name = _('Gunsight Fold UPRIGHT'), category = _('REVI 16 B Gunsight')},
        {															down = device_commands.Button_8, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Gunsight Fold (toggle)'), category = _('REVI 16 B Gunsight')},

        -- P 112 Gun Sight Smoked Screen Controls
        {															down = device_commands.Button_10, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Gunsight Smoked Screen UP'), category = _('REVI 16 B Gunsight')},
        {															down = device_commands.Button_10, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 0.0, name = _('Gunsight Smoked Screen DOWN'), category = _('REVI 16 B Gunsight')},
        {															down = device_commands.Button_11, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, name = _('Gunsight Smoked Screen (toggle)'), category = _('REVI 16 B Gunsight')},
        -- ----------------------------------------------------------------------------------------

		-- Signal Flare Controls ------------------------------------------------------------------
		{														    down = device_commands.Button_95, up = device_commands.Button_95, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Drop Signal Flare'), category = _('Front Dash')},
		{                                                           down = device_commands.Button_96, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Select Green Signal Flare'), 	category = _('Front Dash')},
		{                                                           down = device_commands.Button_97, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Select Red Signal Flare'), 		category = _('Front Dash')},
		{                                                           down = device_commands.Button_98, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Select White Signal Flare'), 	category = _('Front Dash')},
		{                                                           down = device_commands.Button_99, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Select Yellow Signal Flare'), 	category = _('Front Dash')},
		-- Signal Flare Controls ------------------------------------------------------------------




        -- Engine Controls & Throttle Quadrant ----------------------------------------------------
        -- B 102 Ignition Switch
        {                                                           down = device_commands.Button_68, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Magnetos OFF'), category = _('Engine Controls')},
        {                                                           down = device_commands.Button_68, cockpit_device_id = devices.FUSEBOX, value_down = 0.1, name = _('Magnetos M1'), category = _('Engine Controls')},
        {                                                           down = device_commands.Button_68, cockpit_device_id = devices.FUSEBOX, value_down = 0.2, name = _('Magnetos M2'), category = _('Engine Controls')},
        {                                                           down = device_commands.Button_68, cockpit_device_id = devices.FUSEBOX, value_down = 0.3, name = _('Magnetos M1+M2'), category = _('Engine Controls')},
        {															down = device_commands.Button_67, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Magnetos (next set)'), category = _('Engine Controls')},
        {															down = device_commands.Button_69, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Magnetos (prev. set)'), category = _('Engine Controls')},

        -- E 103 Propellor Automation Switch
        {															down = device_commands.Button_58, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Governor Automation ON'), category = _('Engine Controls')},
        {															down = device_commands.Button_58, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Governor Automation OFF'), category = _('Engine Controls')},
        {															down = device_commands.Button_59, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Governor Automation (toggle)'), category = _('Engine Controls')},

        -- Leistungshebel
        {															pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Throttle INCREASE'), category = _('Engine Controls')},
        {															pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Throttle DECREASE'), category = _('Engine Controls')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_5, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Throttle (analog)'), category = _('Engine Controls')},

        -- Drehzahl
        {															down = device_commands.Button_60, up = device_commands.Button_60, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Engine RPM INCREASE'), category = _('Engine Controls')},
        {															down = device_commands.Button_60, up = device_commands.Button_60, cockpit_device_id = devices.FUSEBOX, value_down = -1.0, value_up = 0.0, name = _('Engine RPM DECREASE'), category = _('Engine Controls')},

        -- Cold Weather Start Valve Handle
        {                                                           down = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Engine Cold Weather Start ON'), category = _('Engine Controls')},
        {                                                           down = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Engine Cold Weather Start OFF'), category = _('Engine Controls')},
        {                                                           down = device_commands.Button_9, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Engine Cold Weather Start (toggle)'), category = _('Engine Controls')},

        -- B 100 Starter Handle
        {															down = device_commands.Button_63, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Starter Cover OPEN'), category = _('Engine Controls')},
        {															down = device_commands.Button_63, cockpit_device_id = devices.FUSEBOX, value_down = 0.0, name = _('Starter Cover CLOSE'), category = _('Engine Controls')},
        {															down = device_commands.Button_64, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, name = _('Starter Cover (toggle)'), category = _('Engine Controls')},
        {															down = device_commands.Button_65, up = device_commands.Button_65, cockpit_device_id = devices.FUSEBOX, value_down = 1.0, value_up = 0.0, name = _('Starter Handle'), category = _('Engine Controls')},
        -- ----------------------------------------------------------------------------------------



        -- Fuel System Controls -------------------------------------------------------------------
        -- Fuel Priming Hand Pump
        {															down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Opeate Fuel Priming Pump'), category = _('Fuel System Controls')},

        -- Schnellstop
        {															down = device_commands.Button_6, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Engine Cut-Off ON'), category = _('Fuel System Controls')},
        {															down = device_commands.Button_6, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Engine Cut-Off OFF'), category = _('Fuel System Controls')},
        {															down = device_commands.Button_7, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Engine Cut-Off (toggle)'), category = _('Fuel System Controls')},

        -- Fuel Pumps Control Lever
        {                                                           down = device_commands.Button_25, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Booster Pumps OFF'), category = _('Fuel System Controls')},
        {                                                           down = device_commands.Button_25, cockpit_device_id = devices.CONTROLS, value_down = 0.1, name = _('Booster Pumps P1'), category = _('Fuel System Controls')},
        {                                                           down = device_commands.Button_25, cockpit_device_id = devices.CONTROLS, value_down = 0.2, name = _('Booster Pumps P2'), category = _('Fuel System Controls')},
        {                                                           down = device_commands.Button_25, cockpit_device_id = devices.CONTROLS, value_down = 0.3, name = _('Booster Pumps P1+P2'), category = _('Fuel System Controls')},
        {															down = device_commands.Button_24, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Booster Pumps (next set)'), category = _('Fuel System Controls')},
        {															down = device_commands.Button_26, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Booster Pumps (prev. set)'), category = _('Fuel System Controls')},

        -- MW Stoff - Kraftstoff Valve Lever
        {                                                           down = device_commands.Button_27, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('MW - Fuel Switch FUEL'), category = _('Fuel System Controls')},
        {                                                           down = device_commands.Button_27, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('MW - Fuel Switch MW'), category = _('Fuel System Controls')},
        {                                                           down = device_commands.Button_28, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('MW - Fuel Switch (toggle)'), category = _('Fuel System Controls')},

        -- Stoff Tank Dump Valve Pull Handle
        {                                                           down = device_commands.Button_41, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Fuel / MW Jettison'), category = _('Fuel System Controls')},
        -- ----------------------------------------------------------------------------------------



        -- Cockpit Lightning ----------------------------------------------------------------------
        -- C 104 LH UV Lamp Rheostat
        {															pressed = device_commands.Button_39, cockpit_device_id = devices.FUSEBOX, value_pressed = 1.0, name = _('LH Dashboard Lamp Brightness INCREASE'), category = _('Cockpit Illumination')},
        {															pressed = device_commands.Button_39, cockpit_device_id = devices.FUSEBOX, value_pressed = -1.0, name = _('LH Dashboard Lamp Brightness DECREASE'), category = _('Cockpit Illumination')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_40, cockpit_device_id = devices.FUSEBOX, name = _('LH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},

        -- C 105 RH UV Lamp Rheostat
        {															pressed = device_commands.Button_42, cockpit_device_id = devices.FUSEBOX, value_pressed = 1.0, name = _('RH Dashboard Lamp Brightness INCREASE'), category = _('Cockpit Illumination')},
        {															pressed = device_commands.Button_42, cockpit_device_id = devices.FUSEBOX, value_pressed = -1.0, name = _('RH Dashboard Lamp Brightness DECREASE'), category = _('Cockpit Illumination')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_43, cockpit_device_id = devices.FUSEBOX, name = _('RH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},
        -- ----------------------------------------------------------------------------------------



        -- Coolant System Controls ----------------------------------------------------------------
        -- Radiator Mode Lever
        {															down = device_commands.Button_37, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Radiator DRIVE OFF'), category = _('Coolant Controls')},
		{															down = device_commands.Button_37, cockpit_device_id = devices.CONTROLS, value_down = 0.1, name = _('Radiator CLOSE'), category = _('Coolant Controls')},        
        {															down = device_commands.Button_37, cockpit_device_id = devices.CONTROLS, value_down = 0.2, name = _('Radiator AUTO'), category = _('Coolant Controls')},
		{															down = device_commands.Button_37, cockpit_device_id = devices.CONTROLS, value_down = 0.3, name = _('Radiator OPEN'), category = _('Coolant Controls')},
        
        {															down = device_commands.Button_36, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Radiator (next mode)'), category = _('Coolant Controls')},
        {															down = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Radiator (prev. mode)'), category = _('Coolant Controls')},

        -- LH Radiator Hose Cut-Off Pull Handle
        {                                                           down = device_commands.Button_43, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('LH Radiator Cut-Off ON'), category = _('Coolant Controls')},
        {                                                           down = device_commands.Button_43, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('LH Radiator Cut-Off OFF'), category = _('Coolant Controls')},
        {                                                           down = device_commands.Button_44, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('LH Radiator Cut-Off (toggle)'), category = _('Coolant Controls')},

        -- RH Radiator Hose Cut-Off Pull Handle
        {                                                           down = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('RH Radiator Cut-Off ON'), category = _('Coolant Controls')},
        {                                                           down = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('RH Radiator Cut-Off OFF'), category = _('Coolant Controls')},
        {                                                           down = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('RH Radiator Cut-Off (toggle)'), category = _('Coolant Controls')},
        -- ----------------------------------------------------------------------------------------



        -- Systematic Controls --------------------------------------------------------------------
        -- Oxygen Apparatus Operating Valve
        {                                                           down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Oxygen Operating Valve OPEN'), category = _('Systems')},
        {                                                           down = device_commands.Button_1, cockpit_device_id = devices.OXYGEN, value_down = 0.0, name = _('Oxygen Operating Valve CLOSE'), category = _('Systems')},
        {															down = device_commands.Button_2, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Oxygen Operating Valve (toggle)'), category = _('Systems')},

        -- Oxygen Apparatus Shower Button
        {															down = device_commands.Button_3, up = device_commands.Button_3, cockpit_device_id = devices.OXYGEN, value_down = 1.0, value_up = 0.0, name = _('Oxygen Regulator Emergency By-Pass Valve'), category = _('Systems')},

        -- Undercarriage Controls Cover
        {                                                           down = device_commands.Button_39, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Undercarriage Cover OPEN'), category = _('Systems')},
        {                                                           down = device_commands.Button_39, cockpit_device_id  = devices.CONTROLS, value_down = 0.0, name = _('Undercarriage Cover CLOSE'), category = _('Systems')},
        {                                                           down = device_commands.Button_40, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Undercarriage Cover (toggle)'), category = _('Systems')},

        -- Undercarriage Control Plungers
        {                                                           down = device_commands.Button_1, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Undercarriage Plunger UP'), category = _('Systems')},
        {                                                           down = device_commands.Button_2, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Undercarriage Plunger DOWN'), category = _('Systems')},
        {															down = device_commands.Button_3, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Undercarriage Plunger (toggle)'), category = _('Systems')},

        -- Undercarriage Release Pull Handle
        {															down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Undercarriage Emergency Release'), category = _('Systems')},

        -- Sporn / Tail Wheel Lock
        {                                                           down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Tail Wheel Lock LOCKED'), category = _('Systems')},
        {                                                           down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Tail Wheel Lock FREE'), category = _('Systems')},
        {															down = device_commands.Button_22, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Tail Wheel Lock (toggle)'), category = _('Systems')},

		-- Wheel Brake Both
		{ 															down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Wheel brake Both'), category = _('Systems')},
        -- LH Wheel Brake
        {															down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Wheel Brake Left'), category = _('Systems')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, name = _('Wheel Brake Left (analog)'), category = _('Systems')},

        -- RH Wheel Brake
        {															down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Wheel Brake Right'), category = _('Systems')},
        -- TODO make available only in slider configuration:
        --{                                                           action = device_commands.Button_20, cockpit_device_id = devices.CONTROLS, name = _('Wheel Brake Right (analog)'), category = _('Systems')},

        -- Canopy Movement Controls
        {															down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Canopy OPEN'), category = _('Systems')},
        {															down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Canopy CLOSE'), category = _('Systems')},
        {															down = device_commands.Button_29, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Canopy (toggle)'), category = _('Systems')},

        -- Canopy Jettison Pull Handle
        {															down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Jettison Canopy'), category = _('Systems')},

        -- Notwurf / Ordinance Dump
        {                                                           down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.WEAPONS_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Ordinance Emergency Release'), category = _('Systems')},

        -- Flaps Controls
        {															down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flaps EXTEND'), category = _('Flight Control')},
        {															down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flaps RETRACT'), category = _('Flight Control')},
        -- ----------------------------------------------------------------------------------------



        -- Tertiary -------------------------------------------------------------------------------
        --{                                                           down = device_commands.Button_61, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Canopy LH Vent (toggle)'), category = _('Systems')},
        --{                                                           down = device_commands.Button_63, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Canopy RH Vent (toggle)'), category = _('Systems')},
        -- ----------------------------------------------------------------------------------------

		--VHF Radio Controls--------------------------------------------------------------------------
		{															down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, name = _('FuG16ZY Preset Selector Decrease'), category = _('VHF Radio')},
		{															down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0,  name = _('FuG16ZY Preset Selector Increase'), category = _('VHF Radio')},
		{															down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('FuG16ZY Preset 1'),  category = _('VHF Radio')},
		{															down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.1, name = _('FuG16ZY Preset 2'),  category = _('VHF Radio')},
		{															down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.2, name = _('FuG16ZY Preset TR'), category = _('VHF Radio')},
		{															down = device_commands.Button_2, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.3, name = _('FuG16ZY Preset SQ'), category = _('VHF Radio')},
		
		{															down = device_commands.Button_7, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('FuG16ZY Mode Selector (toggle)'), category = _('VHF Radio')},
		
		-- ----------------------------------------------------------------------------------------

        -- Knee-board -----------------------------------------------------------------------------
        {															down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page'), category = _('Kneeboard')},
        {															down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
        {															down = iCommandPlaneShowKneeboard, name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
        {															down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard, value_down = 1.0, value_up = -1.0, name = _('Kneeboard glance view'), category = _('Kneeboard')},
        {															down = device_commands.Button_3, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard current position mark point'), category = _('Kneeboard')},
        -- ----------------------------------------------------------------------------------------

        

        -- FAC ------------------------------------------------------------------------------------
        --{combos = {{key = 'B', reformers = {'LWin'}}},              down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
        --{combos = {{key = 'L', reformers = {'LAlt'}}},              down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
        --{combos = {{key = 'Z', reformers = {'LWin'}}},              down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
        -- ----------------------------------------------------------------------------------------
    },
axisCommands = {
-- joystick axes 
		{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRoll, name = _('Roll')},
		{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitch, name = _('Pitch')},
		{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudder, name = _('Rudder')},
		{combos = defaultDeviceAssignmentFor("thrust")  , action = device_commands.Button_5,  cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Throttle')},
		{												  action = device_commands.Button_60, cockpit_device_id  = devices.FUSEBOX, name = _('Engine RPM Setting')},
		
		-- Flaps controls
		{action = device_commands.Button_94, cockpit_device_id = devices.CONTROLS,  name = _('Flaps (analog)'), category = _('Flight Control')},
		-- Trim Stabilizer controls
		{action = device_commands.Button_93, cockpit_device_id = devices.CONTROLS,  name = _('Trim Stabilizer (analog)'), category = _('Flight Control')},

		-- Wheel Brake - Combined
		{action = device_commands.Button_14, cockpit_device_id = devices.CONTROLS, name = _('Wheel Brakes Both (analog)'),  category = _('Systems')},
		-- LH Wheel Brake
		{action = device_commands.Button_17, cockpit_device_id = devices.CONTROLS, name = _('Wheel Brake Left (analog)'),  category = _('Systems')},
        -- RH Wheel Brake
        {action = device_commands.Button_20, cockpit_device_id = devices.CONTROLS, name = _('Wheel Brake Right (analog)'), category = _('Systems')},
		-- Gunsight Brightness
		{action = device_commands.Button_46, cockpit_device_id =  devices.FUSEBOX, 			name = _('Gunsight Brightness (analog)'), category = _('REVI 16 B Gunsight')},
		-- Cockpit Illumination
		{action = device_commands.Button_40, cockpit_device_id =  devices.FUSEBOX, 			name = _('LH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},
		{action = device_commands.Button_43, cockpit_device_id =  devices.FUSEBOX, 			name = _('RH Dashboard Lamp Brightness (analog)'), category = _('Cockpit Illumination')},
		-- Ammo counters
		{action = device_commands.Button_3,  cockpit_device_id =  devices.WEAPONS_CONTROLS, name = _('SZKK 3 LH Ammo Counter (analog)'), category = _('Front Dash')},
		{action = device_commands.Button_6,  cockpit_device_id =  devices.WEAPONS_CONTROLS, name = _('SZKK 3 RH Ammo Counter (analog)'), category = _('Front Dash')},
		-- Clock
		{action = device_commands.Button_53, cockpit_device_id =  devices.CONTROLS, 		name = _('Clock Turn Scale (analog)'), category = _('Front Dash')},
		-- Remote compass 
		{action = device_commands.Button_1,  cockpit_device_id = devices.REMOTE_COMPASS, 	name = _('Compass Course (analog)'), category = _('Front Dash')},
		-- Gyro Horizon Indicator
		{action = device_commands.Button_1,  cockpit_device_id  = devices.ARTIFICIAL_HORIZON, 	name = _('Horizon Cage (analog)'), category = _('Front Dash')},
		-- Altimeter 
		{action = device_commands.Button_1,  cockpit_device_id  = devices.ALTIMETER, 		name = _('Altimeter pressure set (analog)'), category = _('Front Dash')},

		--VHF_RADIO
		{action = device_commands.Button_3,  cockpit_device_id  = devices.VHF_RADIO, 		name = _('FuG16ZY volume (analog)'), category = _('VHF Radio')},
		{action = device_commands.Button_8,  cockpit_device_id  = devices.VHF_RADIO, 		name = _('FuG16ZY fine tune (analog)'), category = _('VHF Radio')},
				
-- TrackIR axes
		{action = iCommandViewVerticalAbs		, name = _('Absolute Camera Vertical View')},
		{action = iCommandViewHorizontalAbs		, name = _('Absolute Camera Horizontal View')},
		{action = iCommandViewHorTransAbs		, name = _('Absolute Horizontal Shift Camera View')},
		{action = iCommandViewVertTransAbs		, name = _('Absolute Vertical Shift Camera View')},
		{action = iCommandViewLongitudeTransAbs	, name = _('Absolute Longitude Shift Camera View')},
		{action = iCommandViewRollAbs			, name = _('Absolute Roll Shift Camera View')},
		{action = iCommandViewZoomAbs			, name = _('Zoom View')},
				

},
}
