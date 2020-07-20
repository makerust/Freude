EESchema Schematic File Version 4
LIBS:Freude-cache
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
Text GLabel 4250 2400 2    50   Input ~ 0
XA00
Text GLabel 4250 2500 2    50   Input ~ 0
XA01
Text GLabel 4250 2600 2    50   Input ~ 0
XA02
Text GLabel 4250 2800 2    50   Input ~ 0
XA04
Text GLabel 4250 3000 2    50   Input ~ 0
XA06
Text GLabel 4250 2700 2    50   Input ~ 0
XA03
Text GLabel 4250 2900 2    50   Input ~ 0
XA05
Text GLabel 4250 3100 2    50   Input ~ 0
XA07
Wire Wire Line
	2800 2400 2650 2400
Text GLabel 2650 2400 0    50   Input ~ 0
YA00
Text GLabel 2650 2500 0    50   Input ~ 0
YA01
Text GLabel 2650 2600 0    50   Input ~ 0
YA02
Text GLabel 2650 2700 0    50   Input ~ 0
YA03
Text GLabel 2650 2800 0    50   Input ~ 0
YA04
Text GLabel 2650 2900 0    50   Input ~ 0
YA05
Wire Wire Line
	2650 2500 2800 2500
Wire Wire Line
	2800 2600 2650 2600
Wire Wire Line
	2650 2700 2800 2700
Wire Wire Line
	2800 2800 2650 2800
Wire Wire Line
	2650 2900 2800 2900
Wire Wire Line
	4250 2400 4100 2400
Wire Wire Line
	4100 2500 4250 2500
Wire Wire Line
	4250 2600 4100 2600
Wire Wire Line
	4100 2700 4250 2700
Wire Wire Line
	4250 2800 4100 2800
Wire Wire Line
	4100 2900 4250 2900
Wire Wire Line
	4250 3000 4100 3000
Wire Wire Line
	4100 3100 4250 3100
$Comp
L IQS572:IQS572 U1
U 1 1 5EE2238A
P 3450 1150
F 0 "U1" H 3450 1415 50  0000 C CNN
F 1 "IQS572" H 3450 1324 50  0000 C CNN
F 2 "IQS572_Library:IQS572" H 3200 1500 50  0001 C CNN
F 3 "" H 3200 1500 50  0001 C CNN
	1    3450 1150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2800 3500 2750 3500
Wire Wire Line
	2750 3500 2750 3850
$Comp
L Device:R_Small R1
U 1 1 5EE254CC
P 5400 1550
F 0 "R1" H 5459 1596 50  0000 L CNN
F 1 "4.7k" H 5459 1505 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5400 1550 50  0001 C CNN
F 3 "~" H 5400 1550 50  0001 C CNN
	1    5400 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5EE2555E
P 5000 1600
F 0 "R2" H 5059 1646 50  0000 L CNN
F 1 "4.7k" H 5059 1555 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 5000 1600 50  0001 C CNN
F 3 "~" H 5000 1600 50  0001 C CNN
	1    5000 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EE255D8
P 4500 1150
F 0 "C1" V 4271 1150 50  0000 C CNN
F 1 "C_Small" V 4362 1150 50  0000 C CNN
F 2 "" H 4500 1150 50  0001 C CNN
F 3 "~" H 4500 1150 50  0001 C CNN
	1    4500 1150
	0    -1   1    0   
$EndComp
Wire Wire Line
	5000 1700 5000 1750
Wire Wire Line
	5400 1650 5400 1850
Wire Wire Line
	5400 1450 5400 1350
Wire Wire Line
	5000 1050 5000 1500
Wire Wire Line
	4400 1150 4100 1150
Wire Wire Line
	4700 1250 4700 1150
Wire Wire Line
	4700 1150 4600 1150
$Comp
L Device:C_Small C4
U 1 1 5EE26E30
P 1650 1150
F 0 "C4" H 1558 1104 50  0000 R CNN
F 1 "100pF" H 1558 1195 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" H 1650 1150 50  0001 C CNN
F 3 "~" H 1650 1150 50  0001 C CNN
	1    1650 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EE26EFF
