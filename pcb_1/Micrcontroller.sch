EESchema Schematic File Version 4
LIBS:pcb_1-cache
EELAYER 30 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L power:GNDD #PWR036
U 1 1 5DD60E95
P 2600 6800
F 0 "#PWR036" H 2600 6550 50  0001 C CNN
F 1 "GNDD" H 2604 6645 50  0000 C CNN
F 2 "" H 2600 6800 50  0001 C CNN
F 3 "" H 2600 6800 50  0001 C CNN
	1    2600 6800
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR018
U 1 1 5DD60971
P 2600 3600
F 0 "#PWR018" H 2600 3450 50  0001 C CNN
F 1 "+5V" H 2615 3773 50  0000 C CNN
F 2 "" H 2600 3600 50  0001 C CNN
F 3 "" H 2600 3600 50  0001 C CNN
	1    2600 3600
	1    0    0    -1  
$EndComp
$Comp
L Device:C C14
U 1 1 5DD639F1
P 2400 3700
F 0 "C14" V 2148 3700 50  0000 C CNN
F 1 "0.1u" V 2239 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2438 3550 50  0001 C CNN
F 3 "~" H 2400 3700 50  0001 C CNN
	1    2400 3700
	0    1    1    0   
$EndComp
Wire Wire Line
	2600 3600 2600 3700
Connection ~ 2600 3700
Wire Wire Line
	2600 3700 2600 3800
$Comp
L power:GNDD #PWR019
U 1 1 5DD64622
P 2250 3700
F 0 "#PWR019" H 2250 3450 50  0001 C CNN
F 1 "GNDD" V 2254 3590 50  0000 R CNN
F 2 "" H 2250 3700 50  0001 C CNN
F 3 "" H 2250 3700 50  0001 C CNN
	1    2250 3700
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR025
U 1 1 5DD6BCEE
P 5100 4800
F 0 "#PWR025" H 5100 4650 50  0001 C CNN
F 1 "+5V" H 5115 4973 50  0000 C CNN
F 2 "" H 5100 4800 50  0001 C CNN
F 3 "" H 5100 4800 50  0001 C CNN
	1    5100 4800
	-1   0    0    1   
$EndComp
$Comp
L power:GNDD #PWR021
U 1 1 5DD6C297
P 5100 3900
F 0 "#PWR021" H 5100 3650 50  0001 C CNN
F 1 "GNDD" H 5104 3745 50  0000 C CNN
F 2 "" H 5100 3900 50  0001 C CNN
F 3 "" H 5100 3900 50  0001 C CNN
	1    5100 3900
	-1   0    0    1   
$EndComp
$Comp
L Device:R R22
U 1 1 5DD6F284
P 1900 5600
F 0 "R22" H 1970 5646 50  0000 L CNN
F 1 "5k" H 1970 5555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1830 5600 50  0001 C CNN
F 3 "~" H 1900 5600 50  0001 C CNN
	1    1900 5600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R21
U 1 1 5DD6F85B
P 1650 5600
F 0 "R21" H 1720 5646 50  0000 L CNN
F 1 "5k" H 1720 5555 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 1580 5600 50  0001 C CNN
F 3 "~" H 1650 5600 50  0001 C CNN
	1    1650 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	3200 5600 3400 5600
Wire Wire Line
	3200 4400 4050 4400
$Comp
L Connector:AVR-ISP-6 J6
U 1 1 5DD6495F
P 5000 4300
F 0 "J6" H 4720 4304 50  0000 R CNN
F 1 "AVR-ISP-6" H 4720 4395 50  0000 R CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" V 4750 4350 50  0001 C CNN
F 3 " ~" H 3725 3750 50  0001 C CNN
	1    5000 4300
	-1   0    0    1   
$EndComp
Wire Wire Line
	3200 4500 3800 4500
Wire Wire Line
	3400 5600 3400 4200
Wire Wire Line
	3400 4200 4550 4200
Wire Wire Line
	3200 4600 3500 4600
Wire Wire Line
	3500 4600 3500 4300
Wire Wire Line
	3500 4300 4300 4300
