EESchema Schematic File Version 4
LIBS:pcb_fpanel2-cache
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
$Comp
L fpanel_symbols:SW_Push_LED SW2
U 1 1 5DD5BF8A
P 5050 3100
F 0 "SW2" H 5050 3485 50  0000 C CNN
F 1 "SW_Push_LED" H 5050 3394 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 5050 3400 50  0001 C CNN
F 3 "~" H 5050 3400 50  0001 C CNN
	1    5050 3100
	1    0    0    -1  
$EndComp
$Comp
L fpanel_symbols:SW_Push_LED SW3
U 1 1 5DD5E9E2
P 7900 3100
F 0 "SW3" H 7900 3485 50  0000 C CNN
F 1 "SW_Push_LED" H 7900 3394 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 7900 3400 50  0001 C CNN
F 3 "~" H 7900 3400 50  0001 C CNN
	1    7900 3100
	1    0    0    -1  
$EndComp
$Comp
L fpanel_symbols:SW_Push_LED SW4
U 1 1 5DD949E9
P 6000 3100
F 0 "SW4" H 6000 3485 50  0000 C CNN
F 1 "SW_Push_LED" H 6000 3394 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 6000 3400 50  0001 C CNN
F 3 "~" H 6000 3400 50  0001 C CNN
	1    6000 3100
	1    0    0    -1  
$EndComp
$Comp
L fpanel_symbols:SW_Push_LED SW5
U 1 1 5DD949F3
P 6750 3100
F 0 "SW5" H 6750 3485 50  0000 C CNN
F 1 "SW_Push_LED" H 6750 3394 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 6750 3400 50  0001 C CNN
F 3 "~" H 6750 3400 50  0001 C CNN
	1    6750 3100
	1    0    0    -1  
$EndComp
$Comp
L Device:D D3
U 1 1 5DD9B852
P 7550 2850
F 0 "D3" V 7596 2771 50  0000 R CNN
F 1 "D" V 7505 2771 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 7550 2850 50  0001 C CNN
F 3 "~" H 7550 2850 50  0001 C CNN
	1    7550 2850
	0    1    1    0   
$EndComp
$Comp
L Device:D D4
U 1 1 5DD9DE5F
P 5700 2850
F 0 "D4" V 5746 2771 50  0000 R CNN
F 1 "D" V 5655 2771 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5700 2850 50  0001 C CNN
F 3 "~" H 5700 2850 50  0001 C CNN
	1    5700 2850
	0    1    1    0   
$EndComp
$Comp
L Device:D D5
U 1 1 5DDA0CCC
P 6450 2850
F 0 "D5" V 6496 2771 50  0000 R CNN
F 1 "D" V 6405 2771 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6450 2850 50  0001 C CNN
F 3 "~" H 6450 2850 50  0001 C CNN
	1    6450 2850
	0    1    1    0   
$EndComp
$Comp
L Device:D D1
U 1 1 5DDAB39F
P 3800 2850
F 0 "D1" V 3846 2771 50  0000 R CNN
F 1 "D" V 3755 2771 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3800 2850 50  0001 C CNN
F 3 "~" H 3800 2850 50  0001 C CNN
	1    3800 2850
	0    1    1    0   
$EndComp
$Comp
L Device:D D2
U 1 1 5DDAB395
P 4750 2850
F 0 "D2" V 4796 2771 50  0000 R CNN
F 1 "D" V 4705 2771 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4750 2850 50  0001 C CNN
F 3 "~" H 4750 2850 50  0001 C CNN
	1    4750 2850
	0    1    1    0   
$EndComp
$Comp
L fpanel_symbols:SW_Push_LED SW1
U 1 1 5DD5A756
P 4100 3100
F 0 "SW1" H 4100 3485 50  0000 C CNN
F 1 "SW_Push_LED" H 4100 3394 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 4100 3400 50  0001 C CNN
F 3 "~" H 4100 3400 50  0001 C CNN
	1    4100 3100
	1    0    0    -1  
$EndComp
Connection ~ 4750 2700
Wire Wire Line
	4750 2700 3800 2700
Wire Wire Line
	3900 3000 3800 3000
Wire Wire Line
	4850 3000 4750 3000
Wire Wire Line
	7700 3000 7550 3000
Wire Wire Line
	5800 3000 5700 3000
Wire Wire Line
	6550 3000 6450 3000
Wire Wire Line
	4300 3000 4450 3000
Wire Wire Line
	4450 3000 4450 3950