P 1200 1150
F 0 "C5" H 1108 1104 50  0000 R CNN
F 1 "1uF" H 1108 1195 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" H 1200 1150 50  0001 C CNN
F 3 "~" H 1200 1150 50  0001 C CNN
	1    1200 1150
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5EE279CF
P 2500 1500
F 0 "C2" H 2408 1454 50  0000 R CNN
F 1 "100pF" H 2408 1545 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" H 2500 1500 50  0001 C CNN
F 3 "~" H 2500 1500 50  0001 C CNN
	1    2500 1500
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EE279FD
P 2050 1500
F 0 "C3" H 1958 1454 50  0000 R CNN
F 1 "1uF" H 1958 1545 50  0000 R CNN
F 2 "Resistors_SMD:R_0603" H 2050 1500 50  0001 C CNN
F 3 "~" H 2050 1500 50  0001 C CNN
	1    2050 1500
	1    0    0    1   
$EndComp
Wire Wire Line
	2700 1000 2700 1150
Wire Wire Line
	2700 1150 2800 1150
Wire Wire Line
	2700 1000 2050 1000
Wire Wire Line
	1200 1000 1200 1050
Wire Wire Line
	1650 1050 1650 1000
Connection ~ 1650 1000
Wire Wire Line
	1650 1000 1200 1000
Wire Wire Line
	2800 1350 2500 1350
Wire Wire Line
	2050 1350 2050 1400
Wire Wire Line
	2500 1400 2500 1350
Connection ~ 2500 1350
Wire Wire Line
	2500 1350 2050 1350
Wire Wire Line
	2500 1600 2500 1750
Wire Wire Line
	2500 1750 2050 1750
Wire Wire Line
	1200 1750 1200 1250
Wire Wire Line
	2050 1600 2050 1750
Connection ~ 2050 1750
Wire Wire Line
	2050 1750 1650 1750
Wire Wire Line
	1650 1250 1650 1750
Connection ~ 1650 1750
Wire Wire Line
	1650 1750 1200 1750
Wire Wire Line
	2050 850  2050 1000
Connection ~ 2050 1000
Wire Wire Line
	2050 1000 1650 1000
Text Label 4450 1750 2    50   ~ 0
SDA_TP
Text Label 4450 1850 2    50   ~ 0
SCL_TP
Text Label 4450 1550 2    50   ~ 0
SW_IN
Wire Wire Line
	4450 1550 4100 1550
Text Label 4450 2050 2    50   ~ 0
RDY_TP
Text Label 4450 1350 2    50   ~ 0
PGM
Wire Wire Line
	4450 1350 4100 1350
NoConn ~ 4100 2250
NoConn ~ 4100 1650
$Comp
L Device:R_Small R3
U 1 1 5EE30609
P 4300 3300
F 0 "R3" H 4359 3346 50  0000 L CNN
F 1 "0" H 4359 3255 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 4300 3300 50  0001 C CNN
F 3 "~" H 4300 3300 50  0001 C CNN
	1    4300 3300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R4
U 1 1 5EE30693
P 2650 3200
F 0 "R4" H 2709 3246 50  0000 L CNN
F 1 "0" H 2709 3155 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2650 3200 50  0001 C CNN
F 3 "~" H 2650 3200 50  0001 C CNN
	1    2650 3200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R5
U 1 1 5EE306CD
P 2400 3100
F 0 "R5" H 2459 3146 50  0000 L CNN
F 1 "0" H 2459 3055 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 2400 3100 50  0001 C CNN
F 3 "~" H 2400 3100 50  0001 C CNN
	1    2400 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4100 3200 4300 3200
Wire Wire Line
	4300 3400 4300 3500
Wire Wire Line
	2800 3100 2650 3100
Wire Wire Line
	2800 3000 2400 3000
Wire Wire Line
	2650 3300 2650 3500
Wire Wire Line
	2650 3500 2750 3500
Connection ~ 2750 3500
Wire Wire Line
	2650 3500 2400 3500
Wire Wire Line
	2400 3500 2400 3200
Connection ~ 2650 3500
$Comp
L MCU_ST_STM32F3:STM32F303K8Tx U?
U 1 1 5F15F2BD
P 9750 4650
F 0 "U?" H 9700 3564 50  0000 C CNN
F 1 "STM32F303K8Tx" H 9700 3473 50  0000 C CNN
F 2 "Package_QFP:LQFP-32_7x7mm_P0.8mm" H 9250 3750 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00092070.pdf" H 9750 4650 50  0001 C CNN
	1    9750 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5F15F399
