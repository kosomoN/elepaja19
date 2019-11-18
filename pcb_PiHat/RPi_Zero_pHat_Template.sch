EESchema Schematic File Version 4
EELAYER 30 0
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
Text Notes 4600 4500 0    100  Italic 0
Thru-Hole Connector
$Comp
L Connector-ML:RPi_GPIO J1
U 1 1 5516AE26
P 4650 2200
F 0 "J1" H 5400 2450 60  0000 C CNN
F 1 "RPi_GPIO" H 5400 2350 60  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x20_P2.54mm_Vertical" H 4650 2200 60  0001 C CNN
F 3 "" H 4650 2200 60  0000 C CNN
	1    4650 2200
	1    0    0    -1  
$EndComp
$Comp
L lab_power_supply:Isolated_ISP J2
U 1 1 5DD21625
P 2700 3100
F 0 "J2" H 2750 3417 50  0000 C CNN
F 1 "Isolated_ISP" H 2750 3326 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 2700 3100 50  0001 C CNN
F 3 "~" H 2700 3100 50  0001 C CNN
	1    2700 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	2500 3100 2350 3100
Wire Wire Line
	2350 3100 2350 2750
Wire Wire Line
	2350 2750 3750 2750
Wire Wire Line
	3750 2750 3750 3300
Wire Wire Line
	3750 3300 4450 3300
Wire Wire Line
	3400 3100 4450 3100
Wire Wire Line
	3400 3000 4050 3000
Wire Wire Line
	2500 3300 2350 3300
Wire Wire Line
	2350 3300 2350 4800
Wire Wire Line
	2350 4800 6800 4800
Wire Wire Line
	6800 4800 6800 3300
Wire Wire Line
	6800 3300 6350 3300
Wire Wire Line
	2500 3200 2400 3200
Wire Wire Line
	2400 3200 2400 3600
Wire Wire Line
	2400 3600 4450 3600
$Comp
L lab_power_supply:Isolated_ISP J3
U 1 1 5DD148A1
P 7750 3900
F 0 "J3" H 7800 4217 50  0000 C CNN
F 1 "Isolated_ISP" H 7800 4126 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x08_P2.54mm_Vertical" H 7750 3900 50  0001 C CNN
F 3 "~" H 7750 3900 50  0001 C CNN
	1    7750 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 3900 4250 3900
Wire Wire Line
	4250 3900 4250 4700
Wire Wire Line
	4250 4700 6700 4700
Wire Wire Line
	6700 3800 6700 4700
Wire Wire Line
	6700 3800 7550 3800
Wire Wire Line
	6350 4000 6600 4000
Wire Wire Line
	6600 4000 6600 4300
Wire Wire Line
	6350 4100 6900 4100
Wire Wire Line
	6900 4100 6900 3900
Wire Wire Line
	6900 3900 7550 3900
Wire Wire Line
	6350 3200 7000 3200
Wire Wire Line
	7000 3200 7000 4000
Wire Wire Line
	7000 4000 7550 4000
Wire Wire Line
	7550 4100 7100 4100
Wire Wire Line
	7100 4100 7100 1850
Wire Wire Line
	7100 1850 3950 1850
Wire Wire Line
	3950 1850 3950 2700
Wire Wire Line
	3950 2700 4450 2700
Wire Wire Line
	4450 3200 3850 3200
Wire Wire Line
	3850 3200 3850 2650
Wire Wire Line
	2250 2650 2250 3000
Wire Wire Line
	2250 3000 2500 3000
Wire Wire Line
	2250 2650 3850 2650
Wire Wire Line
	4050 3000 4050 2200
Wire Wire Line
	4450 2200 4050 2200
Connection ~ 4050 2200
Wire Wire Line
	4050 2200 4050 1750
$Comp
L power:+3.3V #PWR0101
U 1 1 5DD0CBF0
P 4450 2200
F 0 "#PWR0101" H 4450 2050 50  0001 C CNN
F 1 "+3.3V" H 4465 2373 50  0000 C CNN
F 2 "" H 4450 2200 50  0001 C CNN
F 3 "" H 4450 2200 50  0001 C CNN
	1    4450 2200
	1    0    0    -1  
