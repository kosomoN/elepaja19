EESchema Schematic File Version 4
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
L Device:R R1
U 1 1 5DA97592
P 8800 2050
F 0 "R1" V 8880 2050 50  0000 C CNN
F 1 "2.2k" V 8800 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8730 2050 50  0001 C CNN
F 3 "" H 8800 2050 50  0000 C CNN
	1    8800 2050
	0    1    1    0   
$EndComp
$Comp
L Device:D_Schottky D1
U 1 1 5DA975F7
P 9050 2200
F 0 "D1" H 9050 2300 50  0000 C CNN
F 1 "D_Schottky" H 8950 2100 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 9050 2200 50  0001 C CNN
F 3 "" H 9050 2200 50  0000 C CNN
	1    9050 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:R R2
U 1 1 5DA9767E
P 9350 2050
F 0 "R2" V 9430 2050 50  0000 C CNN
F 1 "2.2k" V 9350 2050 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9280 2050 50  0001 C CNN
F 3 "" H 9350 2050 50  0000 C CNN
	1    9350 2050
	0    1    1    0   
$EndComp
$Comp
L Device:R Rs1
U 1 1 5DA97EB0
P 9800 3500
F 0 "Rs1" V 9880 3500 50  0000 C CNN
F 1 "0.1" V 9800 3500 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P25.40mm_Horizontal" V 9730 3500 50  0001 C CNN
F 3 "" H 9800 3500 50  0000 C CNN
	1    9800 3500
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5DA99214
P 9450 4600
F 0 "R3" V 9530 4600 50  0000 C CNN
F 1 "16k" V 9450 4600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9380 4600 50  0001 C CNN
F 3 "" H 9450 4600 50  0000 C CNN
	1    9450 4600
	1    0    0    -1  
$EndComp
$Comp
L Device:R R4
U 1 1 5DA992B7
P 9450 5000
F 0 "R4" V 9530 5000 50  0000 C CNN
F 1 "1.3k" V 9450 5000 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 9380 5000 50  0001 C CNN
F 3 "" H 9450 5000 50  0000 C CNN
	1    9450 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:CP CP1
U 1 1 5DAA4B61
P 5600 1650
F 0 "CP1" H 5625 1750 50  0000 L CNN
F 1 "4700uF 50V" H 5625 1550 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D35.0mm_P10.00mm_SnapIn" H 5638 1500 50  0001 C CNN
F 3 "" H 5600 1650 50  0000 C CNN
	1    5600 1650
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cb3
U 1 1 5DAAC5E5
P 2850 6700
F 0 "Cb3" H 2875 6800 50  0000 L CNN
F 1 "0.1u" H 2875 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2888 6550 50  0001 C CNN
F 3 "" H 2850 6700 50  0000 C CNN
	1    2850 6700
	-1   0    0    1   
$EndComp
$Comp
L Transistor_BJT:BD139 Q1
U 1 1 5DCB5127
P 9700 2050
F 0 "Q1" H 9892 2096 50  0000 L CNN
F 1 "BD139" H 9892 2005 50  0000 L CNN
F 2 "Package_TO_SOT_THT:TO-126-3_Vertical" H 9900 1975 50  0001 L CIN
F 3 "http://www.st.com/internet/com/TECHNICAL_RESOURCES/TECHNICAL_LITERATURE/DATASHEET/CD00001225.pdf" H 9700 2050 50  0001 L CNN
	1    9700 2050
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DCB6E99
P 10000 2600
F 0 "J1" H 10080 2592 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10080 2501 50  0000 L CNN
F 2 "" H 10000 2600 50  0001 C CNN
F 3 "~" H 10000 2600 50  0001 C CNN
	1    10000 2600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DCB7E83
P 10000 5200
F 0 "J2" H 10080 5192 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 10080 5101 50  0000 L CNN
F 2 "" H 10000 5200 50  0001 C CNN
F 3 "~" H 10000 5200 50  0001 C CNN
	1    10000 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9450 4750 9450 4800
Wire Wire Line
	9450 5150 9450 5300
Connection ~ 9450 5300
Wire Wire Line
	9450 5300 9800 5300
Wire Wire Line
	9450 4450 9800 4450
Wire Wire Line
	9800 4450 9800 5200
