EESchema Schematic File Version 4
LIBS:pcb_1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 2
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Device:R R4
U 1 1 5DA97592
P 7200 1750
F 0 "R4" V 7280 1750 50  0000 C CNN
F 1 "2.2k" V 7200 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7130 1750 50  0001 C CNN
F 3 "" H 7200 1750 50  0000 C CNN
	1    7200 1750
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D4
U 1 1 5DA975F7
P 7450 2050
F 0 "D4" H 7450 2150 50  0000 C CNN
F 1 "D_Schottky" H 7350 1950 50  0000 C CNN
F 2 "Diodes_SMD:D_PowerDI-123" H 7450 2050 50  0001 C CNN
F 3 "" H 7450 2050 50  0000 C CNN
	1    7450 2050
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R5
U 1 1 5DA9767E
P 7750 1750
F 0 "R5" V 7830 1750 50  0000 C CNN
F 1 "2.2k" V 7750 1750 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7680 1750 50  0001 C CNN
F 3 "" H 7750 1750 50  0000 C CNN
	1    7750 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R Rs1
U 1 1 5DA97EB0
P 8200 3800
F 0 "Rs1" V 8280 3800 50  0000 C CNN
F 1 "0.1" V 8200 3800 50  0000 C CNN
F 2 "Resistors_SMD:R_2512_HandSoldering" V 8130 3800 50  0001 C CNN
F 3 "" H 8200 3800 50  0000 C CNN
	1    8200 3800
	1    0    0    -1  
$EndComp
$Comp
L Device:R R6
U 1 1 5DA99214
P 7850 4900
F 0 "R6" V 7930 4900 50  0000 C CNN
F 1 "16k" V 7850 4900 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7780 4900 50  0001 C CNN
F 3 "" H 7850 4900 50  0000 C CNN
	1    7850 4900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R7
U 1 1 5DA992B7
P 7850 5300
F 0 "R7" V 7930 5300 50  0000 C CNN
F 1 "1.3k" V 7850 5300 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7780 5300 50  0001 C CNN
F 3 "" H 7850 5300 50  0000 C CNN
	1    7850 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C2
U 1 1 5DAA4B61
P 4400 1350
F 0 "C2" H 4425 1450 50  0000 L CNN
F 1 "15000u" H 4425 1250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D35.0mm_P10.00mm_SnapIn" H 4438 1200 50  0001 C CNN
F 3 "" H 4400 1350 50  0000 C CNN
	1    4400 1350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C24
U 1 1 5DAAC5E5
P 2450 6800
F 0 "C24" H 2475 6900 50  0000 L CNN
F 1 "0.1u" H 2475 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2488 6650 50  0001 C CNN
F 3 "" H 2450 6800 50  0000 C CNN
	1    2450 6800
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BD139 Q1
U 1 1 5DCB5127
P 8100 1750
F 0 "Q1" H 8292 1796 50  0000 L CNN
F 1 "BD139" H 8292 1705 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-126_Vertical" H 8300 1675 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 8100 1750 50  0001 L CNN
	1    8100 1750
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5DCB7E83
P 10950 5250
F 0 "J4" H 11030 5242 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 11030 5151 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 10950 5250 50  0001 C CNN
F 3 "~" H 10950 5250 50  0001 C CNN
	1    10950 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5050 7850 5100
Wire Wire Line
	7850 4750 8200 4750
Wire Wire Line
	7800 3350 8200 3350
Connection ~ 8200 3350
Wire Wire Line
	8200 3350 8200 3650
Wire Wire Line
	7800 4250 8200 4250
Wire Wire Line
	8200 3950 8200 4250
$Comp
L power:GNDA #PWR07
U 1 1 5DCFDE63
P 7700 3300
F 0 "#PWR07" H 7700 3050 50  0001 C CNN
F 1 "GNDA" H 7650 3150 50  0000 C CNN
F 2 "" H 7700 3300 50  0001 C CNN
F 3 "" H 7700 3300 50  0001 C CNN
	1    7700 3300
	-1   0    0    1   
$EndComp
Wire Wire Line
	7700 3300 7700 3350
$Comp
L power:GNDA #PWR09
U 1 1 5DD03116
P 7700 4300
F 0 "#PWR09" H 7700 4050 50  0001 C CNN
F 1 "GNDA" H 7750 4150 50  0000 C CNN
F 2 "" H 7700 4300 50  0001 C CNN
F 3 "" H 7700 4300 50  0001 C CNN
	1    7700 4300
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR06
U 1 1 5DD046A3
P 7600 3300
F 0 "#PWR06" H 7600 3150 50  0001 C CNN
F 1 "+5V" H 7550 3450 50  0000 C CNN
F 2 "" H 7600 3300 50  0001 C CNN
F 3 "" H 7600 3300 50  0001 C CNN
	1    7600 3300
	1    0    0    -1  
$EndComp
$Comp
L lab_power_supply:MAX9944 U1
U 2 1 5DD19535
P 6650 1750
F 0 "U1" H 6750 2050 50  0000 C CNN
F 1 "MAX9944" H 6750 1950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6650 1750 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 6650 1750 50  0001 C CNN
	2    6650 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8200 4250 8200 4750