P 8350 4600
F 0 "Y1" V 8250 4800 50  0000 L CNN
F 1 "Crystal_GND24" V 8700 4350 50  0000 L CNN
F 2 "" H 8350 4600 50  0001 C CNN
F 3 "~" H 8350 4600 50  0001 C CNN
F 4 "ABM3B-8.000MHZ-B2-T" H 8350 4600 50  0001 C CNN "MFG Partnumber"
F 5 "Abracon" H 8350 4600 50  0001 C CNN "Manufacturer"
	1    8350 4600
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R?
U 1 1 5F1631E1
P 8800 4850
F 0 "R?" H 8859 4896 50  0000 L CNN
F 1 "0" H 8859 4805 50  0000 L CNN
F 2 "Resistors_SMD:R_0603" H 8800 4850 50  0001 C CNN
F 3 "~" H 8800 4850 50  0001 C CNN
	1    8800 4850
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F164290
P 7900 4750
F 0 "C?" V 7671 4750 50  0000 C CNN
F 1 "30pF" V 7762 4750 50  0000 C CNN
F 2 "" H 7900 4750 50  0001 C CNN
F 3 "~" H 7900 4750 50  0001 C CNN
	1    7900 4750
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C?
U 1 1 5F1644CD
P 7900 4450
F 0 "C?" V 7671 4450 50  0000 C CNN
F 1 "30pF" V 7762 4450 50  0000 C CNN
F 2 "" H 7900 4450 50  0001 C CNN
F 3 "~" H 7900 4450 50  0001 C CNN
	1    7900 4450
	-1   0    0    1   
$EndComp
Wire Wire Line
	7900 4550 7900 4600
Wire Wire Line
	7900 4600 8150 4600
Connection ~ 7900 4600
Wire Wire Line
	7900 4600 7900 4650
Wire Wire Line
	8350 4750 8350 4850
Wire Wire Line
	8350 4900 7900 4900
Wire Wire Line
	7900 4900 7900 4850
Connection ~ 8350 4850
Wire Wire Line
	8350 4850 8350 4900
Wire Wire Line
	7900 4350 7900 4300
Wire Wire Line
	7900 4300 8350 4300
Wire Wire Line
	8350 4300 8350 4400
Wire Wire Line
	8350 4400 8800 4400
Wire Wire Line
	8800 4400 8800 4550
Wire Wire Line
	8800 4550 9150 4550
Connection ~ 8350 4400
Wire Wire Line
	8350 4400 8350 4450
Wire Wire Line
	8950 4650 9150 4650
$Comp
L power:GND #PWR?
U 1 1 5F17179A
P 7700 4650
F 0 "#PWR?" H 7700 4400 50  0001 C CNN
F 1 "GND" H 7705 4477 50  0000 C CNN
F 2 "" H 7700 4650 50  0001 C CNN
F 3 "" H 7700 4650 50  0001 C CNN
	1    7700 4650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7700 4650 7700 4600
Wire Wire Line
	7700 4600 7900 4600
$Comp
L power:GND #PWR?
U 1 1 5F1736FA
P 8650 4600
F 0 "#PWR?" H 8650 4350 50  0001 C CNN
F 1 "GND" H 8655 4427 50  0000 C CNN
F 2 "" H 8650 4600 50  0001 C CNN
F 3 "" H 8650 4600 50  0001 C CNN
	1    8650 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	8350 4850 8700 4850
Wire Wire Line
	8900 4850 8950 4850
Wire Wire Line
	8950 4650 8950 4850
Wire Wire Line
	8550 4600 8650 4600
Text Label 8750 5350 0    50   ~ 0
SCL_UC
Text Label 8750 5450 0    50   ~ 0
SDA_UC
Wire Wire Line
	5000 1750 4100 1750
Wire Wire Line
	5400 1850 4100 1850
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 5F19281F
P 6000 1850
F 0 "J?" H 6027 1876 50  0000 L CNN
F 1 "Conn_01x05_Female" H 6027 1785 50  0000 L CNN
F 2 "" H 6000 1850 50  0001 C CNN
F 3 "~" H 6000 1850 50  0001 C CNN
	1    6000 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 1350 5800 1350
Wire Wire Line
	5800 1350 5800 1650
Connection ~ 5400 1350
Wire Wire Line
	5400 1350 5400 1050