$Comp
L Device:R R14
U 1 1 5DD7ACAD
P 3800 3900
F 0 "R14" H 3870 3946 50  0000 L CNN
F 1 "100" H 3870 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3730 3900 50  0001 C CNN
F 3 "~" H 3800 3900 50  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R16
U 1 1 5DD7B76E
P 4300 3900
F 0 "R16" H 4370 3946 50  0000 L CNN
F 1 "100" H 4370 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4230 3900 50  0001 C CNN
F 3 "~" H 4300 3900 50  0001 C CNN
	1    4300 3900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R15
U 1 1 5DD7B4E3
P 4050 3900
F 0 "R15" H 4120 3946 50  0000 L CNN
F 1 "100" H 4120 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3980 3900 50  0001 C CNN
F 3 "~" H 4050 3900 50  0001 C CNN
	1    4050 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 4050 4300 4300
Connection ~ 4300 4300
Wire Wire Line
	4300 4300 4600 4300
Wire Wire Line
	4050 4050 4050 4400
Connection ~ 4050 4400
Wire Wire Line
	4050 4400 4600 4400
Wire Wire Line
	3800 4050 3800 4500
Connection ~ 3800 4500
Wire Wire Line
	3800 4500 4600 4500
$Comp
L lab_power_supply:HCPL2601SD U8
U 1 1 5DD80047
P 9250 4850
F 0 "U8" H 9225 5287 60  0000 C CNN
F 1 "HCPL2601SD" H 9225 5181 60  0000 C CNN
F 2 "lab_power_supply:HCPL2631SD" H 9250 4800 60  0001 C CNN
F 3 "" H 9250 4800 60  0001 C CNN
	1    9250 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4300 3300 4300
$Comp
L lab_power_supply:HCPL2631SD U6
U 1 1 5DD7DECD
P 7300 1750
F 0 "U6" H 7275 1313 60  0000 C CNN
F 1 "HCPL2631SD" H 7275 1419 60  0000 C CNN
F 2 "lab_power_supply:HCPL2631SD" H 7300 1700 60  0001 C CNN
F 3 "" H 7300 1700 60  0001 C CNN
	1    7300 1750
	-1   0    0    1   
$EndComp
Text GLabel 4300 3650 1    60   Input ~ 0
SLAVE_SCK
Text GLabel 4050 3650 1    60   Input ~ 0
SLAVE_MOSI
Text GLabel 3800 3650 1    60   Input ~ 0
SLAVE_MISO
Wire Wire Line
	3800 3650 3800 3750
Wire Wire Line
	4050 3650 4050 3750
Wire Wire Line
	4300 3650 4300 3750
Text GLabel 3300 3650 1    60   Input ~ 0
SLAVE_CS
Wire Wire Line
	3300 3650 3300 4300
Wire Wire Line
	6650 1700 6900 1700
Wire Wire Line
	6900 1800 6650 1800
$Comp
L Device:Q_NMOS_DGS Q2
U 1 1 5DDEB268
P 8950 1250
F 0 "Q2" H 9155 1296 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 9155 1205 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 9150 1350 50  0001 C CNN
F 3 "~" H 8950 1250 50  0001 C CNN
	1    8950 1250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R10
U 1 1 5DDEC927
P 9000 900
F 0 "R10" V 8950 1050 50  0000 C CNN
F 1 "330" V 9050 1100 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 900 50  0001 C CNN
F 3 "~" H 9000 900 50  0001 C CNN
	1    9000 900 
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 900  8850 1050
$Comp
L Device:Q_NMOS_DGS Q3
U 1 1 5DDF29F3
P 8950 2000
F 0 "Q3" H 9155 2046 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 9155 1955 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 9150 2100 50  0001 C CNN
F 3 "~" H 8950 2000 50  0001 C CNN
	1    8950 2000
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R11
U 1 1 5DDF29FD
P 9000 1650
F 0 "R11" V 8950 1800 50  0000 C CNN
F 1 "330" V 9050 1850 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 1650 50  0001 C CNN
F 3 "~" H 9000 1650 50  0001 C CNN
	1    9000 1650
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 1650 8850 1800
Wire Wire Line
	9150 900  9400 900 
Wire Wire Line
	9400 900  9400 1650
Wire Wire Line
	9400 1650 9150 1650
Wire Wire Line
	8850 2200 9300 2200
Wire Wire Line
	8850 1450 9300 1450
Wire Wire Line
	9300 1450 9300 2200
