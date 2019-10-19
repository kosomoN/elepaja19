EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:lab_power_supply
LIBS:pcb_1-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
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
L MCP3422A0-E/SN U2
U 1 1 5DA96A01
P 5200 4350
F 0 "U2" H 5200 4300 60  0000 C CNN
F 1 "MCP3422A0-E/SN" H 5200 3800 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 5300 4200 60  0001 C CNN
F 3 "" H 5300 4200 60  0001 C CNN
	1    5200 4350
	1    0    0    -1  
$EndComp
$Comp
L MCP4822-E/SN U3
U 1 1 5DA96ADC
P 4150 2150
F 0 "U3" H 4000 2300 60  0000 C CNN
F 1 "MCP4822-E/SN" V 3700 2250 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 4200 2000 60  0001 C CNN
F 3 "" H 4200 2000 60  0001 C CNN
	1    4150 2150
	1    0    0    -1  
$EndComp
$Comp
L LM7705MM/NOPB U5
U 1 1 5DA96B1B
P 7250 4600
F 0 "U5" H 7250 5000 60  0000 C CNN
F 1 "LM7705MM/NOPB" H 7300 4150 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 7350 4400 60  0001 C CNN
F 3 "" H 7350 4400 60  0001 C CNN
	1    7250 4600
	1    0    0    -1  
$EndComp
$Comp
L INA213AIDCKT U4
U 1 1 5DA96BAA
P 9750 2600
F 0 "U4" H 9750 2850 60  0000 C CNN
F 1 "INA213AIDCKT" H 9750 2350 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-363_SC-70-6_Handsoldering" H 9750 2550 60  0001 C CNN
F 3 "" H 9750 2550 60  0001 C CNN
	1    9750 2600
	1    0    0    -1  
$EndComp
$Comp
L MAX9944ASA+T U1
U 1 1 5DA96C1B
P 7100 2650
F 0 "U1" H 7100 2950 60  0000 C CNN
F 1 "MAX9944ASA+T" H 7100 2350 60  0000 C CNN
F 2 "Housings_SSOP:MSOP-8_3x3mm_Pitch0.65mm" H 7150 2750 60  0001 C CNN
F 3 "" H 7150 2750 60  0001 C CNN
	1    7100 2650
	1    0    0    -1  
$EndComp
$Comp
L BD139 Q2
U 1 1 5DA96D08
P 10350 1250
F 0 "Q2" H 10550 1325 50  0000 L CNN
F 1 "BD139" H 10550 1250 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-126_Vertical" H 10550 1175 50  0000 L CIN
F 3 "" H 10350 1250 50  0000 L CNN
	1    10350 1250
	1    0    0    -1  
$EndComp
$Comp
L R R1
U 1 1 5DA97592
P 7100 1800
F 0 "R1" V 7180 1800 50  0000 C CNN
F 1 "2.2k" V 7100 1800 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 7030 1800 50  0001 C CNN
F 3 "" H 7100 1800 50  0000 C CNN
	1    7100 1800
	0    1    1    0   
$EndComp
$Comp
L D_Schottky D1
U 1 1 5DA975F7
P 7850 2050
F 0 "D1" H 7850 2150 50  0000 C CNN
F 1 "D_Schottky" H 7850 1950 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 7850 2050 50  0001 C CNN
F 3 "" H 7850 2050 50  0000 C CNN
	1    7850 2050
	0    -1   -1   0   
$EndComp
$Comp
L R R2
U 1 1 5DA9767E
P 8600 1250
F 0 "R2" V 8680 1250 50  0000 C CNN
F 1 "2.2k" V 8600 1250 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8530 1250 50  0001 C CNN
F 3 "" H 8600 1250 50  0000 C CNN
	1    8600 1250
	0    1    1    0   
$EndComp
$Comp
L R Rs1
U 1 1 5DA97EB0
P 10450 3150
F 0 "Rs1" V 10530 3150 50  0000 C CNN
F 1 "0.1" V 10450 3150 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0414_L11.9mm_D4.5mm_P25.40mm_Horizontal" V 10380 3150 50  0001 C CNN
F 3 "" H 10450 3150 50  0000 C CNN
	1    10450 3150
	1    0    0    -1  
$EndComp
$Comp
L D_Zener D2
U 1 1 5DA986FA
P 5350 1400
F 0 "D2" H 5350 1500 50  0000 C CNN
F 1 "Zener 15V" H 5350 1300 50  0000 C CNN
F 2 "Diodes_THT:D_5W_P12.70mm_Horizontal" H 5350 1400 50  0001 C CNN
F 3 "" H 5350 1400 50  0000 C CNN
	1    5350 1400
	0    1    1    0   
$EndComp
$Comp
L +5V #PWR01
U 1 1 5DA98A0F
P 6300 1700
F 0 "#PWR01" H 6300 1550 50  0001 C CNN
F 1 "+5V" H 6300 1840 50  0000 C CNN
F 2 "" H 6300 1700 50  0000 C CNN
F 3 "" H 6300 1700 50  0000 C CNN
	1    6300 1700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR02