Wire Wire Line
	5000 1750 5800 1750
Connection ~ 5000 1750
Wire Wire Line
	5400 1850 5800 1850
Connection ~ 5400 1850
Wire Wire Line
	4900 2050 4900 1950
Wire Wire Line
	4900 1950 5800 1950
Wire Wire Line
	4100 2050 4900 2050
Wire Wire Line
	5800 2050 5600 2050
Wire Wire Line
	5600 2050 5600 2100
$Comp
L Connector:Conn_01x05_Female J?
U 1 1 5F1A4D12
P 7700 5450
F 0 "J?" H 7594 5835 50  0000 C CNN
F 1 "Conn_01x05_Female" H 7594 5744 50  0000 C CNN
F 2 "" H 7700 5450 50  0001 C CNN
F 3 "~" H 7700 5450 50  0001 C CNN
	1    7700 5450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7900 5350 9150 5350
Wire Wire Line
	7900 5450 9150 5450
Wire Wire Line
	9150 5250 8600 5250
Wire Wire Line
	8600 5250 8600 5550
Wire Wire Line
	8600 5550 7900 5550
$Comp
L power:+3.3V #PWR?
U 1 1 5F1AB4D4
P 8300 5250
F 0 "#PWR?" H 8300 5100 50  0001 C CNN
F 1 "+3.3V" H 8315 5423 50  0000 C CNN
F 2 "" H 8300 5250 50  0001 C CNN
F 3 "" H 8300 5250 50  0001 C CNN
	1    8300 5250
	-1   0    0    -1  
$EndComp
$Comp
L power:+3.3VA #PWR?
U 1 1 5F1AD9E3
P 5100 1000
F 0 "#PWR?" H 5100 850 50  0001 C CNN
F 1 "+3.3VA" H 5115 1173 50  0000 C CNN
F 2 "" H 5100 1000 50  0001 C CNN
F 3 "" H 5100 1000 50  0001 C CNN
	1    5100 1000
	1    0    0    -1  
$EndComp
Wire Wire Line
	5100 1000 5100 1050
Connection ~ 5100 1050
Wire Wire Line
	5100 1050 5000 1050
Wire Wire Line
	5100 1050 5400 1050
$Comp
L power:+3.3VA #PWR?
U 1 1 5F1AFD63
P 2050 850
F 0 "#PWR?" H 2050 700 50  0001 C CNN
F 1 "+3.3VA" H 2065 1023 50  0000 C CNN
F 2 "" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
	1    2050 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5250 8300 5250
$Comp
L power:GND #PWR?
U 1 1 5F1B2332
P 8250 5650
F 0 "#PWR?" H 8250 5400 50  0001 C CNN
F 1 "GND" H 8255 5477 50  0000 C CNN
F 2 "" H 8250 5650 50  0001 C CNN
F 3 "" H 8250 5650 50  0001 C CNN
	1    8250 5650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7900 5650 8250 5650
$Comp
L power:GNDA #PWR?
U 1 1 5F1B48A2
P 2750 3850
F 0 "#PWR?" H 2750 3600 50  0001 C CNN
F 1 "GNDA" H 2755 3677 50  0000 C CNN
F 2 "" H 2750 3850 50  0001 C CNN
F 3 "" H 2750 3850 50  0001 C CNN
	1    2750 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F1B492B
P 4300 3500
F 0 "#PWR?" H 4300 3250 50  0001 C CNN
F 1 "GNDA" H 4305 3327 50  0000 C CNN
F 2 "" H 4300 3500 50  0001 C CNN
F 3 "" H 4300 3500 50  0001 C CNN
	1    4300 3500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F1B49AD
P 5600 2100
F 0 "#PWR?" H 5600 1850 50  0001 C CNN
F 1 "GNDA" H 5605 1927 50  0000 C CNN
F 2 "" H 5600 2100 50  0001 C CNN
F 3 "" H 5600 2100 50  0001 C CNN
	1    5600 2100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR?
U 1 1 5F1B4A42
P 4700 1250
F 0 "#PWR?" H 4700 1000 50  0001 C CNN
F 1 "GNDA" H 4705 1077 50  0000 C CNN
F 2 "" H 4700 1250 50  0001 C CNN
F 3 "" H 4700 1250 50  0001 C CNN
	1    4700 1250
	1    0    0    -1  
$EndComp
$EndSCHEMATC