Connection ~ 8200 4250
Wire Wire Line
	6150 1850 6350 1850
Connection ~ 7850 5100
Wire Wire Line
	7850 5100 7850 5150
Wire Wire Line
	6950 1750 7000 1750
Wire Wire Line
	7600 1750 7450 1750
Text GLabel 6000 1650 0    60   Input ~ 0
Vset
Wire Wire Line
	6350 1650 6000 1650
$Comp
L lab_power_supply:MAX9944 U1
U 3 1 5DD4ED58
P 5350 2350
F 0 "U1" H 5308 2396 50  0000 L CNN
F 1 "MAX9944" H 5308 2305 50  0000 L CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5350 2350 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 5350 2350 50  0001 C CNN
	3    5350 2350
	1    0    0    -1  
$EndComp
Connection ~ 7450 1750
Wire Wire Line
	7450 1750 7350 1750
Text GLabel 6050 1850 0    60   Input ~ 0
Vmon
Wire Wire Line
	6050 1850 6150 1850
Connection ~ 6150 1850
$Comp
L lab_power_supply:SPX2920U-5.0 U2
U 1 1 5DA9DECE
P 4050 3350
F 0 "U2" H 4050 3650 50  0000 C CNN
F 1 "SPX2920U-5.0" H 4050 3550 50  0000 C CNN
F 2 "Power_Integrations:TO-220" H 4050 3450 50  0001 C CIN
F 3 "" H 4050 3350 50  0000 C CNN
	1    4050 3350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C23
U 1 1 5DAB50D8
P 1700 5450
F 0 "C23" V 1950 5350 50  0000 L CNN
F 1 "0.1u" V 1850 5350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 1738 5300 50  0001 C CNN
F 3 "" H 1700 5450 50  0000 C CNN
	1    1700 5450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C22
U 1 1 5DAADB87
P 4550 3450
F 0 "C22" H 4575 3550 50  0000 L CNN
F 1 "0.1u" H 4575 3350 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4588 3300 50  0001 C CNN
F 3 "" H 4550 3450 50  0000 C CNN
	1    4550 3450
	1    0    0    -1  
$EndComp
$Comp
L Device:C C25
U 1 1 5DAAC698
P 2650 6800
F 0 "C25" H 2450 6900 50  0000 L CNN
F 1 "0.1u" H 2450 6700 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 2688 6650 50  0001 C CNN
F 3 "" H 2650 6800 50  0000 C CNN
	1    2650 6800
	-1   0    0    1   
$EndComp
Text GLabel 1100 6250 0    59   Input ~ 0
DAC_SCK
Text GLabel 1100 6400 0    59   Input ~ 0
DAC_SDI
Text GLabel 1100 6550 0    59   Input ~ 0
DAC_CS
Text Label 2050 5950 1    60   ~ 0
DAC
$Comp
L power:+5V #PWR05
U 1 1 5DA98A0F
P 4550 3150
F 0 "#PWR05" H 4550 3000 50  0001 C CNN
F 1 "+5V" H 4550 3290 50  0000 C CNN
F 2 "" H 4550 3150 50  0000 C CNN
F 3 "" H 4550 3150 50  0000 C CNN
	1    4550 3150
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D5
U 1 1 5DA986FA
P 3550 3000
F 0 "D5" H 3550 3100 50  0000 C CNN
F 1 "Zener 15V" H 3550 2900 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 3550 3000 50  0001 C CNN
F 3 "" H 3550 3000 50  0000 C CNN
	1    3550 3000
	0    1    1    0   
$EndComp
$Comp
L lab_power_supply:MCP4822-E_SN U4
U 1 1 5DA96ADC
P 1850 6300
F 0 "U4" H 1700 6450 60  0000 C CNN
F 1 "MCP4822-E/SN" V 1400 6400 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 1900 6150 60  0001 C CNN
F 3 "" H 1900 6150 60  0001 C CNN
	1    1850 6300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6150 5100 7850 5100
Wire Wire Line
	8200 1200 8200 1550
Wire Wire Line
	8200 1950 8200 2300
$Comp
L Device:C C18
U 1 1 5DCBB693
P 6650 2000
F 0 "C18" V 6600 2100 50  0000 C CNN
F 1 "C" V 6600 1900 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6688 1850 50  0001 C CNN
F 3 "~" H 6650 2000 50  0001 C CNN
	1    6650 2000
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6500 2000 6150 2000
Connection ~ 6150 2000
Wire Wire Line
	6150 2000 6150 1850
Wire Wire Line
	6800 2000 7000 2000
Wire Wire Line
	7000 2000 7000 1750
Connection ~ 7000 1750
Wire Wire Line
	7000 1750 7050 1750
$Comp
L Device:D_Bridge_+AA- D1
U 1 1 5DABAB28
P 1900 1200
F 0 "D1" H 1950 1475 50  0000 L CNN
F 1 "D_Bridge_+AA-" H 1950 1400 50  0000 L CNN
F 2 "lab_power_supply:GBU6D_diode-bridge" H 1900 1200 50  0001 C CNN
F 3 "" H 1900 1200 50  0000 C CNN
	1    1900 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5DABD143