Wire Wire Line
	7750 1800 7850 1800
Wire Wire Line
	7750 1700 7850 1700
Wire Wire Line
	7850 1700 7850 1800
Wire Wire Line
	7750 1900 7950 1900
Wire Wire Line
	7950 1900 7950 1650
Wire Wire Line
	7950 1650 8850 1650
Connection ~ 8850 1650
Wire Wire Line
	8850 900  7950 900 
Wire Wire Line
	7950 900  7950 1600
Wire Wire Line
	7950 1600 7750 1600
Connection ~ 8850 900 
$Comp
L Device:Q_NMOS_DGS Q6
U 1 1 5DE3498E
P 7950 5050
F 0 "Q6" H 8155 5096 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 8155 5005 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 8150 5150 50  0001 C CNN
F 3 "~" H 7950 5050 50  0001 C CNN
	1    7950 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR026
U 1 1 5DE46C99
P 8800 4900
F 0 "#PWR026" H 8800 4650 50  0001 C CNN
F 1 "GNDD" V 8804 4790 50  0000 R CNN
F 2 "" H 8800 4900 50  0001 C CNN
F 3 "" H 8800 4900 50  0001 C CNN
	1    8800 4900
	0    1    1    0   
$EndComp
Wire Wire Line
	8050 4800 8800 4800
$Comp
L power:GNDD #PWR029
U 1 1 5DE4D380
P 9900 5100
F 0 "#PWR029" H 9900 4850 50  0001 C CNN
F 1 "GNDD" H 9904 4945 50  0000 C CNN
F 2 "" H 9900 5100 50  0001 C CNN
F 3 "" H 9900 5100 50  0001 C CNN
	1    9900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C17
U 1 1 5DE4EB0D
P 9900 4850
F 0 "C17" H 9785 4804 50  0000 R CNN
F 1 "0.1u" H 9785 4895 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9938 4700 50  0001 C CNN
F 3 "~" H 9900 4850 50  0001 C CNN
	1    9900 4850
	-1   0    0    1   
$EndComp
Wire Wire Line
	9900 4700 9650 4700
Wire Wire Line
	9650 4800 9650 4700
Connection ~ 9650 4700
Wire Wire Line
	9650 5000 9900 5000
$Comp
L power:GNDD #PWR030
U 1 1 5DE61505
P 8050 5350
F 0 "#PWR030" H 8050 5100 50  0001 C CNN
F 1 "GNDD" H 8054 5195 50  0000 C CNN
F 2 "" H 8050 5350 50  0001 C CNN
F 3 "" H 8050 5350 50  0001 C CNN
	1    8050 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 5250 8050 5350
Wire Wire Line
	8050 4800 8050 4850
$Comp
L Device:R R18
U 1 1 5DE6A4FF
P 8050 4650
F 0 "R18" H 8120 4696 50  0000 L CNN
F 1 "500" H 8120 4605 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 7980 4650 50  0001 C CNN
F 3 "~" H 8050 4650 50  0001 C CNN
	1    8050 4650
	1    0    0    -1  
$EndComp
Connection ~ 8050 4800
$Comp
L power:+5V #PWR023
U 1 1 5DE6B0EB
P 8050 4500
F 0 "#PWR023" H 8050 4350 50  0001 C CNN
F 1 "+5V" H 8065 4673 50  0000 C CNN
F 2 "" H 8050 4500 50  0001 C CNN
F 3 "" H 8050 4500 50  0001 C CNN
	1    8050 4500
	1    0    0    -1  
$EndComp
Text GLabel 7750 5050 0    60   Input ~ 0
SLAVE_MISO
Wire Wire Line
	9650 4900 9750 4900
$Comp
L Device:C C12
U 1 1 5DE807E4
P 5800 1750
F 0 "C12" H 6000 1700 50  0000 R CNN
F 1 "0.1u" H 6050 1800 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5838 1600 50  0001 C CNN
F 3 "~" H 5800 1750 50  0001 C CNN
	1    5800 1750
	-1   0    0    1   
$EndComp
Text GLabel 6650 1700 0    60   Input ~ 0
SLAVE_MOSI
Text GLabel 6650 1800 0    60   Input ~ 0
SLAVE_SCK
Wire Wire Line
	2550 3700 2600 3700
