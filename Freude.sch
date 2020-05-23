EESchema Schematic File Version 4
EELAYER 26 0
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
Text GLabel 3250 2950 0    50   Input ~ 0
XA00
Text GLabel 3250 3050 0    50   Input ~ 0
XA01
Text GLabel 3250 3150 0    50   Input ~ 0
XA02
Text GLabel 3250 3350 0    50   Input ~ 0
XA04
Text GLabel 3250 3550 0    50   Input ~ 0
XA06
Text GLabel 4800 3650 2    50   Input ~ 0
XA08
Text GLabel 4800 3450 2    50   Input ~ 0
XA10
Text GLabel 4800 3250 2    50   Input ~ 0
XA12
Text GLabel 4800 3050 2    50   Input ~ 0
XA14
Text GLabel 3250 3250 0    50   Input ~ 0
XA03
Text GLabel 3250 3450 0    50   Input ~ 0
XA05
Text GLabel 3250 3650 0    50   Input ~ 0
XA07
Text GLabel 4800 3550 2    50   Input ~ 0
XA09
Text GLabel 4800 3350 2    50   Input ~ 0
XA11
Text GLabel 4800 3150 2    50   Input ~ 0
XA13
Text GLabel 4800 2950 2    50   Input ~ 0
XA15
Wire Wire Line
	3400 1750 3250 1750
Text GLabel 3250 2850 0    50   Input ~ 0
YA11
Text GLabel 3250 1750 0    50   Input ~ 0
YA00
Text GLabel 3250 1850 0    50   Input ~ 0
YA01
Text GLabel 3250 1950 0    50   Input ~ 0
YA02
Text GLabel 3250 2050 0    50   Input ~ 0
YA03
Text GLabel 3250 2150 0    50   Input ~ 0
YA04
Text GLabel 3250 2250 0    50   Input ~ 0
YA05
Text GLabel 3250 2350 0    50   Input ~ 0
YA06
Text GLabel 3250 2450 0    50   Input ~ 0
YA07
Text GLabel 3250 2550 0    50   Input ~ 0
YA08
Text GLabel 3250 2650 0    50   Input ~ 0
YA09
Text GLabel 3250 2750 0    50   Input ~ 0
YA10
$Comp
L power:GND #PWR0101
U 1 1 5EC9B47D
P 3900 4050
F 0 "#PWR0101" H 3900 3800 50  0001 C CNN
F 1 "GND" H 3905 3877 50  0000 C CNN
F 2 "" H 3900 4050 50  0001 C CNN
F 3 "" H 3900 4050 50  0001 C CNN
	1    3900 4050
	1    0    0    -1  
$EndComp
$Comp
L 1CA027Pinnacle:1CA027Pinnacle U1
U 1 1 5EC9E03E
P 3900 1250
F 0 "U1" H 4025 1515 50  0000 C CNN
F 1 "1CA027Pinnacle" H 4025 1424 50  0000 C CNN
F 2 "1CA027Pinnacle:1CA027Pinnacle-TQFP48" H 3900 1250 50  0001 C CNN
F 3 "" H 3900 1250 50  0001 C CNN
	1    3900 1250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3250 1850 3400 1850
Wire Wire Line
	3400 1950 3250 1950
Wire Wire Line
	3250 2050 3400 2050
Wire Wire Line
	3400 2150 3250 2150
Wire Wire Line
	3250 2250 3400 2250
Wire Wire Line
	3400 2350 3250 2350
Wire Wire Line
	3250 2450 3400 2450
Wire Wire Line
	3400 2550 3250 2550
Wire Wire Line
	3250 2650 3400 2650
Wire Wire Line
	3400 2750 3250 2750
Wire Wire Line
	3250 2850 3400 2850
Wire Wire Line
	3250 2950 3400 2950
Wire Wire Line
	3400 3050 3250 3050
Wire Wire Line
	3250 3150 3400 3150
Wire Wire Line
	3400 3250 3250 3250
Wire Wire Line
	3250 3350 3400 3350
Wire Wire Line
	3400 3450 3250 3450
Wire Wire Line
	3250 3550 3400 3550
Wire Wire Line
	3400 3650 3250 3650
Wire Wire Line
	4650 2950 4800 2950
Wire Wire Line
	4650 3050 4800 3050
Wire Wire Line
	4800 3150 4650 3150
Wire Wire Line
	4650 3250 4800 3250
Wire Wire Line
	4800 3350 4650 3350
Wire Wire Line
	4650 3450 4800 3450
Wire Wire Line
	4800 3550 4650 3550
Wire Wire Line
	4650 3650 4800 3650
Wire Wire Line
	3900 3950 3900 4050
$EndSCHEMATC