Wire Wire Line
	9450 5300 9450 5450
$Comp
L lab_power_supply:INA240A1PWR U9
U 1 1 5DAB6972
P 9250 3500
F 0 "U9" H 9250 3850 60  0000 C CNN
F 1 "INA240A1PWR" H 9250 3150 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 9250 3150 60  0001 C CNN
F 3 "" H 9250 3150 60  0001 C CNN
	1    9250 3500
	0    1    1    0   
$EndComp
Wire Wire Line
	9400 3050 9800 3050
Connection ~ 9800 3050
Wire Wire Line
	9800 3050 9800 3350
Wire Wire Line
	9400 3950 9800 3950
Wire Wire Line
	9800 3650 9800 3950
Wire Wire Line
	9200 3050 9300 3050
$Comp
L power:GNDA #PWR016
U 1 1 5DCFDE63
P 9300 3000
F 0 "#PWR016" H 9300 2750 50  0001 C CNN
F 1 "GNDA" H 9305 2827 50  0000 C CNN
F 2 "" H 9300 3000 50  0001 C CNN
F 3 "" H 9300 3000 50  0001 C CNN
	1    9300 3000
	-1   0    0    1   
$EndComp
Wire Wire Line
	9300 3000 9300 3050
Connection ~ 9300 3050
$Comp
L power:GNDA #PWR018
U 1 1 5DD03116
P 9300 3950
F 0 "#PWR018" H 9300 3700 50  0001 C CNN
F 1 "GNDA" H 9350 3800 50  0000 C CNN
F 2 "" H 9300 3950 50  0001 C CNN
F 3 "" H 9300 3950 50  0001 C CNN
	1    9300 3950
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR015
U 1 1 5DD046A3
P 9200 3950
F 0 "#PWR015" H 9200 3800 50  0001 C CNN
F 1 "+5V" H 9250 4100 50  0000 C CNN
F 2 "" H 9200 3950 50  0001 C CNN
F 3 "" H 9200 3950 50  0001 C CNN
	1    9200 3950
	-1   0    0    1   
$EndComp
$Comp
L lab_power_supply:MAX9944 U1
U 1 1 5DD19535
P 8250 2050
F 0 "U1" H 8350 2350 50  0000 C CNN
F 1 "MAX9944" H 8350 2250 50  0000 C CNN
F 2 "" H 8250 2050 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 8250 2050 50  0001 C CNN
	1    8250 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 2700 9800 3050
Wire Wire Line
	9800 3950 9800 4450
Connection ~ 9800 3950
Connection ~ 9800 4450
Wire Wire Line
	7750 2150 7950 2150
Connection ~ 9450 4800
Wire Wire Line
	9450 4800 9450 4850
$Comp
L lab_power_supply:MAX9944 U1
U 2 1 5DD2E469
P 8250 2900
F 0 "U1" H 8350 3200 50  0000 C CNN
F 1 "MAX9944" H 8350 3100 50  0000 C CNN
F 2 "" H 8250 2900 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 8250 2900 50  0001 C CNN
	2    8250 2900
	1    0    0    -1  
$EndComp
Wire Wire Line
	8550 2050 8600 2050
Wire Wire Line
	9200 2050 9050 2050
Wire Wire Line
	7950 3000 7900 3000
Text GLabel 7600 1950 0    60   Input ~ 0
Vset
Text GLabel 7600 2800 0    60   Input ~ 0
Iset
Wire Wire Line
	7600 2800 7950 2800
Wire Wire Line
	7950 1950 7600 1950
$Comp
L lab_power_supply:MAX9944 U1
U 3 1 5DD4ED58
P 6950 1950
F 0 "U1" H 6908 1996 50  0000 L CNN
F 1 "MAX9944" H 6908 1905 50  0000 L CNN
F 2 "" H 6950 1950 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/lm358.pdf" H 6950 1950 50  0001 C CNN
	3    6950 1950
	1    0    0    -1  
$EndComp
Connection ~ 9050 2050
Wire Wire Line
	9050 2050 8950 2050
Wire Wire Line
	8550 2900 8600 2900
Wire Wire Line
	9100 3950 7900 3950
Text GLabel 7650 2150 0    60   Input ~ 0
Vmon
Text GLabel 7650 3000 0    60   Input ~ 0
Imon
Wire Wire Line
	7650 3000 7900 3000