P 1600 900
F 0 "F1" V 1680 900 50  0000 C CNN
F 1 "Fuse" V 1525 900 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" V 1530 900 50  0001 C CNN
F 3 "" H 1600 900 50  0000 C CNN
	1    1600 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	1900 900  1750 900 
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DCD5148
P 1000 1150
F 0 "J1" H 1000 950 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1100 1300 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 1000 1150 50  0001 C CNN
F 3 "~" H 1000 1150 50  0001 C CNN
	1    1000 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1450 900  1350 900 
Wire Wire Line
	1350 900  1350 1150
Wire Wire Line
	1350 1150 1200 1150
Wire Wire Line
	1200 1250 1350 1250
Wire Wire Line
	1350 1250 1350 1500
Wire Wire Line
	1350 1500 1900 1500
$Comp
L Device:C C3
U 1 1 5DD27E16
P 5000 2350
F 0 "C3" H 5050 2450 50  0000 L CNN
F 1 "0.1u" H 5050 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5038 2200 50  0001 C CNN
F 3 "~" H 5000 2350 50  0001 C CNN
	1    5000 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:C C21
U 1 1 5DD2D3D7
P 4700 2350
F 0 "C21" H 4750 2450 50  0000 L CNN
F 1 "10u" H 4750 2250 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 4738 2200 50  0001 C CNN
F 3 "~" H 4700 2350 50  0001 C CNN
	1    4700 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2200 4700 2050
Wire Wire Line
	5000 2200 5000 2050
Wire Wire Line
	4700 2500 4700 2650
Wire Wire Line
	5000 2500 5000 2650
Wire Wire Line
	5250 1200 6100 1200
Connection ~ 5250 2050
Connection ~ 5250 1200
$Comp
L power:GNDA #PWR04
U 1 1 5DD4F058
P 5250 2700
F 0 "#PWR04" H 5250 2450 50  0001 C CNN
F 1 "GNDA" H 5255 2527 50  0000 C CNN
F 2 "" H 5250 2700 50  0001 C CNN
F 3 "" H 5250 2700 50  0001 C CNN
	1    5250 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5250 2700 5250 2650
Connection ~ 5250 2650
Connection ~ 5000 2050
Connection ~ 5000 2650
Wire Wire Line
	5000 2650 5250 2650
Wire Wire Line
	4700 2050 5000 2050
Wire Wire Line
	4700 2650 5000 2650
Wire Wire Line
	5000 2050 5250 2050
$Sheet
S 3050 4250 800  550 
U 5DD5EF4E
F0 "Microcontroller" 60
F1 "Micrcontroller.sch" 60
$EndSheet
$Comp
L power:GNDA #PWR013
U 1 1 5DECA032
P 7850 5650
F 0 "#PWR013" H 7850 5400 50  0001 C CNN
F 1 "GNDA" H 7855 5477 50  0000 C CNN
F 2 "" H 7850 5650 50  0001 C CNN
F 3 "" H 7850 5650 50  0001 C CNN
	1    7850 5650
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR012
U 1 1 5DECB1A3
P 2000 5500
F 0 "#PWR012" H 2000 5250 50  0001 C CNN
F 1 "GNDA" H 2005 5327 50  0000 C CNN
F 2 "" H 2000 5500 50  0001 C CNN
F 3 "" H 2000 5500 50  0001 C CNN
	1    2000 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR08
U 1 1 5DECC5FD
P 4050 3750
F 0 "#PWR08" H 4050 3500 50  0001 C CNN
F 1 "GNDA" H 4055 3577 50  0000 C CNN
F 2 "" H 4050 3750 50  0001 C CNN
F 3 "" H 4050 3750 50  0001 C CNN
	1    4050 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR01
U 1 1 5DEDF471
P 1550 1250
F 0 "#PWR01" H 1550 1000 50  0001 C CNN
F 1 "GNDA" H 1555 1077 50  0000 C CNN
F 2 "" H 1550 1250 50  0001 C CNN
F 3 "" H 1550 1250 50  0001 C CNN
	1    1550 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 1250 1550 1200
Wire Wire Line
	1550 1200 1600 1200
Wire Wire Line
	3550 3150 3550 3300
Wire Wire Line
	3550 3300 3650 3300
Wire Wire Line
	4450 3300 4550 3300
Wire Wire Line
	4550 3150 4550 3300
Connection ~ 4550 3300
Text GLabel 6100 6500 2    59   BiDi ~ 0
ADC_SDA
Text GLabel 6100 6300 2    59   Input ~ 0
ADC_SCL
Text Label 5000 5900 0    60   ~ 0
ADC
$Comp
L lab_power_supply:MCP3422A0-E_SN U5
U 1 1 5DA96A01
P 5450 6400
F 0 "U5" H 5450 6350 60  0000 C CNN
F 1 "MCP3422A0-E/SN" H 5450 5850 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5550 6250 60  0001 C CNN
F 3 "" H 5550 6250 60  0001 C CNN
	1    5450 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6800 4750 6700