Wire Wire Line
	2700 3800 2700 3700
Wire Wire Line
	2700 3700 2600 3700
$Comp
L Device:C C15
U 1 1 5DEC2D6D
P 2850 3700
F 0 "C15" V 2598 3700 50  0000 C CNN
F 1 "C" V 2689 3700 50  0000 C CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 2888 3550 50  0001 C CNN
F 3 "~" H 2850 3700 50  0001 C CNN
	1    2850 3700
	0    1    1    0   
$EndComp
Connection ~ 2700 3700
$Comp
L power:GNDD #PWR020
U 1 1 5DEC43D7
P 3000 3700
F 0 "#PWR020" H 3000 3450 50  0001 C CNN
F 1 "GNDD" V 3004 3590 50  0000 R CNN
F 2 "" H 3000 3700 50  0001 C CNN
F 3 "" H 3000 3700 50  0001 C CNN
	1    3000 3700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3200 5100 3450 5100
Wire Wire Line
	1900 5750 1900 5900
Connection ~ 1900 5900
Wire Wire Line
	1650 5750 1650 5800
Connection ~ 1650 5800
$Comp
L power:+5V #PWR032
U 1 1 5DD01499
P 1900 5450
F 0 "#PWR032" H 1900 5300 50  0001 C CNN
F 1 "+5V" H 1915 5623 50  0000 C CNN
F 2 "" H 1900 5450 50  0001 C CNN
F 3 "" H 1900 5450 50  0001 C CNN
	1    1900 5450
	-1   0    0    -1  
$EndComp
$Comp
L power:+5V #PWR031
U 1 1 5DD01A9D
P 1650 5450
F 0 "#PWR031" H 1650 5300 50  0001 C CNN
F 1 "+5V" H 1665 5623 50  0000 C CNN
F 2 "" H 1650 5450 50  0001 C CNN
F 3 "" H 1650 5450 50  0001 C CNN
	1    1650 5450
	-1   0    0    -1  
$EndComp
$Comp
L lab_power_supply:HCPL2631SD U7
U 1 1 5DDA6742
P 7300 3250
F 0 "U7" H 7275 2813 60  0000 C CNN
F 1 "HCPL2631SD" H 7275 2919 60  0000 C CNN
F 2 "lab_power_supply:HCPL2631SD" H 7300 3200 60  0001 C CNN
F 3 "" H 7300 3200 60  0001 C CNN
	1    7300 3250
	-1   0    0    1   
$EndComp
Wire Wire Line
	6650 3200 6900 3200
Wire Wire Line
	6900 3300 6650 3300
$Comp
L Device:Q_NMOS_DGS Q4
U 1 1 5DDA674F
P 8950 2750
F 0 "Q4" H 9155 2796 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 9155 2705 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 9150 2850 50  0001 C CNN
F 3 "~" H 8950 2750 50  0001 C CNN
	1    8950 2750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R12
U 1 1 5DDA6759
P 9000 2400
F 0 "R12" V 8950 2550 50  0000 C CNN
F 1 "330" V 9050 2600 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 2400 50  0001 C CNN
F 3 "~" H 9000 2400 50  0001 C CNN
	1    9000 2400
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 2400 8850 2550
$Comp
L Device:Q_NMOS_DGS Q5
U 1 1 5DDA6764
P 8950 3500
F 0 "Q5" H 9155 3546 50  0000 L CNN
F 1 "Q_NMOS_DGS" H 9155 3455 50  0000 L CNN
F 2 "TO_SOT_Packages_SMD:SuperSOT-3" H 9150 3600 50  0001 C CNN
F 3 "~" H 8950 3500 50  0001 C CNN
	1    8950 3500
	-1   0    0    -1  
$EndComp
$Comp
L Device:R R13
U 1 1 5DDA676E
P 9000 3150
F 0 "R13" V 8950 3300 50  0000 C CNN
F 1 "330" V 9050 3350 50  0000 C CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 8930 3150 50  0001 C CNN
F 3 "~" H 9000 3150 50  0001 C CNN
	1    9000 3150
	0    1    1    0   
$EndComp
Wire Wire Line
	8850 3150 8850 3300
Wire Wire Line
	9150 2400 9400 2400
Wire Wire Line
	9400 2400 9400 3150