Connection ~ 7900 3000
Wire Wire Line
	7650 2150 7750 2150
Connection ~ 7750 2150
Wire Wire Line
	7900 3000 7900 3150
$Comp
L lab_power_supply:SPX2920U-5.0 U6
U 1 1 5DA9DECE
P 2050 3500
F 0 "U6" H 2050 3800 50  0000 C CNN
F 1 "SPX2920U-5.0" H 2050 3700 50  0000 C CNN
F 2 "Power_Integrations:TO-220" H 2050 3600 50  0001 C CIN
F 3 "" H 2050 3500 50  0000 C CNN
	1    2050 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 3750 2050 3800
$Comp
L Device:C Cb5
U 1 1 5DAB50D8
P 2100 5350
F 0 "Cb5" V 2350 5250 50  0000 L CNN
F 1 "0.1u" V 2250 5250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2138 5200 50  0001 C CNN
F 3 "" H 2100 5350 50  0000 C CNN
	1    2100 5350
	0    -1   -1   0   
$EndComp
$Comp
L Device:C Cb1
U 1 1 5DAADB87
P 2550 3600
F 0 "Cb1" H 2575 3700 50  0000 L CNN
F 1 "0.1u" H 2575 3500 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2588 3450 50  0001 C CNN
F 3 "" H 2550 3600 50  0000 C CNN
	1    2550 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C Cb4
U 1 1 5DAAC698
P 3050 6700
F 0 "Cb4" H 2850 6800 50  0000 L CNN
F 1 "0.1u" H 2850 6600 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3088 6550 50  0001 C CNN
F 3 "" H 3050 6700 50  0000 C CNN
	1    3050 6700
	-1   0    0    1   
$EndComp
Text GLabel 1500 6150 0    59   Input ~ 0
DAC_sck
Text GLabel 1500 6300 0    59   Input ~ 0
DAC_sdi
Text GLabel 1500 6450 0    59   Input ~ 0
DAC_cs
Text Label 2450 5850 1    60   ~ 0
DAC
$Comp
L power:+5V #PWR01
U 1 1 5DA98A0F
P 2550 3300
F 0 "#PWR01" H 2550 3150 50  0001 C CNN
F 1 "+5V" H 2550 3440 50  0000 C CNN
F 2 "" H 2550 3300 50  0000 C CNN
F 3 "" H 2550 3300 50  0000 C CNN
	1    2550 3300
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Zener D2
U 1 1 5DA986FA
P 1550 3150
F 0 "D2" H 1550 3250 50  0000 C CNN
F 1 "Zener 15V" H 1550 3050 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 1550 3150 50  0001 C CNN
F 3 "" H 1550 3150 50  0000 C CNN
	1    1550 3150
	0    1    1    0   
$EndComp
$Comp
L lab_power_supply:MCP4822-E_SN U3
U 1 1 5DA96ADC
P 2250 6200
F 0 "U3" H 2100 6350 60  0000 C CNN
F 1 "MCP4822-E/SN" V 1800 6300 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 2300 6050 60  0001 C CNN
F 3 "" H 2300 6050 60  0001 C CNN
	1    2250 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7750 4800 9450 4800
Wire Wire Line
	9800 1500 9800 1850
Wire Wire Line
	9800 2250 9800 2600
Wire Wire Line
	9050 2350 9050 2900
$Comp
L Device:C C3
U 1 1 5DCBB693
P 8250 2300
F 0 "C3" V 8200 2400 50  0000 C CNN
F 1 "C" V 8200 2200 50  0000 C CNN
F 2 "" H 8288 2150 50  0001 C CNN
F 3 "~" H 8250 2300 50  0001 C CNN
	1    8250 2300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8100 2300 7750 2300
Connection ~ 7750 2300
Wire Wire Line
	7750 2300 7750 2150
Wire Wire Line
	8400 2300 8600 2300
Wire Wire Line
	8600 2300 8600 2050
Connection ~ 8600 2050
Wire Wire Line
	8600 2050 8650 2050