Wire Wire Line
	4750 6300 4800 6300
Wire Wire Line
	4750 6700 4800 6700
Connection ~ 4750 6700
Wire Wire Line
	4750 6700 4750 6300
$Comp
L Device:C C9
U 1 1 5DF49807
P 5450 5400
F 0 "C9" V 5300 5400 50  0000 C CNN
F 1 "0.1u" V 5200 5350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5488 5250 50  0001 C CNN
F 3 "~" H 5450 5400 50  0001 C CNN
	1    5450 5400
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5550 5750 5650 5750
Wire Wire Line
	5650 5750 5650 5400
Wire Wire Line
	5650 5150 5600 5150
Wire Wire Line
	5600 5400 5650 5400
Connection ~ 5650 5400
Wire Wire Line
	5650 5400 5650 5150
Wire Wire Line
	5300 5400 5250 5400
Wire Wire Line
	5250 5400 5250 5750
Wire Wire Line
	5250 5750 5350 5750
Wire Wire Line
	5250 5400 5250 5150
Wire Wire Line
	5250 5150 5300 5150
Connection ~ 5250 5400
Wire Wire Line
	5250 5750 4750 5750
Wire Wire Line
	4750 5750 4750 6300
Connection ~ 5250 5750
Connection ~ 4750 6300
$Comp
L power:+5V #PWR010
U 1 1 5DF64ADD
P 5650 5000
F 0 "#PWR010" H 5650 4850 50  0001 C CNN
F 1 "+5V" H 5650 5140 50  0000 C CNN
F 2 "" H 5650 5000 50  0000 C CNN
F 3 "" H 5650 5000 50  0000 C CNN
	1    5650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 5000 5650 5150
Connection ~ 5650 5150
Text GLabel 1100 6100 0    60   Input ~ 0
DAC_LDAC
Wire Wire Line
	2400 6200 2450 6200
Wire Wire Line
	2450 6650 2450 6200
Wire Wire Line
	2650 6650 2650 6400
Wire Wire Line
	2450 6950 2450 7000
Wire Wire Line
	2450 7000 2650 7000
Wire Wire Line
	2650 7000 2650 6950
$Comp
L power:GNDA #PWR017
U 1 1 5DFCF8E4
P 2450 7100
F 0 "#PWR017" H 2450 6850 50  0001 C CNN
F 1 "GNDA" H 2455 6927 50  0000 C CNN
F 2 "" H 2450 7100 50  0001 C CNN
F 3 "" H 2450 7100 50  0001 C CNN
	1    2450 7100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 7000 2450 7100
Connection ~ 2450 7000
$Comp
L power:GNDA #PWR016
U 1 1 5DFD3C73
P 4750 6800
F 0 "#PWR016" H 4750 6550 50  0001 C CNN
F 1 "GNDA" H 4755 6627 50  0000 C CNN
F 2 "" H 4750 6800 50  0001 C CNN
F 3 "" H 4750 6800 50  0001 C CNN
	1    4750 6800
	1    0    0    -1  
$EndComp
Wire Wire Line
	1750 5800 1850 5800
Wire Wire Line
	2000 5500 2000 5450
Wire Wire Line
	2000 5450 1850 5450
Connection ~ 1850 5450
$Comp
L power:+5V #PWR011
U 1 1 5DA98BF9
P 1450 5350
F 0 "#PWR011" H 1450 5200 50  0001 C CNN
F 1 "+5V" H 1450 5490 50  0000 C CNN
F 2 "" H 1450 5350 50  0000 C CNN
F 3 "" H 1450 5350 50  0000 C CNN
	1    1450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 5350 1450 5450
Wire Wire Line
	1450 5450 1550 5450
Wire Wire Line
	1550 5800 1650 5800
Connection ~ 1550 5450
Wire Wire Line
	1850 5450 1850 5800
Wire Wire Line
	1550 5450 1550 5800
Text GLabel 4600 6550 0    60   Input ~ 0
Imon
Text GLabel 4600 6150 0    60   Input ~ 0
Vmon
Wire Wire Line
	4600 6150 4800 6150
Wire Wire Line
	4600 6550 4800 6550
$Comp
L lab_power_supply:INA240A1PWR U3
U 1 1 5DAB6972
P 7650 3800
F 0 "U3" H 7650 4150 60  0000 C CNN
F 1 "INA240A1PWR" H 7650 3450 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 7650 3450 60  0001 C CNN
F 3 "" H 7650 3450 60  0001 C CNN
	1    7650 3800
	0    1    -1   0   
$EndComp
Wire Wire Line
	7500 3350 6300 3350
Wire Wire Line
	6150 2000 6150 5100
Wire Wire Line
	7600 3350 7600 3300
Wire Wire Line
	7600 4250 7700 4250
Connection ~ 7700 4250
Wire Wire Line
	7700 4250 7700 4300
Wire Wire Line
	8200 2400 8200 3350