U 1 1 5DA98BCB
P 5300 3700
F 0 "#PWR02" H 5300 3550 50  0001 C CNN
F 1 "+5V" H 5300 3840 50  0000 C CNN
F 2 "" H 5300 3700 50  0000 C CNN
F 3 "" H 5300 3700 50  0000 C CNN
	1    5300 3700
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR03
U 1 1 5DA98BF9
P 4800 1750
F 0 "#PWR03" H 4800 1600 50  0001 C CNN
F 1 "+5V" H 4800 1890 50  0000 C CNN
F 2 "" H 4800 1750 50  0000 C CNN
F 3 "" H 4800 1750 50  0000 C CNN
	1    4800 1750
	1    0    0    -1  
$EndComp
$Comp
L R R3
U 1 1 5DA99214
P 9400 4700
F 0 "R3" V 9480 4700 50  0000 C CNN
F 1 "15k" V 9400 4700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9330 4700 50  0001 C CNN
F 3 "" H 9400 4700 50  0000 C CNN
	1    9400 4700
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5DA992B7
P 9400 5200
F 0 "R4" V 9480 5200 50  0000 C CNN
F 1 "3.9k" V 9400 5200 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9330 5200 50  0001 C CNN
F 3 "" H 9400 5200 50  0000 C CNN
	1    9400 5200
	1    0    0    -1  
$EndComp
Text GLabel 8400 4700 2    60   Output ~ 0
-0.232V
Text GLabel 4950 2050 2    60   Input ~ 0
-0.232V
$Comp
L GND #PWR04
U 1 1 5DA99E7D
P 6650 2800
F 0 "#PWR04" H 6650 2550 50  0001 C CNN
F 1 "GND" H 6650 2650 50  0000 C CNN
F 2 "" H 6650 2800 50  0000 C CNN
F 3 "" H 6650 2800 50  0000 C CNN
	1    6650 2800
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR05
U 1 1 5DA99EAF
P 9150 2400
F 0 "#PWR05" H 9150 2150 50  0001 C CNN
F 1 "GND" H 9150 2250 50  0000 C CNN
F 2 "" H 9150 2400 50  0000 C CNN
F 3 "" H 9150 2400 50  0000 C CNN
	1    9150 2400
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR06
U 1 1 5DA99EE1
P 9400 5750
F 0 "#PWR06" H 9400 5500 50  0001 C CNN
F 1 "GND" H 9400 5600 50  0000 C CNN
F 2 "" H 9400 5750 50  0000 C CNN
F 3 "" H 9400 5750 50  0000 C CNN
	1    9400 5750
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR07
U 1 1 5DA99F13
P 5100 3700
F 0 "#PWR07" H 5100 3450 50  0001 C CNN
F 1 "GND" H 5100 3550 50  0000 C CNN
F 2 "" H 5100 3700 50  0000 C CNN
F 3 "" H 5100 3700 50  0000 C CNN
	1    5100 3700
	-1   0    0    1   
$EndComp
$Comp
L GND #PWR08
U 1 1 5DA99F45
P 7850 5100
F 0 "#PWR08" H 7850 4850 50  0001 C CNN
F 1 "GND" H 7850 4950 50  0000 C CNN
F 2 "" H 7850 5100 50  0000 C CNN
F 3 "" H 7850 5100 50  0000 C CNN
	1    7850 5100
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR09
U 1 1 5DA9A00F
P 5900 2200
F 0 "#PWR09" H 5900 1950 50  0001 C CNN
F 1 "GND" H 5900 2050 50  0000 C CNN
F 2 "" H 5900 2200 50  0000 C CNN
F 3 "" H 5900 2200 50  0000 C CNN
	1    5900 2200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR010
U 1 1 5DA9A041
P 4400 4250
F 0 "#PWR010" H 4400 4000 50  0001 C CNN
F 1 "GND" H 4400 4100 50  0000 C CNN
F 2 "" H 4400 4250 50  0000 C CNN
F 3 "" H 4400 4250 50  0000 C CNN
	1    4400 4250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR011
U 1 1 5DA9A073
P 4400 4650
F 0 "#PWR011" H 4400 4400 50  0001 C CNN
F 1 "GND" H 4400 4500 50  0000 C CNN
F 2 "" H 4400 4650 50  0000 C CNN
F 3 "" H 4400 4650 50  0000 C CNN
	1    4400 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR012
U 1 1 5DA9A83E
P 6400 4550
F 0 "#PWR012" H 6400 4300 50  0001 C CNN
F 1 "GND" H 6400 4400 50  0000 C CNN
F 2 "" H 6400 4550 50  0000 C CNN
F 3 "" H 6400 4550 50  0000 C CNN
	1    6400 4550
	1    0    0    -1  
$EndComp
$Comp
L +5V #PWR013
U 1 1 5DA9AC10
P 6800 4850
F 0 "#PWR013" H 6800 4700 50  0001 C CNN
F 1 "+5V" H 6800 4990 50  0000 C CNN
F 2 "" H 6800 4850 50  0000 C CNN
F 3 "" H 6800 4850 50  0000 C CNN
	1    6800 4850
	0    -1   -1   0   
