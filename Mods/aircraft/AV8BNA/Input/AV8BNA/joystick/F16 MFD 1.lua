return {

forceFeedback = {
},
keyCommands = {

-- Left MPCD
{combos = {{key = 'JOY_BTN16'}},	down = iCommandPlaneLeftMFD_OSB1 , up = iCommandPlaneLeftMFD_OSB1_Off,  name = _('Left MPCD OSB 01'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN17'}},	down = iCommandPlaneLeftMFD_OSB2 , up = iCommandPlaneLeftMFD_OSB2_Off,  name = _('Left MPCD OSB 02'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN18'}},	down = iCommandPlaneLeftMFD_OSB3 , up = iCommandPlaneLeftMFD_OSB3_Off,  name = _('Left MPCD OSB 03'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN19'}},	down = iCommandPlaneLeftMFD_OSB4 , up = iCommandPlaneLeftMFD_OSB4_Off,  name = _('Left MPCD OSB 04'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN20'}},	down = iCommandPlaneLeftMFD_OSB5 , up = iCommandPlaneLeftMFD_OSB5_Off,  name = _('Left MPCD OSB 05'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN1'}},		down = iCommandPlaneLeftMFD_OSB6 , up = iCommandPlaneLeftMFD_OSB6_Off,  name = _('Left MPCD OSB 06'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN2'}},		down = iCommandPlaneLeftMFD_OSB7 , up = iCommandPlaneLeftMFD_OSB7_Off,  name = _('Left MPCD OSB 07'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN3'}},		down = iCommandPlaneLeftMFD_OSB8 , up = iCommandPlaneLeftMFD_OSB8_Off,  name = _('Left MPCD OSB 08'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN4'}},		down = iCommandPlaneLeftMFD_OSB9 , up = iCommandPlaneLeftMFD_OSB9_Off,  name = _('Left MPCD OSB 09'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN5'}},		down = iCommandPlaneLeftMFD_OSB10, up = iCommandPlaneLeftMFD_OSB10_Off, name = _('Left MPCD OSB 10'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN6'}},		down = iCommandPlaneLeftMFD_OSB11, up = iCommandPlaneLeftMFD_OSB11_Off, name = _('Left MPCD OSB 11'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN7'}},		down = iCommandPlaneLeftMFD_OSB12, up = iCommandPlaneLeftMFD_OSB12_Off, name = _('Left MPCD OSB 12'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN8'}},		down = iCommandPlaneLeftMFD_OSB13, up = iCommandPlaneLeftMFD_OSB13_Off, name = _('Left MPCD OSB 13'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN9'}},		down = iCommandPlaneLeftMFD_OSB14, up = iCommandPlaneLeftMFD_OSB14_Off, name = _('Left MPCD OSB 14'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN10'}},	down = iCommandPlaneLeftMFD_OSB15, up = iCommandPlaneLeftMFD_OSB15_Off, name = _('Left MPCD OSB 15'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN11'}},	down = iCommandPlaneLeftMFD_OSB16, up = iCommandPlaneLeftMFD_OSB16_Off, name = _('Left MPCD OSB 16'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN12'}},	down = iCommandPlaneLeftMFD_OSB17, up = iCommandPlaneLeftMFD_OSB17_Off, name = _('Left MPCD OSB 17'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN13'}},	down = iCommandPlaneLeftMFD_OSB18, up = iCommandPlaneLeftMFD_OSB18_Off, name = _('Left MPCD OSB 18'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN14'}},	down = iCommandPlaneLeftMFD_OSB19, up = iCommandPlaneLeftMFD_OSB19_Off, name = _('Left MPCD OSB 19'), category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN15'}},	down = iCommandPlaneLeftMFD_OSB20, up = iCommandPlaneLeftMFD_OSB20_Off, name = _('Left MPCD OSB 20'), category = _('Left MPCD')},

{combos = {{key = 'JOY_BTN21'}},	pressed = iCommandPlaneLeftMFD_SYM_Up,			up = iCommandPlaneLeftMFD_SYM_Stop,		name = _('Left MPCD SYM Increase'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN22'}},	pressed = iCommandPlaneLeftMFD_SYM_Dn,			up = iCommandPlaneLeftMFD_SYM_Stop,		name = _('Left MPCD SYM Decrease'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN23'}},	pressed = iCommandPlaneLeftMFD_CON_Increase,	up = iCommandPlaneLeftMFD_CON_Stop,		name = _('Left MPCD CON Increase'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN24'}},	pressed = iCommandPlaneLeftMFD_CON_Decrease,	up = iCommandPlaneLeftMFD_CON_Stop,		name = _('Left MPCD CON Decrease'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN25'}},	pressed = iCommandPlaneLeftMFD_BRT_Increase,	up = iCommandPlaneLeftMFD_BRT_Stop,		name = _('Left MPCD BRT Increase'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN26'}},	pressed = iCommandPlaneLeftMFD_BRT_Decrease,	up = iCommandPlaneLeftMFD_BRT_Stop,		name = _('Left MPCD BRT Decrease'),		category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN27'}},	pressed = iCommandPlaneLeftMFD_DSP_Increase,	up = iCommandPlaneLeftMFD_DSP_Stop,		name = _('Left MPCD GAIN Increase'),	category = _('Left MPCD')},
{combos = {{key = 'JOY_BTN28'}},	pressed = iCommandPlaneLeftMFD_DSP_Decrease,	up = iCommandPlaneLeftMFD_DSP_Stop,		name = _('Left MPCD GAIN Decrease'),	category = _('Left MPCD')},
{									down = iCommandPlaneLeftMFD_BRTMODE_NIGHT,		up = iCommandPlaneLeftMFD_BRTMODE_OFF,	name = _('Left MPCD Night Mode'),		category = _('Left MPCD')},
{									down = iCommandPlaneLeftMFD_BRTMODE_DAY,		up = iCommandPlaneLeftMFD_BRTMODE_OFF,	name = _('Left MPCD Day Mode'),			category = _('Left MPCD')},

{									down = iCommand_UV26_PowerCover,													name = _('Left MPCD Export View ON/OFF'),	category = _('Left MPCD')},
	
},

axisCommands = {
},
}