$EndComp
Connection ~ 4450 2200
$Comp
L power:GND #PWR0102
U 1 1 5DD0EF16
P 4450 2600
F 0 "#PWR0102" H 4450 2350 50  0001 C CNN
F 1 "GND" V 4455 2472 50  0000 R CNN
F 2 "" H 4450 2600 50  0001 C CNN
F 3 "" H 4450 2600 50  0001 C CNN
	1    4450 2600
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 5DD10103
P 4450 4100
F 0 "#PWR0103" H 4450 3850 50  0001 C CNN
F 1 "GND" V 4455 3972 50  0000 R CNN
F 2 "" H 4450 4100 50  0001 C CNN
F 3 "" H 4450 4100 50  0001 C CNN
	1    4450 4100
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 5DD106B8
P 6350 3800
F 0 "#PWR0104" H 6350 3550 50  0001 C CNN
F 1 "GND" V 6355 3672 50  0000 R CNN
F 2 "" H 6350 3800 50  0001 C CNN
F 3 "" H 6350 3800 50  0001 C CNN
	1    6350 3800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5DD11473
P 6350 2800
F 0 "#PWR0106" H 6350 2550 50  0001 C CNN
F 1 "GND" V 6355 2672 50  0000 R CNN
F 2 "" H 6350 2800 50  0001 C CNN
F 3 "" H 6350 2800 50  0001 C CNN
	1    6350 2800
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0107
U 1 1 5DD13380
P 4450 3400
F 0 "#PWR0107" H 4450 3150 50  0001 C CNN
F 1 "GND" V 4455 3272 50  0000 R CNN
F 2 "" H 4450 3400 50  0001 C CNN
F 3 "" H 4450 3400 50  0001 C CNN
	1    4450 3400
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR0108
U 1 1 5DD13738
P 3400 3200
F 0 "#PWR0108" H 3400 2950 50  0001 C CNN
F 1 "GND" V 3405 3072 50  0000 R CNN
F 2 "" H 3400 3200 50  0001 C CNN
F 3 "" H 3400 3200 50  0001 C CNN
	1    3400 3200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0109
U 1 1 5DD13E75
P 8450 4000
F 0 "#PWR0109" H 8450 3750 50  0001 C CNN
F 1 "GND" V 8455 3872 50  0000 R CNN
F 2 "" H 8450 4000 50  0001 C CNN
F 3 "" H 8450 4000 50  0001 C CNN
	1    8450 4000
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR0110
U 1 1 5DD15330
P 6350 3600
F 0 "#PWR0110" H 6350 3350 50  0001 C CNN
F 1 "GND" V 6355 3472 50  0000 R CNN
F 2 "" H 6350 3600 50  0001 C CNN
F 3 "" H 6350 3600 50  0001 C CNN
	1    6350 3600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8800 4300 8800 3900
Wire Wire Line
	8800 3900 8450 3900
Wire Wire Line
	6600 4300 8800 4300
Wire Wire Line
	8800 3800 8800 1750
Wire Wire Line
	4050 1750 8800 1750
Wire Wire Line
	8450 3800 8800 3800
$Comp
L lab_power_supply:Conn_Relay J4
U 1 1 5DD1ACB6
P 7750 2300
F 0 "J4" H 7980 2350 50  0000 L CNN
F 1 "Conn_Relay" H 7980 2259 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7750 2300 50  0001 C CNN
F 3 "~" H 7750 2300 50  0001 C CNN
	1    7750 2300
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2200 7500 2200
$Comp
L power:GND #PWR0111
U 1 1 5DD118A5
P 6500 2400
F 0 "#PWR0111" H 6500 2150 50  0001 C CNN
F 1 "GND" V 6505 2272 50  0000 R CNN
F 2 "" H 6500 2400 50  0001 C CNN
F 3 "" H 6500 2400 50  0001 C CNN
	1    6500 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 2400 6500 2400
Connection ~ 6500 2400
Wire Wire Line
	6500 2400 7550 2400
Wire Wire Line
	7400 2300 7550 2300
Wire Wire Line
	6350 2900 7400 2900
Wire Wire Line
	7400 2300 7400 2900
$Comp
L lab_power_supply:Conn_Relay J5
U 1 1 5DD5F069
P 7750 3000
F 0 "J5" H 7980 3050 50  0000 L CNN
F 1 "Conn_Relay" H 7980 2959 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 7750 3000 50  0001 C CNN
F 3 "~" H 7750 3000 50  0001 C CNN
	1    7750 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7550 2900 7500 2900
Wire Wire Line
	7500 2900 7500 2200
Connection ~ 7500 2200
Wire Wire Line
	7500 2200 6350 2200
Wire Wire Line
	7550 3000 6350 3000
Wire Wire Line
	7550 3100 7500 3100
$Comp
L power:GND #PWR0105
U 1 1 5DD73A6B
P 7500 3100
F 0 "#PWR0105" H 7500 2850 50  0001 C CNN
F 1 "GND" V 7505 2972 50  0000 R CNN
F 2 "" H 7500 3100 50  0001 C CNN
F 3 "" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
Connection ~ 7500 3100
Wire Wire Line
	7500 3100 6350 3100
$EndSCHEMATC
