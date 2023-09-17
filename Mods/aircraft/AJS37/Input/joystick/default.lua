dofile(folder.."../../Cockpit/Scripts/devices.lua")
dofile(folder.."../../Cockpit/Scripts/command_defs.lua")

local res = external_profile("Config/Input/Aircrafts/common_joystick_binding.lua")

local keycommands = {

	-- FF Begin
	{down = 3718,            cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,                 name = _('Oxygen Lever ON'), category = _('Flight Control')},
	{down = 3718,            cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0,                 name = _('Oxygen Lever OFF'), category = _('Flight Control')},
	{down = 3003, up = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Backup Generator On/Off'), category = _('Electronics')},
	{down = 3304,            cockpit_device_id = devices.ENGINEPANEL,    value_down = 1.0,                 name = _('Autopilot Autothrottle mode AFK ON'), category = _('Flight Control')},
	{down = 3304,            cockpit_device_id = devices.ENGINEPANEL,    value_down = 0.0,                 name = _('Autopilot Autothrottle mode AFK OFF'), category = _('Flight Control')},
	-- FF End



    -- Autopilot
    {down = 3402, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autothrottle 12 or 15.5 alpha mode'), category = 'Autopilot'},
    {combos = {{key = 'A'}}, down = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autopilot mode ATT (Attitude hold)'), category = 'Autopilot'},
    {combos = {{key = 'H'}}, down = 3303, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('Autopilot mode HÖJD (Altitude Hold)'), category = 'Autopilot'},
    {combos = {{key = 'E'}}, down = 3301, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,name = _('SAS mode SPAK flight stabiliser'), category = 'Autopilot'},
    {combos = {{key = "O"}}, pressed = 3305, up = 3305, cockpit_device_id  = devices.FLIGHTDATAUNIT, value_pressed = 1.0, value_up = 0.0, name = _('Roll centrering (Roll trim reset) ')  , category = 'Flight Control'},
    {down = iCommandToggleMirrors,	name = _('Toggle Mirrors'), category = _('View Cockpit')},
    
    
    --HUD
    {pressed = 3411, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 1.0, name = _('HUD Brightness Increase'), category = _('HUD')},
    {pressed = 3411, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -1.0, name = _('HUD Brightness Decrease'), category = _('HUD')},
    {down = 3401, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _('HUD Position LOW/HIGH (toggle)'), category = 'Navigation'},
    
    -- Flight Control
    {down = iCommandPlaneUpStart, up = iCommandPlaneUpStop, name = _('Aircraft Pitch Down'), category = _('Flight Control')},
    {down = iCommandPlaneDownStart, up = iCommandPlaneDownStop, name = _('Aircraft Pitch Up'), category = _('Flight Control')},
    {down = iCommandPlaneLeftStart, up = iCommandPlaneLeftStop, name = _('Aircraft Bank Left'), category = _('Flight Control')},
    {down = iCommandPlaneRightStart, up = iCommandPlaneRightStop, name = _('Aircraft Bank Right'), category = _('Flight Control')},
    {down = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Aircraft Rudder Left'), category = _('Flight Control')},
    {down = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Aircraft Rudder Right'), category = _('Flight Control')},
    
    {pressed = iCommandPlaneTrimUp, up = iCommandPlaneTrimStop, name = _('Trim: Nose Up'), category = _('Flight Control')},
    {pressed = iCommandPlaneTrimDown, up = iCommandPlaneTrimStop, name = _('Trim: Nose Down'), category = _('Flight Control')},
    {pressed = iCommandPlaneTrimLeft, up = iCommandPlaneTrimStop, name = _('Trim: Left Wing Down'), category = _('Flight Control')},
    {pressed = iCommandPlaneTrimRight, up = iCommandPlaneTrimStop, name = _('Trim: Right Wing Down'), category = _('Flight Control')},
    {combos = {{key = 'G'}}, down = 3723,value_down =1.0,  cockpit_device_id = devices.FLIGHTDATAUNIT,  name = _('Landing Gear Up/Down (toggle)'), category = _('Flight Control')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT,  pressed = 3712, value_pressed =-1.0, name = _('Autopilot yaw trim Left'), category = _('Autopilot')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3712, value_pressed =1.0, name = _('Autopilot yaw trim Right'), category = _('Autopilot')},
    {down = 3741, up = 3741, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Autopilot Yaw Trim Cover (hold- up)'), category = _('Flight Control')},
    {down = 3740,            cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0,                  name = _('Autopilot Yaw Trim Cover (toggle)'), category = _('Flight Control')},
    --{combos = {{key = "O"}}, pressed = device_commands.Button_4, cockpit_device_id  = devices.SPAK, value_pressed = 1.0, name = _('Centrera trim')  , category = 'Flight Control'},
    
    {combos = {{key = 'P', reformers = {'RAlt'}}}, down = 3001, cockpit_device_id = 7, value_down =1.0, name = _('Reversal on'), category = 'Flight Control'},
    {combos = {{key = 'P', reformers = {'RShift'}}}, down = 3001, cockpit_device_id = 7, value_down =0.0, name = _('Reversal off'), category = 'Flight Control'},
    
    {combos = {{key = "B"}}, down = 3600, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Airbrake out/in/force out'), category = 'Flight Control'},
    {combos = {{key = 'B', reformers = {'RAlt'}}}, down = 3601, up = 3601,cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, value_up = 0.0, name = _('Airbrake out (force)'), category = 'Flight Control'},
    {combos = {{key = 'B', reformers = {'RShift'}}}, down = 3602, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Airbrake in'), category = 'Flight Control'},
    
    {combos = {{key = 'E', reformers = {'RShift', 'RCtrl'}}}, down = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Ejection seat arm'), category = 'Flight Control'},
    {down = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0, name = _('Ejection seat Safe'), category = 'Flight Control'},
    {combos = {{key = 'C', reformers = {'RShift', 'RCtrl'}}}, down = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Canopy close'), category = 'Flight Control'},
    {combos = {{key = 'C', reformers = {'RAlt', 'RCtrl'}}}, down = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, name = _('Canopy open'), category = 'Flight Control'},

    {down = iCommandEnginesStart, name = _('Auto Start'),	category = _('Cheat')},
    {down = iCommandEnginesStop,  name = _('Auto Stop') ,	category = _('Cheat')},
    
    --Navigation
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint L MÅL"), category = "Navigation"},
    {down = 3009, up = 3009, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint LS SKU"), category = "Navigation"},
    {down = 3010, up = 3010, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint Bx"), category = "Navigation"},
    {down = 3011, up = 3011, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B1"), category = "Navigation"},
    {down = 3012, up = 3012, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B2"), category = "Navigation"},
    {down = 3013, up = 3013, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B3"), category = "Navigation"},
    {down = 3014, up = 3014, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B4"), category = "Navigation"},
    {down = 3015, up = 3015, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B5"), category = "Navigation"},
    {down = 3016, up = 3016, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B6"), category = "Navigation"},
    {down = 3017, up = 3017, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B7"), category = "Navigation"},
    {down = 3018, up = 3018, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B8"), category = "Navigation"},
    {down = 3019, up = 3019, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Navigation panel Waypoint B9"), category = "Navigation"},
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = _("Datapanel IN/UT Input / Output Switch OUT (UT)"), category = "Data panel"},
    {down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("Datapanel IN/UT Input / Output Switch IN"), category = "Data panel"},
    {down = 3020, up = 3020, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 0"), category = "Data panel"},
    {down = 3021, up = 3021, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 1"), category = "Data panel"},
    {down = 3022, up = 3022, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 2"), category = "Data panel"},
    {down = 3023, up = 3023, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 3"), category = "Data panel"},
    {down = 3024, up = 3024, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 4"), category = "Data panel"},
    {down = 3025, up = 3025, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 5"), category = "Data panel"},
    {down = 3026, up = 3026, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 6"), category = "Data panel"},
    {down = 3027, up = 3027, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 7"), category = "Data panel"},
    {down = 3028, up = 3028, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 8"), category = "Data panel"},
    {down = 3029, up = 3029, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0, name = _("Data panel Digit 9"), category = "Data panel"},
    {down = 3001, up = 3001, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("Data panel RENSA (Clear)"), category = "Data panel"},
    {down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("Data panel RENSA cover"), category = _("Data panel")},
    {down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("Data panel RENSA cover OPEN"), category = "Data panel"},
    {down = 3101, up = 3101, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = _("Data panel RENSA cover CLOSE"), category = "Data panel"},
    {combos = {{key = "T", reformers = {"RAlt"}}}, down = 3510, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("TILS rotary clockwise"), category = _("Navigation")},
    {combos = {{key = "T", reformers = {"LAlt"}}}, down = 3510, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -1.0, name = _("TILS rotary counterclockwise"), category = _("Navigation")},
    
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.6, name = _("Datapanel Rotary Mode 7 - AKT POS"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.5, name = _("Datapanel Rotary Mode 6 - REF LOLA"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.4, name = _("Datapanel Rotary Mode 5 - BANA GRÄNS"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.3, name = _("Datapanel Rotary Mode 4 - VINDRUTA MÅL"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.2, name = _("Datapanel Rotary Mode 3 - TID"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.1, name = _("Datapanel Rotary Mode 2 - TAKT"), category = "Navigation"},
    {down = 3009, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = _("Datapanel Rotary Mode 1 - ID-NR"), category = "Navigation"},
    
    {down = 3011, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("Datapanel Rotary Clockwise"), category = "Navigation"},
    {down = 3011, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = -1.0, name = _("Datapanel Rotary Counterclockwise"), category = "Navigation"},
	
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5, name = _("Weapon Selector Knob Mode 6 - IR-RB"), category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4, name = _("Weapon Selector Knob Mode 5 - ATTACK"), category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3, name = _("Weapon Selector Knob Mode 4 - AKAN JAKT"), category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2, name = _("Weapon Selector Knob Mode 3 - LUFT | RR"), category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1, name = _("Weapon Selector Knob Mode 2 - RB75 | MARK | DYK"), category = "Weapons"},
    {down = 3304, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, name = _("Weapon Selector Knob Mode 1 - SJÖ | PLAN"), category = "Weapons"},
    
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.0, name = _("Radar AS0"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.1, name = _("Radar AS1"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.2, name = _("Radar AS2"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.3, name = _("Radar AS3"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.4, name = _("Radar AS4"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.5, name = _("Radar AS5"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.6, name = _("Radar AS6"), category = "Radar"},
    {down = 3208, cockpit_device_id = devices.RADAR, value_down = 0.7, name = _("Radar AS7"), category = "Radar"},
    {down = 3209, cockpit_device_id = devices.RADAR, value_down = 0.0, name = _("Radar LIN"), category = "Radar"},
    {down = 3209, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Radar LOG"), category = "Radar"},
    {down = 3323, cockpit_device_id = devices.RADAR, value_down = 1.0, up = 3323, value_up = 0.0, name = _('Radar Range Increase'), category = 'Radar'},
    {down = 3323, cockpit_device_id = devices.RADAR, value_down = -1.0, up = 3323, value_up = 0.0, name = _('Radar Range Decrease'), category = 'Radar'},
    {pressed = 3326, cockpit_device_id = devices.RADAR, value_pressed = 1.0, name = _('Radar MKR Gain increase'), category = 'Radar'},
    {pressed = 3326, cockpit_device_id = devices.RADAR, value_pressed = -1.0, name = _('Radar MKR Gain decrease'), category = 'Radar'},
    {down = 3325, value_down = 0.5, cockpit_device_id = devices.RADAR, name = _('Radar MKR Gain Center'), category = _('Radar')},
    {pressed = 3802,         cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 0.0, name = _("Radar Cl filter clockwise"), category = _("Radar")},
    {pressed = 3802,         cockpit_device_id = devices.RADAR, value_pressed = -1.0, value_up = 0.0, name = _("Radar Cl filter anti-clockwise"), category = _("Radar")},
    
    {combos = {{key = "A", reformers = {"LCtrl","LShift"}}}, pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.003, name = _("Altimeter setting Finest - Up"), category = _("Flight Data")},
    {combos = {{key = "A", reformers = {"LCtrl","LAlt"}}}, pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -0.003, name = _("Altimeter setting Finest - Down"), category = _("Flight Data")},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.012, name = _("Altimeter setting Slow - Up"), category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = -0.012, name = _("Altimeter setting Slow - Down"), category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.05, name = _("Altimeter setting Medium - Up"), category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.05, name = _("Altimeter setting Medium - Down"), category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.33, name = _("Altimeter setting Fast - Up"), category = "Flight Data"},
    {pressed = 3306, cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.33, name = _("Altimeter setting Fast - Down"), category = "Flight Data"},
    {combos = {{key = "Q", reformers = {"LCtrl"}}}, down = 3100, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - FK"), category = "Mode selector"},
    {combos = {{key = "Q", reformers = {"LAlt"}}}, down = 3101, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - BER"), category = "Mode selector"},
    {combos = {{key = "Q", reformers = {"RAlt"}}}, down = 3102, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - NAV"), category = "Mode selector"},
    {combos = {{key = "Q", reformers = {"RCtrl"}}}, down = 3103, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - ANF"), category = "Mode selector"},
    {combos = {{key = "Q", reformers = {"RShift"}}}, down = 3104, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - SPA"), category = "Mode selector"},
    {combos = {{key = "W", reformers = {"RCtrl"}}}, down = 3105, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - LANDNAV"), category = "Mode selector"},
    {combos = {{key = "W", reformers = {"RShift"}}}, down = 3106, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Mode select - LANDPO"), category = "Mode selector"},
    {combos = {{key = "X", reformers = {"RShift","RCtrl"}}}, down = 3200, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("HÖJD CISI (toggle)"), category = "Navigation"},
    {combos = {{key = "Z", reformers = {"RShift","RCtrl"}}}, down = 3202, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("SLAV SI (toggle)"), category = _("Navigation")},
    {combos = {{key = "T", reformers = {"RShift","RCtrl"}}}, down = 3211, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Pitch gearing Automatic/Landing (toggle)"), category = "Flight Control"},
    --{combos = {{key = "S", reformers = {"RShift","RCtrl"}}}, down = 3300, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Trigger safety bracket"), category = "Weapöns"},
    -- {combos = {{key = "O", reformers = {"RShift","RCtrl"}}}, down = 3315, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Trigger"), category = "Weapons"},
    -- {combos = {{key = "W", reformers = {"LAlt"}}}, down = 3030, cockpit_device_id = 14, value_down = 1.0, name = _("Datapanel Rotary Clockwise"), category = "Navigation"},
    -- {combos = {{key = "Q", reformers = {"LAlt"}}}, down = 3031, cockpit_device_id = 14, value_down = 1.0, name = _("Datapanel Rotary Counterclockwise"), category = "Navigation"},
    
    -- Motor kontroll
    {combos = {{key = "F", reformers = {"LAlt"}}}, down = 3040, cockpit_device_id = 15, value_down = 1.0, name = _("Low pressure fuel valve LT Kran"), category = "Motor"},
    {combos = {{key = "I", reformers = {"LAlt"}}}, down = 3005, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("High-pressure fuel valve (toggle)"), category = "Motor"},
    {combos = {{key = "S", reformers = {"LAlt"}}}, down = 3042, up = 3043, cockpit_device_id = 15, value_down = 1.0, value_up = 1.0, name = _("Startknapp"), category = "Motor"},
    {combos = {{key = "A", reformers = {"RAlt"}}}, down = 3006, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Afterburner fuel valve (LTkran EBK)"), category = "Motor"},
    {combos = {{key = "M", reformers = {"RAlt"}}}, down = 3009, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Manual fuel regulator switch (toggle)"), category = "Motor"},
    {combos = {{key = "+"}}, down = 3301, up = 3301, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Throttle down"), category = "Motor"},
    {combos = {{key = "-"}}, down = 3302, up = 3302, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Throttle up"), category = "Motor"},
	
    {down = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _('Start System - ON'), category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = _('Start System - OFF'), category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _('Ignition System - ON'), category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = _('Ignition System - OFF'), category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, name = _("Low Pressure Fuel Valve- ON"), category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, name = _("Low Pressure Fuel Valve- OFF"), category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = _('Main Electric Power - ON'), category = 'Motor'},
    {down = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = _('Main Electric Power - OFF') , category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = _('Generator - ON'), category = 'Motor'},
    {down = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = _('Generator - OFF'), category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, name = _('Backup Generator - ON'), category = 'Motor'},
    {down = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 0.0, name = _('Backup Generator - OFF'), category = 'Motor'},
    
    -- Weapons                                                                        
    --{combos = {{key = 'C', reformers = {'LShift'}}}, down = iCommandChangeGunRateOfFire, name = _('Cannon Rate Of Fire / Cut Of Burst select'), category = 'Weapons'},
    
    -- RADAR
    -- Weapons                                                                        
    {combos = {{key = 'JOY_BTN1'}}, down = iCommandPlanePickleOn,	up = iCommandPlanePickleOff, name = _('Weapon Release'), category = 'Weapons'},
    {down = 3321, up = 3321, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick yaw left'), category = 'Weapons'},
    {down = 3321, up = 3321, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick yaw right'), category = 'Weapons'},
    {down = 3322, up = 3322, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick pitch up'), category = 'Weapons'},
    {down = 3322, up = 3322, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick pitch down'), category = 'Weapons'},
    {down = 3510, up = 3510, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick up right'), category = 'Weapons'},
    {down = 3510, up = 3510, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick down left'), category = 'Weapons'},
    {down = 3511, up = 3511, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick up left'), category = 'Weapons'},
    {down = 3511, up = 3511, value_down = -1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick down right'), category = 'Weapons'},
    {down = 3323, up = 3323, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _("Rb05 switch input with flight stick (hold)"), category = 'Weapons'},
    {down = 3300, up = 3300, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket (hold)'), category = 'Weapons'},
    {down = 3300, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket ARM'), category = 'Weapons'},
    {down = 3300, value_down = 0.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket SAFE'), category = 'Weapons'},
    {down = 3926, value_down = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Trigger safety bracket TOGGLE'), category = _('Weapons')},
    {down = 3314, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("IR-missile uncage"), category = "Weapons"},
    {down = 3311, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, name = _("Autothrottle disconnect / IR-missile fast select"), category = "Weapons"},
	{down = 3000, cockpit_device_id = devices.ENGINEPANEL,	 value_down = 1.0, name =("Missile Select Button"), category = _("Weapons")},
    {down = 3803, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, name = _("Autopilot Quick Disengage"), category = _("Navigation")},
	-- countermeasures
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Fast countermeasure dispense'), category = 'Countermeasures'},
    {down = 3005, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod A'), category = 'Countermeasures'},
    {down = 3006, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 0'), category = 'Countermeasures'},
    {down = 3007, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 1'), category = 'Countermeasures'},
    {down = 3008, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 2'), category = 'Countermeasures'},
    {down = 3009, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Mod 3'), category = 'Countermeasures'},
    {down = 3010, value_down = 0.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Stråk Mod 0'), category = 'Countermeasures'},
    {down = 3010, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure KB Stråk Mod 4'), category = 'Countermeasures'},
    {down = 3011, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod 0'), category = 'Countermeasures'},
    {down = 3012, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod A'), category = 'Countermeasures'},
    {down = 3013, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod B'), category = 'Countermeasures'},
    {down = 3014, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod D'), category = 'Countermeasures'},
    {down = 3015, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Mod E'), category = 'Countermeasures'},
    {down = 3016, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band F'), category = 'Countermeasures'},
    {down = 3017, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band G'), category = 'Countermeasures'},
    {down = 3018, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band H'), category = 'Countermeasures'},
    {down = 3019, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band J'), category = 'Countermeasures'},
    {down = 3020, value_down = 1.0, cockpit_device_id = devices.COUNTERMEASURE, name = _('Countermeasure U22 Jammer Band K'), category = 'Countermeasures'},
    
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Off'), category = _('Countermeasures')},
    {down = 3002, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Lights'), category = _('Countermeasures')},
    {down = 3003, value_down = 1.0, cockpit_device_id = devices.RWR, name = _('RWR KB Lights/Sound'), category = _('Countermeasures')},
    {combos = {{key = "R", reformers = {"LAlt","LCtrl"}}},pressed = 3005, value_pressed = 1.0, cockpit_device_id = devices.RWR, name = _('Master Volume / Sidewinder Tone Up'), category = _('Countermeasures')},
    {combos = {{key = "R", reformers = {"LAlt","RAlt"}}}, pressed = 3005, value_pressed = -1.0, cockpit_device_id = devices.RWR, name = _('Master Volume / Sidewinder Tone Down'), category = _('Countermeasures')},
    {down = 3001, value_down = 1.0, up = 3001, value_up = 0.0, cockpit_device_id = devices.ERRORPANEL, name = _('KONTROLL light test'), category = _('Lights')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) On/Off'), category = _('Countermeasures')},
    {down = 3002, value_down = 1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) Code Up'), category = _('Countermeasures')},
    {down = 3002, value_down = -1.0, cockpit_device_id = devices.IFF, name = _('IK (IFF) Code Down'), category = _('Countermeasures')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Base selector turn right'), category = _('Radios')},
    {down = 3001, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Base selector turn left'), category = _('Radios')},
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
    {down = 3014, value_down = 1.0, up = 3014, value_up = 0.0, cockpit_device_id = devices.FR22, name = _('FR22 Radio AM/FM switch (hold- AM)'), category = _('Radios')},
    {down = 3007, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('FR22 Group selector turn right'), category = _('Radios')},
    {down = 3007, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('FR22 Group selector turn left'), category = _('Radios')},
    {down = 3010, value_down = -1.0, cockpit_device_id = devices.FR22, name = _('Radio function selector turn right'), category = _('Radios')},
    {down = 3010, value_down = 1.0, cockpit_device_id = devices.FR22, name = _('Radio function selector turn left'), category = _('Radios')},
    {down = 3011, value_down = 1.0, cockpit_device_id = devices.TESTINTERCOM, name = _('FR22 Push-to-talk'), category = _('Radios')},
    {down = 3012, value_down = 1.0, cockpit_device_id = devices.TESTINTERCOM, name = _('FR24 Push-to-talk'), category = _('Radios')},
    {down = 3013, value_down = 1.0, up = 3013, value_up = 0.0, cockpit_device_id = devices.TESTINTERCOM, name = _('FR22 Push-to-talk (Short- Menu, Long- VOIP)'), category = _('Radios')},
    {down = 3014, value_down = 1.0, up = 3014, value_up = 0.0, cockpit_device_id = devices.TESTINTERCOM, name = _('FR24 Push-to-talk (Short- Menu, Long- VOIP)'), category = _('Radios')},
    {down = iCommandVoIPRadioPushToTalkEnableDisableVoice, up = iCommandVoIPRadioPushToTalkEnableDisableVoice, name = _('FR22 VoIP Push-to-talk'), value_down = 1.0, value_up = 0.0,  category = _('Radios')},
    {down = iCommandVoIPRadioPushToTalkEnableDisableVoice_1, up = iCommandVoIPRadioPushToTalkEnableDisableVoice_1, name = _('FR24 VoIP Push-to-talk'), value_down = 1.0, value_up = 0.0,  category = _('Radios')},
    {pressed = 3012, value_pressed = 1.0, cockpit_device_id = devices.FR22, name = _('Radio volume control increase'), category = _('Radios')},
    {pressed = 3012, value_pressed = -1.0, cockpit_device_id = devices.FR22, name = _('Radio volume control decrease'), category = _('Radios')},
    {down = 3013, value_down = 1.0, up = 3013, value_up = 0.0, cockpit_device_id = devices.FR22, name = _('FR24 Mute'), category = _('Radios')},
    
    
    -- RADAR
    {pressed = 3101, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0,name = _('Radarstick Aft'), category = 'Radar'},
    {pressed = 3102, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0, name = _('Radarstick Forward'), category = 'Radar'},
    {pressed = 3103, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0,name = _('Radarstick Left'), category = 'Radar'},
    {pressed = 3104, up = 3100, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 1.0, name = _('Radarstick Right'), category = 'Radar'},
    {down = 3010, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 120km'), category = 'Radar'},
    {down = 3011, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 60km'), category = 'Radar'},
    {down = 3012, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 30km'), category = 'Radar'},
    {down = 3013, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _('Radar range 15km'), category = 'Radar'},
    {down = 3212, up = 3212, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Memory mode"), category = _("Radar")},
    {down = 3213, cockpit_device_id = devices.RADAR, value_down = 1.0, up = 3213, value_up = 0.0, name = _("Radar Terrain Avoidance Mode"), category = "Radar"},
    {down = 3214, cockpit_device_id = devices.RADAR, value_down = 1.0, name = _("Passive radar mode"), category = "Radar"},
    {pressed = 3215, up = 3215, cockpit_device_id = devices.RADAR, value_pressed = 1.0, value_up = 0.0, name = _("Radar elevation up"), category = "Radar"},
    {pressed = 3215, up = 3215, cockpit_device_id = devices.RADAR, value_pressed = -1.0, value_up = 0.0, name = _("Radar elevation down"), category = "Radar"},
    {down = 3641,               cockpit_device_id = devices.RADAR, value_down = 0.0, name = _("Radar elevation center"), category = _("Radar")},
    {down = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("A0 Mode"), category = _("Radar")},
    {down = 3002, up = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("A0 Mode (Three position switch)"), category = _("Radar")},
    {down = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0, name = _("A1 Mode"), category = _("Radar")},
    {down = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = -1.0, name = _("A2 Mode"), category = _("Radar")},
    {down = 3002, up = 3002, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = -1.0, value_up = 0.0, name = _("A2 Mode (Three position switch)"), category = _("Radar")},
    {pressed = 3924, cockpit_device_id = devices.RADAR, value_pressed = 1.0, name = _('Radar Brightness Increase'), category = _('Radar')},  
    {pressed = 3924, cockpit_device_id = devices.RADAR, value_pressed = -1.0, name = _('Radar Brightness Decrease'), category = _('Radar')},
    {down = 3005, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("T0 Fix"), category = "Radar"},
    {down = 3005, up = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("T0 Fix (three position switch)"), category = "Radar"},
    {down = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("T1 Fix"), category = "Radar"},
    {down = 3007, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, name = _("TV Fix"), category = "Radar"},
    {down = 3007, up = 3006, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("TV Fix (Three position switch)"), category = "Radar"},
	{down = 3006, up = 3005, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 1.0, name = _("T1 Fix (Two-stage trigger middle position)"), category = "Radar"},
    {down = 3090, up = 3090, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _("Reference button"), category = "Navigation"},
    
    -- Lights panel
    {down = 3001, cockpit_device_id = devices.LIGHTS, value_down = -1.0, name = _('Anti collision lights switch'), category = _('Lights')},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down = -2.0, name = _('Navigation lights switch'), category = _('Lights')},
    {down = 3003, cockpit_device_id = devices.LIGHTS, value_down = -1.0, name = _('Formation lights switch'), category = _('Lights')},
    {down = 3014, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Taxi/landing lights switch toggle'), category = _('Lights')},
    {down = 3001, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Anti collision lights switch - ON'), category = 'Lights'},
    {down = 3001, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Anti collision lights switch - OFF') , category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Navigation lights switch - HEL'), category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Navigation lights switch - OFF'), category = 'Lights'},
    {down = 3002, cockpit_device_id = devices.LIGHTS, value_down =-1.0, name = _('Navigation lights switch - HALV'), category = 'Lights'},
    {down = 3003, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Formation lights switch - ON'), category = 'Lights'},
    {down = 3003, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Formation lights switch - OFF'), category = 'Lights'},
    {down = 3004, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Position lights switch - ON'), category = 'Lights'},
    {down = 3004, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Position lights switch - OFF'), category = 'Lights'},
    {down = 3009, cockpit_device_id = devices.LIGHTS, value_down = -1.0, name = _('Taxi/landing lights switch - ON'), category = 'Lights'},
    {down = 3009, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Taxi/landing lights switch - TAXI'), category = 'Lights'},
    {down = 3009, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Taxi/landing lights switch - OFF'), category = 'Lights'},
    {down = 3010, cockpit_device_id = devices.LIGHTS, value_down = 1.0, name = _('Emergency lights switch - ON'), category = 'Lights'},
    {down = 3010, cockpit_device_id = devices.LIGHTS, value_down = 0.0, name = _('Emergency lights switch - OFF)'), category = 'Lights'},
    {pressed = 3011, cockpit_device_id = devices.LIGHTS, value_pressed = 0.01, name = _('Instrument Lights brightness- up'), category = 'Lights'},
    {pressed = 3011, cockpit_device_id = devices.LIGHTS, value_pressed = -0.01, name = _('Instrument Lights brightness- down'), category = 'Lights'},
    {pressed = 3012, cockpit_device_id = devices.LIGHTS, value_pressed = 0.01, name = _('Panel Lights brightness- up'), category = 'Lights'},
    {pressed = 3012, cockpit_device_id = devices.LIGHTS, value_pressed = -0.01, name = _('Panel Lights brightness- down'), category = 'Lights'},
    {pressed = 3013, cockpit_device_id = devices.LIGHTS, value_pressed = 0.01, name = _('Flood Lights brightness- up'), category = 'Lights'},
    {pressed = 3013, cockpit_device_id = devices.LIGHTS, value_pressed = -0.01, name = _('Flood Lights brightness- down'), category = 'Lights'},
    
    
    -- Walkman
    {down=3001, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Play',category='Tape Player'},
    {down=3002, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Stop',category='Tape Player'},
    {down=3003, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Fast Forward',category='Tape Player'},
    {down=3004, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Fast Backward',category='Tape Player'},
    {down=3005, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Volume Up',category='Tape Player'},
    {down=3006, cockpit_device_id=devices.WALKMAN, value_down=1.0, name='Volume Down',category='Tape Player'},
    
    -- Wheel brake
    {down = 3698, up = 3698, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, value_up = 0.0, name = _('Wheelbrake'), category = 'Flight Control'},
    
    
    -- Synced from keyboard
    {down = 3104, value_down = 1.000000, cockpit_device_id = devices.ENGINEPANEL, name = _('Autothrottle mode AFK (toggle)'), category = _('Autopilot')},
    {down = 3002, value_down = 1.000000, up = 3002, value_up = 0.000000, cockpit_device_id = devices.ERRORPANEL, name = _('Check indicator lights'), category = _('Caution panel')},
    {down = 3003, value_down = 1.000000, cockpit_device_id = devices.ERRORPANEL, name = _('Toggle caution light full/half'), category = _('Caution panel')},
    {down = 3717, value_down = 1.000000, up = 3717, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Emergency Trim Pitch Down'), category = _('Flight Control')},
    {down = 3717, value_down = -1.000000, up = 3717, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Emergency Trim Pitch Up'), category = _('Flight Control')},
    {down = 3716, value_down = -1.000000, up = 3716, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Emergency Trim Roll Left'), category = _('Flight Control')},
    {down = 3716, value_down = 1.000000, up = 3716, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Emergency Trim Roll Rght'), category = _('Flight Control')},
    {down = 3719, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Landing Gear Down'), category = _('Flight Control')},
    {down = 3719, value_down = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Landing Gear Up'), category = _('Flight Control')},
    {down = 3413, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =1.0, name = _('Parking brake (toggle)'), category = _('Flight Control')},
    {down = 3713, value_down = -1.000000, up = 3713, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Trim: Rudder Left'), category = _('Flight Control')},
    {down = 3713, value_down = -1.000000, up = 3713, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Trim: Rudder Left'), category = _('Flight Control')},
    {down = 3713, value_down = 1.000000, up = 3713, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Trim: Rudder Right'), category = _('Flight Control')},
    {down = 3713, value_down = 1.000000, up = 3713, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Trim: Rudder Right'), category = _('Flight Control')},
    {down = 3711, value_down = 1.0, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _("Altimeter setting pull-out (toggle)"), category = _("Flight Data")},
    {down = 3715, up = 3715, value_down = 1.0, value_up = 0.0, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _("Altimeter setting pull-out (hold-pull)"), category = _("Flight Data")},  
    {down = 3003, cockpit_device_id = devices.RADARALT, value_down = 1.0, name = _("Radar altimeter switch (toggle)"), category = _("Flight Data")},
    {down = 3718, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Oxygen lever'), category = _('Misc')},
    {down = 3504, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Easy mode - Air-to-air'), category = _('Mode selector')},
    {down = 3503, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Easy mode - Grond attack'), category = _('Mode selector')},
    {down = 3502, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Easy mode - Landing'), category = _('Mode selector')},
    {down = 3501, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Easy mode - Navigaton'), category = _('Mode selector')},
    {down = 3669, value_down = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Mode select - turn clockwise'), category = _('Mode selector')},
    {down = 3669, value_down = -1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Mode select - turn counterclockwise'), category = _('Mode selector')},
    {down = 3008, value_down = 1.000000, cockpit_device_id = devices.ENGINEPANEL, name = _('Engine De-ice switch (toggle)'), category = _('Motor')},
    {down = 3801, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = (0.5/15.0), value_up = 0, name = _('Clock Increase Time Setting'), category = _('Navigation')}, -- 15 seconds per click
    {down = 3801, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = -(0.5/15.0), value_up = 0, name = _('Clock Decrease Time Setting'), category = _('Navigation')}, -- 15 seconds per click
    {down = 3802, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0, name = _('Clock Stopwatch Start/Stop/Reset'), category = _('Navigation')},
	{down = 3714, value_down = -1.000000, up = 3714, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Magnetic correction left'), category = _('Navigation')},
    {down = 3714, value_down = 1.000000, up = 3714, value_up = 0.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Magnetic correction right'), category = _('Navigation')},
    {up = 3404, value_up = 0.000000, pressed = 3404, value_pressed = 1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Seat adjustment down'), category = _('Navigation')},
    {up = 3404, value_up = 0.000000, pressed = 3404, value_pressed = -1.000000, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Seat adjustment up'), category = _('Navigation')},
    {down = 3010, value_down = -1.000000, cockpit_device_id = devices.NAVIGATIONPANEL, name = _('Select Data Cartridge - Down'), category = _('Navigation')},
    {down = 3010, value_down = 1.000000, cockpit_device_id = devices.NAVIGATIONPANEL, name = _('Select Data Cartridge - Up'), category = _('Navigation')},
    {down = 3001, value_down = 1.0, cockpit_device_id = devices.MISSIONGENERATOR, name = _('Generated Cartride Increase Time Margin'), category = _('Navigation')},
    {down = 3001, value_down = -1.0, cockpit_device_id = devices.MISSIONGENERATOR, name = _('Generated Cartride Decrease Time Margin'), category = _('Navigation')},
	{down = 3504, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Confirm Ground Crew Orders'), category = _('Weapons')},
    {down = 3502, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Fuel Selection'), category = _('Weapons')},
    {down = 3501, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Loadout Selection'), category = _('Weapons')},
    {down = 3503, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Cycle Ground Crew Regroup Selection'), category = _('Weapons')},
	{pressed = 3316, value_pressed = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Brightness up'), category = _('Weapons')},
    {pressed = 3316, value_pressed = -1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Brightness down'), category = _('Weapons')},
    {pressed = 3317, value_pressed = 1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Contrast up'), category = _('Weapons')},
    {pressed = 3317, value_pressed = -1.0, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP13 Contrast down'), category = _('Weapons')},
    {down = 3320, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Fuel tank jettison Button'), category = _('Weapons')},
    {down = 3402, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Fuel tank jettison Cover'), category = _('Weapons')},
    {down = 3303, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Weapon jettison Button'), category = _('Weapons')},
    {down = 3302, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Weapon jettison Cover'), category = _('Weapons')},
    {down = 3969, value_down = -1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Weapon selector turn clockwise'), category = _('Weapons')},
    {down = 3969, value_down = 1.000000, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Weapon selector turn counterclockwise'), category = _('Weapons')},
    {down = 3001, value_down = -1.000000, cockpit_device_id = devices.MISSIONGENERATOR, name = _('Decrease Generated Cartride Time Margin'), category = _('Navigation')},
	{down = 3001, value_down = 1.000000, cockpit_device_id = devices.MISSIONGENERATOR, name = _('Increase Generated Cartride Time Margin'), category = _('Navigation')},
	{down=iCommandPlaneEject,name = _('Eject (3 times)'), category = _('Flight Control')},
    {down = 3001, cockpit_device_id = devices.ERRORPANEL, value_down = 1.0,  name = _('Master caution reset'), category = _('Caution panel')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =-1.0, value_up =0.0, name = _('Trim: Rudder Left'), category = _('Flight Control')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT,  down = 3713, up = 3713, value_down =1.0, value_up =0.0, name = _('Trim: Rudder Right'), category = _('Flight Control')},
    
	
-- FunkyFranks assigments
	-- FF: begin custom assignments
	----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
	-- flight data unit
	{down = 3097, up = 3097, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('HÖJD CISI LD/RHM (hold- LD)'), category = _('Navigation')}, --working, toggle only
	{down = 3201, up = 3201, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Slav SI Switch F/T (hold- T)'), category = _('Navigation')}, --working, toggle only
	{down = 3210, up = 3210, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Pitch Gear Switch Automatic/Landing (hold- landing)'), category = _('Flight Control')}, --working
	{down = 3401, up = 3401, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('HUD shift to lower position (hold)'), category = _('Navigation')}, --working, toggle only
	{down = 3405, up = 3405, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Ejection Seat Arm/Disarm'), category = _('Flight Control')}, --working
	{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Canopy Close/Center'), category = _('Flight Control')}, --working
	{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Canopy Open/Center'), category = _('Flight Control')}, -- working
	{down = 3406, up = 3406, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up =-1.0, name = _('Canopy Close/Open'), category = _('Flight Control')}, --working
	{down = 3407, up = 3407, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Canopy Jettison'), category = _('Flight Control')}, --added v0.5
	{down = 3408, up = 3408, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Parking Brake (hold- on)'), category = _('Flight Control')},
	{down = 3513,            cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,                 name = _('TILS Channel Layer Selection 1-10/11-20 (toggle)'), category = _('Navigation')}, --working, toggle only
    {down = 3511, up = 3511, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('TILS Channel Layer Selection 1-10/11-20 (hold - 11-20)'), category = _('Navigation')}, --working, toggle only
	{down = 3601, up = 3602, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Airbrake Out/In'), category = _('Flight Control')}, --working
    {down=3718, up=3718, cockpit_device_id=devices.FLIGHTDATAUNIT, value_down=1.0, value_up=0.0, name = _('Oxygen lever (hold- on)'), category = _('Misc')},
    {down=3710, cockpit_device_id=devices.FLIGHTDATAUNIT, value_down=1.0, name = _('Oxygen lever (toggle)'), category = _('Misc')},
	{down = 3719, up = 3719, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 0.0, value_up = 1.0, name = _('Landing Gear Lever Up/Down (hold- Up)'), category = _('Flight Control')}, --working
	{down = 3719, up = 3719, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Landing Gear Lever Up/Down (hold- Down)'), category = _('Flight Control')}, --working
	{down = 3301, up = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Autopilot SPAK/ATT'), category = _('Flight Control')}, --added v0.5
	{down = 3303, up = 3302, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 1.0, name = _('Autopilot HÖJD/ATT'), category = _('Flight Control')}, --added v0.5
	{down = 3720, up = 3720, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Backup ADI Cage Depress/Release'), category = _('Navigation')}, --added v1.3
	{down = 3091, up = 3091, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('FL37 ADI Fast Erect (Snabbresning) Depress/Release'), category = _('Navigation')}, --added v1.3
	{down = 3722, up = 3722, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Max G Reset Depress/Release'), category = _('Navigation')}, --added v1.3
	{down = 3305, up = 3305, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Roll Centering Depress/Release'), category = _('Flight Control')}, --added v1.3
	{down = 3716, up = 3716, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Emergency Roll Trim (NÖDTRIM ROLL) Right(H)/Center'), category = _('Flight Control')}, --added v1.3
	{down = 3716, up = 3716, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Emergency Roll Trim (NÖDTRIM ROLL) Left(V)/Center'), category = _('Flight Control')}, --added v1.3
	{down = 3918, up = 3918, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0, value_up = 0.0, name = _('Emergency Yaw Trim (SIDTRIM) Right(H)/Center'), category = _('Flight Control')}, --added v1.3
	{down = 3918, up = 3918, cockpit_device_id = devices.FLIGHTDATAUNIT, value_down =-1.0, value_up = 0.0, name = _('Emergency Yaw Trim (SIDTRIM) Left(V)/Center'), category = _('Flight Control')}, --added v1.3
	{down = 3743,            cockpit_device_id = devices.FLIGHTDATAUNIT, value_down = 1.0,                 name = _('Magnetic Declination Cover Open/Close'), category = _('Navigation')}, -- added v1.3
	{pressed = 3725,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.010,            name = _("Magnetic Declination Increase"), category = _("Navigation")}, --added v1.3
	{pressed = 3725,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.010,            name = _("Magnetic Declination Decrease"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.005,            name = _("Backup Altimeter Setting Up - Slow"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.005,            name = _("Backup Altimeter Setting Down - Slow"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.015,            name = _("Backup Altimeter Setting Up - Normal"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.015,            name = _("Backup Altimeter Setting Down - Normal"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed = 0.045,            name = _("Backup Altimeter Setting Up - Fast"), category = _("Navigation")}, --added v1.3
	{pressed = 3721,         cockpit_device_id = devices.FLIGHTDATAUNIT, value_pressed =-0.045,            name = _("Backup Altimeter Setting Down - Fast"), category = _("Navigation")}, --added v1.3

	-- engine panel
	{down = 3001, up = 3001, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("System Start Switch On/Off"), category = _("Motor")}, --working
	{down = 3002, up = 3002, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Low-pressure Fuel Valve On/Off'), category = _('Motor')}, --working
	{down = 3003, up = 3003, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Ignition System Man/Aut'), category = _('Motor')}, --working
	{down = 3401, up = 3401, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Aterstart (Restart) Switch On/Off'), category = _('Motor')}, --added v0.6
	{down = 3004, up = 3004, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, value_up = 1.0,  name = _("High-pressure Fuel Valve (hold- cut off)"), category = _("Motor")},
	{down = 3004, up = 3004, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0,  name = _("High-pressure Fuel Valve (hold- idle)"), category = _("Motor")},
	{down = 3006,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.5,                 name = _("Manual Afterburner Fuel Valve Open/Closed (toggle)"), category = _("Motor")}, --working
    {down = 3006, up = 3006, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Manual Afterburner Fuel Valve Open/Closed (hold- open)"), category = _("Motor")}, --working
    {down = 3006, up = 3006, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, value_up = 1.0, name = _("Manual Afterburner Fuel Valve Open/Closed (hold- closed)"), category = _("Motor")}, --working
	{down = 3007, up = 3007, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Manual Fuel Regulator On/Off (hold- on)"), category = _("Motor")}, --working
	{down = 3099, up = 3099, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _("Engine De-Ice On/Off (hold)"), category = _("Motor")}, --working, toggle only
	{down = 3304, up = 3304, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Autopilot Autothrottle mode AFK (hold-On)'), category = _('Flight Control')}, --working
	{down = 3913, up = 3913, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Autopilot Maintenance Testing Mode On/Off'), category = _('Flight Control')}, --added v0.6
	{down = 3919, up = 3919, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('DME Selector On/Off'), category = _('Navigation')}, --working
	{down = 3920, up = 3920, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('IFF/Transponder Power On/Off'), category = _('Navigation')}, --working
	{down = 3920,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('IFF/Transponder Power On'), category = _('Navigation')}, --added v1.3
	{down = 3920,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('IFF/Transponder Power Off'), category = _('Navigation')}, --added v1.3
	{down = 3921, up = 3921, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('IFF Channel Selector A+C/A'), category = _('Navigation')}, --working
	{down = 3921,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('IFF Channel Selector A+C'), category = _('Navigation')}, --added v1.3
	{down = 3921,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('IFF Channel Selector A'), category = _('Navigation')}, --added v1.3
	{down = 3924, up = 3924, cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0, value_up = 1.0, name = _('Flight Recorder Till/Fran'), category = _('Navigation')}, --working
	{down = 3924, up = 3924, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Flight Recorder Fran/Till'), category = _('Navigation')}, --working
	{down = 3925, up = 3925, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Data Cartridge Insert/Remove'), category = _('Navigation')}, --working
	{down = 3925,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('Data Cartridge Insert'), category = _('Navigation')}, --added v0.6
	{down = 3925,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('Data Cartridge Remove'), category = _('Navigation')}, --added v0.6
	{down = 3000, up = 3000, cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0, value_up = 0.0, name = _('Missile Select Button (IR-RB FRAMSTEGN) Depress/Release'), category = _('Weapons')}, --added v1.3 (seems to be same button number as Cabin Air Valve)
	{down = 3905,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Autopilot SA Out'), category = _('Electronics')}, --added v1.3
	{down = 3905,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Autopilot SA In'), category = _('Electronics')}, --added v1.3
	{down = 3906,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB High Alpha Warning Out'), category = _('Electronics')}, --added v1.3
	{down = 3906,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB High Alpha Warning In'), category = _('Electronics')}, --added v1.3
	{down = 3907,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Trim System Out'), category = _('Electronics')}, --added v1.3
	{down = 3907,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Trim System In'), category = _('Electronics')}, --added v1.3
	{down = 3908,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB CI/SI Out'), category = _('Electronics')}, --added v1.3
	{down = 3908,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB CI/SI In'), category = _('Electronics')}, --added v1.3
	{down = 3909,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Ejection System Out'), category = _('Electronics')}, --added v1.3
	{down = 3909,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Ejection System In'), category = _('Electronics')}, --added v1.3
	{down = 3910,            cockpit_device_id = devices.ENGINEPANEL, value_down = 1.0,                 name = _('CB Engine Out'), category = _('Electronics')}, --added v1.3
	{down = 3910,            cockpit_device_id = devices.ENGINEPANEL, value_down = 0.0,                 name = _('CB Engine In'), category = _('Electronics')}, --added v1.3
	-- lights
	{down = 3001, up = 3001, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Anti Collision Lights On/Off'), category = _('Lights')}, --working
	{down = 3002, up = 3002, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Navigation Lights Bright/Off'), category = _('Lights')}, --working
	{down = 3002, up = 3002, cockpit_device_id = devices.LIGHTS, value_down =-2.0, value_up = 0.0, name = _('Navigation Lights Dim/Off'), category = _('Lights')}, --working
	{down = 3003, up = 3003, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Formation Lights On/Off'), category = _('Lights')}, --working
	{down = 3004, up = 3004, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Position Lights On/Off'), category = _('Lights')}, --working
	{down = 3006, up = 3006, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name =_('Panel Lights 2-Pos. Switch (hold-on)'), category = _('Lights')}, --added v1.2 LeCuvier
	{down = 3007, up = 3007, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name =_('Flood Lights 2-Pos. Switch (hold-on)'), category = _('Lights')}, --added v1.2 LeCuvier
	{down = 3008, up = 3008, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name =_('Instrument Lights 2-Pos. Switch (hold-on)'), category = _('Lights')}, --added v1.2 LeCuvier
    {down = 3015,            cockpit_device_id = devices.LIGHTS, value_down = 1.0,                    name =_('Panel Lights toggle'), category = _('Lights')},
    {down = 3016,            cockpit_device_id = devices.LIGHTS, value_down = 1.0,                    name =_('Flood Lights toggle'), category = _('Lights')},
    {down = 3017,            cockpit_device_id = devices.LIGHTS, value_down = 1.0,                    name =_('Instrument Lights toggle'), category = _('Lights')},
	-- brightness
	{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.2, value_up = 0.0, name = _('Position Lights Brightness 3/1'), category = _('Lights')}, --working
	{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.1, value_up = 0.0, name = _('Position Lights Brightness 2/1'), category = _('Lights')}, --working
	{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.2, value_up = 0.1, name = _('Position Lights Brightness 3/2'), category = _('Lights')}, --working
	{down = 3005, up = 3005, cockpit_device_id = devices.LIGHTS, value_down = 0.0, value_up = 0.1, name = _('Position Lights Brightness 1/2'), category = _('Lights')}, --working
	{down = 3010, up = 3010, cockpit_device_id = devices.LIGHTS, value_down = 1.0, value_up = 0.0, name = _('Emergency Lights Switch On/Off'), category = _('Lights')}, --working
	-- device "7"
	{down = 3001, up = 3001, cockpit_device_id = 7, value_down = 1.0, value_up = 0.0, name = _('Thrust Reverser On/Off'), category = _('Flight Control')}, --working
	-- electrical system
	{down = 3001, up = 3001, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Main Electric Power On/Off'), category = _('Electronics')}, --working
	{down = 3002, up = 3002, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Generator On/Off'), category = _('Electronics')}, --working
	--{down = 3003, up = 3003, cockpit_device_id = devices.ELECTRICSYSTEM, value_down = 1.0, value_up = 0.0, name = _('Backup Generator On/Off'), category = _('Electronics')}, --working
	-- radar altimeter
	{down = 3002, up = 3002, cockpit_device_id = devices.RADARALT, value_down = 1.0, value_up = 0.0, name = _('Radar Altimeter Power On/Off (hold- on)'), category = _('Navigation')}, --working
	-- weapon system
	{down = 3306, up = 3306, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, value_up = 1.0, name = _('Weapon Release Mode Fallsattomkopplare Up/Down'), category = _('Weapons')}, --working
	{down = 3307, up = 3307, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0, value_up = 1.0, name = _('RB-04/RB-15/BK Release Mode Valb/Prep'), category = _('Weapons')}, --working
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,                 name = _("Weapon Selector 0 SJÖ/PLAN"), category = _("Weapons")}, -- added v0.6
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,                 name = _("Weapon Selector 1 RB75/MARK/DYK"), category = _("Weapons")}, -- added v0.6
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,                 name = _("Weapon Selector 2 LUFT/RR"), category = _("Weapons")}, -- added v0.6
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3,                 name = _("Weapon Selector 3 AKAN/JAKT"), category = _("Weapons")}, -- added v0.6
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4,                 name = _("Weapon Selector 4 ATTACK"), category = _("Weapons")}, -- added v0.6
	{down = 3304,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5,                 name = _("Weapon Selector 5 IR-RB"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0,                 name = _("Weapon Interval 00 VÄ"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.9,                 name = _("Weapon Interval 01 RAKT"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.8,                 name = _("Weapon Interval 02 HÖ"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.7,                 name = _("Weapon Interval 03 10m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.6,                 name = _("Weapon Interval 04 15m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.5,                 name = _("Weapon Interval 05 20m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.4,                 name = _("Weapon Interval 06 25m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.3,                 name = _("Weapon Interval 07 30m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.2,                 name = _("Weapon Interval 08 40m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.1,                 name = _("Weapon Interval 09 50m"), category = _("Weapons")}, -- added v0.6
	{down = 3305,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 0.0,                 name = _("Weapon Interval 10 60m"), category = _("Weapons")}, -- added v0.6
	{down = 3301,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0,                 name = _("Weapon Interval turn clockwise"), category = _("Weapons")},
	{down = 3301,            cockpit_device_id = devices.WEAPON_SYSTEM, value_down = -1.0,                name = _("Weapon Interval turn anti-clockwise"), category = _("Weapons")},
	{down = 3320, up = 3320, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Fuel Tank Jettison Button Depress/Release'), category = _('Weapons')}, -- added v1.3
	{down = 3303, up = 3303, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Weapon Emergency Release Button Depress/Release'), category = _('Weapons')}, -- added v1.3
	{down = 3302, up = 3302, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('Weapon Emergency Release Cover Open/Close'), category = _('Weapons')}, -- added v1.3
	{down = 3402, up = 3402, cockpit_device_id = devices.WEAPON_SYSTEM, value_down = 1.0, value_up = 0.0, name = _('External Tank Release Cover Open/Close'), category = _('Weapons')}, -- added v1.3
	-- radios
	{down = 3008, cockpit_device_id = devices.FR22, value_down = 1.0, name = _('FR22 Radio AM/FM (toggle)'), category = _('Radios')}, --changed v1.0
	{down = 3210,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 0'), category = _('Radios')}, --added v1.2
	{down = 3211,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 1'), category = _('Radios')}, --added v1.2
	{down = 3212,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 2'), category = _('Radios')}, --added v1.2
	{down = 3213,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 3'), category = _('Radios')}, --added v1.2
	{down = 3214,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 4'), category = _('Radios')}, --added v1.2
	{down = 3215,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 5'), category = _('Radios')}, --added v1.2
	{down = 3216,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 6'), category = _('Radios')}, --added v1.2
	{down = 3217,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 7'), category = _('Radios')}, --added v1.2
	{down = 3218,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 8'), category = _('Radios')}, --added v1.2
	{down = 3219,            cockpit_device_id = devices.FR22, value_down = 1.0,                 name = _('FR22 Radio Flight 9'), category = _('Radios')}, --added v1.2
	{pressed = 3003, up = 3003, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Left Increase'), category = _('Radios')}, --added v1.3
	{pressed = 3003, up = 3003, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Left Decrease'), category = _('Radios')}, --added v1.3
	{pressed = 3004, up = 3004, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Left Increase'), category = _('Radios')}, --added v1.3
	{pressed = 3004, up = 3004, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Left Decrease'), category = _('Radios')}, --added v1.3
	{pressed = 3005, up = 3005, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Right Increase'), category = _('Radios')}, --added v1.3
	{pressed = 3005, up = 3005, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Inner Right Decrease'), category = _('Radios')}, --added v1.3
	{pressed = 3006, up = 3006, cockpit_device_id = devices.FR22, value_pressed = 0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Right Increase'), category = _('Radios')}, --added v1.3
	{pressed = 3006, up = 3006, cockpit_device_id = devices.FR22, value_pressed =-0.1, value_up = 0.0, name = _('FR22 Radio Manual Frequency Setting Knob Outer Right Decrease'), category = _('Radios')}, --added v1.3
	-- walkman
	{down=3001, up = 3002, cockpit_device_id=devices.WALKMAN, value_down=1.0, value_up = 1.0, name= _('Walkman Play/Stop'), category = _('Tape Player')}, --working
	-- radar
	{pressed = 3208, up = 0.0, cockpit_device_id = devices.RADAR, value_pressed = 0.1, value_up = 0.0, name = _("Anti Jamming Mode (AS) Selector Up (test)"), category = _("Radar")}, -- added v1.3
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.0,                 name = _("Anti Jamming Mode (AS) Selector 0"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.1,                 name = _("Anti Jamming Mode (AS) Selector 1"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.2,                 name = _("Anti Jamming Mode (AS) Selector 2"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.3,                 name = _("Anti Jamming Mode (AS) Selector 3"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.4,                 name = _("Anti Jamming Mode (AS) Selector 4"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.5,                 name = _("Anti Jamming Mode (AS) Selector 5"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.6,                 name = _("Anti Jamming Mode (AS) Selector 6"), category = _("Radar")}, -- added v0.6
	{down = 3208,            cockpit_device_id = devices.RADAR, value_down = 0.7,                 name = _("Anti Jamming Mode (AS) Selector 7"), category = _("Radar")}, -- added v0.6
	{down = 3209, up = 3209, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Gain Log/Lin"), category = _("Radar")}, --working
	{down = 3209, up = 3209, cockpit_device_id = devices.RADAR, value_down = 0.0, value_up = 1.0, name = _("Radar Gain Lin/Log"), category = _("Radar")}, --working
	{down = 3213, up = 3213, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Obstacle detection mode On/Off"), category = _("Radar")}, --added v1.2 by HF
	{down = 3328, up = 3328, cockpit_device_id = devices.RADAR, value_down = 0.0, value_up = 1.0, name = _("Radar Pulse Normal/Short"), category = _("Radar")}, --working
	{down = 3350, up = 3350, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Passive Recce On/Off"), category = _("Radar")}, --working
	--{down = 3914, up = 3914, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar/EL Maintenance Test On/Off"), category = _("Radar")}, --working
	--{down = 3918, up = 3918, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("Radar Ignition Coils On/Off"), category = _("_My Buttons")}, --working
	{down = 3922, up = 3922, cockpit_device_id = devices.RADAR, value_down = 1.0, value_up = 0.0, name = _("IFF Identification Depressed/Released"), category = _("Navigation")}, --added v1.3
	-- doppler
	{down = 3001, up = 3001, cockpit_device_id = devices.DOPPLER, value_down = 0.0, value_up = 1.0, name = _("Doppler Mode Land (hold)"), category = _("Navigation")}, --working, hold
    {down = 3098, value_down = 1.0, cockpit_device_id = devices.DOPPLER, name = _('Doppler Mode Land/Sea (toggle)'), category = _('Navigation')}, -- toggle

	-- navigation panel
	{down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0, value_up = 0.0, name = _("Datapanel Switch In/out"), category = _("Navigation")}, --working
	{down = 3008,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 1.0,                 name = _("Datapanel Switch Input"), category = _("Navigation")}, --added v0.4
	{down = 3008,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0,                 name = _("Datapanel Switch Output"), category = _("Navigation")}, --added v0.4
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.0,                 name = _("Datapanel ID-NR"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.1,                 name = _("Datapanel TAKT"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.2,                 name = _("Datapanel TID"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.3,                 name = _("Datapanel VIND/RUTA/MAL"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.4,                 name = _("Datapanel BANA/GRANS"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.5,                 name = _("Datapanel REF/LOLA"), category = _("Navigation")}, -- added v0.6
	{down = 3009,            cockpit_device_id = devices.NAVIGATIONPANEL, value_down = 0.6,                 name = _("Datapanel AKTPOS"), category = _("Navigation")}, -- added v0.6
	-- RWR
	{down = 3001, up = 3002, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 1.0,  name = _('KB Off/Lights'), category = _('Lights')}, --added v0.4
	{down = 3003, up = 3002, cockpit_device_id = devices.RWR, value_down = 1.0, value_up = 1.0,  name = _('KB Lights+Sound/Lights'), category = _('Lights')}, --added v0.4
	-- countermeasures
	{down = 3010, up = 3010, cockpit_device_id = devices.COUNTERMEASURE, value_down = 1.0, value_up = 0.0, name = _('Countermeasure KB Stråk Mod 4/0'), category = _('Countermeasures')}, --added v0.4
	{down = 3028, up = 3028, cockpit_device_id = devices.COUNTERMEASURE, value_down = 0.0, value_up = 0.1, name = _('Countermeasure Chaff/Flares Selector R/RF'), category = _('Countermeasures')}, --added v0.4
	{down = 3028, up = 3028, cockpit_device_id = devices.COUNTERMEASURE, value_down = 0.2, value_up = 0.1, name = _('Countermeasure Chaff/Flares Selector F/RF'), category = _('Countermeasures')}, --added v0.4
	-- ERRORPANEL
	{down = 3004, up = 3004, cockpit_device_id = devices.ERRORPANEL,     value_down = 1.0, value_up = 0.0, name = _('KONTROLL Indicator System Test'), category = _('Lights')}, --added v1.3
	-- begin added missing buttons
	{down = 3008, up = 3008, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Button L MÅL"), category = _("Navigation")}, --added v0.4
	{down = 3009, up = 3009, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Button LS"), category = _("Navigation")}, --added v0.4
	{down = 3010, up = 3010, cockpit_device_id = devices.NAVIGATION, value_down = 1.0, value_up = 0.0, name = _("Navigationpanel Waypoint BX"), category = _("Navigation")}, --added v0.4
	-- end added missing buttons
	
	--Night Vision Goggles
	{down    = iCommandViewNightVisionGogglesOn   , name = _('Night Vision Goggles')   , category = _('Sensors')},
	{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Sensors')},
	{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Sensors')},

    -- Export from https://github.com/Munkwolf/dcs-community-keybinds (c3508ee)
    {cockpit_device_id = 7, down = 3001, up = 3001, value_down = 0, value_up = 1, name = _('Thrust Reverser - OFF else ON (2-way Switch)'), category = _('Flight Control')},

    {cockpit_device_id = devices.DOPPLER, down = 3001, value_down = 0, name = _('Doppler Land/Sea Mode - LAND'), category = _('Navigation')},
    {cockpit_device_id = devices.DOPPLER, down = 3001, value_down = 1, name = _('Doppler Land/Sea Mode - SEA'), category = _('Navigation')},
    {cockpit_device_id = devices.DOPPLER, down = 3001, up = 3001, value_down = 1, value_up = 0, name = _('Doppler Land/Sea Mode - SEA else LAND (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3511, value_down = 0, name = _('TILS Channel Layer Selection - 1-10'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3511, value_down = 1, name = _('TILS Channel Layer Selection - 11-20'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3511, up = 3511, value_down = 0, value_up = 1, name = _('TILS Channel Layer Selection - 11-20 else 1-10 (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.LIGHTS, down = 3001, up = 3001, value_down = 0, value_up = 1, name = _('Anti Collision Lights - OFF else ON (2-way Switch)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, down = 3003, up = 3003, value_down = 0, value_up = 1, name = _('Formation Lights - OFF else ON (2-way Switch)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, down = 3004, up = 3004, value_down = 0, value_up = 1, name = _('Position Lights - OFF else ON (2-way Switch)'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, down = 3005, value_down = 0, name = _('Position Lights Brightness - 1'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, down = 3005, value_down = 0.1, name = _('Position Lights Brightness - 2'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, down = 3005, value_down = 0.2, name = _('Position Lights Brightness - 3'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, down = 3009, up = 3009, value_down = -1, value_up = 0, name = _('Taxi/Landing Lights Switch - ON else OFF (3-way Switch Down)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, down = 3009, up = 3009, value_down = 1, value_up = 0, name = _('Taxi/Landing Lights Switch - TAXI else OFF (3-way Switch Up)'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, down = 3010, up = 3010, value_down = 0, value_up = 1, name = _('Emergency Lights Switch - OFF else ON (2-way Switch)'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = -0.005, name = _('Panel Lights Brightness - DOWN (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = 0.005, name = _('Panel Lights Brightness - UP (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = -0.02, name = _('Panel Lights Brightness - DOWN (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = 0.02, name = _('Panel Lights Brightness - UP (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = -0.04, name = _('Panel Lights Brightness - DOWN (Very Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3012, value_pressed = 0.04, name = _('Panel Lights Brightness - UP (Very Fast)'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = -0.005, name = _('Flood Lights Brightness - DOWN (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = 0.005, name = _('Flood Lights Brightness - UP (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = -0.02, name = _('Flood Lights Brightness - DOWN (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = 0.02, name = _('Flood Lights Brightness - UP (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = -0.04, name = _('Flood Lights Brightness - DOWN (Very Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3013, value_pressed = 0.04, name = _('Flood Lights Brightness - UP (Very Fast)'), category = _('Lights')},

    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = -0.005, name = _('Instrument Lights Brightness - DOWN (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = 0.005, name = _('Instrument Lights Brightness - UP (Slow)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = -0.02, name = _('Instrument Lights Brightness - DOWN (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = 0.02, name = _('Instrument Lights Brightness - UP (Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = -0.04, name = _('Instrument Lights Brightness - DOWN (Very Fast)'), category = _('Lights')},
    {cockpit_device_id = devices.LIGHTS, pressed = 3011, value_pressed = 0.04, name = _('Instrument Lights Brightness - UP (Very Fast)'), category = _('Lights')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3001, up = 3001, value_down = 0, value_up = 1, name = _('Start System - OFF else ON (2-way Switch)'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3002, up = 3002, value_down = 0, value_up = 1, name = _('Low-pressure Fuel Valve - OFF else ON (2-way Switch)'), category = _('Motor')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3004, value_down = 0, name = _('High-pressure Fuel Valve - CUT-OFF'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3004, value_down = 1, name = _('High-pressure Fuel Valve - IDLE'), category = _('Motor')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3003, up = 3003, value_down = 0, value_up = 1, name = _('Ignition System - AUTO else MAN (2-way Switch)'), category = _('Motor')},

    {cockpit_device_id = devices.ELECTRICSYSTEM, down = 3003, up = 3003, value_down = 0, value_up = 1, name = _('Backup Generator - OFF else ON (2-way Switch)'), category = _('Motor')},
    {cockpit_device_id = devices.ELECTRICSYSTEM, down = 3003, up = 3003, value_down = 1, value_up = 0, name = _('Backup Generator - ON else OFF (2-way Switch)'), category = _('Motor')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3405, up = 3405, value_down = 0, value_up = 1, name = _('Ejection Seat - SAFE else ARM (2-way Switch)'), category = _('Flight Control')},

    {cockpit_device_id = devices.ELECTRICSYSTEM, down = 3001, up = 3001, value_down = 0, value_up = 1, name = _('Main Electric Power - OFF else ON (2-way Switch)'), category = _('Motor'), _('Electronics')},
    {cockpit_device_id = devices.ELECTRICSYSTEM, down = 3002, up = 3002, value_down = 0, value_up = 1, name = _('Generator - OFF else ON (2-way Switch)'), category = _('Motor'), _('Electronics')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3201, value_down = 0, name = _('Slav SI Switch - F'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3201, value_down = 1, name = _('Slav SI Switch - T'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3097, value_down = 0, name = _('HÖJD CISI Switch - RHM'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3097, value_down = 1, name = _('HÖJD CISI Switch - LD'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3210, value_down = 0, name = _('Pitch Gear Switch - AUTOMATIC'), category = _('Flight Control')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3210, value_down = 1, name = _('Pitch Gear Switch - LANDING'), category = _('Flight Control')},

    {cockpit_device_id = devices.COUNTERMEASURE, down = 3010, up = 3010, value_down = 0, value_up = 1, name = _('Countermeasure KB Stråk Mod - 0 else 4 (2-way Switch)'), category = _('Countermeasures')},

    {cockpit_device_id = devices.COUNTERMEASURE, down = 3028, value_down = 0, name = _('Countermeasure Chaff/Flares Selector - R'), category = _('Countermeasures')},
    {cockpit_device_id = devices.COUNTERMEASURE, down = 3028, value_down = 0.1, name = _('Countermeasure Chaff/Flares Selector - RF'), category = _('Countermeasures')},
    {cockpit_device_id = devices.COUNTERMEASURE, down = 3028, value_down = 0.2, name = _('Countermeasure Chaff/Flares Selector - F'), category = _('Countermeasures')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3718, value_down = 0, name = _('Oxygen Lever - OFF'), category = _('Misc')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3406, value_down = 0, name = _('Canopy - CENTER'), category = _('Flight Control')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3007, value_down = 0, name = _('Manual Fuel Regulator - OFF'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3007, value_down = 1, name = _('Manual Fuel Regulator - ON'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3007, up = 3007, value_down = 0, value_up = 1, name = _('Manual Fuel Regulator - OFF else ON (2-way Switch)'), category = _('Motor')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3006, value_down = 0, name = _('Manual Afterburner Fuel Valve - CLOSED'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3006, value_down = 1, name = _('Manual Afterburner Fuel Valve - OPEN'), category = _('Motor')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3411, value_pressed = -0.5, name = _('HUD Brightness - DECREASE (Slow)'), category = _('HUD')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3411, value_pressed = 0.5, name = _('HUD Brightness - INCREASE (Slow)'), category = _('HUD')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3411, value_pressed = -2, name = _('HUD Brightness - DECREASE (Fast)'), category = _('HUD')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3411, value_pressed = 2, name = _('HUD Brightness - INCREASE (Fast)'), category = _('HUD')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3304, value_down = 0, name = _('Autopilot Autothrottle mode AFK - OFF'), category = _('Flight Control')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3304, value_down = 1, name = _('Autopilot Autothrottle mode AFK - ON'), category = _('Flight Control')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3304, up = 3304, value_down = 0, value_up = 1, name = _('Autopilot Autothrottle mode AFK - OFF else ON (2-way Switch)'), category = _('Flight Control')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3408, value_down = 0, name = _('Parking Brake - OFF'), category = _('Flight Control')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3408, up = 3408, value_down = 0, value_up = 1, name = _('Parking Brake - OFF else ON (2-way Switch)'), category = _('Flight Control')},

    {cockpit_device_id = devices.FR22, down = 3014, value_down = 0, name = _('FR22 Radio AM/FM - FM'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, down = 3014, value_down = 1, name = _('FR22 Radio AM/FM - AM'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, down = 3014, up = 3014, value_down = 0, value_up = 1, name = _('FR22 Radio AM/FM - FM else AM (2-way Switch)'), category = _('Radios')},

    {cockpit_device_id = devices.FR22, down = 3110, value_down = -1, name = _('FR24 Mode Selector - RIGHT (Fixed)'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, down = 3110, value_down = 1, name = _('FR24 Mode Selector - LEFT (Fixed)'), category = _('Radios')},

    {cockpit_device_id = devices.FR22, down = 3011, up = 3011, value_down = 1.0, value_up = 0.0, name = _('Ground Intercom'), category = _('Radios')},

    {cockpit_device_id = devices.FR22, pressed = 3012, value_pressed = -0.5, name = _('Radio Volume Control - DECREASE (Slow)'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, pressed = 3012, value_pressed = 0.5, name = _('Radio Volume Control - INCREASE (Slow)'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, pressed = 3012, value_pressed = -2, name = _('Radio Volume Control - DECREASE (Fast)'), category = _('Radios')},
    {cockpit_device_id = devices.FR22, pressed = 3012, value_pressed = 2, name = _('Radio Volume Control - INCREASE (Fast)'), category = _('Radios')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3300, up = 3300, value_down = 0, value_up = 1, name = _('Trigger Safety Bracket - SAFE else ARM (2-way Switch)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3302, value_down = 0, name = _('Weapon Emergency Release Cover - CLOSE'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3302, up = 3302, value_down = 0, value_up = 1, name = _('Weapon Emergency Release Cover - CLOSE else OPEN (2-way Switch)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3402, value_down = 0, name = _('External Tank Release Cover - CLOSE'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3402, up = 3402, value_down = 0, value_up = 1, name = _('External Tank Release Cover - CLOSE else OPEN (2-way Switch)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3308, value_down = 0, name = _('Bypass Firing Circuit Cover - CLOSE'), category = _('Bypass Firing Circuit')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3308, value_down = 1, name = _('Bypass Firing Circuit Cover - OPEN'), category = _('Bypass Firing Circuit')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3308, up = 3308, value_down = 0, value_up = 1, name = _('Bypass Firing Circuit Cover - CLOSE else OPEN (2-way Switch)'), category = _('Bypass Firing Circuit')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3308, up = 3308, value_down = 1, value_up = 0, name = _('Bypass Firing Circuit Cover - OPEN else CLOSE (2-way Switch)'), category = _('Bypass Firing Circuit')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3309, up = 3309, value_down = 1, value_up = 0, name = _('Bypass Firing Circuit Button'), category = _('Bypass Firing Circuit')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3306, value_down = 0, name = _('Weapon Release Mode Switch - Fallsattomkopplare - UP'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3306, value_down = 1, name = _('Weapon Release Mode Switch - Fallsattomkopplare - DOWN'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3306, up = 3306, value_down = 1, value_up = 0, name = _('Weapon Release Mode Switch - Fallsattomkopplare - DOWN else UP (2-way Switch)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3307, value_down = 0, name = _('RB-04/RB-15/BK Release Mode - VALB'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3307, value_down = 1, name = _('RB-04/RB-15/BK Release Mode - PREP'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3307, up = 3307, value_down = 1, value_up = 0, name = _('RB-04/RB-15/BK Release Mode - PREP else VALB (2-way Switch)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3321, up = 3321, value_pressed = -0.5, value_up = 0, name = _('Rb05 Stick - LEFT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3321, up = 3321, value_pressed = 0.5, value_up = 0, name = _('Rb05 Stick - RIGHT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3321, up = 3321, value_pressed = -2, value_up = 0, name = _('Rb05 Stick - LEFT (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3321, up = 3321, value_pressed = 2, value_up = 0, name = _('Rb05 Stick - RIGHT (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3322, up = 3322, value_pressed = -0.5, value_up = 0, name = _('Rb05 Stick - DOWN (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3322, up = 3322, value_pressed = 0.5, value_up = 0, name = _('Rb05 Stick - UP (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3322, up = 3322, value_pressed = -2, value_up = 0, name = _('Rb05 Stick - DOWN (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3322, up = 3322, value_pressed = 2, value_up = 0, name = _('Rb05 Stick - UP (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3510, up = 3510, value_pressed = -0.5, value_up = 0, name = _('Rb05 Stick - DOWN LEFT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3510, up = 3510, value_pressed = 0.5, value_up = 0, name = _('Rb05 Stick- UP RIGHT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3510, up = 3510, value_pressed = -2, value_up = 0, name = _('Rb05 Stick - DOWN LEFT (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3510, up = 3510, value_pressed = 2, value_up = 0, name = _('Rb05 Stick - UP RIGHT (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3511, up = 3511, value_pressed = -0.5, value_up = 0, name = _('Rb05 Stick - DOWN RIGHT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3511, up = 3511, value_pressed = 0.5, value_up = 0, name = _('Rb05 Stick- UP LEFT (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3511, up = 3511, value_pressed = -2, value_up = 0, name = _('Rb05 Stick - DOWN RIGHT (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3511, up = 3511, value_pressed = 2, value_up = 0, name = _('Rb05 Stick - UP LEFT (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3323, value_down = 0, name = _('Rb05 Switch Input with Flight Stick - OFF'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, down = 3323, value_down = 1, name = _('Rb05 Switch Input with Flight Stick - ON'), category = _('Weapons')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3905, up = 3905, value_down = 0, value_up = 1, name = _('CB Autopilot SA - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3905, up = 3905, value_down = 1, value_up = 0, name = _('CB Autopilot SA - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3906, up = 3906, value_down = 0, value_up = 1, name = _('CB High Alpha Warning - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3906, up = 3906, value_down = 1, value_up = 0, name = _('CB High Alpha Warning - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3907, up = 3907, value_down = 0, value_up = 1, name = _('CB Trim System - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3907, up = 3907, value_down = 1, value_up = 0, name = _('CB Trim System - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3908, up = 3908, value_down = 0, value_up = 1, name = _('CB CI/SI - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3908, up = 3908, value_down = 1, value_up = 0, name = _('CB CI/SI - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3909, up = 3909, value_down = 0, value_up = 1, name = _('CB Ejection System - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3909, up = 3909, value_down = 1, value_up = 0, name = _('CB Ejection System - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3910, up = 3910, value_down = 0, value_up = 1, name = _('CB Engine - IN else OUT (2-way Switch)'), category = _('Electronics')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3910, up = 3910, value_down = 1, value_up = 0, name = _('CB Engine - OUT else IN (2-way Switch)'), category = _('Electronics')},

    {cockpit_device_id = devices.RADAR, down = 3328, value_down = 0, name = _('Radar Pulse - NORMAL'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3328, value_down = 1, name = _('Radar Pulse - SHORT'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3328, up = 3328, value_down = 1, value_up = 0, name = _('Radar Pulse - SHORT else NORMAL (2-way Switch)'), category = _('Radar')},

    {cockpit_device_id = devices.RADAR, down = 3350, value_down = 0, name = _('Radar Passive Recce - OFF'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3350, value_down = 1, name = _('Radar Passive Recce - ON'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3350, up = 3350, value_down = 0, value_up = 1, name = _('Radar Passive Recce - OFF else ON (2-way Switch)'), category = _('Radar')},

    {cockpit_device_id = devices.RADAR, pressed = 3924, value_pressed = -0.5, name = _('Radar Brightness - DECREASE (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3924, value_pressed = 0.5, name = _('Radar Brightness - INCREASE (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3924, value_pressed = -2, name = _('Radar Brightness - DECREASE (Fast)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3924, value_pressed = 2, name = _('Radar Brightness - INCREASE (Fast)'), category = _('Radar')},

    {cockpit_device_id = devices.RADAR, pressed = 3326, value_pressed = -0.5, name = _('Radar MKR Gain - DECREASE (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3326, value_pressed = 0.5, name = _('Radar MKR Gain - INCREASE (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3326, value_pressed = -2, name = _('Radar MKR Gain - DECREASE (Fast)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3326, value_pressed = 2, name = _('Radar MKR Gain - INCREASE (Fast)'), category = _('Radar')},

    {cockpit_device_id = devices.RADAR, pressed = 3215, value_pressed = -0.5, name = _('Radar Elevation - DOWN (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3215, value_pressed = 0.5, name = _('Radar Elevation - UP (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3215, value_pressed = -2, name = _('Radar Elevation - DOWN (Fast)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3215, value_pressed = 2, name = _('Radar Elevation - UP (Fast)'), category = _('Radar')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3099, value_down = 0, name = _('Engine De-Ice - OFF'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3099, value_down = 1, name = _('Engine De-Ice - ON'), category = _('Motor')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3099, up = 3099, value_down = 0, value_up = 1, name = _('Engine De-Ice - OFF else ON (2-way Switch)'), category = _('Motor')},

    {cockpit_device_id = devices.RADAR, down = 3914, value_down = 0, name = _('Radar/EL Maintenance Test - OFF'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3914, value_down = 1, name = _('Radar/EL Maintenance Test - ON'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3914, up = 3914, value_down = 0, value_up = 1, name = _('Radar/EL Maintenance Test - OFF else ON (2-way Switch)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, down = 3914, up = 3914, value_down = 1, value_up = 0, name = _('Radar/EL Maintenance Test - ON else OFF (2-way Switch)'), category = _('Radar')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3316, value_pressed = -0.5, name = _('EP-13 Brightness - DOWN (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3316, value_pressed = 0.5, name = _('EP-13 Brightness - UP (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3316, value_pressed = -2, name = _('EP-13 Brightness - DOWN (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3316, value_pressed = 2, name = _('EP-13 Brightness - UP (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3317, value_pressed = -0.5, name = _('EP-13 Contrast - DOWN (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3317, value_pressed = 0.5, name = _('EP-13 Contrast - UP (Slow)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3317, value_pressed = -2, name = _('EP-13 Contrast - DOWN (Fast)'), category = _('Weapons')},
    {cockpit_device_id = devices.WEAPON_SYSTEM, pressed = 3317, value_pressed = 2, name = _('EP-13 Contrast - UP (Fast)'), category = _('Weapons')},

    {cockpit_device_id = devices.RADAR, pressed = 3802, value_pressed = -0.5, name = _('Radar Cl Filter - CCW (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3802, value_pressed = 0.5, name = _('Radar Cl Filter - CW (Slow)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3802, value_pressed = -2, name = _('Radar Cl Filter - CCW (Fast)'), category = _('Radar')},
    {cockpit_device_id = devices.RADAR, pressed = 3802, value_pressed = 2, name = _('Radar Cl Filter - CW (Fast)'), category = _('Radar')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3742, value_down = 0, name = _('Magnetic Declination Cover - CLOSE'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3742, value_down = 1, name = _('Magnetic Declination Cover - OPEN'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3742, up = 3742, value_down = 0, value_up = 1, name = _('Magnetic Declination Cover - CLOSE else OPEN (2-way Switch)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3742, up = 3742, value_down = 1, value_up = 0, name = _('Magnetic Declination Cover - OPEN else CLOSE (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3918, value_down = 0, name = _('Ignition Coils - ON'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3918, value_down = 1, name = _('Ignition Coils - OFF'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3918, up = 3918, value_down = 0, value_up = 1, name = _('Ignition Coils - ON else OFF (2-way Switch)'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3918, up = 3918, value_down = 1, value_up = 0, name = _('Ignition Coils - OFF else ON (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3919, value_down = 0, name = _('DME Selector - OFF'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3919, value_down = 1, name = _('DME Selector - ON'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3919, up = 3919, value_down = 0, value_up = 1, name = _('DME Selector - OFF else ON (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3920, up = 3920, value_down = 0, value_up = 1, name = _('IFF/Transponder Power - OFF else ON (2-way Switch)'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3921, up = 3921, value_down = 0, value_up = 1, name = _('IFF Channel Selector - A else A+C (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.RADARALT, down = 3002, value_down = 0, name = _('Radar Altimeter Power - OFF'), category = _('Navigation')},
    {cockpit_device_id = devices.RADARALT, down = 3002, value_down = 1, name = _('Radar Altimeter Power - ON'), category = _('Navigation')},
    {cockpit_device_id = devices.RADARALT, down = 3002, up = 3002, value_down = 0, value_up = 1, name = _('Radar Altimeter Power - OFF else ON (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3924, value_down = -1, name = _('Flight Recorder - OFF'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3924, value_down = 0, name = _('Flight Recorder - MIDDLE'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3924, value_down = 1, name = _('Flight Recorder - ON'), category = _('Navigation')},
    {cockpit_device_id = devices.ENGINEPANEL, down = 3924, up = 3924, value_down = -1, value_up = 0, name = _('Flight Recorder - OFF else MIDDLE (3-way Switch Down)'), category = _('Navigation')},

    {cockpit_device_id = devices.ENGINEPANEL, down = 3925, up = 3925, value_down = 0, value_up = 1, name = _('Data Cartridge - REMOVE else INSERT (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.NAVIGATIONPANEL, down = 3101, up = 3101, value_down = 0, value_up = 1, name = _('Data Panel RENSA Cover - CLOSE else OPEN (2-way Switch)'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3741, value_down = 0, name = _('Autopilot Yaw Trim Cover - CLOSE'), category = _('Flight Control'), _('Autopilot')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3741, value_down = 1, name = _('Autopilot Yaw Trim Cover - OPEN'), category = _('Flight Control'), _('Autopilot')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3741, up = 3741, value_down = 0, value_up = 1, name = _('Autopilot Yaw Trim Cover - CLOSE else OPEN (2-way Switch)'), category = _('Flight Control'), _('Autopilot')},

    {cockpit_device_id = devices.RWR, pressed = 3005, value_pressed = -0.5, name = _('Master Volume / Sidewinder Tone - DOWN (Slow)'), category = _('Countermeasures')},
    {cockpit_device_id = devices.RWR, pressed = 3005, value_pressed = 0.5, name = _('Master Volume / Sidewinder Tone - UP (Slow)'), category = _('Countermeasures')},
    {cockpit_device_id = devices.RWR, pressed = 3005, value_pressed = -2, name = _('Master Volume / Sidewinder Tone - DOWN (Fast)'), category = _('Countermeasures')},
    {cockpit_device_id = devices.RWR, pressed = 3005, value_pressed = 2, name = _('Master Volume / Sidewinder Tone - UP (Fast)'), category = _('Countermeasures')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3725, value_pressed = -0.005, name = _('Magnetic Declination - DECREASE (Slow)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3725, value_pressed = 0.005, name = _('Magnetic Declination - INCREASE (Slow)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3725, value_pressed = -0.02, name = _('Magnetic Declination - DECREASE (Fast)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3725, value_pressed = 0.02, name = _('Magnetic Declination - INCREASE (Fast)'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3801, value_pressed = -(0.25/15.0), name = _('Clock Time Setting - DECREASE (Slow)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3801, value_pressed = (0.25/15.0), name = _('Clock Time Setting - INCREASE (Slow)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3801, value_pressed = -(1/15.0), name = _('Clock Time Setting - DECREASE (Fast)'), category = _('Navigation')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, pressed = 3801, value_pressed = (1/15.0), name = _('Clock Time Setting - INCREASE (Fast)'), category = _('Navigation')},

    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3715, value_down = 0, name = _('Altimeter Setting Pull-out - NORMAL'), category = _('Flight Data')},
    {cockpit_device_id = devices.FLIGHTDATAUNIT, down = 3715, value_down = 1, name = _('Altimeter Setting Pull-out - PULL'), category = _('Flight Data')},

    -- User Requests
    {down = 3060, cockpit_device_id = devices.KNEEBOARDINTERFACE, value_down = 1.0, value_up = 0.0, name = _('Kneeboard Next Subpage'), category = _('Kneeboard')},
    {down = 3060, cockpit_device_id = devices.KNEEBOARDINTERFACE, value_down = -1.0, value_up = 0.0, name = _('Kneeboard Previous Subpage'), category = _('Kneeboard')},
}


local autogeneratedkeys = dofile(folder.."../joystickbindings.lua")
join(keycommands, autogeneratedkeys)
join(res.keyCommands, keycommands)


--joystick axes 

local axiscommands = {
{action = 3321, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick yaw')},
{action = 3322, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('Rb05 stick pitch')},
{action = 3321, cockpit_device_id = devices.RADAR, name = _('Radar stick horizontal')},
{action = 3322, cockpit_device_id = devices.RADAR, name = _('Radar stick vertical')},
{action = 3327, cockpit_device_id = devices.RADAR, name = _('Radar MKR Gain')},
{action = 3641, cockpit_device_id = devices.RADAR, name = _('Radar elevation')},

{action = 3018, cockpit_device_id = devices.LIGHTS, name = _('Panel Lights brightness')},
{action = 3019, cockpit_device_id = devices.LIGHTS, name = _('Ambient Lights brightness')},
{action = 3020, cockpit_device_id = devices.LIGHTS, name = _('Instrument Lights brightness')},
{action = 3403, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('HUD brightness')},
{action = 3724, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Magnetic Declination Correction')},
{action = 3732, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Autopilot Yaw Trim')},
{action = 3412, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Airspeed Indexer')},
{action = 3921, cockpit_device_id = devices.RADAR, name = _('Radar brightness')},
{action = 3801, cockpit_device_id = devices.RADAR, name = _('Radar Cl filter')},
{action = 3426, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP-13 Brightness')},
{action = 3427, cockpit_device_id = devices.WEAPON_SYSTEM, name = _('EP-13 Contrast')},
{action = 3007, cockpit_device_id = devices.RWR, name = _('Master Volume / Sidewinder Tone')},
{action = 3113, cockpit_device_id = devices.FR22, name = _('Radio Volume')},

{action = 3910, cockpit_device_id = devices.FLIGHTDATAUNIT, name = _('Master Mode select')},

{action = iCommandWheelBrake,		name = _('Wheel Brake')},
{action = iCommandLeftWheelBrake,	name = _('Wheel Brake Left')},
{action = iCommandRightWheelBrake,	name = _('Wheel Brake Right')},

{combos = defaultDeviceAssignmentFor("roll")  ,  action = iCommandPlaneRoll		   , name = _('Roll')},
{combos = defaultDeviceAssignmentFor("pitch") ,  action = iCommandPlanePitch	   , name = _('Pitch')},
{combos = defaultDeviceAssignmentFor("rudder"),  action = iCommandPlaneRudder	   , name = _('Rudder')},
{combos = defaultDeviceAssignmentFor("thrust"),  action = iCommandPlaneThrustCommon, name = _('Thrust')},

-- Export from https://github.com/Munkwolf/dcs-community-keybinds (c3508ee)
{cockpit_device_id = devices.ENGINEPANEL, action = 3304, name = _('AFK Lever')},
{cockpit_device_id = devices.FLIGHTDATAUNIT, action = 3719, name = _('Gear Handle')},
{cockpit_device_id = devices.FLIGHTDATAUNIT, action = 3512, name = _('TILS Channel Selection')},
{cockpit_device_id = devices.LIGHTS, action = 3005, name = _('Position Lights Brightness')},
{cockpit_device_id = devices.COUNTERMEASURE, action = 3024, name = _('Jammer Operation Mode Selector')},
{cockpit_device_id = devices.COUNTERMEASURE, action = 3025, name = _('Jammer Band Selector')},
{cockpit_device_id = devices.COUNTERMEASURE, action = 3026, name = _('Countermeasure Operation Mode Selector')},
{cockpit_device_id = devices.WEAPON_SYSTEM, action = 3304, name = _('Weapon Selector Knob - J/A Valjare')},
{cockpit_device_id = devices.WEAPON_SYSTEM, action = 3305, name = _('Weapon Interval Selector Mode Knob - Siktningvaljare')},
{cockpit_device_id = devices.RADAR, action = 3208, name = _('Anti Jamming Mode (AS) Selector')},

-- User requests
{cockpit_device_id = devices.LIGHTS, action = 3013, name = _('Flood Lights Brightness')},
}

local autogeneratedaxis = dofile(folder.."../joystickaxisbindings.lua")
join(axiscommands, autogeneratedaxis)
join(res.axisCommands, axiscommands)
return res
