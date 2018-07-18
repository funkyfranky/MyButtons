local res = external_profile("Config/Input/Aircrafts/common_keyboard_binding.lua")
dofile(folder.."../../Cockpit/Scripts/devices.lua")
dofile(folder.."../../Cockpit/Scripts/command_defs.lua")
join(res.keyCommands,{
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- begin custom assignments
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- flight data unit
{down = 3200, up = 3200, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('HÖJD CISI LD/RHM (toggle)'), category = _('_My Buttons')}, --working, toggle only
{down = 3201, up = 3201, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Slav SI Switch F/T (toggle)'), category = _('_My Buttons')}, --working, toggle only
{down = 3210, up = 3210, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Pitch Gear Switch Automatic/Landing (toggle)'), category = _('_My Buttons')}, --working
{down = 3401, up = 3401, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('HUD Position Low/High (toggle)'), category = _('_My Buttons')}, --working, toggle only
{down = 3405, up = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Ejection Seat Arm/Disarm'), category = _('_My Buttons')}, --working
{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Canopy Close/Center'), category = _('_My Buttons')}, --working
{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Canopy Open/Center'), category = _('_My Buttons')}, -- working
{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up =-1.0, name = _('Canopy Close/Open'), category = _('_My Buttons')}, --working
{down = 3407, up = 3407, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Canopy Jettison'), category = _('_My Buttons')}, --added v0.5
{down = 3408, up = 3408, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Parking Brake On/Off'), category = _('_My Buttons')}, --working
{down = 3511, up = 3511, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('TILS Channel Layer Selection 1-10/11-20 (toggle)'), category = _('_My Buttons')}, --working, toggle only
{down = 3601, up = 3602, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Airbrake Out/In'), category = _('_My Buttons')}, --working
{down = 3718, up = 3718, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Oxygen Lever On/Off'), category = _('_My Buttons')}, --working
{down = 3719, up = 3719, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0, value_up = 1.0, name = _('Landing Gear Lever Up/Down'), category = _('_My Buttons')}, --working
{down = 3723, up = 3723, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Lever Up/Down (toggle)'), category = _('_My Buttons')}, --working
{down = 3301, up = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Autopilot SPAK/ATT'), category = _('_My Buttons')}, --added v0.5
{down = 3303, up = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Autopilot HÖJD/ATT'), category = _('_My Buttons')}, --added v0.5
{down = 3720, up = 3720, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Backup ADI Cage Depress/Release'), category = _('_My Buttons')}, --added v1.3
{down = 3091, up = 3091, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('FL37 ADI Fast Erect (Snabbresning) Depress/Release'), category = _('_My Buttons')}, --added v1.3
{down = 3722, up = 3722, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Max G Reset Depress/Release'), category = _('_My Buttons')}, --added v1.3
{down = 3305, up = 3305, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Roll Centering Depress/Release'), category = _('_My Buttons')}, --added v1.3
{down = 3716, up = 3716, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Emergency Roll Trim (NÖDTRIM ROLL) Right(H)/Center'), category = _('_My Buttons')}, --added v1.3
{down = 3716, up = 3716, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Emergency Roll Trim (NÖDTRIM ROLL) Left(V)/Center'), category = _('_My Buttons')}, --added v1.3
{down = 3918, up = 3918, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Emergency Yaw Trim (SIDTRIM) Right(H)/Center'), category = _('_My Buttons')}, --added v1.3
{down = 3918, up = 3918, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Emergency Yaw Trim (SIDTRIM) Left(V)/Center'), category = _('_My Buttons')}, --added v1.3
{down = 3402, up = 3402, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Magnetic Declination Cover Open/Close'), category = _('_My Buttons')}, -- added v1.3
{pressed = 3724,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.010,            name = _("Magnetic Declination Increase"), category = _("_My Buttons")}, --added v1.3
{pressed = 3724,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.010,            name = _("Magnetic Declination Decrease"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.005,            name = _("Backup Altimeter Setting Up - Slow"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.005,            name = _("Backup Altimeter Setting Down - Slow"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.015,            name = _("Backup Altimeter Setting Up - Normal"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.015,            name = _("Backup Altimeter Setting Down - Normal"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.045,            name = _("Backup Altimeter Setting Up - Fast"), category = _("_My Buttons")}, --added v1.3
{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.045,            name = _("Backup Altimeter Setting Down - Fast"), category = _("_My Buttons")}, --added v1.3

-- engine panel
{down = 3001, up = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("System Start Switch On/Off"), category = _("_My Buttons")}, --working
{down = 3002, up = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Low-pressure Fuel Valve On/Off'), category = _('_My Buttons')}, --working
{down = 3003, up = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Ignition System Man/Aut'), category = _('_My Buttons')}, --working
{down = 3004, up = 3004, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Aterstart (Restart) Switch On/Off'), category = _('_My Buttons')}, --added v0.6
{down = 3005, up = 3005, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 1.0, name = _("High-pressure Fuel Valve On/Off (toggle)"), category = _("_My Buttons")}, --working, toggle only
{pressed = 3004, up = 3005, cockpit_device_id = devices.ENGINEPANEL, value_pressed = 1.0, value_up = 1.0,  name = _("High-pressure Fuel Valve Off/Idle"), category = _("_My Buttons")}, --added v1.1
{down = 3006, up = 3006, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Manual Afterburner Fuel Regulator On/Off (toggle)"), category = _("_My Buttons")}, --working
{down = 3007, up = 3007, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Manual Fuel Regulator On/Off (toggle)"), category = _("_My Buttons")}, --working
{down = 3008, up = 3008, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Engine De-Ice On/Off (toggle)"), category = _("_My Buttons")}, --working, toggle only
{down = 3304, up = 3304, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Autopilot Autothrottle mode AFK On/Off'), category = _('_My Buttons')}, --working
{down = 3913, up = 3913, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Autopilot Maintenance Testing Mode On/Off'), category = _('_My Buttons')}, --added v0.6
{down = 3919, up = 3919, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('DME Selector On/Off'), category = _('_My Buttons')}, --working
{down = 3920, up = 3920, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('IFF/Transponder Power On/Off'), category = _('_My Buttons')}, --working
{down = 3920,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('IFF/Transponder Power On'), category = _('_My Buttons')}, --added v1.3
{down = 3920,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('IFF/Transponder Power Off'), category = _('_My Buttons')}, --added v1.3
{down = 3921, up = 3921, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('IFF Channel Selector A+C/A'), category = _('_My Buttons')}, --working
{down = 3921,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('IFF Channel Selector A+C'), category = _('_My Buttons')}, --added v1.3
{down = 3921,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('IFF Channel Selector A'), category = _('_My Buttons')}, --added v1.3
{down = 3924, up = 3924, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, value_up = 1.0, name = _('Flight Recorder Till/Fran'), category = _('_My Buttons')}, --working
{down = 3924, up = 3924, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Flight Recorder Fran/Till'), category = _('_My Buttons')}, --working
{down = 3925, up = 3925, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Data Cartridge Insert/Remove'), category = _('_My Buttons')}, --working
{down = 3925,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('Data Cartridge Insert'), category = _('_My Buttons')}, --added v0.6
{down = 3925,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('Data Cartridge Remove'), category = _('_My Buttons')}, --added v0.6
{down = 3000, up = 3000, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Missile Select Button (IR-RB FRAMSTEGN) Depress/Release'), category = _('_My Buttons')}, --added v1.3 (seems to be same button number as Cabin Air Valve)
{down = 3905,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Autopilot SA Out'), category = _('_My Buttons')}, --added v1.3
{down = 3905,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Autopilot SA In'), category = _('_My Buttons')}, --added v1.3
{down = 3906,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB High Alpha Warning Out'), category = _('_My Buttons')}, --added v1.3
{down = 3906,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB High Alpha Warning In'), category = _('_My Buttons')}, --added v1.3
{down = 3907,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Trim System Out'), category = _('_My Buttons')}, --added v1.3
{down = 3907,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Trim System In'), category = _('_My Buttons')}, --added v1.3
{down = 3908,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB CI/SI Out'), category = _('_My Buttons')}, --added v1.3
{down = 3908,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB CI/SI In'), category = _('_My Buttons')}, --added v1.3
{down = 3909,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Ejection System Out'), category = _('_My Buttons')}, --added v1.3
{down = 3909,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Ejection System In'), category = _('_My Buttons')}, --added v1.3
{down = 3910,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Engine Out'), category = _('_My Buttons')}, --added v1.3
{down = 3910,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Engine In'), category = _('_My Buttons')}, --added v1.3
-- lights
{down = 3001, up = 3001, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Anti Collision Lights On/Off'), category = _('_My Buttons')}, --working
{down = 3002, up = 3002, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Navigation Lights Bright/Off'), category = _('_My Buttons')}, --working
{down = 3002, up = 3002, cockpit_device_id = devices.LIGHTS, value_down =-2.0, value_up = 0.0, name = _('Navigation Lights Dim/Off'), category = _('_My Buttons')}, --working
{down = 3003, up = 3003, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Formation Lights On/Off'), category = _('_My Buttons')}, --working
{down = 3004, up = 3004, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Position Lights On/Off'), category = _('_My Buttons')}, --working
{down = 3006, up = 3006, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = -1.0, name =_('Panel Lights 2-Pos. Switch'), category = _('_My Buttons')}, --added v1.2 LeCuvier
{down = 3007, up = 3007, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = -1.0, name =_('Flood Lights 2-Pos. Switch'), category = _('_My Buttons')}, --added v1.2 LeCuvier
{down = 3008, up = 3008, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = -1.0, name =_('Instrument Lights 2-Pos. Switch'), category = _('_My Buttons')}, --added v1.2 LeCuvier
-- brightness
{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.2, value_up = 0.0, name = _('Position Lights Brightness 3/1'), category = _('_My Buttons')}, --working
{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.1, value_up = 0.0, name = _('Position Lights Brightness 2/1'), category = _('_My Buttons')}, --working
{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.2, value_up = 0.1, name = _('Position Lights Brightness 3/2'), category = _('_My Buttons')}, --working
{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.0, value_up = 0.1, name = _('Position Lights Brightness 1/2'), category = _('_My Buttons')}, --working
{down = 3009, up = 3009, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Taxi/Landing Lights Switch On/Off'), category = _('_My Buttons')}, --working
{down = 3010, up = 3010, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Emergency Lights Switch On/Off'), category = _('_My Buttons')}, --working
-- device "7"
{down = 3001, up = 3001, cockpit_device_id = 7, value_down = 1.0, value_up = 0.0, name = _('Thrust Reverser On/Off'), category = _('_My Buttons')}, --working
-- electrical system
{down = 3001, up = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Main Electric Power On/Off'), category = _('_My Buttons')}, --working
{down = 3002, up = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Generator On/Off'), category = _('_My Buttons')}, --working
{down = 3003, up = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Backup Generator On/Off'), category = _('_My Buttons')}, --working
-- radar altimeter
{down = 3002, up = 3002, cockpit_device_id = devices.RADARALT, value_down = 1.0, value_up = 0.0, name = _('Radar Altimeter Power On/Off (toggle)'), category = _('_My Buttons')}, --working
-- weapon system
{down = 3306, up = 3306, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, value_up = 1.0, name = _('Weapon Release Mode Fallsattomkopplare Up/Down'), category = _('_My Buttons')}, --working
{down = 3307, up = 3307, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, value_up = 1.0, name = _('RB-04/RB-15/BK Release Mode Valb/Prep'), category = _('_My Buttons')}, --working
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,                 name = _("Weapon Selector 0 SJÖ/PLAN"), category = _("_My Buttons")}, -- added v0.6
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,                 name = _("Weapon Selector 1 RB75/MARK/DYK"), category = _("_My Buttons")}, -- added v0.6
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,                 name = _("Weapon Selector 2 LUFT/RR"), category = _("_My Buttons")}, -- added v0.6
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3,                 name = _("Weapon Selector 3 AKAN/JAKT"), category = _("_My Buttons")}, -- added v0.6
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4,                 name = _("Weapon Selector 4 ATTACK"), category = _("_My Buttons")}, -- added v0.6
{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5,                 name = _("Weapon Selector 5 IR-RB"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0,                 name = _("Weapon Interval 00 VÄ"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.9,                 name = _("Weapon Interval 01 RAKT"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.8,                 name = _("Weapon Interval 02 HÖ"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.7,                 name = _("Weapon Interval 03 10m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.6,                 name = _("Weapon Interval 04 15m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5,                 name = _("Weapon Interval 05 20m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4,                 name = _("Weapon Interval 06 25m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3,                 name = _("Weapon Interval 07 30m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,                 name = _("Weapon Interval 08 40m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,                 name = _("Weapon Interval 09 50m"), category = _("_My Buttons")}, -- added v0.6
{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,                 name = _("Weapon Interval 10 60m"), category = _("_My Buttons")}, -- added v0.6
{down = 3320, up = 3320, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Fuel Tank Jettison Button Depress/Release'), category = _('_My Buttons')}, -- added v1.3
{down = 3303, up = 3303, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Weapon Emergency Release Button Depress/Release'), category = _('_My Buttons')}, -- added v1.3
{down = 3302, up = 3302, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Weapon Emergency Release Cover Open/Close'), category = _('_My Buttons')}, -- added v1.3
{down = 3402, up = 3402, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('External Tank Release Cover Open/Close'), category = _('_My Buttons')}, -- added v1.3
-- radios
{down = 3008, up = 3008, cockpit_device_id = devices.FR22, value_down = 1.0, value_up = 1.0, name = _('FR22 Radio AM/FM (toggle)'), category = _('_My Buttons')}, --changed v1.0
{down = 3210,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 0'), category = _('_My Buttons')}, --added v1.2
{down = 3211,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 1'), category = _('_My Buttons')}, --added v1.2
{down = 3212,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 2'), category = _('_My Buttons')}, --added v1.2
{down = 3213,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 3'), category = _('_My Buttons')}, --added v1.2
{down = 3214,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 4'), category = _('_My Buttons')}, --added v1.2
{down = 3215,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 5'), category = _('_My Buttons')}, --added v1.2
{down = 3216,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 6'), category = _('_My Buttons')}, --added v1.2
{down = 3217,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 7'), category = _('_My Buttons')}, --added v1.2
{down = 3218,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 8'), category = _('_My Buttons')}, --added v1.2
{down = 3219,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 9'), category = _('_My Buttons')}, --added v1.2
{pressed = 3003, up = 3003, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Left Increase'), category = _('_My Buttons')}, --added v1.3
{pressed = 3003, up = 3003, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Left Decrease'), category = _('_My Buttons')}, --added v1.3
{pressed = 3004, up = 3004, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Left Increase'), category = _('_My Buttons')}, --added v1.3
{pressed = 3004, up = 3004, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Left Decrease'), category = _('_My Buttons')}, --added v1.3
{pressed = 3005, up = 3005, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Right Increase'), category = _('_My Buttons')}, --added v1.3
{pressed = 3005, up = 3005, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Right Decrease'), category = _('_My Buttons')}, --added v1.3
{pressed = 3006, up = 3006, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Right Increase'), category = _('_My Buttons')}, --added v1.3
{pressed = 3006, up = 3006, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Right Decrease'), category = _('_My Buttons')}, --added v1.3
-- walkman
{down=3001, up = 3002, cockpit_device_id=devices.WALKMAN, value_down=1.0, value_up = 1.0, name= _('Walkman Play/Stop'), category = _('_My Buttons')}, --working
-- radar
{pressed = 3208, up = 0.0, cockpit_device_id = devices.RADAR, value_pressed = 0.1, value_up = 0.0, name = _("Anti Jamming Mode (AS) Selector Up (test)"), category = _("_My Buttons")}, -- added v1.3
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.0,                 name = _("Anti Jamming Mode (AS) Selector 0"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.1,                 name = _("Anti Jamming Mode (AS) Selector 1"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.2,                 name = _("Anti Jamming Mode (AS) Selector 2"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.3,                 name = _("Anti Jamming Mode (AS) Selector 3"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.4,                 name = _("Anti Jamming Mode (AS) Selector 4"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.5,                 name = _("Anti Jamming Mode (AS) Selector 5"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.6,                 name = _("Anti Jamming Mode (AS) Selector 6"), category = _("_My Buttons")}, -- added v0.6
{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.7,                 name = _("Anti Jamming Mode (AS) Selector 7"), category = _("_My Buttons")}, -- added v0.6
{down = 3209, up = 3209, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Gain Log/Lin"), category = _("_My Buttons")}, --working
{down = 3209, up = 3209, cockpit_device_id = devices.RADAR, value_down = 0.0, value_up = 1.0, name = _("Radar Gain Lin/Log"), category = _("_My Buttons")}, --working
{down = 3213, up = 3213, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Obstacle detection mode On/Off"), category = _("_My Buttons")}, --added v1.2 by HF
{down = 3328, up = 3328, cockpit_device_id = devices.RADAR, value_down = 0.0, value_up = 1.0, name = _("Radar Pulse Normal/Short"), category = _("_My Buttons")}, --working
{down = 3350, up = 3350, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Passive Recce On/Off"), category = _("_My Buttons")}, --working
{down = 3914, up = 3914, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar/EL Maintenance Test On/Off"), category = _("_My Buttons")}, --working
{down = 3918, up = 3918, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Ignition Coils On/Off"), category = _("_My Buttons")}, --working
{down = 3922, up = 3922, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("IFF Identification Depressed/Released"), category = _("_My Buttons")}, --added v1.3
-- doppler
{down = 3001, up = 3001, cockpit_device_id = devices.DOPPLER, value_down = 1.0, value_up = 1.0, name = _("Doppler Mode Land/Sea (toggle)"), category = _("_My Buttons")}, --working, toggle only
-- navigation panel
{down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("Datapanel Switch In/out"), category = _("_My Buttons")}, --working
{down = 3008,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0,                 name = _("Datapanel Switch Input"), category = _("_My Buttons")}, --added v0.4
{down = 3008,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0,                 name = _("Datapanel Switch Output"), category = _("_My Buttons")}, --added v0.4
{down = 3006, up = 3005, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("Radar T1/T0 Fix (first detent)"), category = _("_My Buttons")}, -- added v0.2
{down = 3007, up = 3005, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("Radar TV/T0 Fix (second detent)") , category = _("_My Buttons")}, -- added v0.2
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0,                 name = _("Datapanel 0 ID-NR"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.1,                 name = _("Datapanel 1 TAKT"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.2,                 name = _("Datapanel 2 TID"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.3,                 name = _("Datapanel 3 VIND/RUTA/MAL"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.4,                 name = _("Datapanel 4 BANA/GRANS"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.5,                 name = _("Datapanel 5 REF/LOLA"), category = _("_My Buttons")}, -- added v0.6
{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.6,                 name = _("Datapanel 6 AKT/POS"), category = _("_My Buttons")}, -- added v0.6
{down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("Data panel RENSA cover OPEN/CLOSE"), category = _("_My Buttons")}, -- added v1.3
-- RWR
{down = 3001, up = 3002, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 1.0,  name = _('RWR KB Off/Lights'), category = _('_My Buttons')}, --added v0.4
{down = 3003, up = 3002, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 1.0,  name = _('RWR KB Lights+Sound/Lights'), category = _('_My Buttons')}, --added v0.4
-- countermeasures
{down = 3003, up = 3004, cockpit_device_id = devices.COUNTERMEASURE, value_down = 1.0, value_up = 1.0, name = _('Countermeasure dispense Int/Off'), category = _('_My Buttons')}, --added v0.4
{down = 3002, up = 3004, cockpit_device_id = devices.COUNTERMEASURE, value_down = 1.0, value_up = 1.0, name = _('Countermeasure dispense Kont/Off'), category = _('_My Buttons')}, --added v0.4
{down = 3010, up = 3010, cockpit_device_id = devices.COUNTERMEASURE, value_down = 1.0, value_up = 0.0, name = _('Countermeasure KB Stråk Mod 4/0'), category = _('_My Buttons')}, --added v0.4
{down = 3028, up = 3028, cockpit_device_id = devices.COUNTERMEASURE, value_down = 0.0, value_up = 0.1, name = _('Countermeasure Chaff/Flares Selector R/RF'), category = _('_My Buttons')}, --added v0.4
{down = 3028, up = 3028, cockpit_device_id = devices.COUNTERMEASURE, value_down = 0.2, value_up = 0.1, name = _('Countermeasure Chaff/Flares Selector F/RF'), category = _('_My Buttons')}, --added v0.4
-- ERRORPANEL
{down = 3004, up = 3004, cockpit_device_id = devices.ERRORPANEL,     value_down = 1.0, value_up = 0.0, name = _('KONTROLL Indicator System Test'), category = _('_My Buttons')}, --added v1.3
-- begin added missing buttons
{down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Button L MÅL"), category = _("Navigation")}, --added v0.4
{down = 3009, up = 3009, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Button LS"), category = _("Navigation")}, --added v0.4
{down = 3010, up = 3010, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Waypoint BX"), category = _("Navigation")}, --added v0.4
-- end added missing buttons
-- end added missing buttons
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
------------------------------ end custom assignments
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

	-- Autopilot
    {combos = {{key = 'J'}}, down = 3104, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _('Autothrottle mode AFK'), category = _('Autopilot')},
    {combos = {{key = 'J', reformers = {'LCtrl'}}}, down = 3402, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autothrottle 12 or 15.5 alpha mode'), category = _('Autopilot')}, 
    {combos = {{key = 'A'}}, down = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autopilot mode ATT (Attitude hold)'), category = _('Autopilot')}, 
    {combos = {{key = 'H'}}, down = 3303, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autopilot mode HÖJD (Altitude Hold)'), category = _('Autopilot')}, 
    {combos = {{key = 'E'}}, down = 3301, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('SAS mode SPAK flight stabiliser'), category = _('Autopilot')}, 
    {combos = {{key = "O"}}, pressed = 3305, up = 3305, cockpit_device_id  = devices.FLIGHTDATAUNIT, value_pressed = 1.0, value_up = 0.0, name = _('Roll centrering (Roll trim reset)'), category = _('Flight Control')},
    {combos = {{key = 'H', reformers = {'RAlt'}}}, down = 3401, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('HUD shift to lower position'), category = _('Navigation')}, 
    {combos = {{key = "S", reformers = {'RAlt'}}}, pressed = 3404, up = 3404, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 1.0, value_up = 0, name = _('Seat adjustment up'), category = _('Navigation')},
    {combos = {{key = "S", reformers = {'RCtrl'}}}, pressed = 3404, up = 3404, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -1.0, value_up = 0, name = _('Seat adjustment down'), category = _('Navigation')},
	{combos = {{key = 'M', reformers = {'LAlt'}}},down = iCommandToggleMirrors,	name = _('Toggle Mirrors'), category = _('View Cockpit')},																																	  
    
    -- Flight Control
    {combos = {{key = 'Up'}}, down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
    {combos = {{key = 'Down'}}, down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
    {combos = {{key = 'Left'}}, down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
    {combos = {{key = 'Right'}}, down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
    {combos = {{key = 'Z'}}, down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
    {combos = {{key = 'X'}}, down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},
    
    {combos = {{key = '.', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimUp, up = iCommandPlaneTrimStop, name = _('Trim: Nose Up'), category = _('Flight Control')},
    {combos = {{key = ';', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimDown, up = iCommandPlaneTrimStop, name = _('Trim: Nose Down'), category = _('Flight Control')},
    {combos = {{key = ',', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimLeft, up = iCommandPlaneTrimStop, name = _('Trim: Left Wing Down'), category = _('Flight Control')},
    {combos = {{key = '/', reformers = {'RCtrl'}}}, pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop, name = _('Trim: Right Wing Down'), category = _('Flight Control')},
    {combos = {{key = 'Z', reformers = {'RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =-1.0, value_up =0.0, name = _('Trim: Rudder Left'), category = _('Flight Control')},
    {combos = {{key = 'X', reformers = {'RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =1.0, value_up =0.0, name = _('Trim: Rudder Right'), category = _('Flight Control')},
    
    {combos = {{key = 'Left', reformers = {'RShift','RAlt','RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3716, up = 3716, value_down =-1.0, value_up =0.0, name = _('Emergency Trim Roll Left'), category = _('Flight Control')},
    {combos = {{key = 'Right', reformers = {'RShift','RAlt','RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3716, up = 3716, value_down =1.0, value_up =0.0, name = _('Emergency Trim Roll Rght'), category = _('Flight Control')},
    {combos = {{key = 'Up', reformers = {'RShift','RAlt','RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3717, up = 3717, value_down =-1.0, value_up =0.0, name = _('Emergency Trim Pitch Up'), category = _('Flight Control')},
    {combos = {{key = 'Down', reformers = {'RShift','RAlt','RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3717, up = 3717, value_down =1.0, value_up =0.0, name = _('Emergency Trim Pitch Down'), category = _('Flight Control')},
    
    {combos = {{key = 'Z', reformers = {'RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =-1.0, value_up =0.0, name = _('Trim: Rudder Left'), category = _('Flight Control')},
    {combos = {{key = 'X', reformers = {'RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =1.0, value_up =0.0, name = _('Trim: Rudder Right'), category = _('Flight Control')},
    {combos = {{key = 'Z', reformers = {'RAlt','RCtrl'}}},cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3712, up = 3712, value_down =-1.0, value_up =0.0, name = _('Autopilot yaw trim Left'), category = _('Autopilot')},
    {combos = {{key = 'X', reformers = {'RAlt','RCtrl'}}}, cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3712, up = 3712, value_down =1.0, value_up =0.0, name = _('Autopilot yaw trim Right'), category = _('Autopilot')},
    {combos = {{key = 'Z', reformers = {'RShift','RAlt','RCtrl'}}}, cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3714, up = 3714, value_down =-1.0, value_up =0.0, name = _('Magnetic correction left'), category = _('Navigation')},
    {combos = {{key = 'X', reformers = {'RShift','RAlt','RCtrl'}}}, cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3714, up = 3714, value_down =1.0, value_up =0.0, name = _('Magnetic correction right'), category = _('Navigation')},
    {combos = {{key = 'G'}}, down = 3723,value_down =1,  cockpit_device_id = devices.FLIGHTDATAUNIT,  name = _('Landing Gear Up/Down'), category = _('Flight Control')},
    {down = 3719, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0, name = _('Landing Gear Up'), category = _('Flight Control')},
    {down = 3719, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _('Landing Gear Down'), category = _('Flight Control')},
    --{combos = {{key = "O"}}, pressed = device_commands.Button_4, cockpit_device_id  = devices.SPAK, value_pressed = 1.0, name = _('Centrera trim'  , category = _('Flight Control')},
    
    {combos = {{key = 'P', reformers = {'RAlt'}}}, down = 3001, cockpit_device_id = 7, value_down =1.0, name = _('Reversal on'), category = _('Flight Control')},
    {combos = {{key = 'P', reformers = {'RShift'}}}, down = 3001, cockpit_device_id = 7, value_down =0.0, name = _('Reversal off'), category = _('Flight Control')},
    --{combos = {{key = "B"}}, down = iCommandPlaneAirBrake, name = _("Luftbroms ut"), category = _("Flight Control")},
    {combos = {{key = "B"}}, down = 3600, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Airbrake out/in/force out'), category = _('Flight Control')},
    {combos = {{key = 'B', reformers = {'RAlt'}}}, down = 3601, up = 3601,  cockpit_device_id= devices.FLIGHTDATAUNIT, value_down =1.0, value_up = 0.0, name = _('Airbrake out (force)'), category = _('Flight Control')},
    {combos = {{key = 'B', reformers = {'RShift'}}}, down = 3602,cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Airbrake in'), category = _('Flight Control')},
    {combos = {{key = "B"}}, cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3600, value_down =1.0, name = _('Airbrake out/in/force out'), category = _('Flight Control')},
    {combos = {{key = "W"}},  down = 3698, up = 3698, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, value_up = 0.0, name = _('Wheelbrake'), category = _('Flight Control')},
    {combos = {{key = 'E', reformers = {'RShift', 'RCtrl'}}}, down = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Ejection seat arm'), category = _('Flight Control')},
    {down = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0, name = 'Ejection seat Safe', category = 'Flight Control'},
    {combos = {{key = 'C', reformers = {'RShift', 'RCtrl'}}}, down = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Canopy close'), category = _('Flight Control')},
    {combos = {{key = 'C', reformers = {'RAlt', 'RCtrl'}}}, down = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, name = _('Canopy open'), category = _('Flight Control')},
    {combos={{key='E',reformers={'LCtrl'}}},down=iCommandPlaneEject,name = _('Eject (3 times)'), category = _('Flight Control')},
    {combos={{key='W',reformers={'LCtrl','LAlt'}}},down = 3408, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Parking brake'), category = _('Flight Control')},
    
    --Navigation
    
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint L MÅL", category = "Navigation"},
    {down = 3009, up = 3009, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint LS SKU", category = "Navigation"},
    {down = 3010, up = 3010, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint Bx", category = "Navigation"},
    {down = 3011, up = 3011, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B1", category = "Navigation"},
    {down = 3012, up = 3012, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B2", category = "Navigation"},
    {down = 3013, up = 3013, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B3", category = "Navigation"},
    {down = 3014, up = 3014, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B4", category = "Navigation"},
    {down = 3015, up = 3015, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B5", category = "Navigation"},
    {down = 3016, up = 3016, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B6", category = "Navigation"},
    {down = 3017, up = 3017, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B7", category = "Navigation"},
    {down = 3018, up = 3018, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B8", category = "Navigation"},
    {down = 3019, up = 3019, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Navigation panel Waypoint B9", category = "Navigation"},
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = "Datapanel IN/UT Input / Output Switch OUT (UT)", category = "Data panel"},
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = "Datapanel IN/UT Input / Output Switch IN", category = "Data panel"},
    {down = 3020, up = 3020, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 0", category = "Data panel"},
    {down = 3021, up = 3021, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 1", category = "Data panel"},
    {down = 3022, up = 3022, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 2", category = "Data panel"},
    {down = 3023, up = 3023, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 3", category = "Data panel"},
    {down = 3024, up = 3024, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 4", category = "Data panel"},
    {down = 3025, up = 3025, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 5", category = "Data panel"},
    {down = 3026, up = 3026, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 6", category = "Data panel"},
    {down = 3027, up = 3027, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 7", category = "Data panel"},
    {down = 3028, up = 3028, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 8", category = "Data panel"},
    {down = 3029, up = 3029, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = "Data panel Digit 9", category = "Data panel"},
    {down = 3001, up = 3001, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = "Data panel RENSA (Clear)", category = "Data panel"},
    {combos = {{key = "C", reformers = {"LAlt", "LShift"}}}, down = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("Data panel RENSA cover"), category = _("Data panel")},
    {down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = "Data panel RENSA cover OPEN", category = "Data panel"},
    {down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = "Data panel RENSA cover CLOSE", category = "Data panel"},
    {combos = {{key = "T", reformers = {"RAlt"}}}, down = 3510, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("TILS rotary clockwise"), category = _("Navigation")},
    {combos = {{key = "T", reformers = {"LAlt"}}}, down = 3510, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -1.0, name = _("TILS rotary counterclockwise"), category = _("Navigation")},
    {combos = {{key = "T", reformers = {"RAlt","RCtrl"}}}, down = 3511, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -1.0, name = _("TILS rotary layer switch"), category = _("Navigation")},
    
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.6, name = "Datapanel Rotary Mode 7 - AKT POS", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.5, name = "Datapanel Rotary Mode 6 - REF LOLA", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.4, name = "Datapanel Rotary Mode 5 - BANA GRÄNS", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.3, name = "Datapanel Rotary Mode 4 - VINDRUTA MÅL", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.2, name = "Datapanel Rotary Mode 3 - TID", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.1, name = "Datapanel Rotary Mode 2 - TAKT", category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = "Datapanel Rotary Mode 1 - ID-NR", category = "Navigation"},
    
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5, name = "Weapon Selector Knob Mode 6 - IR-RB", category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4, name = "Weapon Selector Knob Mode 5 - ATTACK", category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3, name = "Weapon Selector Knob Mode 4 - AKAN JAKT", category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2, name = "Weapon Selector Knob Mode 3 - LUFT | RR", category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1, name = "Weapon Selector Knob Mode 2 - RB75 | MARK | DYK", category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = "Weapon Selector Knob Mode 1 - SJÖ | PLAN", category = "Weapons"},
    
    {combos = {{key = "M"}}, down = 3212, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Memory mode"), category = _("Radar")},
    {combos = {{key = "H", reformers = {"LCtrl"}}}, down = 3213, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Obstacle detection mode"), category = _("Radar")},
    {combos = {{key = "P", reformers = {"LCtrl"}}}, down = 3214, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Passive radar mode"), category = _("Radar")},
    {pressed = 3215, up = 3215, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 0.0, name = _("Radar elevation up"), category = _("Radar")},
    {pressed = 3215, up = 3215, cockpit_device_id = devices.RADAR, value_pressed = -1.0, value_up = 0.0, name = _("Radar elevation down"), category = _("Radar")},
    
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.0, name = _("Radar AS0"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.1, name = _("Radar AS1"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.2, name = _("Radar AS2"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.3, name = _("Radar AS3"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.4, name = _("Radar AS4"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.5, name = _("Radar AS5"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.6, name = _("Radar AS6"), category = _("Radar")},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.7, name = _("Radar AS7"), category = _("Radar")},
    {down = 3209, cockpit_device_id = devices.RADAR, value_down = 0.0, name = _("Radar LIN"), category = _("Radar")},
    {down = 3209, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Radar LOG"), category = _("Radar")},
    
    {down = 3924, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar Increase Brightness'), category = _('Radar')},  
    {down = 3924, cockpit_device_id = devices.RADAR, value_down = 0.0, name = _('Radar Decrease Brightness'), category = _('Radar')}, 
    
    {down = 3323, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar  Range Increase'), category = _('Radar')},  
    {down = 3324, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar  Range Decrease'), category = _('Radar')}, 
    {down = 3325, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar MKR Gain Increase'), category = _('Radar')}, 
    {down = 3326, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar MKR Gain Decrease'), category = _('Radar')}, 
    
    
    --HUD
    {down = 3409, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.1, name = _('HUD Brightness Increase'), category = _('HUD')}, 
    {down = 3409, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -0.1, name = _('HUD Brightness Decrease'), category = _('HUD')}, 
    
    
    {combos = {{key = "A", reformers = {"LCtrl","LShift"}}}, pressed = 3307, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 1.0, name = _("Altimeter setting up"), category = _("Flight Data")},
    {combos = {{key = "A", reformers = {"LCtrl","LAlt"}}}, pressed = 3307, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -1.0, name = _("Altimeter setting down"), category = _("Flight Data")},
    {pressed = 3307, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 4.0, name = "Altimeter setting Slow - Up", category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.05, name = "Altimeter setting Medium - Up", category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.05, name = "Altimeter setting Medium - Down", category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.33, name = "Altimeter setting Fast - Up", category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.33, name = "Altimeter setting Fast - Down", category = "Flight Data"},
    {combos = {{key = "A", reformers = {"LCtrl","LAlt", "LShift"}}}, down = 3715, value_down = 1.0, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -1.0, name = _("Altimeter setting pull-out"), category = _("Flight Data")},
    {combos = {{key = "Q", reformers = {"LCtrl"}}}, down = 3100, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - FK"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"LAlt"}}}, down = 3101, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - BER"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"RAlt"}}}, down = 3102, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - NAV"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"RCtrl"}}}, down = 3103, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - ANF"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"RShift"}}}, down = 3104, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - SPA"), category = _("Mode selector")},
    {combos = {{key = "W", reformers = {"RCtrl"}}}, down = 3105, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - LANDNAV"), category = _("Mode selector")},
    {combos = {{key = "W", reformers = {"RShift"}}}, down = 3106, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - LANDPO"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"LCtrl","LAlt"}}}, down = 3669, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - turn clockwise"), category = _("Mode selector")},
    {combos = {{key = "Q", reformers = {"LCtrl","LShift"}}}, down = 3669, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -1.0, name = _("Mode select - turn counterclockwise"), category = _("Mode selector")},
    {combos = {{key = "1", reformers = {"RShift"}}}, down = 3501, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Easy mode - Navigaton"), category = _("Mode selector")},
    {combos = {{key = "2", reformers = {"RShift"}}}, down = 3502, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Easy mode - Landing"), category = _("Mode selector")},
    {combos = {{key = "3", reformers = {"RShift"}}}, down = 3503, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Easy mode - Grond attack"), category = _("Mode selector")},
    {combos = {{key = "4", reformers = {"RShift"}}}, down = 3504, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Easy mode - Air-to-air"), category = _("Mode selector")},
    {combos = {{key = "X", reformers = {"RShift","RCtrl"}}}, down = 3200, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("HÖJD CISI"), category = _("Navigation")},
    {combos = {{key = "Z", reformers = {"RShift","RCtrl"}}}, down = 3201, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("SLAV SI"), category = _("Navigation")},
    {combos = {{key = "T", reformers = {"RShift","RCtrl"}}}, down = 3210, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Pitch gearing Automatic/Landing"), category = _("Flight Control")},
    --{combos = {{key = "S", reformers = {"RShift","RCtrl"}}}, down = 3300, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Trigger safety bracket"), category = _("Weapöns")},
    --{combos = {{key = "O", reformers = {"RShift","RCtrl"}}}, down = 3315, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Trigger"), category = _("Weapons")},
    {combos = {{key = "J", reformers = {"LCtrl","LAlt"}}}, down = 3302, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Weapon jettison Cover"), category = _("Weapons")},
    {combos = {{key = "J", reformers = {"LShift","LCtrl"}}}, down = 3303, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Weapon jettison Button"), category = _("Weapons")},
    {combos = {{key = "W", reformers = {"LShift","LCtrl"}}}, down = 3969, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1.0, name = _("Weapon selector turn clockwise"), category = _("Weapons")},
-- FF fix: added LShift modifier to Weapon selector because of conflict with parking brake assignment																								  
    {combos = {{key = "W", reformers = {"LAlt","LCtrl","LShift"}}}, down = 3969, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Weapon selector turn counterclockwise"), category = _("Weapons")},
    {combos = {{key = "J", reformers = {"RCtrl","RAlt"}}}, down = 3402, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Fuel tank jettison Cover"), category = _("Weapons")},
    {combos = {{key = "J", reformers = {"RCtrl","RShift"}}}, down = 3320, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Fuel tank jettison Button"), category = _("Weapons")},
    {combos = {{key = "C", reformers = {"LAlt","LCtrl"}}}, down = 3314, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("IR-missile uncage"), category = _("Weapons")},
    {combos = {{key = "S", reformers = {"LAlt","LCtrl"}}}, down = 3311, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("IR-missile fast select"), category = _("Weapons")},
															--{down = 3000, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Missile Select Button"), category = _("Weapons")},

    -- {combos = {{key = "W", reformers = {"LAlt"}}}, down = 3030, cockpit_device_id = 14, value_down = 1.0, name = _("Datapanel Rotary Clockwise"), category = _("Navigation")},
    -- {combos = {{key = "Q", reformers = {"LAlt"}}}, down = 3031, cockpit_device_id = 14, value_down = 1.0, name = _("Datapanel Rotary Counterclockwise"), category = _("Navigation")},
    
    -- Motor kontroll
    {combos = {{key = "F", reformers = {"LAlt"}}}, down = 3040, cockpit_device_id = 15, value_down = 1.0, name = _("Low pressure fuel valve LT Kran"), category = _("Motor")},
    {combos = {{key = "I", reformers = {"LAlt"}}}, down = 3005, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("High-pressure fuel valve (throttle to idle)"), category = _("Motor")},
    {combos = {{key = "S", reformers = {"LAlt"}}}, down = 3042, up = 3043, cockpit_device_id = 15, value_down = 1.0, value_up = 1.0, name = _("Startknapp"), category = _("Motor")},
    {combos = {{key = "A", reformers = {"RAlt"}}}, down = 3006, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Afterburner fuel valve (LTkran EBK)"), category = _("Motor")},
    {combos = {{key = "M", reformers = {"RAlt"}}}, down = 3007, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Manual fuel regulator switch"), category = _("Motor")},
    {combos = {{key = "+"}}, down = 3301, up = 3301, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Throttle down"), category = _("Motor")},
    {combos = {{key = "-"}}, down = 3302, up = 3302, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Throttle up"), category = _("Motor")},
    {combos = {{key = "I", reformers = {"RAlt"}}}, down = 3008, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Engine De-ice switch"), category = _("Motor")},
    {combos = {{key = "R", reformers = {"RAlt"}}}, down = 3002, cockpit_device_id = devices.RADARALT, value_down = 1.0, name = _("Radar altimeter switch"), category = _("Flight Data")},
    
    {down = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = 'Start System - ON', category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = 'Start System - OFF', category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = 'Ignition System - ON', category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = 'Ignition System - OFF', category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = "Low Pressure Fuel Valve- ON", category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = "Low Pressure Fuel Valve- OFF", category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = 'Main Electric Power - ON', category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = 'Main Electric Power - OFF' , category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = 'Generator - ON', category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = 'Generator - OFF', category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = 'Backup Generator - ON', category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = 'Backup Generator - OFF', category = 'Motor'},
    
    -- Weapons                                                                        
    --{combos = {{key = 'C', reformers = {'LShift'}}}, down = iCommandChangeGunRateOfFire, name = _('Cannon Rate Of Fire / Cut Of Burst select'), category = _('Weapons')},
    
    -- RADAR
    -- Weapons                                                                        
    {combos = {{key = 'JOY_BTN1'}}, down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff, name = _('Weapon Release'), category = _('Weapons')},
    {down = 3321, up = 3321, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick yaw left'), category = _('Weapons')},
    {down = 3321, up = 3321, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick yaw right'), category = _('Weapons')},
    {down = 3322, up = 3322, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick pitch up'), category = _('Weapons')},
    {down = 3322, up = 3322, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick pitch down'), category = _('Weapons')},
    {down = 3316, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Brightness up'), category = _('Weapons')},
    {down = 3316, value_down = -1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Brightness down'), category = _('Weapons')},
    {down = 3317, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Contrast up'), category = _('Weapons')},
    {down = 3317, value_down = -1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Contrast down'), category = _('Weapons')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Fast countermeasure dispense'), category = _('Countermeasures')},
    {down = 3004, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure dispense OFF'), category = _('Countermeasures')},
    {down = 3003, up = 3004, value_down = 1.0, value_up = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure dispense INT'), category = _('Countermeasures')},
    {down = 3002, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure dispense KONT'), category = _('Countermeasures')},
    {down = 3005, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod A'), category = _('Countermeasures')},
    {down = 3006, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 0'), category = _('Countermeasures')},
    {down = 3007, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 1'), category = _('Countermeasures')},
    {down = 3008, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 2'), category = _('Countermeasures')},
    {down = 3009, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 3'), category = _('Countermeasures')},
    {down = 3010, value_down = 0.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Stråk Mod 0'), category = _('Countermeasures')},
    {down = 3010, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Stråk Mod 4'), category = _('Countermeasures')},
    {down = 3011, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod 0'), category = _('Countermeasures')},
    {down = 3012, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod A'), category = _('Countermeasures')},
    {down = 3013, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod B'), category = _('Countermeasures')},
    {down = 3014, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod D'), category = _('Countermeasures')},
    {down = 3015, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod E'), category = _('Countermeasures')},
    {down = 3016, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band F'), category = _('Countermeasures')},
    {down = 3017, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band G'), category = _('Countermeasures')},
    {down = 3018, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band H'), category = _('Countermeasures')},
    {down = 3019, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band J'), category = _('Countermeasures')},
    {down = 3020, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band K'), category = _('Countermeasures')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Off'), category = _('Countermeasures')},
    {down = 3002, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Lights'), category = _('Countermeasures')},
    {down = 3003, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Lights/Sound'), category = _('Countermeasures')},
    {combos = {{key = "R", reformers = {"LAlt","LCtrl"}}}, down = 3005, value_down = 0.1, cockpit_device_id = devices.RWR, name = _('Master Volume / Sidewinder Tone Up'), category = _('Countermeasures')},
    {combos = {{key = "R", reformers = {"LAlt","RAlt"}}},down = 3005, value_down = -0.1, cockpit_device_id = devices.RWR, name = _('Master Volume / Sidewinder Tone Down'), category = _('Countermeasures')},
    {down = 3001, value_down = 1.0, up = 3001, value_up = 0.0, cockpit_device_id = devices.ERRORPANEL, name = _('KONTROLL light test'), category = _('Lights')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) On/Off'), category = _('Countermeasures')},
    {down = 3002, value_down = 1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) Code Up'), category = _('Countermeasures')},
    {down = 3002, value_down = -1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) Code Down'), category = _('Countermeasures')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Base selector turn right'), category = _('Radios')},
    {down = 3001, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('F22 Base selector turn left'), category = _('Radios')},
    {down = 3002, value_down = 0.0, cockpit_device_id = devices.FR22, name = _('FR22 Push-button H'), category = _('Radios')},
    {down = 3002, value_down = 0.05, cockpit_device_id = devices.FR22, name = _('FR22 Push-button Special 1'), category = _('Radios')},
    {down = 3002, value_down = 0.1, cockpit_device_id = devices.FR22, name = _('FR22 Push-button Special 2'), category = _('Radios')},
    {down = 3002, value_down = 0.15, cockpit_device_id = devices.FR22, name = _('FR22 Push-button Special 3'), category = _('Radios')},
    {down = 3002, value_down = 0.20, cockpit_device_id = devices.FR22, name = _('FR22 Push-button Minus'), category = _('Radios')},
    {down = 3002, value_down = 0.25, cockpit_device_id = devices.FR22, name = _('FR22 Push-button A/G'), category = _('Radios')},
    {down = 3002, value_down = 0.30, cockpit_device_id = devices.FR22, name = _('FR22 Push-button B'), category = _('Radios')},
    {down = 3002, value_down = 0.35, cockpit_device_id = devices.FR22, name = _('FR22 Push-button C/F'), category = _('Radios')},
    {down = 3002, value_down = 0.40, cockpit_device_id = devices.FR22, name = _('FR22 Push-button C2'), category = _('Radios')},
    {down = 3002, value_down = 0.45, cockpit_device_id = devices.FR22, name = _('FR22 Push-button D/E'), category = _('Radios')},
    {down = 3002, value_down = 0.50, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 0'), category = _('Radios')},
    {down = 3002, value_down = 0.55, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 1'), category = _('Radios')},
    {down = 3002, value_down = 0.60, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 2'), category = _('Radios')},
    {down = 3002, value_down = 0.65, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 3'), category = _('Radios')},
    {down = 3002, value_down = 0.70, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 4'), category = _('Radios')},
    {down = 3002, value_down = 0.75, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 5'), category = _('Radios')},
    {down = 3002, value_down = 0.80, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 6'), category = _('Radios')},
    {down = 3002, value_down = 0.85, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 7'), category = _('Radios')},
    {down = 3002, value_down = 0.90, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 8'), category = _('Radios')},
    {down = 3002, value_down = 0.95, cockpit_device_id = devices.FR22, name = _('FR22 Push-button 9'), category = _('Radios')},
    {down = 3003, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 1 and 2 Up'), category = _('Radios')},
    {down = 3003, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 1 and 2 Down'), category = _('Radios')},
    {down = 3004, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 3 Up'), category = _('Radios')},
    {down = 3004, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 3 Down'), category = _('Radios')},
    {down = 3005, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 4 Up'), category = _('Radios')},
    {down = 3005, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 4 Down'), category = _('Radios')},
    {down = 3006, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 5 and 6 Up'), category = _('Radios')},
    {down = 3006, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Frequency wheel 5 and 6 Down'), category = _('Radios')},
    {down = 3008, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 AM/FM switch'), category = _('Radios')},
    {down = 3007, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Group selector turn right'), category = _('Radios')},
    {down = 3007, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Group selector turn left'), category = _('Radios')},
    {down = 3010, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('Radio function selector turn right'), category = _('Radios')},
    {down = 3010, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('Radio function selector turn left'), category = _('Radios')},
    {down = 3011, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Push-to-talk'), category = _('Radios')},
    {down = 3011, value_down = 1.0, cockpit_device_id = devices.FR24, name = _('FR24 Push-to-talk'), category = _('Radios')},
    {down = 3012, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('Radio volume control increase'), category = _('Radios')},
    {down = 3012, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('Radio volume control decrease'), category = _('Radios')},
    {down = 3013, value_down = 1.0, up = 3013, value_up = 0.0, cockpit_device_id = devices.FR22, name = _('FR24 Mute'), category = _('Radios')},
    
    
    -- RADAR
    {pressed = 3101, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0,name = _('Radarstick Up'), category = _('Radar')},
    {pressed = 3102, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0, name = _('Radarstick Down'), category = _('Radar')},
    {pressed = 3103, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0,name = _('Radarstick Left'), category = _('Radar')},
    {pressed = 3104, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0, name = _('Radarstick Right'), category = _('Radar')},
    {down = 3010, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 120km'), category = _('Radar')},
    {down = 3011, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 60km'), category = _('Radar')},
    {down = 3012, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 30km'), category = _('Radar')},
    {down = 3013, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 15km'), category = _('Radar')},
    {down = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("A0 Mode"), category = _("Radar")},
    {down = 3002, up = 3003, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("A0 Mode (Three position switch)"), category = _("Radar")},
    {down = 3003, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("A1 Mode"), category = _("Radar")},
    {down = 3004, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("A2 Mode"), category = _("Radar")},
    {down = 3004, up = 3003, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("A2 Mode (Three position switch)"), category = _("Radar")},
    
    {down = 3005, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("T0 Fix"), category = _("Radar")},
    --{down = 3005, up = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("T0 Fix (Release T1)"), category = _("Radar")},
    {down = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("T1 Fix"), category = _("Radar")},
    {down = 3007, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("TV Fix"), category = _("Radar")},
    --{down = 3007, up = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("TV Fix (Release T1)"), category = _("Radar")},
    {down = 3090, up = 3090, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _("Reference button"), category = _("Navigation")},
    {down = 3001, cockpit_device_id = devices.DOPPLER, value_down = 1.0, name = _("Radar alitmeter land/sea mode"), category = _("Navigation")},
    
    
    
    {down=3718, cockpit_device_id=devices.FLIGHTDATAUNIT, value_down=1.0, name = _('Oxygen lever'), category = _('Misc')},
    
    -- Lights panel
    {combos = {{key = 'L', reformers = {'LShift'}}}, down = 3001, cockpit_device_id = devices.LIGHTS, value_down = -1.0, name = _('Anti collision lights switch'), category = _('Lights')},
    {combos = {{key = 'L', reformers = {'RCtrl'}}}, down = 3002, cockpit_device_id = devices.LIGHTS, value_down = -2.0, name = _('Navigation lights switch'), category = _('Lights')},
    {combos = {{key = 'L', reformers = {'LCtrl'}}}, down = 3003, cockpit_device_id = devices.LIGHTS, value_down = -1.0, name = _('Formation lights switch'), category = _('Lights')},
    --{down = 3004, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Taxi/landing lights switch'), category = _('Lights')}, -- FF fix: Taxi/landing is 3009. 3004 is for position lights!
    {down = 3001, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Anti collision lights switch - ON', category = 'Lights'},
    {down = 3001, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Anti collision lights switch - OFF' , category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Navigation lights switch - HEL', category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Navigation lights switch - OFF', category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down =-1.0, name = 'Navigation lights switch - HALV', category = 'Lights'},
    {down = 3003, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Formation lights switch - ON', category = 'Lights'},
    {down = 3003, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Formation lights switch - OFF', category = 'Lights'},
    {down = 3004, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Position lights switch - ON', category = 'Lights'},
    {down = 3004, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Position lights switch - OFF', category = 'Lights'},
    {down = 3009, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Taxi/landing lights switch - ON', category = 'Lights'},
    {down = 3009, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Taxi/landing lights switch - OFF', category = 'Lights'},
    {down = 3010, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = 'Emergency lights switch - ON', category = 'Lights'},
    {down = 3010, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = 'Emergency lights switch - OFF', category = 'Lights'},
    
    -- Error panel
    {combos = {{key = 'V'}}, down = 3001, cockpit_device_id = devices.ERRORPANEL, value_down = 1.0,  name = _('Master caution reset'), category = _('Caution panel')},
    {combos = {{key = 'V', reformers = {'LCtrl', "LShift"}}}, down = 3002, up = 3002, cockpit_device_id = devices.ERRORPANEL, value_down = 1.0, value_up = 0, name = _('Check indicator lights'), category = _('Caution panel')},
    {combos = {{key = 'V', reformers = {'LShift'}}}, down = 3003, cockpit_device_id = devices.ERRORPANEL, value_down = 1.0,  name = _('Toggle caution light full/half'), category = _('Caution panel')},
    
    -- Clock
    {combos = {{key = 'T', reformers = {"LShift"}}}, down = 3801, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = (0.5/15.0), value_up = 0, name = _('Clock Increase Time Setting'), category = _('Navigation')}, -- 15 seconds per click
    {combos = {{key = 'T', reformers = {"LCtrl"}}}, down = 3801, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -(0.5/15.0), value_up = 0, name = _('Clock Decrease Time Setting'), category = _('Navigation')}, -- 15 seconds per click
    {combos = {{key = 'T'}}, down = 3802, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0, name = _('Clock Stopwatch Start/Stop/Reset'), category = _('Navigation')},
    
    
    -- Walkman
    {down=3001, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Play'), category = _('Tape Player')},
    {down=3002, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Stop'), category = _('Tape Player')},
    {down=3003, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Fast Forward'), category = _('Tape Player')},
    {down=3004, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Fast Backward'), category = _('Tape Player')},
    {down=3005, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Volume Up'), category = _('Tape Player')},
    {down=3006, cockpit_device_id=devices.WALKMAN, value_down=1.0, name = _('Volume Down'), category = _('Tape Player')},
        

    
    -- Ground crew
    {combos = {{key = 'L', reformers = {'LCtrl', "LAlt"}}},down = 3501, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Loadout Selection'), category = _('Weapons')},
    {combos = {{key = 'F', reformers = {'LCtrl', "LAlt"}}},down = 3502, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Fuel Selection'), category = _('Weapons')},
    {combos = {{key = 'R', reformers = {'LCtrl', "LAlt"}}},down = 3503, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Regroup Selection'), category = _('Weapons')},
    {combos = {{key = 'Enter', reformers = {'LCtrl', "LAlt"}}},down = 3504, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Confirm Ground Crew Orders'), category = _('Weapons')},
    {combos = {{key = 'C', reformers = {'LCtrl', "LShift"}}},down = 3010, value_down = 1.0, cockpit_device_id = devices.NAVIGATIONPANEL, name = _('Select Data Cartridge - Up'), category = _('Navigation')},
    {combos = {{key = 'C', reformers = {'LCtrl', "LAlt"}}},down = 3010, value_down = -1.0, cockpit_device_id = devices.NAVIGATIONPANEL, name = _('Select Data Cartridge - Down'), category = _('Navigation')},
    
    -- Reporting tool
    --{combos = {{key = 'M', reformers = {'LCtrl', "LAlt"}}},down = 3001, value_down = 1.0, cockpit_device_id = devices.REPORTER, name = _('Contact HeatBlur'), category = _('Debug')},
    
    
    
    -- test radio squelch
    --{down = iCommandPlaneDropFlareOnce, up = iCommandPlaneDropChaffOnce, name = _('Test command'), category = _('Weapons')},
    {combos = {{key = 'Enter', reformers = {'RCtrl'}}}, down = iCommandPlane_ShowControls, name = _('Show controls indicator'), category = _('General')},
    

    -- Synced from joystick
    {down = 3304, value_down = 1.000000, cockpit_device_id = devices.ENGINEPANEL, name = _('Autothrottle mode AFK'), category = _('Autopilot')},
    {up = 3004, value_up = 0.000000, pressed = 3004, value_pressed = 1.000000, cockpit_device_id = devices.ENGINEPANEL, name = _('High-pressure fuel valve (For HOTAS, Off if pressed)'), category = _('Motor')},
    {down = 3323, value_down = 1.000000, up = 3323, value_up = 0.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 switch input with flight stick (hold)'), category = _('Weapons')},
    {down = 3300, value_down = 1.000000, up = 3300, value_up = 0.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket (hold)'), category = _('Weapons')},
    {down = 3300, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket ARM'), category = _('Weapons')},
    {down = 3300, value_down = 0.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket SAFE'), category = _('Weapons')},
    
	}
	)
return res