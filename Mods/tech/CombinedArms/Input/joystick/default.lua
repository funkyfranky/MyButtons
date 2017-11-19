return {
forceFeedback = {
trimmer = 1.0,
shake = 0.5,
swapAxes = false,
},

keyCommands = {

-- fvh: begin
{down = iCommandVehicle_IR, name = _('IR Vision ON/OFF'),category = _('Sensors')},
-- fvh: end

{combos = {{key = 'JOY_BTN1'}}, down = iCommandPlaneFire,up = iCommandPlaneFireOff, name = _('Fire selected weapon'),category = _('Weapon')},
{combos = {{key = 'JOY_BTN2'}}, down = iCommandVehicle_FireSecondary,up = iCommandVehicle_FireSecondaryOff, name = _('Fire Secondary Weapon'),category = _("Weapon")},
{down = iCommandGZoomIn, up = iCommandGZoomOut, name = _('Sight Zoom Narrow (press and hold)'),category = _("Sensors")},
{down = iCommandGChangeWS, name = _('Turret select'),category = _('Weapon')},
{down = iCommandGChangeLN, name = _('Turret weapon select '),category = _('Weapon')},
{down = iCommandGLockon, name = _('Target Lock'), category = _('Targeting')},
{down = iCommandGLockoff, name = _('Target Unlock'), category = _('Targeting')},
{down = iCommandGZoomIn, pressed = iCommandGZoomInPressed, name = _('Sight Zoom In'), category = _('Sensors')},
{down = iCommandGZoomOut, pressed = iCommandGZoomOutPressed, name = _('Sight Zoom Out'), category = _('Sensors')},
-- fvh: not working, wrong iCommand
--{down = iCommandViewNVGOnOff, name = _('Night Vision ON/OFF'),category = _('Sensors')},
{down = iCommandVehicle_LLTV, name = _('Night Vision ON/OFF'),category = _('Sensors')},
{down = iCommandViewNVG_GainUp, name = _('Night Vision Gain Up'), category = _('Sensors')},
{down = iCommandViewNVG_GainDown, name = _('Night Vision Gain Down'), category = _('Sensors')},
{down = iCommandVehicle_LaunchRedFlare, name = _('Launch Red Flare'), category = _('Ground unit')},
{down = iCommandVehicle_LaunchGreenFlare, name = _('Launch Green Flare'), category = _('Ground unit')},
{down = iCommandVehicle_LaunchWhiteFlare, name = _('Launch White Flare'), category = _('Ground unit')},

{down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Vehicle Accelerate'), category = _('Moving')},
{down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Vehicle Brake'), category = _('Moving')},
{down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Vehicle Turn Left'), category = _('Moving')},
{down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Vehicle Turn Right'), category = _('Moving')},
{down = iCommandPlaneWheelParkingBrake, name = _('Hand Brake Toggle'), category = _('Moving')},
{down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Vehicle Shift Gear Down'), category = _('Moving')},
{down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Vehicle Shift Gear Up'), category = _('Moving')},
{down = iCommandGIsometricView, name = _('Isometric view'), category = _('View')},
{down = iCommandDriverView, name = _('Toggle Driver/Gunner Role'), category = _('View')},
{down = iCommandPlaneAutopilot, name = _('Autopilot'), category = _('Moving')},
{down = iCommandPlaneDown, name = _('Cruise control'), category = _('Moving')},

{down = iCommandGSelectFeedSlot2, name = _('Select feed slot #2'), category = _('Weapon')},
{down = iCommandGSelectFeedSlot1, name = _('Select feed slot #1'), category = _('Weapon')},
{down = iCommandMissionResourcesManagement, name = _('Rearming'), category = _('Ammo maintenance')},
{down = iCommandGEmissionToggle, name = _('Radar On/Off'), category = _('Sensors')},
{down = iCommand_Ground_IFF_Down, name = _('IFF test'), category = _("Sensors")},
{down = iCommandEasyRadarScaleUp , name = _('Radar scale in') , category = _('Sensors')},
{down = iCommandEasyRadarScaleOut, name = _('Radar scale out'), category = _('Sensors')},
{down = iCommandGRangefinderOn, up = iCommandGRangefinderOff, name = _('Rangefinder Activate'), category = _("Sensors")},
{up = iCommandGRangefinderReset, name = _('Rangefinder Reset'), category = _("Sensors")},
{down = iCommandGStartStopTracking, name = _('Track Target On/Off'), category = _("Targeting")},

{down = iCommandGGroupModeOn, up = iCommandGGroupModeOff, name = _('Group Control Mode'), category = _('Ground unit')},
{down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},

{down = iCommandGViewWSCenter, name = _('Turret to hull align'), category = _('Targeting')},

{down = iCommandGStabilize, name = _('Turret to current direction lock'), category = _('Targeting')},

{down = iCommandVehicle_ReloadStart, name = _('Ammunition reloading manual start'), category = _('Ammo maintenance')},
{down = iCommandVehicle_AmmoMaintainInterrupt, name = _('Ammunition maintenance interrupt'), category = _('Ammo maintenance')},

-- Turret rotation
{combos = {{key = 'JOY_BTN_POV1_L'}}, pressed = iCommandRotateTurretLeftPressed, down = iCommandRotateTurretLeftReleased, name = _('Rotate turret left'), category = _('Targeting')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, pressed = iCommandRotateTurretRightPressed, down = iCommandRotateTurretRightReleased, name = _('Rotate turret right'), category = _('Targeting')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, pressed = iCommandRotateTurretUpPressed, down = iCommandRotateTurretUpReleased, name = _('Turret up'), category = _('Targeting')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, pressed = iCommandRotateTurretDownPressed, down = iCommandRotateTurretDownReleased, name = _('Turret down'), category = _('Targeting')},
-- Turret rotation

-- JTAC
{down = iCommandViewBinocular, name = _('Binocular view'), category = _('View')},
-- Sight Correction
{pressed = iCommandVehicleElevationCorrectionUp, name = _('Sight Elevation Correction Increase'), category = _('Sensors')},
{pressed = iCommandVehicleElevationCorrectionDown, name = _('Sight Elevation Correction Decrease'), category = _('Sensors')},
{pressed = iCommandVehicleAzimuthCorrectionLeft, name = _('Sight Azimuth Correction To The Left'), category = _('Sensors')},
{pressed = iCommandVehicleAzimuthCorrectionRight, name = _('Sight Azimuth Correction To The Right'), category = _('Sensors')},
-- Sight Reticles Change
{down = iCommandVehicleSightReticleAlternate, name = _('Sight Reticle Alternate'), category = _('Sensors')},
{down = iCommandGReticleLightToggle, name = _('Sight Reticle Light Toggle'), category = _('Sensors')},
},
axisCommands = {
-- joystick axes 
{action = iCommandGSteeringWheel, name = _('Turn left/right')},
{action = iCommandGAcceleratorAndBrake, name = _('Accelerator pedal')},

{action = iCommandPlaneSelecterHorizontalAbs, name = _('Rotate Turret')},
{action = iCommandPlaneSelecterVerticalAbs, name = _('Turret Elevation')},
},

}
