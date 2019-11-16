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
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5DCA5610
P 4600 2450
F 0 "J1" H 4518 2125 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 4518 2216 50  0000 C CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 4600 2450 50  0001 C CNN
F 3 "~" H 4600 2450 50  0001 C CNN
	1    4600 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J4
U 1 1 5DCA7480
P 8900 2350
F 0 "J4" H 8980 2342 50  0000 L CNN
F 1 "Screw_Terminal_01x02" H 8980 2251 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 8900 2350 50  0001 C CNN
F 3 "~" H 8900 2350 50  0001 C CNN
	1    8900 2350
	1    0    0    -1  
$EndComp
$Comp
L Device:Fuse F1
U 1 1 5DCAA794
P 5350 2350
F 0 "F1" V 5153 2350 50  0000 C CNN
F 1 "Fuse" V 5244 2350 50  0000 C CNN
F 2 "Fuse_Holders_and_Fuses:Fuseholder5x20_horiz_open_Schurter_0031_8201" V 5280 2350 50  0001 C CNN
F 3 "~" H 5350 2350 50  0001 C CNN
	1    5350 2350
	0    1    1    0   
$EndComp
$Comp
L Converter_ACDC:HLK-PM01 PS1
U 1 1 5DCAC971
P 5700 3250
F 0 "PS1" V 5654 3438 50  0000 L CNN
F 1 "HLK-PM01" V 5745 3438 50  0000 L CNN
F 2 "IRM-05_ACDC:IRM-05_ACDC" H 5700 2950 50  0001 C CNN
F 3 "http://www.hlktech.net/product_detail.php?ProId=54" H 6100 2900 50  0001 C CNN
	1    5700 3250
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J3
U 1 1 5DCAFA9E
P 5800 4150
F 0 "J3" V 5672 4230 50  0000 L CNN
F 1 "Screw_Terminal_01x02" V 5763 4230 50  0000 L CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5800 4150 50  0001 C CNN
F 3 "~" H 5800 4150 50  0001 C CNN
	1    5800 4150
	0    1    1    0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J2
U 1 1 5DCB700D
P 5700 1100
F 0 "J2" V 5664 912 50  0000 R CNN
F 1 "Screw_Terminal_01x02" V 5573 912 50  0000 R CNN
F 2 "Connectors_Terminal_Blocks:TerminalBlock_bornier-2_P5.08mm" H 5700 1100 50  0001 C CNN
F 3 "~" H 5700 1100 50  0001 C CNN
	1    5700 1100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4800 2350 5200 2350
Wire Wire Line
	4800 2450 5600 2450
Wire Wire Line
	5600 2450 5600 2850
Wire Wire Line
	5500 2350 5800 2350
Wire Wire Line
	5800 2350 5800 2850
$Comp
L Relay:AZ850P1-x K1
U 1 1 5DCBA6BF
P 7700 2250
F 0 "K1" V 6933 2250 50  0000 C CNN
F 1 "AZ850P1-x" V 7024 2250 50  0000 C CNN
F 2 "Relays_THT:Relay_DPDT_AXICOM_IMSeries_Pitch3.2mm" H 8250 2300 50  0001 C CNN
F 3 "http://www.azettler.com/pdfs/az850.pdf" H 7500 2250 50  0001 C CNN
	1    7700 2250
	0    1    1    0   
$EndComp
Wire Wire Line
	7400 1850 5700 1850
Wire Wire Line
	5700 1850 5700 1300
Wire Wire Line
	5800 1300 8000 1300
Wire Wire Line
	8000 1300 8000 1850
Wire Wire Line
	8000 2350 8700 2350
Wire Wire Line
	8000 2750 8450 2750
Wire Wire Line
	8450 2750 8450 2450
Wire Wire Line
	8450 2450 8700 2450
Wire Wire Line
	5600 2450 7250 2450
Wire Wire Line
	7250 2450 7250 2650
Wire Wire Line
	7250 2650 7400 2650
Connection ~ 5600 2450
Wire Wire Line
	5800 2350 7250 2350
Wire Wire Line
	7250 2350 7250 2250
Wire Wire Line
	7250 2250 7400 2250
Connection ~ 5800 2350
Wire Wire Line
	5600 3650 5600 3850
Wire Wire Line
	5600 3850 5700 3850
Wire Wire Line
	5700 3850 5700 3950
Wire Wire Line
	5800 3650 5800 3950
$EndSCHEMATC