Wire Wire Line
	5250 3000 5400 3000
Wire Wire Line
	6350 3000 6200 3000
Wire Wire Line
	4850 3100 4750 3100
Wire Wire Line
	4750 3100 4750 3350
Wire Wire Line
	3900 3100 3800 3100
Wire Wire Line
	3800 3100 3800 3350
Wire Wire Line
	4300 3100 4300 3600
Wire Wire Line
	5250 3100 5250 3750
Wire Wire Line
	4750 3350 3800 3350
Connection ~ 3800 3350
Wire Wire Line
	4450 3950 3750 3950
Wire Wire Line
	3750 3950 3750 4400
Wire Wire Line
	5400 4050 3850 4050
Wire Wire Line
	3850 4050 3850 4400
Wire Wire Line
	5400 3000 5400 4050
Wire Wire Line
	6350 4150 3950 4150
Wire Wire Line
	3950 4150 3950 4400
Wire Wire Line
	6350 3000 6350 4150
Wire Wire Line
	7250 4250 4050 4250
Wire Wire Line
	4050 4250 4050 4400
Wire Wire Line
	7250 3000 7250 4250
Wire Wire Line
	8200 4350 4150 4350
Wire Wire Line
	4150 4350 4150 4400
Wire Wire Line
	8200 3000 8200 4350
Wire Wire Line
	3800 2700 3650 2700
Wire Wire Line
	3650 2700 3650 4400
Connection ~ 3800 2700
Wire Wire Line
	3350 3750 3350 4400
Wire Wire Line
	3350 3750 5250 3750
Wire Wire Line
	3550 4400 3550 3600
Wire Wire Line
	3550 3600 4300 3600
Wire Wire Line
	3450 4400 3450 3350
Wire Wire Line
	3450 3350 3800 3350
Text GLabel 6800 5600 1    50   Input ~ 0
row_1
Text GLabel 6700 5600 1    50   Input ~ 0
column_1
Text GLabel 6600 5600 1    50   Input ~ 0
column_2
Text GLabel 6300 5600 1    50   Input ~ 0
column_3
Text GLabel 6200 5600 1    50   Input ~ 0
column_4
Text GLabel 6400 5600 1    50   Input ~ 0
column_5
$Comp
L Connector_Generic:Conn_01x10 J1
U 1 1 5DD8142F
P 6700 5800
F 0 "J1" V 6825 5746 50  0000 C CNN
F 1 "Conn_01x10" V 6916 5746 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_1x10_Pitch2.54mm" H 6700 5800 50  0001 C CNN
F 3 "~" H 6700 5800 50  0001 C CNN
	1    6700 5800
	0    1    1    0   
$EndComp
Text GLabel 6500 5600 1    50   Input ~ 0
row_2
Text GLabel 6900 5600 1    50   Input ~ 0
led_1
Text GLabel 7000 5600 1    50   Input ~ 0
led_2
$Comp
L power:GNDD #PWR0101
U 1 1 5DD848AD
P 7100 5600
F 0 "#PWR0101" H 7100 5350 50  0001 C CNN
F 1 "GNDD" H 7104 5445 50  0000 C CNN
F 2 "" H 7100 5600 50  0001 C CNN
F 3 "" H 7100 5600 50  0001 C CNN
	1    7100 5600
	-1   0    0    1   
$EndComp
Text GLabel 3350 4400 3    50   Input ~ 0
led_1
Text GLabel 3550 4400 3    50   Input ~ 0
led_2
$Comp
L power:GNDD #PWR0102
U 1 1 5DD88EEC
P 3450 4400
F 0 "#PWR0102" H 3450 4150 50  0001 C CNN
F 1 "GNDD" H 3454 4245 50  0000 C CNN
F 2 "" H 3450 4400 50  0001 C CNN
F 3 "" H 3450 4400 50  0001 C CNN
	1    3450 4400
	1    0    0    -1  
$EndComp
Text GLabel 3650 4400 3    50   Input ~ 0
row_1
Text GLabel 3750 4400 3    50   Input ~ 0
column_1
Text GLabel 3850 4400 3    50   Input ~ 0
column_2
Text GLabel 3950 4400 3    50   Input ~ 0
column_3
Text GLabel 4050 4400 3    50   Input ~ 0
column_4
Text GLabel 4150 4400 3    50   Input ~ 0
column_5
$Comp
L fpanel_symbols:SW_Push_LED SW6
U 1 1 5DD8B769
P 4100 1950
F 0 "SW6" H 4100 2335 50  0000 C CNN
F 1 "SW_Push_LED" H 4100 2244 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 4100 2250 50  0001 C CNN
F 3 "~" H 4100 2250 50  0001 C CNN
	1    4100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D6