Wire Wire Line
	9400 3150 9150 3150
Wire Wire Line
	8850 2950 9300 2950
Wire Wire Line
	7750 3300 7850 3300
Wire Wire Line
	7750 3200 7850 3200
Connection ~ 7850 3200
Wire Wire Line
	7850 3200 7850 3300
Wire Wire Line
	7750 3400 7950 3400
Wire Wire Line
	7950 3400 7950 3150
Wire Wire Line
	7950 3150 8850 3150
Connection ~ 8850 3150
Wire Wire Line
	8850 2400 7950 2400
Wire Wire Line
	7950 2400 7950 3100
Wire Wire Line
	7950 3100 7750 3100
Connection ~ 8850 2400
$Comp
L Device:C C13
U 1 1 5DDA6796
P 5800 3250
F 0 "C13" H 6000 3200 50  0000 R CNN
F 1 "0.1u" H 6050 3300 50  0000 R CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5838 3100 50  0001 C CNN
F 3 "~" H 5800 3250 50  0001 C CNN
	1    5800 3250
	-1   0    0    1   
$EndComp
Connection ~ 7850 1800
$Comp
L lab_power_supply:Isolated_ISP J5
U 1 1 5DDDD6E5
P 10250 1600
F 0 "J5" H 10300 1917 50  0000 C CNN
F 1 "Isolated_ISP" H 10300 1826 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x08_Pitch2.54mm" H 10250 1600 50  0001 C CNN
F 3 "~" H 10250 1600 50  0001 C CNN
	1    10250 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 4900 9750 1500
Wire Wire Line
	9750 1500 10050 1500
$Comp
L Device:R R23
U 1 1 5DE001F9
P 3400 5750
F 0 "R23" H 3330 5704 50  0000 R CNN
F 1 "10k" H 3330 5795 50  0000 R CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 3330 5750 50  0001 C CNN
F 3 "~" H 3400 5750 50  0001 C CNN
	1    3400 5750
	-1   0    0    1   
$EndComp
Connection ~ 3400 5600
$Comp
L power:+5V #PWR033
U 1 1 5DE019EC
P 3400 5900
F 0 "#PWR033" H 3400 5750 50  0001 C CNN
F 1 "+5V" H 3415 6073 50  0000 C CNN
F 2 "" H 3400 5900 50  0001 C CNN
F 3 "" H 3400 5900 50  0001 C CNN
	1    3400 5900
	-1   0    0    1   
$EndComp
Wire Wire Line
	9500 2000 9500 1600
Wire Wire Line
	9500 1600 10050 1600
Wire Wire Line
	9500 2000 9150 2000
Wire Wire Line
	6850 700  9400 700 
Wire Wire Line
	5800 3100 6750 3100
Wire Wire Line
	5800 1600 6750 1600
Wire Wire Line
	6850 1900 6850 700 
Connection ~ 6850 1900
Wire Wire Line
	6850 1900 6900 1900
Wire Wire Line
	5800 1900 6850 1900
Wire Wire Line
	5800 3400 6850 3400
Wire Wire Line
	6850 1900 6850 3400
Connection ~ 6850 3400
Wire Wire Line
	6850 3400 6900 3400
Wire Wire Line
	9400 900  9400 700 
Connection ~ 9400 900 
Connection ~ 9400 700 
Wire Wire Line
	9400 1650 9400 2400
Connection ~ 9400 1650
Connection ~ 9400 2400
Wire Wire Line
	7850 1800 7850 3200
Wire Wire Line
	9300 2950 9300 2200
Connection ~ 9300 2950
Connection ~ 9300 2200
Wire Wire Line
	8850 3700 8850 3900
Wire Wire Line
	8850 3900 9300 3900
Wire Wire Line
	9300 2950 9300 3900
Wire Wire Line
	8850 3900 7850 3900
Wire Wire Line
	6750 3900 6750 3100
Connection ~ 8850 3900
Connection ~ 6750 3100
Wire Wire Line
	6750 3100 6900 3100
Wire Wire Line
	6750 1600 6750 3100
Connection ~ 6750 1600
Wire Wire Line
	6750 1600 6900 1600
Wire Wire Line
	7850 3300 7850 3900
Connection ~ 7850 3300
Connection ~ 7850 3900
Wire Wire Line
	7850 3900 6750 3900
