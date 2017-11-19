return {
keyCommands = {

{combos = {{key = 'Space'}},down = iCommandPlaneFire,up = iCommandPlaneFireOff, name = _('Fire selected weapon'),category = _('Weapon')},
{combos = {{key = 'Space', reformers = {'LShift'}}}, down = iCommandVehicle_FireSecondary,up = iCommandVehicle_FireSecondaryOff, name = _('Fire Secondary Weapon'),category = _("Weapon")},
{combos = {{key = 'Q'}}, down = iCommandGChangeWS, name = _('Turret select'),category = _('Weapon')},
{combos = {{key = 'E'}}, down = iCommandGChangeLN, name = _('Turret weapon select '),category = _('Weapon')},
{combos = {{key = '1'}}, down = iCommandGSelectFeedSlot1, name = _('Select feed slot #1'), category = _('Weapon')},
{combos = {{key = '2'}}, down = iCommandGSelectFeedSlot2, name = _('Select feed slot #2'), category = _('Weapon')},
{combos = {{key = 'Enter'}, }, down = iCommandGLockon, name = _('Target Lock'), category = _('Targeting')},
{combos = {{key = 'Back'}, }, down = iCommandGLockoff, name = _('Target Unlock'), category = _('Targeting')},
{combos = {{key = '='}, }, down = iCommandGZoomIn, pressed = iCommandGZoomInPressed, name = _('Sight Zoom In'), category = _('Sensors')},
{combos = {{key = '-'}, }, down = iCommandGZoomOut, pressed = iCommandGZoomOutPressed, name = _('Sight Zoom Out'), category = _('Sensors')},
{combos = {{key = '=', reformers = {'RCtrl'}}},  down = iCommandEasyRadarScaleUp , name = _('Radar scale in') , category = _('Sensors')},
{combos = {{key = '-', reformers = {'RCtrl'}}},  down = iCommandEasyRadarScaleOut, name = _('Radar scale out'), category = _('Sensors')},
{combos = {{key = 'O'}}, down = iCommandGZoomIn, up = iCommandGZoomOut, name = _('Sight Zoom Narrow (press and hold)'),category = _("Sensors")},
{combos = {{key = 'N'}}, down = iCommandVehicle_LLTV, name = _('Night Vision ON/OFF'),category = _('Sensors')},
{combos = {{key = 'N', reformers = {'RCtrl'}}}, down = iCommandViewNVG_GainUp, name = _('Night Vision Gain Up'), category = _('Sensors')},
{combos = {{key = 'N', reformers = {'RAlt'}}} , down = iCommandViewNVG_GainDown, name = _('Night Vision Gain Down'), category = _('Sensors')},
{combos = {{key = 'N', reformers = {'RShift'}}}, down = iCommandVehicle_IR, name = _('IR Vision ON/OFF'),category = _('Sensors')},
{combos = {{key = '1', reformers = {'LAlt'}}} , down = iCommandVehicle_LaunchRedFlare, name = _('Launch Red Flare'), category = _('Ground unit')},
{combos = {{key = '2', reformers = {'LAlt'}}} , down = iCommandVehicle_LaunchGreenFlare, name = _('Launch Green Flare'), category = _('Ground unit')},
{combos = {{key = '3', reformers = {'LAlt'}}} , down = iCommandVehicle_LaunchWhiteFlare, name = _('Launch White Flare'), category = _('Ground unit')},
{combos = {{key = 'L'}, }, down = iCommandGRangefinderOn, up = iCommandGRangefinderOff, name = _('Rangefinder Activate'), category = _("Sensors")},
{combos = {{key = 'L', reformers = {'RCtrl'}}, }, up = iCommandGRangefinderReset, name = _('Rangefinder Reset'), category = _("Sensors")},
{combos = {{key = 'L', reformers = {'RShift'}}, }, down = iCommandGStartStopTracking, name = _('Track Target On/Off'), category = _("Targeting")},


{combos = {{key = 'W'}}, down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Vehicle Accelerate'), category = _('Moving')},
{combos = {{key = 'S'}}, down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Vehicle Brake'), category = _('Moving')},
{combos = {{key = 'A'}}, down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Vehicle Turn Left'), category = _('Moving')},
{combos = {{key = 'D'}}, down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Vehicle Turn Right'), category = _('Moving')},
{combos = {{key = 'H'}}, down = iCommandPlaneWheelParkingBrake, name = _('Hand Brake Toggle'), category = _('Moving')},
{combos = {{key = 'I'}}, down = iCommand_Ground_IFF_Down, name = _('IFF test'), category = _("Sensors")},
{combos = {{key = 'I', reformers = {'LShift'}}}, down = iCommandGEmissionToggle, name = _('Radar On/Off'), category = _('Sensors')},
{combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Vehicle Shift Gear Down'), category = _('Moving')},
{combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Vehicle Shift Gear Up'), category = _('Moving')},
{combos = {{key = 'Insert'}}, down = iCommandGIsometricView, name = _('Isometric view'), category = _('View')},
{combos = {{key = 'C'}}, down = iCommandPlaneAutopilot, name = _('Autopilot'), category = _('Moving')},
{combos = {{key = 'T'}}, down = iCommandPlaneDown, name = _('Cruise control'), category = _('Moving')},
{combos = {{key = 'C', reformers = {'LCtrl'}}}, down = iCommandDriverView, name = _('Toggle Driver/Gunner Role'), category = _('View')},

{combos = {{key = 'G'}}, down = iCommandGGroupModeOn, up = iCommandGGroupModeOff, name = _('Group Control Mode'), category = _('Ground unit')},
{combos = {{key = '\\'}}, down = iCommandToggleCommandMenu, name = _('Communication menu'), category = _('Radio Communications')},

{combos = {{key = 'Num5'}}, down = iCommandGViewWSCenter, name = _('Turret to hull align'), category = _('Targeting')},

{combos = {{key = 'V'}}, down = iCommandGStabilize, name = _('Turret to current direction lock'), category = _('Targeting')},

{combos = {{key = 'R', reformers = {'LCtrl'}}}, down = iCommandVehicle_ReloadStart, name = _('Ammunition reloading manual start'), category = _('Ammo maintenance')},
{combos = {{key = 'R', reformers = {'LShift', 'LCtrl'}}}, down = iCommandVehicle_AmmoMaintainInterrupt, name = _('Ammunition maintenance interrupt'), category = _('Ammo maintenance')},
{combos = {{key = '\\', reformers = {'LAlt'}}}, down = iCommandVehicle_RearmingStart, name = _('Rearming'), category = _('Ammo maintenance')},
--{combos = {{key = '\\', reformers = {'LShift','LAlt'}}}, down = iCommandVehicle_RearmingAbort, name = _('Rearming abort'), category = _('Rearming')},

-- JTAC
{combos = {{key = 'B'}}, down = iCommandViewBinocular, name = _('Binocular view'), category = _('View')},

{combos = {{key = 'Left'}}, pressed = iCommandRotateTurretLeftPressed, down = iCommandRotateTurretLeftReleased, name = _('Rotate turret left'), category = _('Targeting')},
{combos = {{key = 'Right'}}, pressed = iCommandRotateTurretRightPressed, down = iCommandRotateTurretRightReleased, name = _('Rotate turret right'), category = _('Targeting')},
{combos = {{key = 'Up'}}, pressed = iCommandRotateTurretUpPressed, down = iCommandRotateTurretUpReleased, name = _('Turret up'), category = _('Targeting')},
{combos = {{key = 'Down'}}, pressed = iCommandRotateTurretDownPressed, down = iCommandRotateTurretDownReleased, name = _('Turret down'), category = _('Targeting')},

-- Sight Correction
{combos = {{key = 'Home'}}, pressed = iCommandVehicleElevationCorrectionUp, name = _('Sight Elevation Correction Increase'), category = _('Sensors')},
{combos = {{key = 'End'}}, pressed = iCommandVehicleElevationCorrectionDown, name = _('Sight Elevation Correction Decrease'), category = _('Sensors')},
{pressed = iCommandVehicleAzimuthCorrectionLeft, name = _('Sight Azimuth Correction To The Left'), category = _('Sensors')},
{pressed = iCommandVehicleAzimuthCorrectionRight, name = _('Sight Azimuth Correction To The Right'), category = _('Sensors')},
-- Sight Reticles Change
{combos = {{key = 'F', reformers = {'LCtrl'}}}, down = iCommandVehicleSightReticleAlternate, name = _('Sight Reticle Alternate'), category = _('Sensors')},
{combos = {{key = 'F'}}, down = iCommandGReticleLightToggle, name = _('Sight Reticle Light Toggle'), category = _('Sensors')},

{combos = {{key = 'F10', reformers = {'RCtrl'}}}, down = iCommandViewPPI, name = _('Plan Position Indicator'), category = _('Sensors')},
},
}