$Comp
L Device:D_Zener D6
U 1 1 5DD07C70
P 10450 5250
F 0 "D6" V 10404 5329 50  0000 L CNN
F 1 "Zener 30V" V 10750 5100 50  0000 L CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 10450 5250 50  0001 C CNN
F 3 "~" H 10450 5250 50  0001 C CNN
	1    10450 5250
	0    1    1    0   
$EndComp
Wire Wire Line
	8200 4750 8200 5100
Connection ~ 8200 4750
Wire Wire Line
	7850 5450 7850 5500
Wire Wire Line
	9850 5100 10100 5100
Wire Wire Line
	10450 5400 10450 5500
Connection ~ 10450 5500
Wire Wire Line
	10450 5500 10750 5500
Wire Wire Line
	10750 5350 10750 5500
Wire Wire Line
	9250 5100 8200 5100
Connection ~ 7850 5500
Wire Wire Line
	7850 5500 7850 5650
$Comp
L Connector:TestPoint TP1
U 1 1 5DDB2288
P 5250 1200
F 0 "TP1" H 5308 1318 50  0000 L CNN
F 1 "UNREG" H 5308 1227 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 5450 1200 50  0001 C CNN
F 3 "~" H 5450 1200 50  0001 C CNN
	1    5250 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5DE9D24A
P 2250 1350
F 0 "R1" H 2320 1396 50  0000 L CNN
F 1 "1k" H 2320 1305 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2180 1350 50  0001 C CNN
F 3 "~" H 2250 1350 50  0001 C CNN
	1    2250 1350
	1    0    0    -1  
$EndComp
Wire Wire Line
	2200 1200 2250 1200
$Comp
L Device:R R2
U 1 1 5DEB3DC6
P 2250 1750
F 0 "R2" H 2320 1796 50  0000 L CNN
F 1 "10k" H 2320 1705 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 2180 1750 50  0001 C CNN
F 3 "~" H 2250 1750 50  0001 C CNN
	1    2250 1750
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR03
U 1 1 5DEB4093
P 2250 1900
F 0 "#PWR03" H 2250 1650 50  0001 C CNN
F 1 "GNDA" H 2255 1727 50  0000 C CNN
F 2 "" H 2250 1900 50  0001 C CNN
F 3 "" H 2250 1900 50  0001 C CNN
	1    2250 1900
	1    0    0    -1  
$EndComp
Text GLabel 2650 1550 2    60   Input ~ 0
UNREG_MON
Wire Wire Line
	2250 1500 2250 1550
Connection ~ 2250 1550
Wire Wire Line
	2250 1550 2250 1600
Connection ~ 2250 1200
$Comp
L Device:D_Zener D2
U 1 1 5DEC59B8
P 2600 1750
F 0 "D2" V 2554 1829 50  0000 L CNN
F 1 "Zener 5V" V 2645 1829 50  0000 L CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 2600 1750 50  0001 C CNN
F 3 "~" H 2600 1750 50  0001 C CNN
	1    2600 1750
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 1600 2600 1550
Wire Wire Line
	2600 1550 2650 1550
Wire Wire Line
	2250 1550 2600 1550
Connection ~ 2600 1550
Wire Wire Line
	2600 1900 2250 1900
Connection ~ 2250 1900
Connection ~ 2650 6400
Connection ~ 2450 6200
Text GLabel 6000 2500 0    60   Input ~ 0
Iset
Text GLabel 6050 2700 0    60   Input ~ 0
Imon
Wire Wire Line
	6300 2850 6300 3350
Connection ~ 6300 2850
Wire Wire Line
	6500 2850 6300 2850
Wire Wire Line
	7000 2600 7450 2600
Connection ~ 7000 2600
Wire Wire Line
	7000 2850 7000 2600
Wire Wire Line
	6800 2850 7000 2850
$Comp
L Device:C C4
U 1 1 5DCC53BC
P 6650 2850
F 0 "C4" V 6700 2750 50  0000 C CNN
F 1 "C" V 6700 2950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 6688 2700 50  0001 C CNN
F 3 "~" H 6650 2850 50  0001 C CNN
	1    6650 2850
	0    1    1    0   
$EndComp
Wire Wire Line
	6300 2700 6300 2850
Connection ~ 6300 2700
Wire Wire Line
	6050 2700 6300 2700
Wire Wire Line
	6950 2600 7000 2600
Wire Wire Line
	6000 2500 6350 2500
Wire Wire Line
	6350 2700 6300 2700
$Comp
L lab_power_supply:MAX9944 U1
U 1 1 5DD2E469
P 6650 2600
F 0 "U1" H 6750 2900 50  0000 C CNN
F 1 "MAX9944" H 6750 2800 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 6650 2600 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 6650 2600 50  0001 C CNN
	1    6650 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 1900 7450 1750
Wire Wire Line
	7450 2200 7450 2600
Wire Wire Line
	2250 1200 3550 1200