U 1 1 5DD8B773
P 3750 1700
F 0 "D6" V 3796 1621 50  0000 R CNN
F 1 "D" V 3705 1621 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 3750 1700 50  0001 C CNN
F 3 "~" H 3750 1700 50  0001 C CNN
	1    3750 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	3900 1850 3750 1850
Wire Wire Line
	4450 1850 4300 1850
Wire Wire Line
	4450 1850 4450 3000
Connection ~ 4450 3000
$Comp
L fpanel_symbols:SW_Push_LED SW7
U 1 1 5DD8DB44
P 5050 1950
F 0 "SW7" H 5050 2335 50  0000 C CNN
F 1 "SW_Push_LED" H 5050 2244 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 5050 2250 50  0001 C CNN
F 3 "~" H 5050 2250 50  0001 C CNN
	1    5050 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D7
U 1 1 5DD8DB4E
P 4700 1700
F 0 "D7" V 4746 1621 50  0000 R CNN
F 1 "D" V 4655 1621 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 4700 1700 50  0001 C CNN
F 3 "~" H 4700 1700 50  0001 C CNN
	1    4700 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	4850 1850 4700 1850
Wire Wire Line
	5400 1850 5250 1850
Wire Wire Line
	5400 1850 5400 3000
Connection ~ 5400 3000
$Comp
L fpanel_symbols:SW_Push_LED SW8
U 1 1 5DD91C6A
P 6000 1950
F 0 "SW8" H 6000 2335 50  0000 C CNN
F 1 "SW_Push_LED" H 6000 2244 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 6000 2250 50  0001 C CNN
F 3 "~" H 6000 2250 50  0001 C CNN
	1    6000 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D8
U 1 1 5DD91C74
P 5650 1700
F 0 "D8" V 5696 1621 50  0000 R CNN
F 1 "D" V 5605 1621 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 5650 1700 50  0001 C CNN
F 3 "~" H 5650 1700 50  0001 C CNN
	1    5650 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	5800 1850 5650 1850
Wire Wire Line
	6350 1850 6200 1850
Wire Wire Line
	6350 1850 6350 3000
Connection ~ 6350 3000
$Comp
L fpanel_symbols:SW_Push_LED SW9
U 1 1 5DD93AE2
P 6900 1950
F 0 "SW9" H 6900 2335 50  0000 C CNN
F 1 "SW_Push_LED" H 6900 2244 50  0000 C CNN
F 2 "MX_Alps_Hybrid:MX-1U" H 6900 2250 50  0001 C CNN
F 3 "~" H 6900 2250 50  0001 C CNN
	1    6900 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:D D9
U 1 1 5DD93AEC
P 6550 1700
F 0 "D9" V 6596 1621 50  0000 R CNN
F 1 "D" V 6505 1621 50  0000 R CNN
F 2 "Diodes_THT:D_DO-35_SOD27_P7.62mm_Horizontal" H 6550 1700 50  0001 C CNN
F 3 "~" H 6550 1700 50  0001 C CNN
	1    6550 1700
	0    1    1    0   
$EndComp
Wire Wire Line
	6700 1850 6550 1850
Wire Wire Line
	7250 1850 7100 1850
Wire Wire Line
	7250 1850 7250 3000
Connection ~ 7250 3000
Text GLabel 3050 4400 3    50   Input ~ 0
row_2
Wire Wire Line
	3050 4400 3050 1550
Wire Wire Line
	3050 1550 3750 1550
Connection ~ 3750 1550
Wire Wire Line
	3750 1550 4700 1550
Connection ~ 4700 1550
Wire Wire Line
	4700 1550 5650 1550
Connection ~ 5650 1550
Wire Wire Line
	5650 1550 6550 1550
Connection ~ 6450 2700
Wire Wire Line
	6450 2700 7550 2700
Wire Wire Line
	6950 3000 7250 3000
Wire Wire Line
	8200 3000 8100 3000
Connection ~ 8100 3000
Wire Wire Line
	8100 3000 8050 3000
Wire Wire Line
	4750 2700 5700 2700
Connection ~ 5700 2700
Wire Wire Line
	5700 2700 6450 2700
$EndSCHEMATC