$EndComp
Text Label 6950 2300 0    60   ~ 0
OP_AMP
Text Label 9400 3000 0    60   ~ 0
Current_amplifier
Text Label 7000 5200 0    60   ~ 0
Charge_pump
Text Label 4750 3850 0    60   ~ 0
ADC
Text Label 4500 2350 0    60   ~ 0
DAC
Text GLabel 3900 1400 1    59   Input ~ 0
DAC_cs
Text GLabel 4050 1400 1    59   Input ~ 0
DAC_sdi
Text GLabel 4200 1400 1    59   Input ~ 0
DAC_sck
Text GLabel 5850 4250 2    59   Input ~ 0
ADC_scl
Text GLabel 5850 4450 2    59   BiDi ~ 0
ADC_sda
$Comp
L GND #PWR014
U 1 1 5DA9DC7C
P 4550 1300
F 0 "#PWR014" H 4550 1050 50  0001 C CNN
F 1 "GND" H 4550 1150 50  0000 C CNN
F 2 "" H 4550 1300 50  0000 C CNN
F 3 "" H 4550 1300 50  0000 C CNN
	1    4550 1300
	1    0    0    -1  
$EndComp
$Comp
L SPX2920U-5.0 U6
U 1 1 5DA9DECE
P 5750 1900
F 0 "U6" H 5750 2200 50  0000 C CNN
F 1 "SPX2920U-5.0" H 5750 2100 50  0000 C CNN
F 2 "Power_Integrations:TO-220" H 5750 2000 50  0000 C CIN
F 3 "" H 5750 1900 50  0000 C CNN
	1    5750 1900
	1    0    0    -1  
$EndComp
$Comp
L SPX2920U-5.0 U7
U 1 1 5DA9E748
P 6750 1250
F 0 "U7" H 6750 1550 50  0000 C CNN
F 1 "33V_regulator" H 6750 1450 50  0000 C CNN
F 2 "Power_Integrations:TO-220" H 6750 1350 50  0000 C CIN
F 3 "" H 6750 1250 50  0000 C CNN
	1    6750 1250
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR015
U 1 1 5DA9E862
P 6750 1500
F 0 "#PWR015" H 6750 1250 50  0001 C CNN
F 1 "GND" H 6750 1350 50  0000 C CNN
F 2 "" H 6750 1500 50  0000 C CNN
F 3 "" H 6750 1500 50  0000 C CNN
	1    6750 1500
	1    0    0    -1  
$EndComp
$Comp
L Screw_Terminal_1x02 J2
U 1 1 5DA9EDBC
P 10650 5400
F 0 "J2" H 10650 5650 50  0000 C TNN
F 1 "Vout" V 10500 5400 50  0000 C TNN
F 2 "" H 10650 5175 50  0001 C CNN
F 3 "" H 10625 5400 50  0001 C CNN
	1    10650 5400
	-1   0    0    1   
$EndComp
Text GLabel 1700 2000 2    59   Output ~ 0
DAC_cs
Text GLabel 1700 2100 2    59   Output ~ 0
DAC_sdi
Text GLabel 1700 2200 2    59   Output ~ 0
DAC_sck
Text GLabel 1700 2300 2    59   Output ~ 0
ADC_scl
Text GLabel 1700 2400 2    59   BiDi ~ 0
ADC_sda
$Comp
L GND #PWR016
U 1 1 5DAA07BA
P 1700 2600
F 0 "#PWR016" H 1700 2350 50  0001 C CNN
F 1 "GND" H 1700 2450 50  0000 C CNN
F 2 "" H 1700 2600 50  0000 C CNN
F 3 "" H 1700 2600 50  0000 C CNN
	1    1700 2600
	1    0    0    -1  
$EndComp
$Comp
L TL081 U8
U 1 1 5DAA0910
P 8550 1900
F 0 "U8" H 8550 2100 50  0000 L CNN
F 1 "op_amp" H 8550 1700 50  0000 L CNN
F 2 "" H 8600 2100 50  0001 C CNN
F 3 "" H 8550 2150 50  0000 C CNN
	1    8550 1900
	1    0    0    -1  
$EndComp
Wire Wire Line
	6650 2500 6550 2500
Wire Wire Line
	6550 2500 6550 1800
Wire Wire Line
	6550 1800 6950 1800
Wire Wire Line
	7250 1800 8250 1800
Wire Wire Line
	8750 1250 10150 1250
Wire Wire Line
	7850 1250 7850 1900
Connection ~ 7850 1800
Wire Wire Line
	7850 2600 7550 2600
Wire Wire Line
	7850 2150 7850 2600
Wire Wire Line
	6200 2700 6650 2700
Wire Wire Line
	7800 3100 7800 2700
Wire Wire Line
	7800 2700 7550 2700
Wire Wire Line
	10450 3300 10250 3300
Wire Wire Line
	10250 3300 10250 2600
Wire Wire Line
	10250 2600 10150 2600
