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

-- Left MFCD
{combos = {{key = 'JOY_BTN1'}}, down = iCommandPlaneLeftMFD_OSB1 , up = iCommandPlaneLeftMFD_OSB1_Off,  name = _('Left MFCD OSB 01'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN2'}}, down = iCommandPlaneLeftMFD_OSB2 , up = iCommandPlaneLeftMFD_OSB2_Off,  name = _('Left MFCD OSB 02'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN3'}}, down = iCommandPlaneLeftMFD_OSB3 , up = iCommandPlaneLeftMFD_OSB3_Off,  name = _('Left MFCD OSB 03'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN4'}}, down = iCommandPlaneLeftMFD_OSB4 , up = iCommandPlaneLeftMFD_OSB4_Off,  name = _('Left MFCD OSB 04'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN5'}}, down = iCommandPlaneLeftMFD_OSB5 , up = iCommandPlaneLeftMFD_OSB5_Off,  name = _('Left MFCD OSB 05'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN6'}}, down = iCommandPlaneLeftMFD_OSB6 , up = iCommandPlaneLeftMFD_OSB6_Off,  name = _('Left MFCD OSB 06'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN7'}}, down = iCommandPlaneLeftMFD_OSB7 , up = iCommandPlaneLeftMFD_OSB7_Off,  name = _('Left MFCD OSB 07'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN8'}}, down = iCommandPlaneLeftMFD_OSB8 , up = iCommandPlaneLeftMFD_OSB8_Off,  name = _('Left MFCD OSB 08'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN9'}}, down = iCommandPlaneLeftMFD_OSB9 , up = iCommandPlaneLeftMFD_OSB9_Off,  name = _('Left MFCD OSB 09'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN10'}}, down = iCommandPlaneLeftMFD_OSB10, up = iCommandPlaneLeftMFD_OSB10_Off, name = _('Left MFCD OSB 10'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN11'}}, down = iCommandPlaneLeftMFD_OSB11, up = iCommandPlaneLeftMFD_OSB11_Off, name = _('Left MFCD OSB 11'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN12'}}, down = iCommandPlaneLeftMFD_OSB12, up = iCommandPlaneLeftMFD_OSB12_Off, name = _('Left MFCD OSB 12'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN13'}}, down = iCommandPlaneLeftMFD_OSB13, up = iCommandPlaneLeftMFD_OSB13_Off, name = _('Left MFCD OSB 13'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN14'}}, down = iCommandPlaneLeftMFD_OSB14, up = iCommandPlaneLeftMFD_OSB14_Off, name = _('Left MFCD OSB 14'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN15'}}, down = iCommandPlaneLeftMFD_OSB15, up = iCommandPlaneLeftMFD_OSB15_Off, name = _('Left MFCD OSB 15'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN16'}}, down = iCommandPlaneLeftMFD_OSB16, up = iCommandPlaneLeftMFD_OSB16_Off, name = _('Left MFCD OSB 16'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN17'}}, down = iCommandPlaneLeftMFD_OSB17, up = iCommandPlaneLeftMFD_OSB17_Off, name = _('Left MFCD OSB 17'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN18'}}, down = iCommandPlaneLeftMFD_OSB18, up = iCommandPlaneLeftMFD_OSB18_Off, name = _('Left MFCD OSB 18'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN19'}}, down = iCommandPlaneLeftMFD_OSB19, up = iCommandPlaneLeftMFD_OSB19_Off, name = _('Left MFCD OSB 19'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN20'}}, down = iCommandPlaneLeftMFD_OSB20, up = iCommandPlaneLeftMFD_OSB20_Off, name = _('Left MFCD OSB 20'), category = _('Left MFCD')},


{combos = {{key = 'JOY_BTN27'}}, down = iCommandPlaneLeftMFD_ADJ_Increase, up = iCommandPlaneLeftMFD_ADJ_Stop, name = _('Left MFCD ADJ Increase'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN28'}}, down = iCommandPlaneLeftMFD_ADJ_Decrease, up = iCommandPlaneLeftMFD_ADJ_Stop, name = _('Left MFCD ADJ Decrease'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_DSP_Increase, up = iCommandPlaneLeftMFD_DSP_Stop, name = _('Left MFCD DSP Increase'), category = _('Left MFCD')},
{down = iCommandPlaneLeftMFD_DSP_Decrease, up = iCommandPlaneLeftMFD_DSP_Stop, name = _('Left MFCD DSP Decrease'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN25'}}, down = iCommandPlaneLeftMFD_BRT_Increase, up = iCommandPlaneLeftMFD_BRT_Stop, name = _('Left MFCD BRT Increase'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN26'}}, down = iCommandPlaneLeftMFD_BRT_Decrease, up = iCommandPlaneLeftMFD_BRT_Stop, name = _('Left MFCD BRT Decrease'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN23'}}, down = iCommandPlaneLeftMFD_CON_Increase, up = iCommandPlaneLeftMFD_CON_Stop, name = _('Left MFCD CON Increase'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN24'}}, down = iCommandPlaneLeftMFD_CON_Decrease, up = iCommandPlaneLeftMFD_CON_Stop, name = _('Left MFCD CON Decrease'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN21'}}, down = iCommandPlaneLeftMFD_SYM_Up	  	 , up = iCommandPlaneLeftMFD_SYM_Stop, name = _('Left MFCD SYM Increase'), category = _('Left MFCD')},
{combos = {{key = 'JOY_BTN22'}}, down = iCommandPlaneLeftMFD_SYM_Dn	  	 , up = iCommandPlaneLeftMFD_SYM_Stop, name = _('Left MFCD SYM Decrease'), category = _('Left MFCD')},
	
},

axisCommands = {
},
}
