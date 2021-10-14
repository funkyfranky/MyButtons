dofile("Mods/aircraft/SA342/Cockpit/devices.lua")
dofile("Mods/aircraft/SA342/Cockpit/command_defs.lua")

return {

forceFeedback = {
					trimmer = 1.0,
					shake = 0.5,
					swapAxes = false,
					invertX = false,
					invertY = false,
				},

keyCommands = {

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ff: begin additional buttons
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
{down = device_commands.Button_24, cockpit_device_id = devices.ELECTRIC,  value_down = 1, name = _('Pitot On/Off Toggle'), category = _('_My Buttons')},
{down = device_commands.Button_41, cockpit_device_id = devices.ELECTRIC,  value_down = 1, name = _('Auxiliary Fuel Tank On/Off Toggle'), category = _('_My Buttons')},
{down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id = devices.ELECTRIC,  value_down = 1, value_up = 0, name = _('Convoy Tank On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_17, cockpit_device_id = devices.ELECTRIC,  value_down = 1, name = _('Sand Filter On/Off (Toggle)'), category = _('_My Buttons')},

{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0,name = _('Magnetic Brake On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0,name = _('Trim On/Off'), category = _('_My Buttons')},

{down = device_commands.Button_49, cockpit_device_id = devices.ELECTRIC, value_down = 1,name = _('Starter On'), category = _('_My Buttons')},
{down = device_commands.Button_50, cockpit_device_id = devices.ELECTRIC, value_down = 0,name = _('Starter Off'), category = _('_My Buttons')},
{down = device_commands.Button_51, cockpit_device_id = devices.ELECTRIC, value_down =-1,name = _('Starter Vent.'), category = _('_My Buttons')},

-- autopilot
{down = device_commands.Button_10, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Yaw On'), category = _('_My Buttons')},
{down = device_commands.Button_10, cockpit_device_id = devices.AUTOPILOT, value_down = 0, name = _('SA342 Yaw Off'), category = _('_My Buttons')},
{down = device_commands.Button_11, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Roll On'), category = _('_My Buttons')},
{down = device_commands.Button_11, cockpit_device_id = devices.AUTOPILOT, value_down = 0, name = _('SA342 Roll Off'), category = _('_My Buttons')},
{down = device_commands.Button_13, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Pitch On'), category = _('_My Buttons')},
{down = device_commands.Button_13, cockpit_device_id = devices.AUTOPILOT, value_down = 0, name = _('SA342 Pitch Off'), category = _('_My Buttons')},
{down = device_commands.Button_26, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Master On/Off (toggle)'), category = _('_My Buttons')},

{down = device_commands.Button_10, up = device_commands.Button_10, cockpit_device_id = devices.WEAPONS, value_down = 1, value_up = 0, name = _('SA342 Left Arm On/Off'), category = _('_My Buttons')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.WEAPONS, value_down = 1, value_up = 0, name = _('SA342 Right Arm On/Off'), category = _('_My Buttons')},

{down = device_commands.Button_8, up = device_commands.Button_8,cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Panels Lighting On/Off (alternative)'), category = _('_My Buttons')},

-- flight controls
{action = device_commands.Button_10, cockpit_device_id = devices.FLIGHT_CONTROLS, name = _('Main Horizontal Attitude Set')},

-- flare
{down = device_commands.Button_2, up = device_commands.Button_2,cockpit_device_id = devices.FD, value_down = 0, value_up = 1,name = _('Flare Dispense Mode CC/SEQ'), category = _('_My Buttons')},
{down = device_commands.Button_3, up = device_commands.Button_3,cockpit_device_id = devices.FD, value_down = 1, value_up = 0,name = _('Flare Power/Speed Le/Ve'), category = _('_My Buttons')},
{down = device_commands.Button_3, up = device_commands.Button_3,cockpit_device_id = devices.FD, value_down = -1, value_up = 0,name = _('Flare Power/Speed Arret/Ve'), category = _('_My Buttons')},
{down = device_commands.Button_1, up = device_commands.Button_1,cockpit_device_id = devices.FD, value_down = 1, value_up = 0,name = _('Flare Side Mode G/G+D'), category = _('_My Buttons')},
{down = device_commands.Button_1, up = device_commands.Button_1,cockpit_device_id = devices.FD, value_down = -1, value_up = 0,name = _('Flare Side Mode D/G+D'), category = _('_My Buttons')},

-- ADF
{down = device_commands.Button_12, cockpit_device_id = devices.ADF, value_down = 1, name = _('ADF Select Right'), category = _('_My Buttons')},
{down = device_commands.Button_12, cockpit_device_id = devices.ADF, value_down = 0, name = _('ADF Select Left'), category = _('_My Buttons')},

-- WEAPONS PANEL
{down = device_commands.Button_1, cockpit_device_id = devices.PH, value_down = 0.25, name = _('Weapons Panel Key Jour'), category = _('_My Buttons')},
{down = device_commands.Button_1, cockpit_device_id = devices.PH, value_down = 0.00, name = _('Weapons Panel Key Arret'), category = _('_My Buttons')},

{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.WEAPONS, value_down = 1, value_up = 1, name = _('RIPPLE/SINGLE (Toggle)'), category = _('_My Buttons')},

{down = device_commands.Button_1, up = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, value_up = 0.0, name = _('Pilot/Copilot Seat'), category = _('_My Buttons')},

-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--fvh: end additional buttons
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- fvh: missing buttons from keyboard lua
-- INTERCOM1
{down = device_commands.Button_7,up = device_commands.Button_8,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 VHF AM Radio Volume+'), category = _('SA342 Intercom1')},
{down = device_commands.Button_9,up = device_commands.Button_10,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 VHF AM Radio Volume-'), category = _('SA342 Intercom1')},
{down = device_commands.Button_11,up = device_commands.Button_12,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 FM1 Radio Volume+'), category = _('SA342 Intercom1')},
{down = device_commands.Button_13,up = device_commands.Button_14,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 FM1 Radio Volume-'), category = _('SA342 Intercom1')},
{down = device_commands.Button_15,up = device_commands.Button_16,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 UHF Radio Volume+'), category = _('SA342 Intercom1')},
{down = device_commands.Button_17,up = device_commands.Button_18,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 UHF Radio Volume-'), category = _('SA342 Intercom1')},
-- fvh: end missing buttons
-----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

-- [WP1]
{down = device_commands.Button_16, cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Weapons Arm Down'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_17, cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Weapons Arm Up'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_18,  up = device_commands.Button_19, cockpit_device_id = devices.WEAPONS, value_down = -1, value_up = 0,name = _('SA342 Weapons A/M'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_20,  up = device_commands.Button_19, cockpit_device_id = devices.WEAPONS, value_down = 1, value_up = 0,name = _('SA342 Weapons S/M'), category = _('SA342 Weapons Panel')},

-- [WP2]
{down = device_commands.Button_21,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Left Arm Toggle'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_22,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Left Arm Cover Toggle'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_23,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Right Arm Toggle'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_24,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Right Arm Cover Toggle'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_25,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 RIPPLE/SINGLE Toggle'), category = _('SA342 Weapons Panel')},

-- [PILOTSIGHT]
{down = device_commands.Button_3, up = device_commands.Button_3,cockpit_device_id = devices.WEAPONS, value_down = 1, name = _('SA342 Pilot Sight Deploy/Retract'), category = _('SA342 Pilot Sight')},

-- [TV]
{down = device_commands.Button_5, up = device_commands.Button_5,cockpit_device_id = devices.TV, value_down = 1, name = _('SA342 TV On/Off'), category = _('SA342 TV')},
{down = device_commands.Button_6, up = device_commands.Button_7,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Contrast+'), category = _('SA342 TV')},
{down = device_commands.Button_8, up = device_commands.Button_9,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Contrast-'), category = _('SA342 TV')},
{down = device_commands.Button_10, up = device_commands.Button_11,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Brightness+'), category = _('SA342 TV')},
{down = device_commands.Button_12, up = device_commands.Button_13,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Brightness-'), category = _('SA342 TV')},
{down = device_commands.Button_14, up = device_commands.Button_15,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Cover+'), category = _('SA342 TV')},
{down = device_commands.Button_16, up = device_commands.Button_17,cockpit_device_id = devices.TV, value_down = 1, value_up = 0, name = _('SA342 TV Cover-'), category = _('SA342 TV')},

-- MAIN PANEL
{down = device_commands.Button_21,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Battery On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_22,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Alternator On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_23,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Generator On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_22,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Trim On/Off'), category = _('SA342 Main Panel')},
{down = iCommandSwitchMasterArm, name = _('SA342 Master arm On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_24,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Pitot On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_27,  up = device_commands.Button_28, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Pilot Wiper L/A'), category = _('SA342 Main Panel')},
{down = device_commands.Button_29,  up = device_commands.Button_28, cockpit_device_id = devices.ELECTRIC, value_down = -1, value_up = 0,name = _('SA342 Pilot Wiper R/A'), category = _('SA342 Main Panel')},
{down = device_commands.Button_25, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Pilot Wiper Up'), category = _('SA342 Main Panel')},
{down = device_commands.Button_26, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Pilot Wiper Down'), category = _('SA342 Main Panel')},
{down = device_commands.Button_30, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Copilot Wiper Up'), category = _('SA342 Main Panel')},
{down = device_commands.Button_31, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Copilot Wiper Down'), category = _('SA342 Main Panel')},
{down = device_commands.Button_32,  up = device_commands.Button_33, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Copilot Wiper L/A'), category = _('SA342 Main Panel')},
{down = device_commands.Button_34,  up = device_commands.Button_33, cockpit_device_id = devices.ELECTRIC, value_down = -1, value_up = 0,name = _('SA342 Copilot Wiper R/A'), category = _('SA342 Main Panel')},
{down = device_commands.Button_35,  up = device_commands.Button_36, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 TEST'), category = _('SA342 Main Panel')},
{down = device_commands.Button_37,  up = device_commands.Button_38, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Test HYD'), category = _('SA342 Main Panel')},
{down = device_commands.Button_39,  up = device_commands.Button_40, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Test warning panel'), category = _('SA342 Main Panel')},
{down = device_commands.Button_26, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Nav Lights Up'), category = _('SA342 Main Panel')},
{down = device_commands.Button_27, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Nav Lights Down'), category = _('SA342 Main Panel')},
{down = device_commands.Button_28,  up = device_commands.Button_29, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Nav Lights Flashing'), category = _('SA342 Main Panel')},
{down = device_commands.Button_30,  up = device_commands.Button_31, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Nav Lights Steady'), category = _('SA342 Main Panel')},
{down = device_commands.Button_34,  up = device_commands.Button_35, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Strobe Lights Normal'), category = _('SA342 Main Panel')},
{down = device_commands.Button_36,  up = device_commands.Button_37, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Strobe Lights Attenuated'), category = _('SA342 Main Panel')},
{down = device_commands.Button_43,cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Panels Lighting On/Off'), category = _('SA342 Main Panel')},
{down = device_commands.Button_19, up = device_commands.Button_20, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 PUP Intensity Increase'), category = _('SA342 Main Panel')},
{down = device_commands.Button_21, up = device_commands.Button_22, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 PUP Intensity Decrease'), category = _('SA342 Main Panel')},
{down = device_commands.Button_24, up = device_commands.Button_25, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 PBO Intensity Increase'), category = _('SA342 Main Panel')},
{down = device_commands.Button_26, up = device_commands.Button_27, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 PBO Intensity Decrease'), category = _('SA342 Main Panel')},
{down = device_commands.Button_14, cockpit_device_id = devices.FLIGHT_CONTROLS, value_down = 1, name = _('SA342 Source +'), category = _('SA342 Main Panel')},
{down = device_commands.Button_15, cockpit_device_id = devices.FLIGHT_CONTROLS, value_down = 1, name = _('SA342 Source -'), category = _('SA342 Main Panel')},
{down = device_commands.Button_38, up = device_commands.Button_39, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Strobe Intensity Increase'), category = _('SA342 Main Panel')},
{down = device_commands.Button_40, up = device_commands.Button_41, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Strobe Intensity Decrease'), category = _('SA342 Main Panel')},
{down = device_commands.Button_32, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Strobe Lights Up'), category = _('SA342 Main Panel')},
{down = device_commands.Button_33, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Strobe Lights Down'), category = _('SA342 Main Panel')},

-- START PANEL
{down = device_commands.Button_41,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 RSUPP On/Off'), category = _('SA342 Start Panel')},
{down = device_commands.Button_42,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 FILTAS On/Off'), category = _('SA342 Start Panel')},
{down = device_commands.Button_23,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Magnetic Brake On/Off'), category = _('SA342 Start Panel')},
{down = device_commands.Button_43,  up = device_commands.Button_44, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Rearm Alter'), category = _('SA342 Start Panel')},
{down = device_commands.Button_45,  up = device_commands.Button_46, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Rearm Gene'), category = _('SA342 Start Panel')},
{down = device_commands.Button_49,  up = device_commands.Button_50, cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0,name = _('SA342 Starter M/A'), category = _('SA342 Start Panel')},
{down = device_commands.Button_51,  up = device_commands.Button_50, cockpit_device_id = devices.ELECTRIC, value_down = -1, value_up = 0,name = _('SA342 Starter V/A'), category = _('SA342 Start Panel')},
{down = device_commands.Button_52,cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Fuel Pump On/Off'), category = _('SA342 Start Panel')},
{down = device_commands.Button_5, up = device_commands.Button_6, cockpit_device_id = devices.CLOCK, value_down = 1, value_up = 0,name = _('SA342 Clock Start/Stop'), category = _('SA342 Start Panel')},
{down = device_commands.Button_7, up = device_commands.Button_8, cockpit_device_id = devices.CLOCK, value_down = 1, value_up = 0,name = _('SA342 Clock reset'), category = _('SA342 Start Panel')},
{down = device_commands.Button_48, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Starter Down'), category = _('SA342 Start Panel')},
{down = device_commands.Button_47, cockpit_device_id = devices.ELECTRIC, value_down = 1, name = _('SA342 Starter Up'), category = _('SA342 Start Panel')},
{down = device_commands.Button_13, up = device_commands.Button_14, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 UV Lighting Increase'), category = _('SA342 Start Panel')},
{down = device_commands.Button_15, up = device_commands.Button_16, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 UV Lighting Decrease'), category = _('SA342 Start Panel')},

-- NADIR
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR ENT'), category = _('SA342 NADIR')},
{down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR DES'), category = _('SA342 NADIR')},
{down = device_commands.Button_27, up = device_commands.Button_27, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR AUX'), category = _('SA342 NADIR')},
{down = device_commands.Button_28, up = device_commands.Button_28, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR IC'), category = _('SA342 NADIR')},
{down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR DOWN'), category = _('SA342 NADIR')},
{down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 0'), category = _('SA342 NADIR')},
{down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 1'), category = _('SA342 NADIR')},
{down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 2'), category = _('SA342 NADIR')},
{down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 3'), category = _('SA342 NADIR')},
{down = device_commands.Button_34, up = device_commands.Button_34, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 4'), category = _('SA342 NADIR')},
{down = device_commands.Button_35, up = device_commands.Button_35, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 5'), category = _('SA342 NADIR')},
{down = device_commands.Button_36, up = device_commands.Button_36, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 6'), category = _('SA342 NADIR')},
{down = device_commands.Button_37, up = device_commands.Button_37, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 7'), category = _('SA342 NADIR')},
{down = device_commands.Button_38, up = device_commands.Button_38, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 8'), category = _('SA342 NADIR')},
{down = device_commands.Button_39, up = device_commands.Button_39, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR 9'), category = _('SA342 NADIR')},
{down = device_commands.Button_40, up = device_commands.Button_40, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR POL'), category = _('SA342 NADIR')},
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR GEO'), category = _('SA342 NADIR')},
{down = device_commands.Button_42, up = device_commands.Button_42, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR POS'), category = _('SA342 NADIR')},
{down = device_commands.Button_43, up = device_commands.Button_43, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR GEL'), category = _('SA342 NADIR')},
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0, name = _('SA342 NADIR EFF'), category = _('SA342 NADIR')},
{down = device_commands.Button_45,up = device_commands.Button_45,cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR Mode+'), category = _('SA342 NADIR')},
{down = device_commands.Button_46,up = device_commands.Button_46,cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR Mode-'), category = _('SA342 NADIR')},
{down = device_commands.Button_47,up = device_commands.Button_47,cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR Param+'), category = _('SA342 NADIR')},
{down = device_commands.Button_48,up = device_commands.Button_48,cockpit_device_id = devices.NADIR, value_down = 1, value_up = 0,name = _('SA342 NADIR Param-'), category = _('SA342 NADIR')},

-- VHF RADIO
{down = device_commands.Button_5,up = device_commands.Button_5,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF increment'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_6,up = device_commands.Button_6,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Mode+'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_7,up = device_commands.Button_7,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Mode-'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_8,up = device_commands.Button_8,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Unit+'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_9,up = device_commands.Button_9,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Unit-'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_10,up = device_commands.Button_10,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Dec+'), category = _('SA342 VHF RADIO')},
{down = device_commands.Button_11,up = device_commands.Button_11,cockpit_device_id = devices.AM_RADIO, value_down = 1, value_up = 0,name = _('SA342 VHF RADIO Dec-'), category = _('SA342 VHF RADIO')},

-- PR4G
{down = device_commands.Button_18,up = device_commands.Button_18,cockpit_device_id = devices.FM_RADIO, value_down = 1, value_up = 0,name = _('SA342 FM RADIO Mode+'), category = _('SA342 FM RADIO')},
{down = device_commands.Button_19,up = device_commands.Button_19,cockpit_device_id = devices.FM_RADIO, value_down = 1, value_up = 0,name = _('SA342 FM RADIO Mode-'), category = _('SA342 FM RADIO')},
{down = device_commands.Button_20,up = device_commands.Button_20,cockpit_device_id = devices.FM_RADIO, value_down = 1, value_up = 0,name = _('SA342 FM RADIO Canal+'), category = _('SA342 FM RADIO')},
{down = device_commands.Button_21,up = device_commands.Button_21,cockpit_device_id = devices.FM_RADIO, value_down = 1, value_up = 0,name = _('SA342 FM RADIO Canal-'), category = _('SA342 FM RADIO')},

-- UHF RADIO
{down = device_commands.Button_16, up = device_commands.Button_16, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF VLD'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_17, up = device_commands.Button_17, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 1'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_18, up = device_commands.Button_18, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 2'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_19, up = device_commands.Button_19, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 3'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 4'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_21, up = device_commands.Button_21, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 5'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_22, up = device_commands.Button_22, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 6'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_23, up = device_commands.Button_23, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 7'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_24, up = device_commands.Button_24, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 8'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 9'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF 0'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_27,up = device_commands.Button_27,cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF Mode+'), category = _('SA342 UHF RADIO')},
{down = device_commands.Button_28,up = device_commands.Button_28,cockpit_device_id = devices.UHF_RADIO, value_down = 1, value_up = 0,name = _('SA342 UHF Mode-'), category = _('SA342 UHF RADIO')},

-- ADF RADIO
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 Select Switch'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_13, up = device_commands.Button_13, cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 Tone Switch'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_16,up = device_commands.Button_16,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 ADF Mode+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_17,up = device_commands.Button_17,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 ADF Mode-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_18,up = device_commands.Button_19,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 ADF Gain+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_20,up = device_commands.Button_21,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 ADF Gain-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_22,up = device_commands.Button_22,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Cent+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_23,up = device_commands.Button_23,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Cent-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_24,up = device_commands.Button_24,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Dix+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_25,up = device_commands.Button_25,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Dix-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_26,up = device_commands.Button_26,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Unit+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_27,up = device_commands.Button_27,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV1 Unit-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_28,up = device_commands.Button_28,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Cent+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_29,up = device_commands.Button_29,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Cent-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_30,up = device_commands.Button_30,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Dix+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_31,up = device_commands.Button_31,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Dix-'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_32,up = device_commands.Button_32,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Unit+'), category = _('SA342 ADF RADIO')},
{down = device_commands.Button_33,up = device_commands.Button_33,cockpit_device_id = devices.ADF, value_down = 1, value_up = 0,name = _('SA342 NAV2 Unit-'), category = _('SA342 ADF RADIO')},

-- PILOT COLLECTIVE
{down = device_commands.Button_6, up = device_commands.Button_7, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Landing Light Retract'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_4, up = device_commands.Button_5, cockpit_device_id = devices.NAVLIGHTS, value_down = -1, value_up = 0,name = _('SA342 Landing Light Extend'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_6,  up = device_commands.Button_7, cockpit_device_id = devices.FD, value_down = 1, value_up = 0,name = _('SA342 Flare Dispenser Button Cover'), category = _('SA342 Pilot Collective')},
{down = iCommandPlaneCMDDispence,  up = iCommandPlaneCMDDispenceOff, name = _('SA342 Start dispensing'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_16,  up = device_commands.Button_17, cockpit_device_id = devices.NAVLIGHTS, value_down = -1, value_up = 0,name = _('SA342 Landing Light OFF/VARIO'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_18,  up = device_commands.Button_19, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Landing Light ON/VARIO'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_8, cockpit_device_id = devices.FD, value_down = 1, value_up = 0,name = _('SA342 Flare Dispenser Button Cover Toggle'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_13, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Landing Light OFF'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_14, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Landing Light VARIO'), category = _('SA342 Pilot Collective')},
{down = device_commands.Button_15, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Landing Light ON'), category = _('SA342 Pilot Collective')},
{down = iCommandPlaneHeadLightOnOff, name = _('SA342 Landing Light On/Off'), category = _('SA342 Pilot Collective')},

-- PILOT STICK
{down = device_commands.Button_7, up = device_commands.Button_8,cockpit_device_id = devices.CONTROLS, value_down = 1, value_up = 0, name = _('SA342 Trimmer'), category = _('SA342 Pilot Stick')},
{combos = {{key = 'JOY_BTN_POV1_U'}}, down = device_commands.Button_3, up = device_commands.Button_4,cockpit_device_id = devices.CONTROLS, value_down = 1, value_up = 0, name = _('Trim: Nose Down'), category = _('SA342 Pilot Stick')},
{combos = {{key = 'JOY_BTN_POV1_D'}}, down = device_commands.Button_5, up = device_commands.Button_6,cockpit_device_id = devices.CONTROLS, value_down = 1, value_up = 0, name = _('Trim: Nose Up'), category = _('SA342 Pilot Stick')},
{combos = {{key = 'JOY_BTN_POV1_L'}}, down = device_commands.Button_9, up = device_commands.Button_10,cockpit_device_id = devices.CONTROLS, value_down = 1, value_up = 0, name = _('Trim: Left Wing Down'), category = _('SA342 Pilot Stick')},
{combos = {{key = 'JOY_BTN_POV1_R'}}, down = device_commands.Button_11, up = device_commands.Button_12,cockpit_device_id = devices.CONTROLS, value_down = 1, value_up = 0, name = _('Trim: Right Wing Down'), category = _('SA342 Pilot Stick')},
{down = device_commands.Button_19, up = device_commands.Button_20,cockpit_device_id = devices.ELECTRIC, value_down = 1, value_up = 0, name = _('SA342 Wiper once'), category = _('SA342 Pilot Stick')},
{down = device_commands.Button_29, up = device_commands.Button_30,cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0, name = _('SA342 Autopilot Master'), category = _('SA342 Pilot Stick')},
{down = device_commands.Button_12, up = device_commands.Button_12, cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0, name = _('SA342 Auto-Slaved Toggle'), category = _('SA342 Pilot Stick')},
{down = device_commands.Button_8, up = device_commands.Button_8, cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0, name = _('SA342 Auto-Hover Toggle'), category = _('SA342 Pilot Stick')},
{combos = {{key = 'JOY_BTN1'}}, down = iCommandPlaneFire, up = iCommandPlaneFireOff, name = _('SA342 Fire Gun or Rocket'), category = _('SA342 Pilot Stick')},

-- WSO LEFT STICK
{down = device_commands.Button_35, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Lasing Button Cover'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_42, up = device_commands.Button_42, cockpit_device_id = devices.PE, value_down = 1, value_up = 0,name = _('SA342 Lasing Button'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_36, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Missile Launch Cover'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_41, up = device_commands.Button_41, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Missile Launch Button'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_25, up = device_commands.Button_25, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Inversed Symbology Toggle'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_26, up = device_commands.Button_26, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Inversed Image Toggle'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_29, up = device_commands.Button_29, cockpit_device_id = devices.PE, value_down = -1, value_up = 0, name = _('SA342 Gain decrease'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_30, up = device_commands.Button_30, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Gain increase'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_31, up = device_commands.Button_31, cockpit_device_id = devices.PE, value_down = -1, value_up = 0, name = _('SA342 Image Brightness decrease'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_32, up = device_commands.Button_32, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Image Brightness increase'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_33, up = device_commands.Button_33, cockpit_device_id = devices.PE, value_down = -1, value_up = 0, name = _('SA342 Symbology Brightness decrease'), category = _('SA342 WSO Left Stick')},
{down = device_commands.Button_34, up = device_commands.Button_34, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Symbology Brightness increase'), category = _('SA342 WSO Left Stick')},

-- WEAPONS PANEL
{down = device_commands.Button_4, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Station 1 Select'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_5, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Station 2 Select'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_6, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Station 3 Select'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_7, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Station 4 Select'), category = _('SA342 Weapons Panel')},
{down = iCommandPlaneChangeWeapon, name = _('SA342 Cycle Station'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_8, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Cle plus'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_9, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Cle moins'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_10, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Gisement plus'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_11, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Gisement moins'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_12, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Lum plus'), category = _('SA342 Weapons Panel')},
{down = device_commands.Button_13, cockpit_device_id = devices.PH, value_down = 1.0, name = _('SA342 Lum moins'), category = _('SA342 Weapons Panel')},

-- RWR
{down = device_commands.Button_8,  up = device_commands.Button_9, cockpit_device_id = devices.RWR, value_down = -1, value_up = 0,name = _('SA342 RWR OFF/ON'), category = _('SA342 RWR')},
{down = device_commands.Button_10,  up = device_commands.Button_9, cockpit_device_id = devices.RWR, value_down = 1, value_up = 0,name = _('SA342 RWR CROC/ON'), category = _('SA342 RWR')},
{down = device_commands.Button_6, cockpit_device_id = devices.RWR, value_down = 1, name = _('SA342 RWR Off/On/Croc Up'), category = _('SA342 RWR')},
{down = device_commands.Button_7, cockpit_device_id = devices.RWR, value_down = 1, name = _('SA342 RWR Off/On/Croc Down'), category = _('SA342 RWR')},
{down = device_commands.Button_11, up = device_commands.Button_12, cockpit_device_id = devices.RWR, value_down = 1, value_up = 0,name = _('SA342 RWR Audio Increase'), category = _('SA342 RWR')},
{down = device_commands.Button_13, up = device_commands.Button_14, cockpit_device_id = devices.RWR, value_down = 1, value_up = 0,name = _('SA342 RWR Audio Decrease'), category = _('SA342 RWR')},
{down = device_commands.Button_16, up = device_commands.Button_17, cockpit_device_id = devices.RWR, value_down = 1, value_up = 0,name = _('SA342 RWR Brightness Increase'), category = _('SA342 RWR')},
{down = device_commands.Button_18, up = device_commands.Button_19, cockpit_device_id = devices.RWR, value_down = 1, value_up = 0,name = _('SA342 RWR Brightness Decrease'), category = _('SA342 RWR')},

-- AUTOPILOT
{down = device_commands.Button_9,  up = device_commands.Button_20, cockpit_device_id = devices.AUTOPILOT, value_down = 1, value_up = 0,name = _('SA342 Altitude Mode'), category = _('SA342 Autopilot')},
{down = device_commands.Button_19,  up = device_commands.Button_20, cockpit_device_id = devices.AUTOPILOT, value_down = -1, value_up = 0,name = _('SA342 Speed Mode'), category = _('SA342 Autopilot')},
{down = device_commands.Button_26,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Master On/Off'), category = _('SA342 Autopilot')},
{down = device_commands.Button_10,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Yaw On/Off'), category = _('SA342 Autopilot')},
{down = device_commands.Button_11,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Roll On/Off'), category = _('SA342 Autopilot')},
{down = device_commands.Button_13,cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Pitch On/Off'), category = _('SA342 Autopilot')},
{down = device_commands.Button_31, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Gyro Test Switch Cover'), category = _('SA342 Autopilot')},
{down = device_commands.Button_32, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Gyro Test Switch'), category = _('SA342 Autopilot')},
{down = device_commands.Button_33, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Gyro Knob +'), category = _('SA342 Autopilot')},
{down = device_commands.Button_34, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Gyro Knob -'), category = _('SA342 Autopilot')},
{down = device_commands.Button_18, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Auto-Collective Toggle'), category = _('SA342 Autopilot')},
{down = device_commands.Button_21, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Mode Up'), category = _('SA342 Autopilot')},
{down = device_commands.Button_24, cockpit_device_id = devices.AUTOPILOT, value_down = 1, name = _('SA342 Mode Down'), category = _('SA342 Autopilot')},

-- ROOF CONSOLE
{down = device_commands.Button_4, up = device_commands.Button_4, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 Roof Lamp Low/Normal Button'), category = _('SA342 Roof Console')},
{down = device_commands.Button_6, up = device_commands.Button_6, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 Roof Lamp White/red Button'), category = _('SA342 Roof Console')},
{down = device_commands.Button_11, up = device_commands.Button_11, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Formation Lights On/Off Button'), category = _('SA342 Roof Console')},
{down = device_commands.Button_2, up = device_commands.Button_3, cockpit_device_id = devices.FUEL, value_down = 1, value_up = 0,name = _('SA342 Fuel Flow lever Forward'), category = _('SA342 Roof Console')},
{down = device_commands.Button_4, up = device_commands.Button_5, cockpit_device_id = devices.FUEL, value_down = 1, value_up = 0,name = _('SA342 Fuel Flow lever Backward'), category = _('SA342 Roof Console')},
{down = device_commands.Button_2, up = device_commands.Button_3, cockpit_device_id = devices.ROTORS, value_down = 1, value_up = 0,name = _('SA342 Rotor Brake Release (lever Forward)'), category = _('SA342 Roof Console')},
{down = device_commands.Button_4, up = device_commands.Button_5, cockpit_device_id = devices.ROTORS, value_down = 1, value_up = 0,name = _('SA342 Rotor Brake On (lever Backward)'), category = _('SA342 Roof Console')},
{down = device_commands.Button_7, up = device_commands.Button_8, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 Roof Lamp Increase'), category = _('SA342 Roof Console')},
{down = device_commands.Button_9, up = device_commands.Button_10, cockpit_device_id = devices.LIGHTS, value_down = 1, value_up = 0,name = _('SA342 Roof Lamp Decrease'), category = _('SA342 Roof Console')},
{down = device_commands.Button_11, cockpit_device_id = devices.LIGHTS, value_down = 1, name = _('SA342 Roof Lamp Low/Normal'), category = _('SA342 Roof Console')},
{down = device_commands.Button_12, cockpit_device_id = devices.LIGHTS, value_down = 1, name = _('SA342 Roof Lamp Lens White/red'), category = _('SA342 Roof Console')},
{down = device_commands.Button_21, up = device_commands.Button_22, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Formation Lights Increase'), category = _('SA342 Roof Console')},
{down = device_commands.Button_23, up = device_commands.Button_24, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, value_up = 0,name = _('SA342 Formation Lights Decrease'), category = _('SA342 Roof Console')},
{down = device_commands.Button_20, cockpit_device_id = devices.NAVLIGHTS, value_down = 1, name = _('SA342 Formation Lights On/Off'), category = _('SA342 Roof Console')},

-- VIDEO COMMAND BOX
{down = device_commands.Button_44, up = device_commands.Button_44, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Camera Centering'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_45, cockpit_device_id = devices.PE, value_down = 1.0, name = _('SA342 Normal/IR View Toggle'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_46, up = device_commands.Button_46, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Zoom +'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_47, up = device_commands.Button_47, cockpit_device_id = devices.PE, value_down = -1, value_up = 0, name = _('SA342 Zoom -'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_37, cockpit_device_id = devices.PE, value_down = 1, name = _('SA342 CTH +'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_38, cockpit_device_id = devices.PE, value_down = 1, name = _('SA342 CTH -'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_39, up = device_commands.Button_39, cockpit_device_id = devices.PE, value_down = 1, value_up = 0, name = _('SA342 Power button'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_17, cockpit_device_id = devices.PE, value_down = 1, name = _('SA342 MODE +'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_18, cockpit_device_id = devices.PE, value_down = 1, name = _('SA342 MODE -'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_19, cockpit_device_id = devices.PE, value_down = 1.0, name = _('SA342 CTH Cycle'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_20, up = device_commands.Button_20, cockpit_device_id = devices.PE, value_down = 1.0, value_up = 0.0, name = _('SA342 Power 2 pos'), category = _('SA342 Video Command Box')},
 
-- BCV China Hat second joystick
{down = device_commands.Button_8, up = device_commands.Button_9, cockpit_device_id = devices.PE, value_down = 1, value_up = 0,name = _('SA342 Slew up'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_10, up = device_commands.Button_11, cockpit_device_id = devices.PE, value_down = 1, value_up = 0,name = _('SA342 Slew down'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_12, up = device_commands.Button_13, cockpit_device_id = devices.PE, value_down = 1, value_up = 0,name = _('SA342 Slew left'), category = _('SA342 Video Command Box')},
{down = device_commands.Button_14, up = device_commands.Button_15, cockpit_device_id = devices.PE, value_down = 1, value_up = 0,name = _('SA342 Slew right'), category = _('SA342 Video Command Box')},

-- Intercom1
{down = device_commands.Button_24,up = device_commands.Button_24,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 VHF AM Radio Select'), category = _('SA342 Intercom1')},
{down = device_commands.Button_25,up = device_commands.Button_25,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 FM Radio Select'), category = _('SA342 Intercom1')},
{down = device_commands.Button_26,up = device_commands.Button_26,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 UHF AM Radio Select'), category = _('SA342 Intercom1')},

-- Intercom2
{down = device_commands.Button_54,up = device_commands.Button_54,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 VHF AM Radio Select2'), category = _('SA342 Intercom2')},
{down = device_commands.Button_55,up = device_commands.Button_55,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 FM Radio Select2'), category = _('SA342 Intercom2')},
{down = device_commands.Button_56,up = device_commands.Button_56,cockpit_device_id = devices.INTERCOM, value_down = 1, value_up = 0,name = _('SA342 UHF AM Radio Select2'), category = _('SA342 Intercom2')},
 
-- Controls
{down = iCommandPlane_ShowControls, name = _('Show controls indicator') , category = _('Controls')},
{down = iCommandPlaneTrimCancel, name = _('Trimmer reset'), category = _('Controls')},
-- Ins Cyclick Stick
{pressed = iCommandPlaneUpStart    , up = iCommandPlaneUpStop  ,   name = _('SA342 Cyclic nose down'), category = _('Controls')},
{pressed = iCommandPlaneDownStart  , up = iCommandPlaneDownStop,   name = _('SA342 Cyclic nose up'), category = _('Controls')},
{pressed = iCommandPlaneLeftStart  , up = iCommandPlaneLeftStop,   name = _('Cyclic bank left'), category = _('Controls')},
{pressed = iCommandPlaneRightStart , up = iCommandPlaneRightStop,  name = _('Cyclic bank right'), category = _('Controls')},
-- Ins Collective Stick
{pressed = iCommandPlaneCollectiveIncrease, up = iCommandPlaneCollectiveStop, name = _('Collective up'), category = _('Controls')},
{pressed = iCommandPlaneCollectiveDecrease, up = iCommandPlaneCollectiveStop, name = _('Collective down'), category = _('Controls')},
--Ins Rudder
{pressed = iCommandPlaneLeftRudderStart, up = iCommandPlaneLeftRudderStop, name = _('Rudder left'), category = _('Controls')},
{pressed = iCommandPlaneRightRudderStart, up = iCommandPlaneRightRudderStop, name = _('Rudder right'), category = _('Controls')},

-- HEAD_WRAPPER
{down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('SA342 Set Pilot Seat'), category = _('View Cockpit')},
{down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('SA342 Set CoPilot Seat'), category = _('View Cockpit')},
{down = device_commands.Button_3, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('SA342 Pilot Sun glass On/Off'), category = _('View Cockpit')},
{down = device_commands.Button_4, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('SA342 Microphone Light On/Off'), category = _('View Cockpit')},

-- View                                                    
{pressed = iCommandViewLeftSlow, up = iCommandViewStopSlow, name = _('View Left slow'), category = _('View')},
{pressed = iCommandViewRightSlow, up = iCommandViewStopSlow, name = _('View Right slow'), category = _('View')},
{pressed = iCommandViewUpSlow, up = iCommandViewStopSlow, name = _('View Up slow'), category = _('View')},
{pressed = iCommandViewDownSlow, up = iCommandViewStopSlow, name = _('View Down slow'), category = _('View')},
{pressed = iCommandViewUpRightSlow, up = iCommandViewStopSlow, name = _('View Up Right slow'), category = _('View')},
{pressed = iCommandViewDownRightSlow, up = iCommandViewStopSlow, name = _('View Down Right slow'), category = _('View')},
{pressed = iCommandViewDownLeftSlow, up = iCommandViewStopSlow, name = _('View Down Left slow'), category = _('View')},
{pressed = iCommandViewUpLeftSlow, up = iCommandViewStopSlow, name = _('View Up Left slow'), category = _('View')},
{pressed = iCommandViewCenter, name = _('Center View'), category = _('View')},

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
{down = iCommandViewRear, name = _('F4 Look back view'), category = _('View')},
{down = iCommandViewChase, name = _('F4 Chase view'), category = _('View')},
{down = iCommandViewChaseArcade, name = _('F4 Arcade Chase view'), category = _('View')},
{down = iCommandViewFight, name = _('F5 Nearest AC view'), category = _('View')},
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
{down = iCommand_ExplorationStart, name = _('Enable exploration mode'), category = _('View Cockpit')},
{down = iCommandViewTransposeModeOn, up = iCommandViewTransposeModeOff, name = _('Camera transpose mode on/off'), category = _('View Cockpit')},

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

-- Radio Communications
{down = iCommandToggleCommandMenu, name = _('SA342 Communication menu'), category = _('Radio Communications')},
{down = iCommandPlaneDoAndHome, name = _('Flight - Complete mission and RTB'), category = _('Radio Communications')},
--{down = iCommandPlaneDoAndBack, name = _('Flight - Complete mission and rejoin'), category = _('Radio Communications')},
{down = iCommandPlaneFormation, name = _('Toggle formation'), category = _('Radio Communications')},
{down = iCommandPlaneJoinUp, name = _('Join up formation'), category = _('Radio Communications')},
--{down = iCommandPlaneAttackMyTarget, name = _('Attack my target'), category = _('Radio Communications')},
{down = iCommandPlaneCoverMySix, name = _('Cover me'), category = _('Radio Communications')},
{down = iCommandPlane_EngageGroundTargets, name = _('Flight - Attack ground targets'), category = _('Radio Communications')},
{down = iCommandPlane_EngageAirDefenses, name = _('Flight - Attack air defenses'), category = _('Radio Communications')},
{down = ICommandSwitchDialog, name = _('Switch dialog'), category = _('Radio Communications')},

--Kneeboard
{down = iCommandPlaneShowKneeboard	, name = _('Kneeboard ON/OFF'), category = _('Kneeboard')},
{down = iCommandPlaneShowKneeboard	, up = iCommandPlaneShowKneeboard ,value_down = 1.0,value_up = -1.0, name = _('Kneeboard glance view')  , category = _('Kneeboard')},
{down = 3001		, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Next Page')  , category = _('Kneeboard')},
{down = 3002		, cockpit_device_id  = 100, value_down = 1.0, name = _('Kneeboard Previous Page'), category = _('Kneeboard')},
{down = 3003		, cockpit_device_id  = 100,value_down  = 1.0, name = _('Kneeboard current position mark point')   , category = _('Kneeboard')},
--shortcuts navigation
{down = 3004		, cockpit_device_id  = 100,value_down =  1.0, name = _('Kneeboard Make Shortcut'), category = _('Kneeboard')},
{down = 3005		, cockpit_device_id  = 100,value_down =  1.0, name = _('Kneeboard Next Shortcut'), category = _('Kneeboard')},
{down = 3005		, cockpit_device_id  = 100,value_down = -1.0, name = _('Kneeboard Previous Shortcut')   , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 0   , name = _('Kneeboard Jump To Shortcut  1')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 1   , name = _('Kneeboard Jump To Shortcut  2')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 2   , name = _('Kneeboard Jump To Shortcut  3')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 3   , name = _('Kneeboard Jump To Shortcut  4')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 4   , name = _('Kneeboard Jump To Shortcut  5')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 5   , name = _('Kneeboard Jump To Shortcut  6')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 6   , name = _('Kneeboard Jump To Shortcut  7')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 7   , name = _('Kneeboard Jump To Shortcut  8')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 8   , name = _('Kneeboard Jump To Shortcut  9')  , category = _('Kneeboard')},
{down = 3006		, cockpit_device_id  = 100,value_down = 9   , name = _('Kneeboard Jump To Shortcut 10') , category = _('Kneeboard')},

-- SYSTEMS
{down = iCommandPlaneFonar, name = _('Cockpit door open/close'), category = _('Systems')},

{down = device_commands.Button_1, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Pilot Seat'), category = _('View Cockpit')},
{down = device_commands.Button_2, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 0.0, name = _('Set Operator Seat'), category = _('View Cockpit')},

-- CHEAT
{down = iCommandEnginesStart, name = _('SA342 Auto execute full start procedure'), category = _('Cheat')},
{down = iCommandEnginesStop, name = _('SA342 Auto execute full stop procedure') , category = _('Cheat')},
{down = iCommandActivePauseOnOff, name = _('Active Pause'), category = _('Cheat')},

-- General
{down = iCommandQuit, name = _('End mission'), category = _('General')},
{down = iCommandBrakeGo, name = _('Pause'), category = _('General')},
{down = iCommandAccelerate, name = _('Time accelerate'), category = _('General')},
{down = iCommandDecelerate, name = _('Time decelerate'), category = _('General')},
{down = iCommandNoAcceleration, name = _('Time normal'), category = _('General')},
{down = iCommandChat, name = _('Multiplayer chat - mode All'), category = _('General')},
{down = iCommandFriendlyChat, name = _('Multiplayer chat - mode Allies'), category = _('General')},
{down = iCommandInfoOnOff, name = _('Info bar toggle'), category = _('General')},
{down = iCommandRecoverHuman, name = _('Get New Plane - respawn'), category = _('General')},
{down = iCommandCockpitClickModeOnOff, name = _('Clickable mouse cockpit mode On/Off'), category = _('General')},
{down = iCommandScreenShot, name = _('Screenshot'), category = _('General')},
-- obsolete
--{down = iCommandGraphicsFrameRate, name = _('Frame rate counter - Service info'), category = _('General')},
--
{down = iCommandViewCoordinatesInLinearUnits, name = _('Info bar coordinate units toggle'), category = _('General')},
{down = iCommandCockpitShowPilotOnOff, name = _('Show Pilot Body'), category = _('General')},
{down = iCommandViewBriefing, name = _('View briefing on/off'), category = _('General')},
{down = iCommandScoresWindowToggle, name = _('Score window'), category = _('General')},
{down = iCommandDebriefing, name = _('Debriefing window'), category = _('General')},
{down = iCommandMissionResourcesManagement, name = _('Rearming and Refueling Window'), category = _('General')},
{down = iCommandPlaneJump, name = _('Jump into selected aircraft'), category = _('General')},

--Night Vision Goggles
{down = device_commands.Button_5, up = device_commands.Button_5, cockpit_device_id = devices.HEAD_WRAPPER, value_down = 1, value_up = 0, name = _('SA342 Night Vision Goggles On/Off'), category = _('Night Vision Goggles')},
{down = iCommandPlane_Helmet_Brightess_Up  , name = _('Night Vision Goggles Gain Up')  , category = _('Night Vision Goggles')},
{down = iCommandPlane_Helmet_Brightess_Down, name = _('Night Vision Goggles Gain Down'), category = _('Night Vision Goggles')},

},

axisCommands = {

-- ff: axes start
{action = device_commands.Button_1, cockpit_device_id = devices.FUEL, name = _('Fuel flow lever axis'), category = _('_My Buttons')},
-- ff: axes end

-- joystick axes 
{combos = defaultDeviceAssignmentFor("roll")	, action = iCommandPlaneRollDelta  , name = _('Flight Control Cyclic Roll'), category = _('Controls')},
{combos = defaultDeviceAssignmentFor("pitch")	, action = iCommandPlanePitchDelta , name = _('Flight Control Cyclic Pitch'), category = _('Controls')},
{combos = defaultDeviceAssignmentFor("rudder")	, action = iCommandPlaneRudderDelta, name = _('Flight Control Rudder'), category = _('Controls')},
{combos = defaultDeviceAssignmentFor("thrust")	, action = iCommandPlaneCollective, name = _('Flight Control Collective'), category = _('Controls')},

-- second joystick pour BCV
{action = iCommandPlaneSelecterVerticalAbs, name = _('SA342 BCV Slew Up/Down'), category = _('SA342 Video Command Box')},
{action = iCommandPlaneSelecterHorizontalAbs, name = _('SA342 BCV Slew Left/Right'), category = _('SA342 Video Command Box')},

-- Torque
--  A brancher lorsqu'un bouton rotatif joystick sera dispo // pas manette des gaz
--{action = device_commands.Button_7, cockpit_device_id = devices.TORQUE, name = _('Torque Bug')},
-- HA
--  A brancher lorsqu'un bouton rotatif joystick sera dispo // pas manette des gaz
--{action = device_commands.Button_10, cockpit_device_id = devices.FLIGHT_CONTROLS, name = _('Main Horizontal Attitude Set')},

-- [TV]
{action = device_commands.Button_18, cockpit_device_id = devices.TV, name = _('SA342 TV Contrast'), category = _('SA342 TV')},
{action = device_commands.Button_19, cockpit_device_id = devices.TV, name = _('SA342 TV Brightness'), category = _('SA342 TV')},

-- UV LIGHT
{action = device_commands.Button_18, cockpit_device_id = devices.LIGHTS, name = _('SA342 UV Light'), category = _('SA342 Start Panel')},

-- WP1
{action = device_commands.Button_15, cockpit_device_id = devices.WEAPONS, name = _('SA342 Weapons Panel Brightness'), category = _('SA342 Weapons Panel')},

-- RWR
{action = device_commands.Button_15, cockpit_device_id = devices.RWR, name = _('SA342 RWR Audio'), category = _('SA342 RWR')},
{action = device_commands.Button_20, cockpit_device_id = devices.RWR, name = _('SA342 RWR Brightness'), category = _('SA342 RWR')},

-- MAIN PANEL
{action = device_commands.Button_42, cockpit_device_id = devices.NAVLIGHTS, name = _('SA342 Strobe Intensity'), category = _('SA342 Main Panel')},
{action = device_commands.Button_23, cockpit_device_id = devices.LIGHTS, name = _('SA342 PUP Intensity'), category = _('SA342 Main Panel')},
{action = device_commands.Button_28, cockpit_device_id = devices.LIGHTS, name = _('SA342 PBO Intensity'), category = _('SA342 Main Panel')},

-- INTERCOM 1
{action = device_commands.Button_4, cockpit_device_id  = devices.INTERCOM, name = _('SA342 VHF AM Radio Volume'), category = _('SA342 Intercom1')},
{action = device_commands.Button_5, cockpit_device_id  = devices.INTERCOM, name = _('SA342 FM1 Radio Volume'), category = _('SA342 Intercom1')},
{action = device_commands.Button_6, cockpit_device_id  = devices.INTERCOM, name = _('SA342 UHF Radio Volume'), category = _('SA342 Intercom1')},

-- INTERCOM 2
{action = device_commands.Button_34, cockpit_device_id  = devices.INTERCOM, name = _('SA342 VHF AM Radio Volume 2'), category = _('SA342 Intercom2')},
{action = device_commands.Button_35, cockpit_device_id  = devices.INTERCOM, name = _('SA342 FM1 Radio Volume 2'), category = _('SA342 Intercom2')},
{action = device_commands.Button_36, cockpit_device_id  = devices.INTERCOM, name = _('SA342 UHF Radio Volume 2'), category = _('SA342 Intercom2')},

-- NADIR
{action = device_commands.Button_24, cockpit_device_id  = devices.NADIR, name = _('SA342 NADIR Brightness'), category = _('SA342 NADIR')},

-- ADF RADIO
{action = device_commands.Button_11, cockpit_device_id  = devices.ADF, name = _('SA342 Gain'), category = _('SA342 ADF RADIO')},

-- ROOF CONSOLE
{action = device_commands.Button_17, cockpit_device_id = devices.LIGHTS, name = _('SA342 Roof Lamp'), category = _('SA342 Roof Console')},
{action = device_commands.Button_25, cockpit_device_id = devices.NAVLIGHTS, name = _('SA342 Formation Lights'), category = _('SA342 Roof Console')},
{action = device_commands.Button_7, cockpit_device_id  = devices.FUEL, name = _('SA342 Fuel Flow Lever'), category = _('SA342 Roof Console')},
{action = device_commands.Button_6, cockpit_device_id  = devices.ROTORS, name = _('SA342 Rotor Brake lever'), category = _('SA342 Roof Console')},

-- mouse axes
{action = iCommandPlaneViewHorizontal, name = _('Camera Horizontal View')},
{action = iCommandPlaneViewVertical, name = _('Camera Vertical View')},
{action = iCommandPlaneZoomView, name = _('Camera Zoom View')},

-- TrackIR axes
{action = iCommandViewVerticalAbs, name = _('Absolute Camera Vertical View')},
{action = iCommandViewHorizontalAbs, name = _('Absolute Camera Horizontal View')},
{action = iCommandViewHorTransAbs, name = _('Absolute Horizontal Shift Camera View')},
{action = iCommandViewVertTransAbs, name = _('Absolute Vertical Shift Camera View')},
{action = iCommandViewLongitudeTransAbs, name = _('Absolute Longitude Shift Camera View')},
{action = iCommandViewRollAbs, name = _('Absolute Roll Shift Camera View')},
{action = iCommandViewZoomAbs, name = _('Zoom View')},

},
}