Wire Wire Line
	10450 1800 10450 3000
Wire Wire Line
	10150 2200 10150 2500
Wire Wire Line
	8000 2500 8000 3250
Wire Wire Line
	8000 2800 7550 2800
Wire Wire Line
	5350 900  5350 1250
Wire Wire Line
	5350 1550 5350 1850
Wire Wire Line
	6300 1700 6300 1850
Wire Wire Line
	6300 1850 6150 1850
Wire Wire Line
	9150 2500 9350 2500
Wire Wire Line
	9150 2500 9150 2400
Wire Wire Line
	4650 1950 4800 1950
Wire Wire Line
	4800 1950 4800 1750
Wire Wire Line
	10450 3300 10450 5300
Wire Wire Line
	10450 4400 9400 4400
Wire Wire Line
	9400 4400 9400 4550
Wire Wire Line
	9400 4850 9400 5050
Wire Wire Line
	4550 3350 8600 3350
Wire Wire Line
	6450 2600 6450 3350
Wire Wire Line
	6450 2600 6650 2600
Connection ~ 9400 4950
Wire Wire Line
	9350 2600 9300 2600
Wire Wire Line
	9300 2600 9300 2500
Connection ~ 9300 2500
Wire Wire Line
	9400 5350 9400 5750
Wire Wire Line
	4550 4650 4400 4650
Wire Wire Line
	4550 4250 4400 4250
Wire Wire Line
	4550 3350 4550 4100
Connection ~ 6450 3350
Wire Wire Line
	8000 3250 4300 3250
Wire Wire Line
	4300 3250 4300 4500
Wire Wire Line
	4300 4500 4550 4500
Connection ~ 8000 2800
Wire Wire Line
	7750 4700 8400 4700
Wire Wire Line
	7750 5000 8200 5000
Wire Wire Line
	7850 5000 7850 5100
Wire Wire Line
	7750 4850 7750 5000
Connection ~ 7850 5000
Wire Wire Line
	7750 4400 7850 4400
Wire Wire Line
	7850 4400 7850 4000
Wire Wire Line
	7850 4000 7300 4000
Wire Wire Line
	7200 4000 6650 4000
Wire Wire Line
	6650 4000 6650 4400
Wire Wire Line
	6650 4400 6800 4400
Wire Wire Line
	6400 4550 6800 4550
Wire Wire Line
	7750 4550 8100 4550
Wire Wire Line
	6800 4700 6650 4700
Wire Wire Line
	6650 4700 6650 4550
Connection ~ 6650 4550
Wire Wire Line
	4550 1300 4550 1150
Wire Wire Line
	4550 1150 4350 1150
Wire Wire Line
	4350 1150 4350 1400
Wire Wire Line
	7150 1200 7550 1200
Wire Wire Line
	6350 1200 6300 1200
Wire Wire Line
	6300 1200 6300 900 
Connection ~ 6300 900 
Connection ~ 10450 4400
Wire Wire Line
	9400 5500 10450 5500
Connection ~ 9400 5500
Wire Wire Line
	7850 1250 8450 1250
Wire Wire Line
	7550 1200 7550 2500
Wire Wire Line
	8250 2000 8200 2000
Wire Wire Line
	8200 2000 8200 2250
Wire Wire Line
	8200 2250 7850 2250
Connection ~ 7850 2250
$Comp
L +5V #PWR017
U 1 1 5DAA1D85
P 8450 1600
F 0 "#PWR017" H 8450 1450 50  0001 C CNN
F 1 "+5V" H 8450 1740 50  0000 C CNN
F 2 "" H 8450 1600 50  0000 C CNN
F 3 "" H 8450 1600 50  0000 C CNN
	1    8450 1600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR018
U 1 1 5DAA1DC9
P 8450 2200
F 0 "#PWR018" H 8450 1950 50  0001 C CNN
F 1 "GND" H 8450 2050 50  0000 C CNN
F 2 "" H 8450 2200 50  0000 C CNN
F 3 "" H 8450 2200 50  0000 C CNN
	1    8450 2200
	1    0    0    -1  
$EndComp
Text GLabel 9300 1900 2    59   Output ~ 0
current_limiter
Text GLabel 1700 2500 2    59   Input ~ 0
current_limiter
$Comp
L R R5
U 1 1 5DAA33CA
P 9100 1900
F 0 "R5" V 9180 1900 50  0000 C CNN
F 1 "2.2k" V 9100 1900 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 9030 1900 50  0001 C CNN
F 3 "" H 9100 1900 50  0000 C CNN
	1    9100 1900
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8950 1900 8850 1900
$Comp
L Screw_Terminal_1x02 J1
U 1 1 5DAA492F
P 1500 1500
F 0 "J1" H 1500 1750 50  0000 C TNN
F 1 "ACin" V 1350 1500 50  0000 C TNN
F 2 "" H 1500 1275 50  0001 C CNN
F 3 "" H 1475 1500 50  0001 C CNN
	1    1500 1500
	1    0    0    -1  