Connection ~ 3550 1200
$Comp
L Relay:DIPxx-1Axx-11x K1
U 1 1 5DD4959D
P 9550 4900
F 0 "K1" V 8983 4900 50  0000 C CNN
F 1 "DIPxx-1Axx-11x" V 9074 4900 50  0000 C CNN
F 2 "lab_power_supply:PCJ-105D3MH" H 9900 4850 50  0001 L CNN
F 3 "https://standexelectronics.com/wp-content/uploads/datasheet_reed_relay_DIP.pdf" H 9550 4900 50  0001 C CNN
	1    9550 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	10450 5100 10750 5100
Wire Wire Line
	10750 5100 10750 5250
Connection ~ 10450 5100
$Comp
L power:GNDA #PWR014
U 1 1 5DF1316E
P 3400 5900
F 0 "#PWR014" H 3400 5650 50  0001 C CNN
F 1 "GNDA" H 3405 5727 50  0000 C CNN
F 2 "" H 3400 5900 50  0001 C CNN
F 3 "" H 3400 5900 50  0001 C CNN
	1    3400 5900
	-1   0    0    1   
$EndComp
$Comp
L power:GNDA #PWR015
U 1 1 5DF12EE9
P 3400 6700
F 0 "#PWR015" H 3400 6450 50  0001 C CNN
F 1 "GNDA" H 3405 6527 50  0000 C CNN
F 2 "" H 3400 6700 50  0001 C CNN
F 3 "" H 3400 6700 50  0001 C CNN
	1    3400 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	3400 6400 3650 6400
Connection ~ 3400 6400
Wire Wire Line
	3300 6400 3400 6400
Connection ~ 3400 6200
Wire Wire Line
	3650 6200 3400 6200
Wire Wire Line
	3300 6200 3400 6200
$Comp
L Device:C C11
U 1 1 5DEEF717
P 3400 6550
F 0 "C11" H 3285 6504 50  0000 R CNN
F 1 "0.1u" H 3285 6595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 6400 50  0001 C CNN
F 3 "~" H 3400 6550 50  0001 C CNN
	1    3400 6550
	-1   0    0    1   
$EndComp
$Comp
L Device:R R9
U 1 1 5DEEEDA9
P 3150 6400
F 0 "R9" V 3350 6400 50  0000 C CNN
F 1 "1k" V 3250 6400 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3080 6400 50  0001 C CNN
F 3 "~" H 3150 6400 50  0001 C CNN
	1    3150 6400
	0    1    1    0   
$EndComp
$Comp
L Device:C C10
U 1 1 5DEE84E9
P 3400 6050
F 0 "C10" H 3515 6096 50  0000 L CNN
F 1 "0.1u" H 3515 6005 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3438 5900 50  0001 C CNN
F 3 "~" H 3400 6050 50  0001 C CNN
	1    3400 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5DEE7B67
P 3150 6200
F 0 "R8" V 2943 6200 50  0000 C CNN
F 1 "1k" V 3034 6200 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3080 6200 50  0001 C CNN
F 3 "~" H 3150 6200 50  0001 C CNN
	1    3150 6200
	0    1    1    0   
$EndComp
Text GLabel 3650 6400 2    60   Input ~ 0
Iset
Text GLabel 3650 6200 2    60   Input ~ 0
Vset
Wire Wire Line
	2650 6400 2400 6400
Wire Wire Line
	2450 6200 2850 6200
Wire Wire Line
	2650 6400 2850 6400
$Comp
L Connector:TestPoint TP2
U 1 1 5DD9375B
P 2850 6200
F 0 "TP2" H 2650 6350 50  0000 L CNN
F 1 "DACa" H 2650 6250 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 3050 6200 50  0001 C CNN
F 3 "~" H 3050 6200 50  0001 C CNN
	1    2850 6200
	1    0    0    -1  
$EndComp
Connection ~ 2850 6200
Wire Wire Line
	2850 6200 3000 6200
$Comp
L Connector:TestPoint TP3
U 1 1 5DD9535D
P 2850 6400
F 0 "TP3" H 2650 6550 50  0000 L CNN
F 1 "DACb" H 2650 6450 50  0000 L CNN
F 2 "Measurement_Points:Measurement_Point_Round-SMD-Pad_Big" H 3050 6400 50  0001 C CNN
F 3 "~" H 3050 6400 50  0001 C CNN
	1    2850 6400
	1    0    0    -1  
$EndComp
Connection ~ 2850 6400
Wire Wire Line
	2850 6400 3000 6400
$Comp
L power:PWR_FLAG #FLG03
U 1 1 5DD9F17D
P 3350 3300
F 0 "#FLG03" H 3350 3375 50  0001 C CNN
F 1 "PWR_FLAG" H 3100 3400 50  0000 C CNN
F 2 "" H 3350 3300 50  0001 C CNN
F 3 "~" H 3350 3300 50  0001 C CNN
	1    3350 3300
	1    0    0    -1  
$EndComp
Connection ~ 3550 3300
Wire Wire Line
	7850 5500 10100 5500
Wire Wire Line
	4050 3600 4050 3700
Connection ~ 4050 3700
Wire Wire Line
	4050 3700 4050 3750
Wire Wire Line
	4550 3700 4550 3600
