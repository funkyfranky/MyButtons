return {

forceFeedback = {
},
keyCommands = {

--FF: begin additional buttons for MFDs
--HSI
{pressed = iCommandHSI_HeadingRotaryLeft,  					name = _('HSI Heading rotate left'), category = _('Systems')},
{pressed = iCommandHSI_HeadingRotaryRight,					name = _('HSI Heading rotate right'), category = _('Systems')},
{pressed = iCommandHSI_CourseRotaryLeft,  					name = _('HSI Course rotate left'), category = _('Systems')},
{pressed = iCommandHSI_CourseRotaryRight,					name = _('HSI Course rotate right'), category = _('Systems')},
--Altimeter
{pressed = iCommandAltimeterPressureDecrease,  				name = _('Altimeter Pressure Set Decrease'), category = _('Systems')},
{pressed = iCommandAltimeterPressureIncrease,				name = _('Altimeter Pressure Set Increase'), category = _('Systems')},
{down = iCommandPlane_Altimeter_PNEU, up = 	iCommandPlane_Altimeter_CENTER,		name = _('Altimeter PNEU Mode'), category = _('Systems')},
{down = iCommandPlane_Altimeter_ELECT, up = 	iCommandPlane_Altimeter_CENTER,	name = _('Altimeter ELECT Mode'), category = _('Systems')},
--NightVision
{down    = iCommandViewNightVisionGogglesOn   , name = _('Toggle goggles')   , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Gain goggles up')  , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Gain goggles down'), category = _('Sensors')},
--Emergency flight control panel
{pressed = iCommandPlaneEmerTrimNoseDn,  up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Nose DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimLWingDn, up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Left wing DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimRWingDn, up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Right wing DN'), category = _('Emergency flight control panel')},
{pressed = iCommandPlaneEmerTrimNoseUP,  up = iCommandPlaneEmerTrimNeutral	, name = _('Emer trim Nose UP'), category = _('Emergency flight control panel')},
--SAI
{pressed = iCommand_AGR_axis_left, 							name = _('SAI Pitch Trim Left'), category = _('Systems')},
{pressed = iCommand_AGR_axis_right, 						name = _('SAI Pitch Trim Right'), category = _('Systems')},
--ADI
{pressed = iCommandADI_ZeroPitchTrimLeft, 					name = _('ADI Pitch Trim Left'), category = _('Systems')},
{pressed = iCommandADI_ZeroPitchTrimRight, 					name = _('ADI Pitch Trim Right'), category = _('Systems')},
--NightVision
{down    = iCommandViewNightVisionGogglesOn   , name = _('Toggle goggles')   , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Up  , name = _('Gain goggles up')  , category = _('Sensors')},
{pressed = iCommandPlane_Helmet_Brightess_Down, name = _('Gain goggles down'), category = _('Sensors')},
--Left MFCD
{down = iCommandPlaneLeftMFD_BRTMODE_OFF		, name = _('Left MFCD Disable power'), category = _('_Left MFCD')},
{down = iCommandPlaneLeftMFD_BRTMODE_NIGHT	, name = _('Left MFCD Night illumination'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_BRTMODE_DAY		, name = _('Left MFCD Day illumination'), category = _('Left MFCD')},
--Right MFCD
{down = iCommandPlaneRightMFD_BRTMODE_OFF		, name = _('Right MFCD Disable power'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRTMODE_NIGHT		, name = _('Right MFCD Night illumination'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_BRTMODE_DAY		, name = _('Right MFCD Day illumination'), category = _('Right MFCD')},
--UFC
{down = iCommandPlaneUFC_STEER_UP,up = iCommandPlaneUFC_STEER_UP,			 	name = _('UFC STEER UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_STEER_DOWN,up = iCommandPlaneUFC_STEER_DOWN,			name = _('UFC STEER DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DATA_UP,up = iCommandPlaneUFC_DATA_UP,					name = _('UFC DATA UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DATA_DOWN,up = iCommandPlaneUFC_DATA_DOWN,				name = _('UFC DATA DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_SEL_UP,up = iCommandPlaneUFC_SEL_UP,					name = _('UFC SEL UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_SEL_DOWN,up = iCommandPlaneUFC_SEL_DOWN,				name = _('UFC SEL DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DEPR_UP,up = iCommandPlaneUFC_DEPR_UP,					name = _('UFC DEPR UP Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_DEPR_DOWN,up = iCommandPlaneUFC_DEPR_DOWN,				name = _('UFC DEPR DOWN Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_INTEN_INCREASE,up = iCommandPlaneUFC_INTEN_INCREASE,	name = _('UFC INTEN INCREASE Rocker switch'), category = _('UFC')},
{down = iCommandPlaneUFC_INTEN_DECREASE,up = iCommandPlaneUFC_INTEN_DECREASE,	name = _('UFC INTEN DECREASE Rocker switch'), category = _('UFC')},
--FF: end

-- Right MFCD
{combos = {{key = 'JOY_BTN1'}}, down = iCommandPlaneRightMFD_OSB1 , up = iCommandPlaneRightMFD_OSB1_Off,  name = _('Right MFCD OSB 01'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN2'}}, down = iCommandPlaneRightMFD_OSB2 , up = iCommandPlaneRightMFD_OSB2_Off,  name = _('Right MFCD OSB 02'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN3'}}, down = iCommandPlaneRightMFD_OSB3 , up = iCommandPlaneRightMFD_OSB3_Off,  name = _('Right MFCD OSB 03'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN4'}}, down = iCommandPlaneRightMFD_OSB4 , up = iCommandPlaneRightMFD_OSB4_Off,  name = _('Right MFCD OSB 04'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN5'}}, down = iCommandPlaneRightMFD_OSB5 , up = iCommandPlaneRightMFD_OSB5_Off,  name = _('Right MFCD OSB 05'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN6'}}, down = iCommandPlaneRightMFD_OSB6 , up = iCommandPlaneRightMFD_OSB6_Off,  name = _('Right MFCD OSB 06'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN7'}}, down = iCommandPlaneRightMFD_OSB7 , up = iCommandPlaneRightMFD_OSB7_Off,  name = _('Right MFCD OSB 07'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN8'}}, down = iCommandPlaneRightMFD_OSB8 , up = iCommandPlaneRightMFD_OSB8_Off,  name = _('Right MFCD OSB 08'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN9'}}, down = iCommandPlaneRightMFD_OSB9 , up = iCommandPlaneRightMFD_OSB9_Off,  name = _('Right MFCD OSB 09'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN10'}}, down = iCommandPlaneRightMFD_OSB10, up = iCommandPlaneRightMFD_OSB10_Off, name = _('Right MFCD OSB 10'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN11'}}, down = iCommandPlaneRightMFD_OSB11, up = iCommandPlaneRightMFD_OSB11_Off, name = _('Right MFCD OSB 11'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN12'}}, down = iCommandPlaneRightMFD_OSB12, up = iCommandPlaneRightMFD_OSB12_Off, name = _('Right MFCD OSB 12'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN13'}}, down = iCommandPlaneRightMFD_OSB13, up = iCommandPlaneRightMFD_OSB13_Off, name = _('Right MFCD OSB 13'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN14'}}, down = iCommandPlaneRightMFD_OSB14, up = iCommandPlaneRightMFD_OSB14_Off, name = _('Right MFCD OSB 14'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN15'}}, down = iCommandPlaneRightMFD_OSB15, up = iCommandPlaneRightMFD_OSB15_Off, name = _('Right MFCD OSB 15'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN16'}}, down = iCommandPlaneRightMFD_OSB16, up = iCommandPlaneRightMFD_OSB16_Off, name = _('Right MFCD OSB 16'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN17'}}, down = iCommandPlaneRightMFD_OSB17, up = iCommandPlaneRightMFD_OSB17_Off, name = _('Right MFCD OSB 17'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN18'}}, down = iCommandPlaneRightMFD_OSB18, up = iCommandPlaneRightMFD_OSB18_Off, name = _('Right MFCD OSB 18'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN19'}}, down = iCommandPlaneRightMFD_OSB19, up = iCommandPlaneRightMFD_OSB19_Off, name = _('Right MFCD OSB 19'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN20'}}, down = iCommandPlaneRightMFD_OSB20, up = iCommandPlaneRightMFD_OSB20_Off, name = _('Right MFCD OSB 20'), category = _('Right MFCD')},


{combos = {{key = 'JOY_BTN27'}}, down = iCommandPlaneRightMFD_ADJ_Increase, up = iCommandPlaneRightMFD_ADJ_Stop, name = _('Right MFCD ADJ Increase'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN28'}}, down = iCommandPlaneRightMFD_ADJ_Decrease, up = iCommandPlaneRightMFD_ADJ_Stop, name = _('Right MFCD ADJ Decrease'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_DSP_Increase, up = iCommandPlaneRightMFD_DSP_Stop, name = _('Right MFCD DSP Increase'), category = _('Right MFCD')},
{down = iCommandPlaneRightMFD_DSP_Decrease, up = iCommandPlaneRightMFD_DSP_Stop, name = _('Right MFCD DSP Decrease'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN25'}}, down = iCommandPlaneRightMFD_BRT_Increase, up = iCommandPlaneRightMFD_BRT_Stop, name = _('Right MFCD BRT Increase'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN26'}}, down = iCommandPlaneRightMFD_BRT_Decrease, up = iCommandPlaneRightMFD_BRT_Stop, name = _('Right MFCD BRT Decrease'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN23'}}, down = iCommandPlaneRightMFD_CON_Increase, up = iCommandPlaneRightMFD_CON_Stop, name = _('Right MFCD CON Increase'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN24'}}, down = iCommandPlaneRightMFD_CON_Decrease, up = iCommandPlaneRightMFD_CON_Stop, name = _('Right MFCD CON Decrease'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN21'}}, down = iCommandPlaneRightMFD_SYM_Up	  	 , up = iCommandPlaneRightMFD_SYM_Stop, name = _('Right MFCD SYM Increase'), category = _('Right MFCD')},
{combos = {{key = 'JOY_BTN22'}}, down = iCommandPlaneRightMFD_SYM_Dn	  	 , up = iCommandPlaneRightMFD_SYM_Stop, name = _('Right MFCD SYM Decrease'), category = _('Right MFCD')},
	
},

axisCommands = {
},
}