$EndComp
$Comp
L CP CP1
U 1 1 5DAA4B61
P 3200 1050
F 0 "CP1" H 3225 1150 50  0000 L CNN
F 1 "4700uF 50V" H 3225 950 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D35.0mm_P10.00mm_SnapIn" H 3238 900 50  0001 C CNN
F 3 "" H 3200 1050 50  0000 C CNN
	1    3200 1050
	1    0    0    -1  
$EndComp
Connection ~ 5350 900 
Connection ~ 3200 900 
$Comp
L GND #PWR019
U 1 1 5DAA4E05
P 3200 1200
F 0 "#PWR019" H 3200 950 50  0001 C CNN
F 1 "GND" H 3200 1050 50  0000 C CNN
F 2 "" H 3200 1200 50  0000 C CNN
F 3 "" H 3200 1200 50  0000 C CNN
	1    3200 1200
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X07 P1
U 1 1 5DAA5109
P 1500 2300
F 0 "P1" H 1500 2700 50  0000 C CNN
F 1 "CONN_01X07" V 1600 2300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x07_Pitch2.54mm" H 1500 2300 50  0001 C CNN
F 3 "" H 1500 2300 50  0000 C CNN
	1    1500 2300
	-1   0    0    1   
$EndComp
Wire Wire Line
	9250 1900 9300 1900
$Comp
L Screw_Terminal_1x02 J3
U 1 1 5DAA7B05
P 10650 1700
F 0 "J3" H 10650 1950 50  0000 C TNN
F 1 "2N3055_conn" V 10500 1700 50  0000 C TNN
F 2 "" H 10650 1475 50  0001 C CNN
F 3 "" H 10625 1700 50  0001 C CNN
	1    10650 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	10450 1450 10450 1450
Wire Wire Line
	10450 1450 10450 1600
Wire Wire Line
	10450 900  10450 1050
Wire Wire Line
	1700 900  10450 900 
$Comp
L CONN_01X02 C2
U 1 1 5DAA8A06
P 7350 1500
F 0 "C2" H 7350 1650 50  0000 C CNN
F 1 "CONN_01X02" V 7450 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7350 1500 50  0001 C CNN
F 3 "" H 7350 1500 50  0000 C CNN
	1    7350 1500
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 C1
U 1 1 5DAA8D17
P 6350 2150
F 0 "C1" H 6350 2300 50  0000 C CNN
F 1 "CONN_01X02" V 6450 2150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 6350 2150 50  0001 C CNN
F 3 "" H 6350 2150 50  0000 C CNN
	1    6350 2150
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X02 C3
U 1 1 5DAA8EEC
P 7250 3800
F 0 "C3" H 7250 3950 50  0000 C CNN
F 1 "CONN_01X02" V 7350 3800 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 7250 3800 50  0001 C CNN
F 3 "" H 7250 3800 50  0000 C CNN
	1    7250 3800
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 C5
U 1 1 5DAA90CE
P 8150 4350
F 0 "C5" H 8150 4500 50  0000 C CNN
F 1 "CONN_01X02" V 8250 4350 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8150 4350 50  0001 C CNN
F 3 "" H 8150 4350 50  0000 C CNN
	1    8150 4350
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X02 C4
U 1 1 5DAA9242
P 8250 5200
F 0 "C4" H 8250 5350 50  0000 C CNN
F 1 "CONN_01X02" V 8350 5200 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 8250 5200 50  0001 C CNN
F 3 "" H 8250 5200 50  0000 C CNN
	1    8250 5200
	0    1    1    0   
$EndComp
$Comp
L GND #PWR020
U 1 1 5DAA97B0
P 8350 4550
F 0 "#PWR020" H 8350 4300 50  0001 C CNN
F 1 "GND" H 8350 4400 50  0000 C CNN
F 2 "" H 8350 4550 50  0000 C CNN
F 3 "" H 8350 4550 50  0000 C CNN
	1    8350 4550
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8350 4550 8200 4550
Wire Wire Line
	8300 4700 8300 5000
Connection ~ 8300 4700
$Comp
L GND #PWR021
U 1 1 5DAAA1EB
P 6150 2200
F 0 "#PWR021" H 6150 1950 50  0001 C CNN
F 1 "GND" H 6150 2050 50  0000 C CNN
F 2 "" H 6150 2200 50  0000 C CNN
F 3 "" H 6150 2200 50  0000 C CNN
	1    6150 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 1550 6150 2100
$Comp
L GND #PWR022
U 1 1 5DAAA2C9
P 7150 1550
F 0 "#PWR022" H 7150 1300 50  0001 C CNN
F 1 "GND" H 7150 1400 50  0000 C CNN
F 2 "" H 7150 1550 50  0000 C CNN
F 3 "" H 7150 1550 50  0000 C CNN
	1    7150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7150 1450 7150 1200
Wire Wire Line
	5750 2150 5750 2200
Wire Wire Line
	5750 2200 5900 2200
Wire Wire Line
	4100 3100 7800 3100
Wire Wire Line
	3650 2900 6200 2900
Wire Wire Line
	6200 2900 6200 2700
