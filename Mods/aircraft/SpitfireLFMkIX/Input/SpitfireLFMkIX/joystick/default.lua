local cockpit = folder .. "../../../Cockpit/Scripts/"
dofile(cockpit .. "devices.lua")
dofile(cockpit .. "command_defs.lua")



return {
forceFeedback = {
    trimmer = 1.0,
    shake = 0.5,
    swapAxes = false,
},



keyCommands = {
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: begin addtional buttons
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- Magnetos Toggles
{down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Magneto 1 On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Magneto 2 On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id  = devices.CONTROLS,       value_down = 0.0, value_up = 1.0, name = _('Undercarriage (gear) Up/Down'), category = _('_My Buttons')},
{down = device_commands.Button_3,  up = device_commands.Button_3,  cockpit_device_id = devices.OXYGEN,          value_down = 1.0, value_up = 0.0, name = _('Oxygen Valve Open/Close'), category = _('_My Buttons')},
{down = device_commands.Button_7,  up = device_commands.Button_7,  cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('Navigation Lights On/Off)'), category = _('_My Buttons')},
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('Flaps Up/Down'), category = _('_My Buttons')},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('Undercarriage Indicator Blind Up/Down'), category = _('_My Buttons')},
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Supercharger On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Booster Coil Button Cover Open/Close'), category = _('_My Buttons')},
{down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Tank Pressurizer On(Off'), category = _('_My Buttons')},
-- Gun Sight Tint Screen
{down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id = devices.WEAPONS,         value_down = 1.0, value_up = 0.0, name = _('Gun Sight Tint Screen On/Off'), category = _('_My Buttons')},
-- Gun Sight Master Switch
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.WEAPONS,         value_down = 1.0, value_up = 0.0, name = _('Gun Sight Master Switch On/Off'), category = _('_My Buttons')},
-- Radio Remote Channel Switcher - Dimmer Toggle
{down = device_commands.Button_6,  up = device_commands.Button_6,  cockpit_device_id = devices.VHF_RADIO,       value_down = 1.0, value_up = 0.0, name = _('Radio Remote Channel Switcher Dimmer On/Off'), category = _('_My Buttons')},
-- Radio Remote Channel Switcher - Transmit Lock Toggle
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO,       value_down = 1.0, value_up = 0.0, name = _('Radio Remote Channel Switcher Transmit Lock On/Off'), category = _('_My Buttons')},
-- Radio Remote Channel Switcher - Mode Selector
--{down = device_commands.Button_8,  up = device_commands.Button_8,  cockpit_device_id  = devices.VHF_RADIO,      value_down =-1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_t'), category = _('VHF Radio')},
--{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_r'), category = _('VHF Radio')},
--{down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_mode_rem'), category = _('VHF Radio')},
{down = device_commands.Button_8,  up = device_commands.Button_7,  cockpit_device_id  = devices.VHF_RADIO,      value_down =-1.0, value_up = 0.0, name = _('Radio Mode T/R'), category = _('_My Buttons')},
{down = device_commands.Button_7,  up = device_commands.Button_7,  cockpit_device_id  = devices.VHF_RADIO,      value_down = 1.0, value_up = 0.0, name = _('Radio Mode Rem/R'), category = _('_My Buttons')},
-- Throttle Quadrant - Mix Cut-Off Lever
{down = device_commands.Button_9,  up = device_commands.Button_9,  cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Mix Cut-Off Lever On/Off'), category = _('_My Buttons')},
-- Throttle Quadrant - U/C Indicator Cut-Off Toggle
{down = device_commands.Button_99, up = device_commands.Button_99, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, value_up = 1.0, name = _('Undercarriage Indicator Cut-Off On/Off'), category = _('_My Buttons')},
-- Radiator Control Toggle
{down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('Radiator Control On/Off'), category = _('_My Buttons')},
-- Pitot Heater Toggle
{down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('Pitot Heater On/Off'), category = _('_My Buttons')},
-- Fuel Pump Toggle
{down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Fuel Pump On/Off'), category = _('_My Buttons')},
-- Carb. Air Control Lever
{down = device_commands.Button_45, up = device_commands.Button_45, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Carb. Air Control Lever On/Off'), category = _('_My Buttons')},
-- De-Icer Lever
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.CONTROLS,        value_down = 1.0, value_up = 0.0, name = _('De-Icer Lever Up/Down'), category = _('_My Buttons')},
-- I.F.F. Control Box - I.F.F. Upper Toggle (Type B)
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.TERTIARY_CONTROLS,value_down = 1.0,value_up = 0.0, name = _('I.F.F. Upper Toggle (Type B) On/Off'), category = _('_My Buttons')},
-- I.F.F. Control Box - I.F.F. Lower Toggle (Type D)
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id = devices.TERTIARY_CONTROLS,value_down = 1.0,value_up = 0.0, name = _('I.F.F. Lower Toggle (Type D) On/Off'), category = _('_My Buttons')},
-- Fuel Cock
{down = device_commands.Button_37, up = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Fuel Cock Open/Close'), category = _('_My Buttons')},
-- Droptank Cock
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Droptank Cock Open/Close'), category = _('_My Buttons')},
-- Canopy Movement Controls
{down = device_commands.Button_51, up = device_commands.Button_51, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Canopy Open/Close'), category = _('_My Buttons')},
-- Side Door Movement Controls
{down = device_commands.Button_59, up = device_commands.Button_59, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Side Door Open/Close'), category = _('_My Buttons')},
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: end addtional buttons
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- Temporary ------------------------------------------------------------------------------
{down = iCommandEnginesStart, name = _('Start Procedure'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('Stop Procedure'), category = _('Cheat')},
-- ----------------------------------------------------------------------------------------



-- Gameplay -------------------------------------------------------------------------------
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
{down = iCommandInfoOnOff, name = _('Info bar view toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get new plane - respawn'), category = _('General')},
{down = iCommandTrkEsc, name = _('Playback track cancel'), category = _('General')},
{down = iCommandOneFrame, name = _('One frame mode'), category = _('General')},
{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
{down = iCommandViewCoordinatesInLinearUnits, name = _('Coordinates units change'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandPlane_ShowControls, name = _('Controls indicator') , category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show pilot'), category = _('General')},

{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandSoundOnOff,			name = _('Sound On/Off'),	 category = _('General')},

-- ----------------------------------------------------------------------------------------

{down = iCommandToggleMirrors, name = _('Toggle Mirrors'), category = _('View Cockpit')},


-- Communications -------------------------------------------------------------------------
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
-- TODO move down and implement - Made Dragon
{down = iCommandPlane_P_51_PTT_on, up = iCommandPlane_P_51_PTT_off, name = _('COMM Push to talk'), category = _('Communications')},
-- ----------------------------------------------------------------------------------------



-- Views ----------------------------------------------------------------------------------
{combos = {{key = 'JOY_BTN_POV1_L'}},                                           pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_R'}},                                           pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_U'}},                                           pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_D'}},                                           pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UR'}},                                          pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DR'}},                                          pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_DL'}},                                          pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN_POV1_UL'}},                                          pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{combos = {{key = 'JOY_BTN5'}},                                                         pressed = iCommandViewCenter, name = _('View Center'), category = _('View')},

{                                                                                                                       pressed = iCommandViewForwardSlow, up = iCommandViewForwardSlowStop, name = _('Zoom in slow'), category = _('View')},
{                                                                                                                       pressed = iCommandViewBackSlow, up = iCommandViewBackSlowStop, name = _('Zoom out slow'), category = _('View')},
{                                                                                                                       down = iCommandViewAngleDefault, name = _('Zoom normal'), category = _('View')},
{                                                                                                                       pressed = iCommandViewExternalZoomIn, up = iCommandViewExternalZoomInStop, name = _('Zoom external in'), category = _('View')},
{                                                                                                                       pressed = iCommandViewExternalZoomOut, up = iCommandViewExternalZoomOutStop, name = _('Zoom external out'), category = _('View')},
{                                                                                                                       down = iCommandViewExternalZoomDefault, name = _('Zoom external normal'), category = _('View')},
{                                                                                                                       down = iCommandViewSpeedUp, name = _('F11 camera moving forward'), category = _('View')},
{                                                                                                                       down = iCommandViewSlowDown, name = _('F11 camera moving backward'), category = _('View')},

{                                                                                                                       down = iCommandViewCockpit, name = _('F1 Cockpit view'), category = _('View')},
{                                                                                                                       down = iCommandNaturalViewCockpitIn, name = _('F1 Natural head movement view'), category = _('View')},
{                                                                                                                       down = iCommandViewHUDOnlyOnOff, name = _('F1 HUD only view switch'), category = _('View')},
{                                                                                                                       down = iCommandViewAir, name = _('F2 Aircraft view'), category = _('View')},
{                                                                                                                       down = iCommandViewMe, name = _('F2 View own aircraft'), category = _('View')},
{                                                                                                                       down = iCommandViewFromTo, name = _('F2 Toggle camera position'), category = _('View')},
{                                                                                                                       down = iCommandViewLocal, name = _('F2 Toggle local camera control'), category = _('View')},
{                                                                                                                       down = iCommandViewTower, name = _('F3 Fly-By view'), category = _('View')},
{                                                                                                                       down = iCommandViewTowerJump, name = _('F3 Fly-By jump view'), category = _('View')},
{                                                                                                                       down = iCommandViewChaseArcade, name = _('F4 Arcade View'), category = _('View')},
{                                                                                                                       down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{                                                                                                                       down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{                                                                                                                       down = iCommandViewFight, name = _('F5 nearest AC view'), category = _('View')},
{                                                                                                                       down = iCommandViewFightGround, name = _('F5 Ground hostile view'), category = _('View')},
{                                                                                                                       down = iCommandViewWeapons, name = _('F6 Released weapon view'), category = _('View')},
{                                                                                                                       down = iCommandViewWeaponAndTarget, name = _('F6 Weapon to target view'), category = _('View')},
{                                                                                                                       down = iCommandViewGround, name = _('F7 Ground unit view'), category = _('View')},
{                                                                                                                       down = iCommandViewJFO, name = _('F7 Ground JFO/JTAC view'), category = _('View')},
--{combos = {{key = 'F8'}}, down = iCommandViewTargets, name = _('F8 Target view'), category = _('View')},
--{combos = {{key = 'F8', reformers = {'RAlt'}}}, down = iCommandViewTargetType, name = _('F8 Player targets/All targets filter'), category = _('View')},
{                                                                                                                       down = iCommandViewNavy, name = _('F9 Ship view'), category = _('View')},
{                                                                                                                       down = iCommandViewLndgOfficer, name = _('F9 Landing signal officer view'), category = _('View')},
{                                                                                                                       down = iCommandViewAWACS, name = _('F10 Theater map view'), category = _('View')},
{                                                                                                                       down = iCommandViewAWACSJump, name = _('F10 Jump to theater map view over current point'), category = _('View')},
{                                                                                                                       down = iCommandViewFree, name = _('F11 Airport free camera'), category = _('View')},
{                                                                                                                       down = iCommandViewFreeJump, name = _('F11 Jump to free camera'), category = _('View')},
{                                                                                                                       down = iCommandViewStatic, name = _('F12 Static object view'), category = _('View')},
{                                                                                                                       down = iCommandViewMirage, name = _('F12 Civil traffic view'), category = _('View')},
{                                                                                                                       down = iCommandViewLocomotivesToggle, name = _('F12 Trains/cars toggle'), category = _('View')},
{                                                                                                                       down = iCommandViewPitHeadOnOff, name = _('F1 Head shift movement on / off'), category = _('View')},
                                                            
{                                                                                                                       down = iCommandViewFastKeyboard, name = _('Camera view keyboard rate fast'), category = _('View')},
{                                                                                                                       down = iCommandViewSlowKeyboard, name = _('Camera view keyboard rate slow'), category = _('View')},
{                                                                                                                       down = iCommandViewNormalKeyboard, name = _('Camera view keyboard rate normal'), category = _('View')},
{                                                                                                                       down =  iCommandViewFastMouse, name = _('Camera view mouse rate fast'), category = _('View')},
{                                                                                                                       down = iCommandViewSlowMouse, name = _('Camera view mouse rate slow'), category = _('View')},
{                                                                                                                       down = iCommandViewNormalMouse, name = _('Camera view mouse rate normal'), category = _('View')},
-- ----------------------------------------------------------------------------------------



-- Cockpit View ---------------------------------------------------------------------------
{                                                                                                                       down = iCommandViewTempCockpitOn, up = iCommandViewTempCockpitOff, name = _('Cockpit panel view in'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewTempCockpitToggle, name = _('Cockpit panel view toggle'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSaveAngles, name = _('Save Cockpit Angles'), category = _('View Cockpit')}, -- Save current cockpit camera angles for fast numpad jumps  
{                                                                                                                       pressed = iCommandViewUp, up = iCommandViewStop, name = _('View up'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewDown, up = iCommandViewStop, name = _('View down'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewLeft, up = iCommandViewStop, name = _('View left'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewRight, up = iCommandViewStop, name = _('View right'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewUpRight, up = iCommandViewStop, name = _('View up right'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewDownRight, up = iCommandViewStop, name = _('View down right'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewDownLeft, up = iCommandViewStop, name = _('View down left'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewUpLeft, up = iCommandViewStop, name = _('View up left'), category = _('View Cockpit')},

{                                                                                                                       down = iCommandViewCameraUp, up = iCommandViewCameraCenter, name = _('Camera view up'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDown, up = iCommandViewCameraCenter, name = _('Camera view down'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraLeft, up = iCommandViewCameraCenter, name = _('Camera view left'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraRight, up = iCommandViewCameraCenter, name = _('Camera view right'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraUpLeft, up = iCommandViewCameraCenter, name = _('Camera view up-left'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDownLeft, up = iCommandViewCameraCenter, name = _('Camera view down-left'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraUpRight, up = iCommandViewCameraCenter, name = _('Camera view up-right'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDownRight, up = iCommandViewCameraCenter, name = _('Camera view down-right'), category = _('View Cockpit')},

{                                                                                                                       down = iCommandViewCameraUpSlow, name = _('Camera view up slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDownSlow, name = _('Camera view down slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraLeftSlow, name = _('Camera view left slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraRightSlow, name = _('Camera view right slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraUpLeftSlow, name = _('Camera view up-left slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDownLeftSlow, name = _('Camera view down-left slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraDownRight, name = _('Camera view down-right slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraUpRightSlow, name = _('Camera view up-right slow'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraCenter, name = _('Center camera view'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraReturn, name = _('Return camera'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewCameraBaseReturn, name = _('Return camera base'), category = _('View Cockpit')},

{                                                                                                                       down = iCommandViewSnapView0,   up = iCommandViewSnapViewStop, name = _('Snap View 0'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView1,   up = iCommandViewSnapViewStop, name = _('Snap View 1'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView2,   up = iCommandViewSnapViewStop, name = _('Snap View 2'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView3,   up = iCommandViewSnapViewStop, name = _('Snap View 3'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView4,   up = iCommandViewSnapViewStop, name = _('Snap View 4'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView5,   up = iCommandViewSnapViewStop, name = _('Snap View 5'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView6,   up = iCommandViewSnapViewStop, name = _('Snap View 6'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView7,   up = iCommandViewSnapViewStop, name = _('Snap View 7'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView8,   up = iCommandViewSnapViewStop, name = _('Snap View 8'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewSnapView9,   up = iCommandViewSnapViewStop, name = _('Snap View 9'), category = _('View Cockpit')},

{                                                                                                                       down = iCommandViewLeftMirrorOn ,   up = iCommandViewLeftMirrorOff , name = _('Mirror glance'), category = _('View Cockpit')},

{                                                                                                                       pressed = iCommandViewForward, up = iCommandViewForwardStop, name = _('Zoom in'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewBack, up = iCommandViewBackStop, name = _('Zoom out'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Cockpit Camera Motion (������������ ������ � ������) -----------------------------------
{                                                                                                                       pressed = iCommandViewPitCameraMoveUp, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Up'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewPitCameraMoveDown, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Down'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewPitCameraMoveLeft, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Left'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewPitCameraMoveRight, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Right'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewPitCameraMoveForward, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Forward'), category = _('View Cockpit')},
{                                                                                                                       pressed = iCommandViewPitCameraMoveBack, up = iCommandViewPitCameraMoveStop, name = _('Cockpit Camera Move Back'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewPitCameraMoveCenter, name = _('Cockpit Camera Move Center'), category = _('View Cockpit')},

{                                                                                                                       down = iCommand_ExplorationStart, name = _('Enable visual recon mode'), category = _('View Cockpit')},
{                                                                                                                       down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode (press and hold)'), category = _('View Cockpit')},
-- ----------------------------------------------------------------------------------------



-- Extended View --------------------------------------------------------------------------
{                                                                                                                       down = iCommandViewCameraJiggle, name = _('Camera jiggle toggle'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewKeepTerrain, name = _('Camera terrain altitude hold'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewFriends, name = _('View friends mode'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewEnemies, name = _('View enemies mode'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewAll, name = _('View all mode'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewPlus, name = _('Toggle tracking launched weapon'), category = _('View Extended')},
{                                                                                                                       down = iCommandViewSwitchForward, name = _('Objects switching direction forward '), category = _('View Extended')},
{                                                                                                                       down = iCommandViewSwitchReverse, name = _('Objects switching direction reverse '), category = _('View Extended')},
{                                                                                                                       down = iCommandViewObjectIgnore, name = _('Object exclude '), category = _('View Extended')},
{                                                                                                                       down = iCommandViewObjectsAll, name = _('Objects all excluded - include'), category = _('View Extended')},
-- ----------------------------------------------------------------------------------------



-- Padlock --------------------------------------------------------------------------------
{                                                                                                                       down = iCommandAllMissilePadlock, name = _('Padlock missiles all'), category = _('View Padlock')},
{                                                                                                                       down = iCommandThreatMissilePadlock, name = _('Padlock missile threat'), category = _('View Padlock')},
{                                                                                                                       down = iCommandViewLock, name = _('Padlock cycle'), category = _('View Padlock')},
{                                                                                                                       down = iCommandViewUnlock, name = _('Padlock Off (stop padlock)'), category = _('View Padlock')},
{                                                                                                                       down = iCommandViewTerrainLock, name = _('Padlock terrain point'), category = _('View Padlock')},
-- ----------------------------------------------------------------------------------------



-- Labels ---------------------------------------------------------------------------------
{                                                                                                                       down = iCommandMarkerState, name = _('Labels All'), category = _('Labels')},
{                                                                                                                       down = iCommandMarkerStatePlane, name = _('Labels Aircraft'), category = _('Labels')},
{                                                                                                                       down = iCommandMarkerStateRocket, name = _('Labels Missile'), category = _('Labels')},
{                                                                                                                       down = iCommandMarkerStateShip, name = _('Labels Vehicle & Ship'), category = _('Labels')},
-- ----------------------------------------------------------------------------------------



-- Flight Controls ------------------------------------------------------------------------
-- Steer Controls
{                                                           down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Flight NOSE DOWN'), category = _('Flight Control')},
{                                                           down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Flight NOSE UP'), category = _('Flight Control')},
{                                                           down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Flight BANK LEFT'), category = _('Flight Control')},
{                                                           down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Flight BANK RIGHT'), category = _('Flight Control')},
{                                                           down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Flight RUDDER LEFT'), category = _('Flight Control')},
{                                                           down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Flight RUDDER RIGHT'), category = _('Flight Control')},
{                                                           down = device_commands.Button_99, up = device_commands.Button_99, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER LEFT 1 NOTCH'), category = _('Flight Control')},
{                                                           down = device_commands.Button_100, up = device_commands.Button_100, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Flight RUDDER RIGHT 1 NOTCH'), category = _('Flight Control')},


-- Generic Flight Controls
{                                                           down = iCommandPlaneEject, name = _('Bailout'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Oxygen Apparatus -----------------------------------------------------------------------
-- Valve
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Input.SpitfireLFMkIX.oxygen_valve_1'), category = _('Systems')},
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.OXYGEN, value_down = 0.0, name = _('Input.SpitfireLFMkIX.oxygen_valve_0'), category = _('Systems')},
{                                                           down = device_commands.Button_4, cockpit_device_id = devices.OXYGEN, value_down = 1.0, name = _('Input.SpitfireLFMkIX.oxygen_valve'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Joystick -------------------------------------------------------------------------------
-- Safety Lever
{                                                           down = device_commands.Button_2, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.safety'), category = _('Stick')},

-- Triggers
{                                                           down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('Input.SpitfireLFMkIX.trigger_0'), category = _('Stick')},
{                                                           down = iCommandPlanePickleOn, up = iCommandPlanePickleOff, name = _('Input.SpitfireLFMkIX.trigger_1'), category = _('Stick')},
{                                                           down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trigger_2'), category = _('Stick')},

-- Wheel Brakes Lever
{                                                           down = iCommandPlaneWheelBrakeOn, up = iCommandPlaneWheelBrakeOff, name = _('Input.SpitfireLFMkIX.wheel_brakes'), category = _('Stick')},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.wheel_brakes_plus'), category = _('Stick')},
{                                                           pressed = device_commands.Button_3, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0,  name = _('Input.SpitfireLFMkIX.wheel_brakes_minus'), category = _('Stick')},
-- ----------------------------------------------------------------------------------------



-- Main Panel -----------------------------------------------------------------------------
-- Altimeter
{                                                           pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.altimeter_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_38, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.SpitfireLFMkIX.altimeter_plus'), category = _('Front Dash')},

-- DI
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.di_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_42, cockpit_device_id = devices.CONTROLS, value_pressed =  1.0, name = _('Input.SpitfireLFMkIX.di_plus'), category = _('Front Dash')},

-- Fuel Gauge Button
{                                                           down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.fuel_gauge'), category = _('Front Dash')},

-- Nav. Lights Toggle
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.nav_lights_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_7, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.nav_lights_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_8, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.nav_lights'), category = _('Front Dash')},

-- Flaps Lever
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.flaps_1'), category = _('Flight Control')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.flaps_0'), category = _('Flight Control')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.flaps'), category = _('Flight Control')},

-- U/C Indicator Blind
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_blind_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_11, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.uc_blind_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_12, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_blind'), category = _('Front Dash')},

-- Clock Setter Pinion - Wind-up
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.clock_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_16, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.clock_plus'), category = _('Front Dash')},
-- Clock Setter Pinion - Pull
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.clock_mode_1'), category = _('Front Dash')},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.clock_mode_0'), category = _('Front Dash')},
{                                                           down = device_commands.Button_98, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.clock_mode'), category = _('Front Dash')},

-- Magnetos Toggles
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.magneto0_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_15, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto0_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_16, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.magneto1_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_17, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto1_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.magneto1'), category = _('Engine Controls')},

-- Supercharger Mode Toggle
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_mode_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_19, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.supercharger_mode_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_20, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.supercharger_mode'), category = _('Engine Controls')},

-- Illumination Controls - LH Rheostat
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.illumination_lh_plus'), category = _('Cockpit Illumination')},
{                                                           pressed = device_commands.Button_2, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.illumination_lh_minus'), category = _('Cockpit Illumination')},
-- Illumination Controls - RH Rheostat
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.illumination_rh_plus'), category = _('Cockpit Illumination')},
{                                                           pressed = device_commands.Button_5, cockpit_device_id = devices.TERTIARY_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.illumination_rh_minus'), category = _('Cockpit Illumination')},

-- Starter Button Cover
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.starter_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.starter_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_22, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.starter_cover'), category = _('Engine Controls')},
-- Starter Button
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.starter'), category = _('Engine Controls')},

-- Booster Coil Button Cover
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.booster_cover_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_25, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.booster_cover_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_26, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.booster_cover'), category = _('Engine Controls')},
-- Booster Coil Button
{                                                           down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.booster'), category = _('Engine Controls')},

-- Primer Pump
{                                                           down = device_commands.Button_31, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.primer_lock'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_32, up = device_commands.Button_30, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.primer'), category = _('Engine Controls')},

-- Tank Pressurizer Lever
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer_1'), category = _('Systems')},
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer_0'), category = _('Systems')},
{                                                           down = device_commands.Button_34, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.tank_pressurizer'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Magnetic Compass -----------------------------------------------------------------------
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.compass_minus'), category = _('Front Dash')},
{                                                           pressed = device_commands.Button_18, cockpit_device_id = devices.CONTROLS, value_pressed = 1.0,  name = _('Input.SpitfireLFMkIX.compass_plus'), category = _('Front Dash')},
-- ----------------------------------------------------------------------------------------



-- Gun Sight and Tertiary Weapons Controls ------------------------------------------------
-- Gun Sight Setter Rings - Range
{                                                           pressed = device_commands.Button_8, cockpit_device_id = devices.WEAPONS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_range_plus'), category = _('Gunsight')},
{                                                           pressed = device_commands.Button_8, cockpit_device_id = devices.WEAPONS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.gun_sight_range_minus'), category = _('Gunsight')},
-- Gun Sight Setter Rings - Base
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.gun_sight_span_plus'), category = _('Gunsight')},
{                                                           pressed = device_commands.Button_11, cockpit_device_id = devices.WEAPONS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.gun_sight_span_minus'), category = _('Gunsight')},
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
-- ----------------------------------------------------------------------------------------



-- Port Wall ------------------------------------------------------------------------------
-- Elevator Trim Wheel
{                                                           down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_elevator_minus'), category = _('Flight Control')},
{                                                           down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_elevator_plus'), category = _('Flight Control')},
-- Rudder Trim Wheel
{                                                           down = device_commands.Button_45, up = device_commands.Button_45, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_rudder_minus'), category = _('Flight Control')},
{                                                           down = device_commands.Button_47, up = device_commands.Button_47, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trim_rudder_plus'), category = _('Flight Control')},

-- Radio Remote Channel Switcher - Off Button
{                                                           down = device_commands.Button_9, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_0'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - A Button
{                                                           down = device_commands.Button_10, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_a'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - B Button
{                                                           down = device_commands.Button_11, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_b'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - C Button
{                                                           down = device_commands.Button_12, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_c'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - D Button
{                                                           down = device_commands.Button_13, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_d'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Dimmer Toggle
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_dimmer_0'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_6, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_dimmer'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Transmit Lock Toggle
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock_1'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_lock_0'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_18, cockpit_device_id = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_lock'), category = _('VHF Radio')},
-- Radio Remote Channel Switcher - Mode Selector
{                                                           down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id  = devices.VHF_RADIO, value_down = -1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_t'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radio_mode_r'), category = _('VHF Radio')},
{                                                           down = device_commands.Button_7, cockpit_device_id  = devices.VHF_RADIO, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radio_mode_rem'), category = _('VHF Radio')},

-- Throttle Quadrant - Throttle Lever
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.throttle_plus'), category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_4, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.throttle_minus'), category = _('Engine Controls')},
-- Throttle Quadrant - Bomb Drop Button
{                                                           down = device_commands.Button_15, up = device_commands.Button_15, cockpit_device_id = devices.WEAPONS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.trigger_bomb'), category = _('Systems')},
-- Throttle Quadrant - Airscrew Lever
{                                                           pressed = device_commands.Button_7, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = 1.0, name = _('Input.SpitfireLFMkIX.pitch_plus'), category = _('Engine Controls')},
{                                                           pressed = device_commands.Button_7, cockpit_device_id = devices.ENGINE_CONTROLS, value_pressed = -1.0, name = _('Input.SpitfireLFMkIX.pitch_minus'), category = _('Engine Controls')},
-- Throttle Quadrant - Mix Cut-Off Lever
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.mix_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_9, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.mix_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_10, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.mix'), category = _('Engine Controls')},
-- Throttle Quadrant - U/C Indicator Cut-Off Toggle
{                                                           down = device_commands.Button_99, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_down_indication_1'), category = _('Systems')},
{                                                           down = device_commands.Button_99, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.uc_down_indication_0'), category = _('Systems')},
{                                                           down = device_commands.Button_100, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc_down_indication'), category = _('Systems')},

-- Radiator Control Toggle
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_mode_1'), category = _('Systems')},
{                                                           down = device_commands.Button_33, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.radiator_mode_0'), category = _('Systems')},
{                                                           down = device_commands.Button_34, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.radiator_mode'), category = _('Systems')},

-- Pitot Heater Toggle
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.pitot_1'), category = _('Systems')},
{                                                           down = device_commands.Button_35, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.pitot_0'), category = _('Systems')},
{                                                           down = device_commands.Button_36, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.pitot'), category = _('Systems')},

-- Fuel Pump Toggle
{                                                           down = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_pump_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_43, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_pump_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_44, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_pump'), category = _('Engine Controls')},

-- Carb. Air Control Lever
{                                                           down = device_commands.Button_45, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.carburettor_flap_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_45, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.carburettor_flap_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_46, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.carburettor_flap'), category = _('Engine Controls')},

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
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.deicer_1'), category = _('Systems')},
{                                                           down = device_commands.Button_21, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.deicer_0'), category = _('Systems')},
{                                                           down = device_commands.Button_22, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.deicer'), category = _('Systems')},

-- U/C Emergency Release Lever
{                                                           down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.uc_emergency'), category = _('Systems')},

-- Wobble Type Fuel Pump
{                                                           down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.wobble'), category = _('Engine Controls')},

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
{                                                           down = device_commands.Button_26, cockpit_device_id  = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.uc'), category = _('Systems')},

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
{                                                           down = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_37, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_38, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_primary'), category = _('Engine Controls')},

-- Droptank Cock
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank_1'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_41, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank_0'), category = _('Engine Controls')},
{                                                           down = device_commands.Button_42, cockpit_device_id = devices.ENGINE_CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.fuel_cock_droptank'), category = _('Engine Controls')},

-- Droptank Release Handle
{                                                           down = device_commands.Button_13, cockpit_device_id = devices.WEAPONS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.droptank_release'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Canopy Controls ------------------------------------------------------------------------
-- Canopy Movement Controls
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.canopy_1'), category = _('Systems')},
{                                                           down = device_commands.Button_51, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.canopy_0'), category = _('Systems')},
{                                                           down = device_commands.Button_52, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.canopy'), category = _('Systems')},

-- Cockpit Jettison Pull Ball
{                                                           down = device_commands.Button_57, up = device_commands.Button_57, cockpit_device_id = devices.CONTROLS, value_down = 1.0, value_up = 0.0, name = _('Input.SpitfireLFMkIX.canopy_jettison'), category = _('Systems')},

-- Side Door Movement Controls
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.sidedoor_1'), category = _('Systems')},
{                                                           down = device_commands.Button_59, cockpit_device_id = devices.CONTROLS, value_down = 0.0, name = _('Input.SpitfireLFMkIX.sidedoor_0'), category = _('Systems')},
{                                                           down = device_commands.Button_60, cockpit_device_id = devices.CONTROLS, value_down = 1.0, name = _('Input.SpitfireLFMkIX.sidedoor'), category = _('Systems')},
-- ----------------------------------------------------------------------------------------



-- Knee-board -----------------------------------------------------------------------------
{                                                           down = device_commands.Button_1, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Next Page'), category = _('Kneeboard')},
{                                                           down = device_commands.Button_2, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{                                                           down = iCommandPlaneShowKneeboard, name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{                                                           down = iCommandPlaneShowKneeboard, up = iCommandPlaneShowKneeboard, value_down = 1.0, value_up = -1.0, name = _('Kneeboard glance view'), category = _('Kneeboard')},
{                                                           down = device_commands.Button_3, cockpit_device_id = devices.KNEEBOARD, value_down = 1.0, name = _('Kneeboard current position mark point'), category = _('Kneeboard')},
-- ----------------------------------------------------------------------------------------

-- Night Vision Goggles -------------------------------------------------------------------
{                                                           down = iCommandViewNightVisionGogglesOn, name = _('Night Vision Goggles'), category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Up, name = _('Night Vision Goggles Gain Up'), category = _('Sensors')},
{                                                           pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},
-- ----------------------------------------------------------------------------------------

-- FAC ------------------------------------------------------------------------------------
--{                                                           down = iCommandViewBinocular, name = _('Binocular view toggle'), category = _('FAC')},
--{                                                           down = iCommandViewLaserOnOff, name = _('Binocular laser illumination toggle'), category = _('FAC')},
--{                                                           down = iCommandViewIR, name = _('Binocular view IR mode'), category = _('FAC')},
-- ----------------------------------------------------------------------------------------
},



axisCommands = {
-- Defaults for joystick axes -------------------------------------------------------------
{combos = defaultDeviceAssignmentFor("roll"), action = iCommandPlaneRoll, name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch"), action = iCommandPlanePitch, name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"), action = iCommandPlaneRudder, name = _('Rudder')},
-- ----------------------------------------------------------------------------------------



-- Joystick -------------------------------------------------------------------------------
-- Wheel Brakes Lever
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_4, name = _('Input.SpitfireLFMkIX.wheel_brakes_slider'), category = _('Stick')},
-- ----------------------------------------------------------------------------------------



-- Main Panel -----------------------------------------------------------------------------
-- Altimeter
{                                                           cockpit_device_id = devices.CONTROLS, action = device_commands.Button_39, name = _('Input.SpitfireLFMkIX.altimeter_slider'), category = _('Front Dash')},

-- Illumination Controls - LH Rheostat
{                                                           action = device_commands.Button_3, cockpit_device_id = devices.TERTIARY_CONTROLS, name = _('Input.SpitfireLFMkIX.illumination_lh_slider'), category = _('Cockpit Illumination')},
-- Illumination Controls - RH Rheostat
{                                                           action = device_commands.Button_6, cockpit_device_id = devices.TERTIARY_CONTROLS, name = _('Input.SpitfireLFMkIX.illumination_rh_slider'), category = _('Cockpit Illumination')},
-- ----------------------------------------------------------------------------------------



-- Magnetic Compass -----------------------------------------------------------------------
{                                                           action = device_commands.Button_19, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.compass_slider'), category = _('Front Dash')},
-- ----------------------------------------------------------------------------------------



-- Gun Sight and Tertiary Weapons Controls ------------------------------------------------
-- Gun Sight Setter Rings - Range
{                                                           action = device_commands.Button_9, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_range_slider'), category = _('Gunsight')},
-- Gun Sight Setter Rings - Base
{                                                           action = device_commands.Button_12, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_span_slider'), category = _('Gunsight')},
-- Gun Sight Dimmer
{                                                           action = device_commands.Button_22, cockpit_device_id = devices.WEAPONS, name = _('Input.SpitfireLFMkIX.gun_sight_illumination_slider'), category = _('Gunsight')},
-- ----------------------------------------------------------------------------------------



-- Port Wall ------------------------------------------------------------------------------
-- Elevator Trim Wheel
{                                                           action = device_commands.Button_31, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.trim_elevator_slider'), category = _('Flight Control')},
-- Rudder Trim Wheel
{                                                           action = device_commands.Button_46, cockpit_device_id = devices.CONTROLS, name = _('Input.SpitfireLFMkIX.trim_rudder_slider'), category = _('Flight Control')},

-- Throttle Quadrant - Throttle Lever
{combos = defaultDeviceAssignmentFor("thrust"),             action = device_commands.Button_5, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.SpitfireLFMkIX.throttle_slider'), category = _('Engine Controls')},
-- Throttle Quadrant - Airscrew Lever
{                                                           action = device_commands.Button_8, cockpit_device_id = devices.ENGINE_CONTROLS, name = _('Input.SpitfireLFMkIX.pitch_slider'), category = _('Engine Controls')},
-- ----------------------------------------------------------------------------------------



-- TrackIR axes ---------------------------------------------------------------------------
{                                                           action = iCommandViewVerticalAbs, name = _('Absolute Camera Vertical View')},
{                                                           action = iCommandViewHorizontalAbs, name = _('Absolute Camera Horizontal View')},
{                                                           action = iCommandViewHorTransAbs, name = _('Absolute Horizontal Shift Camera View')},
{                                                           action = iCommandViewVertTransAbs, name = _('Absolute Vertical Shift Camera View')},
{                                                           action = iCommandViewLongitudeTransAbs, name = _('Absolute Longitude Shift Camera View')},
{                                                           action = iCommandViewRollAbs, name = _('Absolute Roll Shift Camera View')},
{                                                           action = iCommandViewZoomAbs, name = _('Zoom View')},
-- ----------------------------------------------------------------------------------------
},
}