$Comp
L Device:C C4
U 1 1 5DCC53BC
P 8250 3150
F 0 "C4" V 8300 3050 50  0000 C CNN
F 1 "C" V 8300 3250 50  0000 C CNN
F 2 "" H 8288 3000 50  0001 C CNN
F 3 "~" H 8250 3150 50  0001 C CNN
	1    8250 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8400 3150 8600 3150
Wire Wire Line
	8600 3150 8600 2900
Connection ~ 8600 2900
Wire Wire Line
	8600 2900 9050 2900
Wire Wire Line
	8100 3150 7900 3150
Connection ~ 7900 3150
Wire Wire Line
	7900 3150 7900 3950
Wire Wire Line
	7750 2300 7750 4800
$Comp
L Device:D_Bridge_+AA- D3
U 1 1 5DABAB28
P 4750 1500
F 0 "D3" H 4800 1775 50  0000 L CNN
F 1 "D_Bridge_+AA-" H 4800 1700 50  0000 L CNN
F 2 "lab_power_supply:GBU6D_diode-bridge" H 4750 1500 50  0001 C CNN
F 3 "" H 4750 1500 50  0000 C CNN
	1    4750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5DABD143
P 4450 1200
F 0 "F1" V 4530 1200 50  0000 C CNN
F 1 "Fuse" V 4375 1200 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_SemiClosed_Casing10x25mm" V 4380 1200 50  0001 C CNN
F 3 "" H 4450 1200 50  0000 C CNN
	1    4450 1200
	0    1    1    0   
$EndComp
Wire Wire Line
	4750 1200 4600 1200
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5DCD5148
P 3850 1550
F 0 "J3" H 3768 1225 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 3768 1316 50  0000 C CNN
F 2 "" H 3850 1550 50  0001 C CNN
F 3 "~" H 3850 1550 50  0001 C CNN
	1    3850 1550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4300 1200 4200 1200
Wire Wire Line
	4200 1200 4200 1450
Wire Wire Line
	4200 1450 4050 1450
Wire Wire Line
	4050 1550 4200 1550
Wire Wire Line
	4200 1550 4200 1800
Wire Wire Line
	4200 1800 4750 1800
Wire Wire Line
	5050 1500 5600 1500
Connection ~ 5600 1500
$Comp
L Device:C C2
U 1 1 5DD27E16
P 6600 1950
F 0 "C2" H 6650 2050 50  0000 L CNN
F 1 "C" H 6650 1850 50  0000 L CNN
F 2 "" H 6638 1800 50  0001 C CNN
F 3 "~" H 6600 1950 50  0001 C CNN
	1    6600 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:CP C1
U 1 1 5DD2D3D7
P 6300 1950
F 0 "C1" H 6350 2050 50  0000 L CNN
F 1 "CP" H 6350 1850 50  0000 L CNN
F 2 "" H 6338 1800 50  0001 C CNN
F 3 "~" H 6300 1950 50  0001 C CNN
	1    6300 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	6300 1800 6300 1650
Wire Wire Line
	6600 1800 6600 1650
Wire Wire Line
	6300 2100 6300 2250
Wire Wire Line
	6600 2100 6600 2250
Wire Wire Line
	6850 1650 6850 1500
Wire Wire Line
	6850 1500 9800 1500
Connection ~ 6850 1650
Wire Wire Line
	5600 1500 6850 1500
Connection ~ 6850 1500
$Comp
L power:GNDA #PWR014
U 1 1 5DD4F058
P 6850 2300
F 0 "#PWR014" H 6850 2050 50  0001 C CNN
F 1 "GNDA" H 6855 2127 50  0000 C CNN
F 2 "" H 6850 2300 50  0001 C CNN
F 3 "" H 6850 2300 50  0001 C CNN
	1    6850 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 2300 6850 2250
Connection ~ 6850 2250
Connection ~ 6600 1650
Connection ~ 6600 2250
Wire Wire Line
	6600 2250 6850 2250
Wire Wire Line
	6300 1650 6600 1650
Wire Wire Line
	6300 2250 6600 2250
Wire Wire Line
	6600 1650 6850 1650
$Sheet
S 4950 3400 800  550 
U 5DD5EF4E
F0 "Microcontroller" 60
F1 "Micrcontroller.sch" 60
$EndSheet
$Comp
L power:GNDA #PWR?
U 1 1 5DECA032
P 9450 5450
F 0 "#PWR?" H 9450 5200 50  0001 C CNN
F 1 "GNDA" H 9455 5277 50  0000 C CNN
F 2 "" H 9450 5450 50  0001 C CNN
F 3 "" H 9450 5450 50  0001 C CNN
	1    9450 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DECAAF9