$Comp
L C Cb3
U 1 1 5DAAC5E5
P 3500 2900
F 0 "Cb3" H 3525 3000 50  0000 L CNN
F 1 "0.1u" H 3525 2800 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3538 2750 50  0001 C CNN
F 3 "" H 3500 2900 50  0000 C CNN
	1    3500 2900
	0    1    1    0   
$EndComp
$Comp
L C Cb4
U 1 1 5DAAC698
P 3950 3100
F 0 "Cb4" H 3975 3200 50  0000 L CNN
F 1 "0.1u" H 3975 3000 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 3988 2950 50  0001 C CNN
F 3 "" H 3950 3100 50  0000 C CNN
	1    3950 3100
	0    1    1    0   
$EndComp
$Comp
L GND #PWR023
U 1 1 5DAAC6FE
P 3700 3150
F 0 "#PWR023" H 3700 2900 50  0001 C CNN
F 1 "GND" H 3700 3000 50  0000 C CNN
F 2 "" H 3700 3150 50  0000 C CNN
F 3 "" H 3700 3150 50  0000 C CNN
	1    3700 3150
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR024
U 1 1 5DAAC74C
P 3200 2950
F 0 "#PWR024" H 3200 2700 50  0001 C CNN
F 1 "GND" H 3200 2800 50  0000 C CNN
F 2 "" H 3200 2950 50  0000 C CNN
F 3 "" H 3200 2950 50  0000 C CNN
	1    3200 2950
	1    0    0    -1  
$EndComp
Wire Wire Line
	3800 3100 3700 3100
Wire Wire Line
	3700 3100 3700 3150
Wire Wire Line
	3350 2900 3200 2900
Wire Wire Line
	3200 2900 3200 2950
Wire Wire Line
	4250 2700 4250 3100
Connection ~ 4250 3100
Wire Wire Line
	4050 2700 4050 2900
Connection ~ 4050 2900
$Comp
L C Cb1
U 1 1 5DAADB87
P 5950 1400
F 0 "Cb1" H 5975 1500 50  0000 L CNN
F 1 "0.1u" H 5975 1300 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5988 1250 50  0001 C CNN
F 3 "" H 5950 1400 50  0000 C CNN
	1    5950 1400
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR025
U 1 1 5DAADEFA
P 5950 1100
F 0 "#PWR025" H 5950 850 50  0001 C CNN
F 1 "GND" H 5950 950 50  0000 C CNN
F 2 "" H 5950 1100 50  0000 C CNN
F 3 "" H 5950 1100 50  0000 C CNN
	1    5950 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	5950 1100 5950 1250
$Comp
L C Cb2
U 1 1 5DAB01F8
P 4150 4500
F 0 "Cb2" H 4175 4600 50  0000 L CNN
F 1 "0.1u" H 4175 4400 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4188 4350 50  0001 C CNN
F 3 "" H 4150 4500 50  0000 C CNN
	1    4150 4500
	0    1    1    0   
$EndComp
$Comp
L GND #PWR026
U 1 1 5DAB02B1
P 4000 4500
F 0 "#PWR026" H 4000 4250 50  0001 C CNN
F 1 "GND" H 4000 4350 50  0000 C CNN
F 2 "" H 4000 4500 50  0000 C CNN
F 3 "" H 4000 4500 50  0000 C CNN
	1    4000 4500
	0    1    1    0   
$EndComp
Wire Wire Line
	6150 1550 5950 1550
Connection ~ 6150 1850
$Comp
L +5V #PWR027
U 1 1 5DAB2129
P 9350 2700
F 0 "#PWR027" H 9350 2550 50  0001 C CNN
F 1 "+5V" H 9350 2840 50  0000 C CNN
F 2 "" H 9350 2700 50  0000 C CNN
F 3 "" H 9350 2700 50  0000 C CNN
	1    9350 2700
	-1   0    0    1   
$EndComp
$Comp
L C Cb5
U 1 1 5DAB50D8
P 4800 2300
F 0 "Cb5" H 4825 2400 50  0000 L CNN
F 1 "0.1u" H 4825 2200 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4838 2150 50  0001 C CNN
F 3 "" H 4800 2300 50  0000 C CNN
	1    4800 2300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR028
U 1 1 5DAB514F
P 4800 2450
F 0 "#PWR028" H 4800 2200 50  0001 C CNN
F 1 "GND" H 4800 2300 50  0000 C CNN
F 2 "" H 4800 2450 50  0000 C CNN
F 3 "" H 4800 2450 50  0000 C CNN
	1    4800 2450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 2150 4800 2050
Wire Wire Line
	4650 2050 4950 2050
Connection ~ 4800 2050
$Comp
L C Cb6
U 1 1 5DAB0490
P 5800 3550
F 0 "Cb6" H 5825 3650 50  0000 L CNN
F 1 "0.1u" H 5825 3450 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5838 3400 50  0001 C CNN
F 3 "" H 5800 3550 50  0000 C CNN
	1    5800 3550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR029