Wire Wire Line
	9300 3900 10650 3900
Wire Wire Line
	10650 3900 10650 1700
Wire Wire Line
	10650 1700 10550 1700
Connection ~ 9300 3900
Wire Wire Line
	10550 1500 10650 1500
Wire Wire Line
	10650 1500 10650 700 
Wire Wire Line
	9400 700  10650 700 
Wire Wire Line
	9950 1800 10050 1800
Wire Wire Line
	10050 1700 9850 1700
Text GLabel 6650 3300 0    60   Input ~ 0
SLAVE_CS
Text GLabel 6650 3200 0    60   Input ~ 0
SLAVE_RESET
Wire Wire Line
	9850 1700 9850 2750
Wire Wire Line
	9850 2750 9150 2750
Wire Wire Line
	9950 3500 9950 1800
Wire Wire Line
	9150 3500 9950 3500
Wire Wire Line
	10750 1600 10750 1250
Wire Wire Line
	9150 1250 10750 1250
Wire Wire Line
	10550 1600 10750 1600
NoConn ~ 11700 3950
Wire Wire Line
	3450 5200 3200 5200
Wire Wire Line
	2000 5900 1900 5900
Wire Wire Line
	2000 5800 1650 5800
Wire Wire Line
	1500 6000 2000 6000
$Comp
L power:+5V #PWR027
U 1 1 5DD419C2
P 4200 5050
F 0 "#PWR027" H 4200 4900 50  0001 C CNN
F 1 "+5V" H 4215 5223 50  0000 C CNN
F 2 "" H 4200 5050 50  0001 C CNN
F 3 "" H 4200 5050 50  0001 C CNN
	1    4200 5050
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR028
U 1 1 5DD42300
P 4450 5050
F 0 "#PWR028" H 4450 4900 50  0001 C CNN
F 1 "+5V" H 4465 5223 50  0000 C CNN
F 2 "" H 4450 5050 50  0001 C CNN
F 3 "" H 4450 5050 50  0001 C CNN
	1    4450 5050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR035
U 1 1 5DD42F65
P 4450 6050
F 0 "#PWR035" H 4450 5800 50  0001 C CNN
F 1 "GNDD" H 4454 5895 50  0000 C CNN
F 2 "" H 4450 6050 50  0001 C CNN
F 3 "" H 4450 6050 50  0001 C CNN
	1    4450 6050
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR034
U 1 1 5DD4257C
P 4200 6050
F 0 "#PWR034" H 4200 5800 50  0001 C CNN
F 1 "GNDD" H 4204 5895 50  0000 C CNN
F 2 "" H 4200 6050 50  0001 C CNN
F 3 "" H 4200 6050 50  0001 C CNN
	1    4200 6050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 5400 4200 5550
Connection ~ 4200 5400
Wire Wire Line
	3200 5400 4200 5400
Wire Wire Line
	3200 5500 4450 5500
Wire Wire Line
	4450 5500 4450 5550
Connection ~ 4450 5500
Wire Wire Line
	4450 5350 4450 5500
Wire Wire Line
	4200 5350 4200 5400
$Comp
L Device:R R19
U 1 1 5DD26697
P 4200 5200
F 0 "R19" H 4270 5246 50  0000 L CNN
F 1 "R" H 4270 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4130 5200 50  0001 C CNN
F 3 "~" H 4200 5200 50  0001 C CNN
	1    4200 5200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R20
U 1 1 5DD25C52
P 4450 5200
F 0 "R20" H 4520 5246 50  0000 L CNN
F 1 "R" H 4520 5155 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4380 5200 50  0001 C CNN
F 3 "~" H 4450 5200 50  0001 C CNN
	1    4450 5200
	1    0    0    -1  
$EndComp
Text GLabel 3450 5300 2    60   Input ~ 0
UNREG_MON
NoConn ~ 3200 4800
NoConn ~ 3200 4700
NoConn ~ 3200 4200
NoConn ~ 3200 4100
NoConn ~ 3200 5000
Wire Wire Line
	3200 5300 3450 5300
NoConn ~ 3200 6500
NoConn ~ 3200 6400
NoConn ~ 3200 6300
NoConn ~ 3200 6200
NoConn ~ 3200 6100
NoConn ~ 3200 6000
NoConn ~ 3200 5900
Wire Wire Line
	1900 5900 1550 5900