P 5600 1800
F 0 "#PWR?" H 5600 1550 50  0001 C CNN
F 1 "GNDA" H 5605 1627 50  0000 C CNN
F 2 "" H 5600 1800 50  0001 C CNN
F 3 "" H 5600 1800 50  0001 C CNN
	1    5600 1800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DECB1A3
P 2400 5400
F 0 "#PWR?" H 2400 5150 50  0001 C CNN
F 1 "GNDA" H 2405 5227 50  0000 C CNN
F 2 "" H 2400 5400 50  0001 C CNN
F 3 "" H 2400 5400 50  0001 C CNN
	1    2400 5400
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DECC5FD
P 2050 3800
F 0 "#PWR?" H 2050 3550 50  0001 C CNN
F 1 "GNDA" H 2055 3627 50  0000 C CNN
F 2 "" H 2050 3800 50  0001 C CNN
F 3 "" H 2050 3800 50  0001 C CNN
	1    2050 3800
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5DEDF471
P 4400 1550
F 0 "#PWR?" H 4400 1300 50  0001 C CNN
F 1 "GNDA" H 4405 1377 50  0000 C CNN
F 2 "" H 4400 1550 50  0001 C CNN
F 3 "" H 4400 1550 50  0001 C CNN
	1    4400 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4400 1550 4400 1500
Wire Wire Line
	4400 1500 4450 1500
$Comp
L power:+28V #PWR?
U 1 1 5DEF2453
P 5600 1400
F 0 "#PWR?" H 5600 1250 50  0001 C CNN
F 1 "+28V" H 5615 1573 50  0000 C CNN
F 2 "" H 5850 1450 50  0001 C CNN
F 3 "" H 5850 1450 50  0001 C CNN
	1    5600 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 1400 5600 1500
$Comp
L power:+28V #PWR?
U 1 1 5DEFC331
P 1550 3000
F 0 "#PWR?" H 1550 2850 50  0001 C CNN
F 1 "+28V" H 1565 3173 50  0000 C CNN
F 2 "" H 1800 3050 50  0001 C CNN
F 3 "" H 1800 3050 50  0001 C CNN
	1    1550 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	1550 3300 1550 3450
Wire Wire Line
	1550 3450 1650 3450
Connection ~ 2050 3750
Wire Wire Line
	2450 3450 2550 3450
Wire Wire Line
	2550 3300 2550 3450
Wire Wire Line
	2050 3750 2550 3750
Connection ~ 2550 3450
Text GLabel 3200 6300 2    60   Input ~ 0
Vset
Text GLabel 3200 6100 2    60   Input ~ 0
Iset
Text GLabel 6100 6400 2    59   BiDi ~ 0
ADC_sda
Text GLabel 6100 6200 2    59   Input ~ 0
ADC_scl
Text Label 5000 5800 0    60   ~ 0
ADC
$Comp
L lab_power_supply:MCP3422A0-E_SN U2
U 1 1 5DA96A01
P 5450 6300
F 0 "U2" H 5450 6250 60  0000 C CNN
F 1 "MCP3422A0-E/SN" H 5450 5750 60  0000 C CNN
F 2 "Housings_SOIC:SOIC-8_3.9x4.9mm_Pitch1.27mm" H 5550 6150 60  0001 C CNN
F 3 "" H 5550 6150 60  0001 C CNN
	1    5450 6300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4750 6700 4750 6600
Wire Wire Line
	4750 6200 4800 6200
Wire Wire Line
	4750 6600 4800 6600
Connection ~ 4750 6600
Wire Wire Line
	4750 6600 4750 6200
$Comp
L Device:C C?
U 1 1 5DF49807
P 5450 5300
F 0 "C?" V 5300 5300 50  0000 C CNN
F 1 "0.1u" V 5200 5250 50  0000 C CNN
F 2 "" H 5488 5150 50  0001 C CNN
F 3 "~" H 5450 5300 50  0001 C CNN
	1    5450 5300
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP C?
U 1 1 5DF4A4CB
P 5450 5050
F 0 "C?" V 5200 5000 50  0000 L CNN
F 1 "10u" V 5300 5000 50  0000 L CNN
F 2 "" H 5488 4900 50  0001 C CNN
F 3 "~" H 5450 5050 50  0001 C CNN
	1    5450 5050
	0    1    1    0   