U 1 1 5DAB056D
P 5800 3700
F 0 "#PWR029" H 5800 3450 50  0001 C CNN
F 1 "GND" H 5800 3550 50  0000 C CNN
F 2 "" H 5800 3700 50  0000 C CNN
F 3 "" H 5800 3700 50  0000 C CNN
	1    5800 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	5800 3400 5800 3350
Connection ~ 5800 3350
$Comp
L C Cb7
U 1 1 5DAB0730
P 7400 2050
F 0 "Cb7" H 7425 2150 50  0000 L CNN
F 1 "0.1u" H 7425 1950 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 7438 1900 50  0001 C CNN
F 3 "" H 7400 2050 50  0000 C CNN
	1    7400 2050
	0    1    1    0   
$EndComp
$Comp
L GND #PWR030
U 1 1 5DAB07B7
P 7250 2050
F 0 "#PWR030" H 7250 1800 50  0001 C CNN
F 1 "GND" H 7250 1900 50  0000 C CNN
F 2 "" H 7250 2050 50  0000 C CNN
F 3 "" H 7250 2050 50  0000 C CNN
	1    7250 2050
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P6
U 1 1 5DAB3A4E
P 8200 2950
F 0 "P6" H 8200 3050 50  0000 C CNN
F 1 "CONN_01X01" V 8300 2950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8200 2950 50  0001 C CNN
F 3 "" H 8200 2950 50  0000 C CNN
	1    8200 2950
	1    0    0    -1  
$EndComp
$Comp
L CONN_01X01 P5
U 1 1 5DAB3E4B
P 8300 3550
F 0 "P5" H 8300 3650 50  0000 C CNN
F 1 "CONN_01X01" V 8400 3550 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8300 3550 50  0001 C CNN
F 3 "" H 8300 3550 50  0000 C CNN
	1    8300 3550
	0    1    1    0   
$EndComp
$Comp
L CONN_01X01 P2
U 1 1 5DAB3EEC
P 5950 2600
F 0 "P2" H 5950 2700 50  0000 C CNN
F 1 "CONN_01X01" V 6050 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5950 2600 50  0001 C CNN
F 3 "" H 5950 2600 50  0000 C CNN
	1    5950 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P3
U 1 1 5DAB3F9F
P 5350 2600
F 0 "P3" H 5350 2700 50  0000 C CNN
F 1 "CONN_01X01" V 5450 2600 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 5350 2600 50  0001 C CNN
F 3 "" H 5350 2600 50  0000 C CNN
	1    5350 2600
	0    -1   -1   0   
$EndComp
$Comp
L CONN_01X01 P4
U 1 1 5DAB40D2
P 8900 4950
F 0 "P4" H 8900 5050 50  0000 C CNN
F 1 "CONN_01X01" V 9000 4950 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8900 4950 50  0001 C CNN
F 3 "" H 8900 4950 50  0000 C CNN
	1    8900 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	8300 4950 8700 4950
Connection ~ 8300 4950
Wire Wire Line
	5350 2800 5350 2900
Connection ~ 5350 2900
Wire Wire Line
	5950 2800 5950 3100
Connection ~ 5950 3100
$Comp
L R R6
U 1 1 5DAB43DD
P 8750 2350
F 0 "R6" V 8830 2350 50  0000 C CNN
F 1 "10k" V 8750 2350 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8680 2350 50  0001 C CNN
F 3 "" H 8750 2350 50  0000 C CNN
	1    8750 2350
	1    0    0    -1  
$EndComp
$Comp
L R R7
U 1 1 5DAB44DA
P 8750 2650
F 0 "R7" V 8830 2650 50  0000 C CNN
F 1 "10k" V 8750 2650 50  0000 C CNN
F 2 "Resistors_SMD:R_0603_HandSoldering" V 8680 2650 50  0001 C CNN
F 3 "" H 8750 2650 50  0000 C CNN
	1    8750 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	8750 2200 10150 2200
Wire Wire Line
	8750 2500 8000 2500
$Comp
L GND #PWR031
U 1 1 5DAB472A
P 8750 2800
F 0 "#PWR031" H 8750 2550 50  0001 C CNN
F 1 "GND" H 8750 2650 50  0000 C CNN
F 2 "" H 8750 2800 50  0000 C CNN
F 3 "" H 8750 2800 50  0000 C CNN
	1    8750 2800
	1    0    0    -1  
$EndComp
Wire Wire Line
	10150 2700 10450 2700
Connection ~ 10450 2700
Wire Wire Line
	9400 4950 9150 4950
Wire Wire Line
	9150 4950 9150 4450
Wire Wire Line
	9150 4450 8600 4450
Wire Wire Line
	8600 4450 8600 3350
$Comp
L INA240A1PWR U9
U 1 1 5DAB6972
P 9550 3600
F 0 "U9" H 9550 3950 60  0000 C CNN
F 1 "INA240A1PWR" H 9550 3250 60  0000 C CNN
F 2 "Housings_SSOP:TSSOP-8_4.4x3mm_Pitch0.65mm" H 9550 3250 60  0001 C CNN
F 3 "" H 9550 3250 60  0001 C CNN
	1    9550 3600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR032