Wire Wire Line
	4900 3700 4900 3600
Wire Wire Line
	4550 3700 4900 3700
Connection ~ 4550 3700
Wire Wire Line
	4050 3700 4550 3700
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5DD9ECF5
P 3550 1200
F 0 "#FLG01" H 3550 1275 50  0001 C CNN
F 1 "PWR_FLAG" H 3550 1373 50  0000 C CNN
F 2 "" H 3550 1200 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5DCE86B1
P 3550 3450
F 0 "C5" H 3350 3500 50  0000 L CNN
F 1 "0.22u" H 3200 3400 50  0000 L CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 3588 3300 50  0001 C CNN
F 3 "~" H 3550 3450 50  0001 C CNN
	1    3550 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 3300 3550 3300
Wire Wire Line
	3550 3600 3550 3700
Wire Wire Line
	3550 3700 4050 3700
Wire Wire Line
	5300 3700 4900 3700
Connection ~ 4900 3700
$Comp
L Device:CP C7
U 1 1 5DD24E65
P 5300 3450
F 0 "C7" H 5418 3496 50  0000 L CNN
F 1 "100u" H 5418 3405 50  0000 L CNN
F 2 "Capacitor_THT:CP_Radial_D6.3mm_P2.50mm" H 5338 3300 50  0001 C CNN
F 3 "~" H 5300 3450 50  0001 C CNN
	1    5300 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	3550 1200 3550 2850
$Comp
L Device:R R3
U 1 1 5DD3D40B
P 5250 1400
F 0 "R3" H 5320 1446 50  0000 L CNN
F 1 "R" H 5320 1355 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 5180 1400 50  0001 C CNN
F 3 "~" H 5250 1400 50  0001 C CNN
	1    5250 1400
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D3
U 1 1 5DD41536
P 4450 2350
F 0 "D3" V 4400 2150 50  0000 L CNN
F 1 "Zener 25V" V 4500 1900 50  0000 L CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 4450 2350 50  0001 C CNN
F 3 "~" H 4450 2350 50  0001 C CNN
	1    4450 2350
	0    1    1    0   
$EndComp
Wire Wire Line
	4450 2200 4450 2050
Wire Wire Line
	4450 2050 4700 2050
Connection ~ 4700 2050
Wire Wire Line
	4450 2500 4450 2650
Wire Wire Line
	4450 2650 4700 2650
Connection ~ 4700 2650
Wire Wire Line
	5250 1250 5250 1200
Wire Wire Line
	5300 3600 5300 3700
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5DD68DC8
P 4450 2050
F 0 "#FLG02" H 4450 2125 50  0001 C CNN
F 1 "PWR_FLAG" H 4450 2223 50  0000 C CNN
F 2 "" H 4450 2050 50  0001 C CNN
F 3 "~" H 4450 2050 50  0001 C CNN
	1    4450 2050
	1    0    0    -1  
$EndComp
Connection ~ 4450 2050
$Comp
L Device:C C8
U 1 1 5DD0A10F
P 5450 5150
F 0 "C8" V 5198 5150 50  0000 C CNN
F 1 "10u" V 5289 5150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0805_2012Metric_Pad1.15x1.40mm_HandSolder" H 5488 5000 50  0001 C CNN
F 3 "~" H 5450 5150 50  0001 C CNN
	1    5450 5150
	0    1    1    0   
$EndComp
$Comp
L Device:C C6
U 1 1 5DD21243
P 4900 3450
F 0 "C6" H 5015 3496 50  0000 L CNN
F 1 "10u" H 5015 3405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 4938 3300 50  0001 C CNN
F 3 "~" H 4900 3450 50  0001 C CNN
	1    4900 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 3300 4900 3300
Connection ~ 4900 3300
Wire Wire Line
	4900 3300 5300 3300
Wire Wire Line
	6100 850  6100 1200
Connection ~ 6100 1200
Wire Wire Line
	6100 1200 8200 1200
$Comp
L Connector:Screw_Terminal_01x03 J2
U 1 1 5DE7FCEE
P 8700 2300
F 0 "J2" H 8780 2342 50  0000 L CNN
F 1 "Screw_Terminal_01x03" H 8780 2251 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-3_P5.08mm" H 8700 2300 50  0001 C CNN
F 3 "~" H 8700 2300 50  0001 C CNN
	1    8700 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6100 850  8500 850 
Wire Wire Line
	8500 850  8500 2200
Wire Wire Line
	8200 2300 8500 2300
Wire Wire Line
	8500 2400 8200 2400
Wire Wire Line
	10350 4700 9850 4700
Wire Wire Line
	8950 4700 9250 4700
Wire Wire Line
	10350 3450 10350 3600
$Comp
L Device:R R24
U 1 1 5DDF700F
P 9900 3600
F 0 "R24" H 9970 3646 50  0000 L CNN
F 1 "100k" H 9970 3555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9830 3600 50  0001 C CNN
F 3 "~" H 9900 3600 50  0001 C CNN
	1    9900 3600
	1    0    0    -1  