$EndComp
Wire Wire Line
	5550 5650 5650 5650
Wire Wire Line
	5650 5650 5650 5300
Wire Wire Line
	5650 5050 5600 5050
Wire Wire Line
	5600 5300 5650 5300
Connection ~ 5650 5300
Wire Wire Line
	5650 5300 5650 5050
Wire Wire Line
	5300 5300 5250 5300
Wire Wire Line
	5250 5300 5250 5650
Wire Wire Line
	5250 5650 5350 5650
Wire Wire Line
	5250 5300 5250 5050
Wire Wire Line
	5250 5050 5300 5050
Connection ~ 5250 5300
Wire Wire Line
	5250 5650 4750 5650
Wire Wire Line
	4750 5650 4750 6200
Connection ~ 5250 5650
Connection ~ 4750 6200
$Comp
L power:+5V #PWR?
U 1 1 5DF64ADD
P 5650 4900
F 0 "#PWR?" H 5650 4750 50  0001 C CNN
F 1 "+5V" H 5650 5040 50  0000 C CNN
F 2 "" H 5650 4900 50  0000 C CNN
F 3 "" H 5650 4900 50  0000 C CNN
	1    5650 4900
	1    0    0    -1  
$EndComp
Wire Wire Line
	5650 4900 5650 5050
Connection ~ 5650 5050
Text GLabel 1500 6000 0    60   Input ~ 0
DAC_ldac
Wire Wire Line
	3050 6300 2800 6300
Wire Wire Line
	2800 6100 2850 6100
Wire Wire Line
	2850 6550 2850 6100
Connection ~ 2850 6100
Wire Wire Line
	3050 6550 3050 6300
Wire Wire Line
	3050 6300 3200 6300
Connection ~ 3050 6300
Wire Wire Line
	2850 6100 3200 6100
Wire Wire Line
	2850 6850 2850 6900
Wire Wire Line
	2850 6900 3050 6900
Wire Wire Line
	3050 6900 3050 6850
$Comp
L power:GNDA #PWR?
U 1 1 5DFCF8E4
P 2850 7000
F 0 "#PWR?" H 2850 6750 50  0001 C CNN
F 1 "GNDA" H 2855 6827 50  0000 C CNN
F 2 "" H 2850 7000 50  0001 C CNN
F 3 "" H 2850 7000 50  0001 C CNN
	1    2850 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	2850 6900 2850 7000
Connection ~ 2850 6900
$Comp
L power:GNDA #PWR?
U 1 1 5DFD3C73
P 4750 6700
F 0 "#PWR?" H 4750 6450 50  0001 C CNN
F 1 "GNDA" H 4755 6527 50  0000 C CNN
F 2 "" H 4750 6700 50  0001 C CNN
F 3 "" H 4750 6700 50  0001 C CNN
	1    4750 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	2150 5700 2250 5700
Wire Wire Line
	2400 5400 2400 5350
Wire Wire Line
	2400 5350 2250 5350
Connection ~ 2250 5350
$Comp
L power:+5V #PWR03
U 1 1 5DA98BF9
P 1850 5250
F 0 "#PWR03" H 1850 5100 50  0001 C CNN
F 1 "+5V" H 1850 5390 50  0000 C CNN
F 2 "" H 1850 5250 50  0000 C CNN
F 3 "" H 1850 5250 50  0000 C CNN
	1    1850 5250
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 5250 1850 5350
Wire Wire Line
	1850 5350 1950 5350
Wire Wire Line
	1950 5700 2050 5700
Connection ~ 1950 5350
Wire Wire Line
	2250 5350 2250 5700
Wire Wire Line
	1950 5350 1950 5700
Text GLabel 4600 6450 0    60   Input ~ 0
Imon
Text GLabel 4600 6050 0    60   Input ~ 0
Vmon
Wire Wire Line
	4600 6050 4800 6050
Wire Wire Line
	4600 6450 4800 6450
$EndSCHEMATC