Wire Wire Line
	1650 5800 1550 5800
Text GLabel 1550 5900 0    60   Input ~ 0
ADC_SCL
Text GLabel 1550 5800 0    60   Input ~ 0
ADC_SDA
Text GLabel 1550 6100 0    60   Input ~ 0
DAC_SDI
Text GLabel 1500 6000 0    60   Input ~ 0
DAC_CS
Text GLabel 3450 5100 2    60   Input ~ 0
DAC_SCK
Text GLabel 3450 5200 2    60   Input ~ 0
DAC_LDAC
Wire Wire Line
	1550 6100 2000 6100
Text GLabel 4550 3650 1    60   Input ~ 0
SLAVE_RESET
$Comp
L Device:R R17
U 1 1 5DE51582
P 4550 3900
F 0 "R17" H 4620 3946 50  0000 L CNN
F 1 "100" H 4620 3855 50  0000 L CNN
F 2 "Resistors_SMD:R_0805_HandSoldering" V 4480 3900 50  0001 C CNN
F 3 "~" H 4550 3900 50  0001 C CNN
	1    4550 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4550 4050 4550 4200
Connection ~ 4550 4200
Wire Wire Line
	4550 4200 4600 4200
Wire Wire Line
	4550 3750 4550 3650
NoConn ~ 3200 5800
$Comp
L Connector_Generic:Conn_02x01 J7
U 1 1 5DE6EFB6
P 4200 5750
F 0 "J7" V 4200 5600 50  0000 L CNN
F 1 "THERM0" V 4300 5400 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4200 5750 50  0001 C CNN
F 3 "~" H 4200 5750 50  0001 C CNN
	1    4200 5750
	0    1    1    0   
$EndComp
$Comp
L Connector_Generic:Conn_02x01 J8
U 1 1 5DE6FB9D
P 4450 5750
F 0 "J8" V 4454 5830 50  0000 L CNN
F 1 "THERM1" V 4550 5850 50  0000 L CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x02_Pitch2.54mm" H 4450 5750 50  0001 C CNN
F 3 "~" H 4450 5750 50  0001 C CNN
	1    4450 5750
	0    1    1    0   
$EndComp
$Comp
L power:+5V #PWR024
U 1 1 5DE715DD
P 9900 4650
F 0 "#PWR024" H 9900 4500 50  0001 C CNN
F 1 "+5V" H 9915 4823 50  0000 C CNN
F 2 "" H 9900 4650 50  0001 C CNN
F 3 "" H 9900 4650 50  0001 C CNN
	1    9900 4650
	1    0    0    -1  
$EndComp
Connection ~ 9900 4700
Wire Wire Line
	9900 5000 9900 5100
Connection ~ 9900 5000
Wire Wire Line
	9900 4650 9900 4700
$Comp
L Device:C C16
U 1 1 5DD76A41
P 1900 4300
F 0 "C16" H 1700 4350 50  0000 L CNN
F 1 "0.1u" H 1600 4250 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 1938 4150 50  0001 C CNN
F 3 "~" H 1900 4300 50  0001 C CNN
	1    1900 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	1900 4150 1900 4100
Wire Wire Line
	1900 4100 2000 4100
$Comp
L MCU_Microchip_ATmega:ATmega328PB-AU U9
U 1 1 5DD5F79A
P 2600 5300
F 0 "U9" H 2000 3700 50  0000 C CNN
F 1 "ATmega328PB-AU" H 2000 3800 50  0000 C CNN
F 2 "Housings_QFP:TQFP-32_7x7mm_Pitch0.8mm" H 2600 5300 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/40001906C.pdf" H 2600 5300 50  0001 C CNN
	1    2600 5300
	1    0    0    -1  
$EndComp
$Comp
L power:GNDD #PWR022
U 1 1 5DD7F113
P 1900 4450
F 0 "#PWR022" H 1900 4200 50  0001 C CNN
F 1 "GNDD" H 1904 4295 50  0000 C CNN
F 2 "" H 1900 4450 50  0001 C CNN
F 3 "" H 1900 4450 50  0001 C CNN
	1    1900 4450
	1    0    0    -1  
$EndComp
$EndSCHEMATC