$EndComp
Connection ~ 9900 3450
Wire Wire Line
	9900 3450 10350 3450
Wire Wire Line
	10050 3800 9900 3800
Wire Wire Line
	9900 3800 9900 3750
Wire Wire Line
	9900 3800 9300 3800
Wire Wire Line
	9300 3800 9300 3550
Wire Wire Line
	9300 3550 8950 3550
Connection ~ 9900 3800
Wire Wire Line
	8950 3450 9900 3450
$Comp
L lab_power_supply:Conn_Relay J3
U 1 1 5DE25C13
P 8750 3550
F 0 "J3" H 8743 3233 50  0000 C CNN
F 1 "Conn_Relay" H 8743 3324 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x03_Pitch2.54mm" H 8750 3550 50  0001 C CNN
F 3 "~" H 8750 3550 50  0001 C CNN
	1    8750 3550
	-1   0    0    1   
$EndComp
$Comp
L Device:D D7
U 1 1 5DE2784A
P 9550 4200
F 0 "D7" H 9550 4416 50  0000 C CNN
F 1 "D" H 9550 4325 50  0000 C CNN
F 2 "Diodes_THT:D_DO-41_SOD81_P7.62mm_Horizontal" H 9550 4200 50  0001 C CNN
F 3 "~" H 9550 4200 50  0001 C CNN
	1    9550 4200
	1    0    0    -1  
$EndComp
Wire Wire Line
	8950 3650 8950 4200
Wire Wire Line
	10350 4000 10350 4200
Wire Wire Line
	9400 4200 8950 4200
Connection ~ 8950 4200
Wire Wire Line
	8950 4200 8950 4700
Wire Wire Line
	9700 4200 10350 4200
Connection ~ 10350 4200
Wire Wire Line
	10350 4200 10350 4700
$Comp
L power:GNDA #PWR0102
U 1 1 5DD2892C
P 4850 1500
F 0 "#PWR0102" H 4850 1250 50  0001 C CNN
F 1 "GNDA" H 4855 1327 50  0000 C CNN
F 2 "" H 4850 1500 50  0001 C CNN
F 3 "" H 4850 1500 50  0001 C CNN
	1    4850 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C19
U 1 1 5DD318CD
P 10100 5300
F 0 "C19" H 10218 5346 50  0000 L CNN
F 1 "CP" H 10218 5255 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D8.0mm_P5.00mm" H 10138 5150 50  0001 C CNN
F 3 "~" H 10100 5300 50  0001 C CNN
	1    10100 5300
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 5100 10100 5150
Connection ~ 10100 5100
Wire Wire Line
	10100 5100 10450 5100
Wire Wire Line
	10100 5450 10100 5500
Connection ~ 10100 5500
Wire Wire Line
	10100 5500 10450 5500
Connection ~ 4400 1200
Wire Wire Line
	5250 1550 5250 2050
Wire Wire Line
	3550 1200 3750 1200
$Comp
L power:GNDA #PWR029
U 1 1 5DD661C4
P 4400 1500
F 0 "#PWR029" H 4400 1250 50  0001 C CNN
F 1 "GNDA" H 4405 1327 50  0000 C CNN
F 2 "" H 4400 1500 50  0001 C CNN
F 3 "" H 4400 1500 50  0001 C CNN
	1    4400 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5DD2774F
P 4850 1350
F 0 "C1" H 4900 1450 50  0000 L CNN
F 1 "4700u" H 4900 1250 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D30.0mm_P10.00mm_SnapIn" H 4888 1200 50  0001 C CNN
F 3 "~" H 4850 1350 50  0001 C CNN
	1    4850 1350
	1    0    0    -1  
$EndComp
Connection ~ 4850 1200
Wire Wire Line
	4850 1200 5250 1200
Wire Wire Line
	4400 1200 4850 1200
$Comp
L Device:C C20
U 1 1 5DD7045C
P 3750 1350
F 0 "C20" H 3800 1450 50  0000 L CNN
F 1 "C" H 3800 1250 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D7.5mm_W5.0mm_P5.00mm" H 3788 1200 50  0001 C CNN
F 3 "~" H 3750 1350 50  0001 C CNN
	1    3750 1350
	1    0    0    -1  
$EndComp
Connection ~ 3750 1200
$Comp
L power:GNDA #PWR024
U 1 1 5DD7084B
P 3750 1500
F 0 "#PWR024" H 3750 1250 50  0001 C CNN
F 1 "GNDA" H 3755 1327 50  0000 C CNN
F 2 "" H 3750 1500 50  0001 C CNN
F 3 "" H 3750 1500 50  0001 C CNN
	1    3750 1500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3750 1200 4400 1200
$Comp
L Device:Q_NMOS_GSD Q7
U 1 1 5DD8B0EF
P 10250 3800
F 0 "Q7" H 10456 3754 50  0000 L CNN
F 1 "Q_NMOS_GSD" H 10456 3845 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 10450 3900 50  0001 C CNN
F 3 "~" H 10250 3800 50  0001 C CNN
	1    10250 3800
	1    0    0    1   
$EndComp
$EndSCHEMATC