U 1 1 5DAB6D92
P 9100 3750
F 0 "#PWR032" H 9100 3500 50  0001 C CNN
F 1 "GND" H 9100 3600 50  0000 C CNN
F 2 "" H 9100 3750 50  0000 C CNN
F 3 "" H 9100 3750 50  0000 C CNN
	1    9100 3750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10450 4100 8950 4100
Wire Wire Line
	8950 4100 8950 3650
Wire Wire Line
	8950 3650 9100 3650
Connection ~ 10450 4100
Wire Wire Line
	10150 2700 10150 3100
Wire Wire Line
	10150 3100 8950 3100
Wire Wire Line
	8950 3100 8950 3550
Wire Wire Line
	8950 3550 9100 3550
$Comp
L GND #PWR033
U 1 1 5DAB710F
P 10350 3450
F 0 "#PWR033" H 10350 3200 50  0001 C CNN
F 1 "GND" H 10350 3300 50  0000 C CNN
F 2 "" H 10350 3450 50  0000 C CNN
F 3 "" H 10350 3450 50  0000 C CNN
	1    10350 3450
	1    0    0    -1  
$EndComp
Wire Wire Line
	10000 3550 10250 3550
Wire Wire Line
	10250 3550 10250 3450
Wire Wire Line
	10250 3450 10350 3450
$Comp
L +5V #PWR034
U 1 1 5DAB72B5
P 10250 3850
F 0 "#PWR034" H 10250 3700 50  0001 C CNN
F 1 "+5V" H 10250 3990 50  0000 C CNN
F 2 "" H 10250 3850 50  0000 C CNN
F 3 "" H 10250 3850 50  0000 C CNN
	1    10250 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10100 3850 10250 3850
Wire Wire Line
	10100 3650 10100 3850
Wire Wire Line
	10100 3750 10000 3750
Wire Wire Line
	10000 3650 10100 3650
Connection ~ 10100 3750
Wire Wire Line
	10000 3450 10000 3200
Wire Wire Line
	10000 3200 9050 3200
Wire Wire Line
	9050 3200 9050 2200
Connection ~ 9050 2200
$Comp
L CONN_01X01 P7
U 1 1 5DAB77EE
P 8100 1500
F 0 "P7" H 8100 1600 50  0000 C CNN
F 1 "CONN_01X01" V 8200 1500 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x01_Pitch2.54mm" H 8100 1500 50  0001 C CNN
F 3 "" H 8100 1500 50  0000 C CNN
	1    8100 1500
	0    1    1    0   
$EndComp
Wire Wire Line
	8100 1300 8100 1250
Connection ~ 8100 1250
$Comp
L D_Bridge_+AA- D3
U 1 1 5DABAB28
P 2500 1300
F 0 "D3" H 2550 1575 50  0000 L CNN
F 1 "D_Bridge_+AA-" H 2550 1500 50  0000 L CNN
F 2 "" H 2500 1300 50  0001 C CNN
F 3 "" H 2500 1300 50  0000 C CNN
	1    2500 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR035
U 1 1 5DABB706
P 2200 1300
F 0 "#PWR035" H 2200 1050 50  0001 C CNN
F 1 "GND" H 2200 1150 50  0000 C CNN
F 2 "" H 2200 1300 50  0000 C CNN
F 3 "" H 2200 1300 50  0000 C CNN
	1    2200 1300
	1    0    0    -1  
$EndComp
Wire Wire Line
	2800 1300 2800 900 
Wire Wire Line
	2500 1600 1700 1600
Wire Wire Line
	1700 1400 1950 1400
Wire Wire Line
	1950 1400 1950 1000
$Comp
L Screw_Terminal_1x02 J4
U 1 1 5DABBF79
P 1500 1000
F 0 "J4" H 1500 1250 50  0000 C TNN
F 1 "DCin" V 1350 1000 50  0000 C TNN
F 2 "" H 1500 775 50  0001 C CNN
F 3 "" H 1475 1000 50  0001 C CNN
	1    1500 1000
	1    0    0    -1  
$EndComp
$Comp
L Fuse F1
U 1 1 5DABD143
P 2200 1000
F 0 "F1" V 2280 1000 50  0000 C CNN
F 1 "Fuse" V 2125 1000 50  0000 C CNN
F 2 "" V 2130 1000 50  0001 C CNN
F 3 "" H 2200 1000 50  0000 C CNN
	1    2200 1000
	0    1    1    0   
$EndComp
Wire Wire Line
	2500 1000 2350 1000
Wire Wire Line
	1950 1000 2050 1000
$Comp
L GND #PWR036
U 1 1 5DABD497
P 1700 1100
F 0 "#PWR036" H 1700 850 50  0001 C CNN
F 1 "GND" H 1700 950 50  0000 C CNN
F 2 "" H 1700 1100 50  0000 C CNN
F 3 "" H 1700 1100 50  0000 C CNN
	1    1700 1100
	1    0    0    -1  
$EndComp
Connection ~ 2800 900 
$EndSCHEMATC
