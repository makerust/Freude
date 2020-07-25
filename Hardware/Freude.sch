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
Text GLabel 3300 2450 2    50   Input ~ 0
XA00
Text GLabel 3300 2550 2    50   Input ~ 0
XA01
Text GLabel 3300 2650 2    50   Input ~ 0
XA02
Text GLabel 3300 2850 2    50   Input ~ 0
XA04
Text GLabel 3300 3050 2    50   Input ~ 0
XA06
Text GLabel 3300 2750 2    50   Input ~ 0
XA03
Text GLabel 3300 2950 2    50   Input ~ 0
XA05
Wire Wire Line
	1850 2450 1700 2450
Text GLabel 1700 2450 0    50   Input ~ 0
YA00
Text GLabel 1700 2550 0    50   Input ~ 0
YA01
Text GLabel 1700 2650 0    50   Input ~ 0
YA02
Text GLabel 1700 2750 0    50   Input ~ 0
YA03
Text GLabel 1700 2850 0    50   Input ~ 0
YA04
Text GLabel 1700 2950 0    50   Input ~ 0
YA05
Wire Wire Line
	1700 2550 1850 2550
Wire Wire Line
	1850 2650 1700 2650
Wire Wire Line
	1700 2750 1850 2750
Wire Wire Line
	1850 2850 1700 2850
Wire Wire Line
	1700 2950 1850 2950
Wire Wire Line
	3300 2450 3150 2450
Wire Wire Line
	3150 2550 3300 2550
Wire Wire Line
	3300 2650 3150 2650
Wire Wire Line
	3150 2750 3300 2750
Wire Wire Line
	3300 2850 3150 2850
Wire Wire Line
	3150 2950 3300 2950
Wire Wire Line
	3300 3050 3150 3050
$Comp
L IQS572:IQS572 U1
U 1 1 5EE2238A
P 2500 1200
F 0 "U1" H 2500 1465 50  0000 C CNN
F 1 "IQS572" H 2500 1374 50  0000 C CNN
F 2 "IQS572_Library:IQS572" H 2250 1550 50  0001 C CNN
F 3 "" H 2250 1550 50  0001 C CNN
	1    2500 1200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	1850 3550 1800 3550
Wire Wire Line
	1800 3550 1800 3700
$Comp
L Device:R_Small R1
U 1 1 5EE254CC
P 4250 1600
F 0 "R1" H 4309 1646 50  0000 L CNN
F 1 "4.7k" H 4309 1555 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4250 1600 50  0001 C CNN
F 3 "~" H 4250 1600 50  0001 C CNN
	1    4250 1600
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_Small R2
U 1 1 5EE2555E
P 4050 1650
F 0 "R2" H 4109 1696 50  0000 L CNN
F 1 "4.7k" H 4109 1605 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 4050 1650 50  0001 C CNN
F 3 "~" H 4050 1650 50  0001 C CNN
	1    4050 1650
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5EE255D8
P 3550 1200
F 0 "C1" V 3321 1200 50  0000 C CNN
F 1 "C_Small" V 3412 1200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 3550 1200 50  0001 C CNN
F 3 "~" H 3550 1200 50  0001 C CNN
	1    3550 1200
	0    -1   1    0   
$EndComp
Wire Wire Line
	4050 1750 4050 1800
Wire Wire Line
	4250 1700 4250 1900
Wire Wire Line
	4050 1100 4050 1550
Wire Wire Line
	3450 1200 3150 1200
Wire Wire Line
	3750 1300 3750 1200
Wire Wire Line
	3750 1200 3650 1200
$Comp
L Device:C_Small C4
U 1 1 5EE26E30
P 1150 1200
F 0 "C4" H 1150 1150 50  0000 R CNN
F 1 "100pF" H 1150 1300 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 1150 1200 50  0001 C CNN
F 3 "~" H 1150 1200 50  0001 C CNN
	1    1150 1200
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 5EE26EFF
P 900 1200
F 0 "C5" H 900 1150 50  0000 R CNN
F 1 "1uF" H 900 1300 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 900 1200 50  0001 C CNN
F 3 "~" H 900 1200 50  0001 C CNN
	1    900  1200
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 5EE279CF
P 1550 1550
F 0 "C2" H 1500 1450 50  0000 R CNN
F 1 "100pF" H 1550 1650 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 1550 1550 50  0001 C CNN
F 3 "~" H 1550 1550 50  0001 C CNN
	1    1550 1550
	1    0    0    1   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 5EE279FD
P 1300 1550
F 0 "C3" H 1300 1450 50  0000 R CNN
F 1 "1uF" H 1300 1650 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 1300 1550 50  0001 C CNN
F 3 "~" H 1300 1550 50  0001 C CNN
	1    1300 1550
	1    0    0    1   
$EndComp
Wire Wire Line
	1750 1050 1750 1200
Wire Wire Line
	1750 1200 1850 1200
Wire Wire Line
	900  1050 900  1100
Wire Wire Line
	1150 1100 1150 1050
Connection ~ 1150 1050
Wire Wire Line
	1300 1400 1300 1450
Wire Wire Line
	1550 1450 1550 1400
Connection ~ 1550 1400
Wire Wire Line
	1550 1650 1550 1800
Wire Wire Line
	1550 1800 1450 1800
Wire Wire Line
	900  1800 900  1300
Wire Wire Line
	1300 1650 1300 1800
Wire Wire Line
	1150 1300 1150 1800
Wire Wire Line
	1050 900  1050 1050
Text Label 3500 1800 2    50   ~ 0
SDA_TP
Text Label 3500 1900 2    50   ~ 0
SCL_TP
Text Label 3500 1600 2    50   ~ 0
SW_IN
Wire Wire Line
	3500 1600 3150 1600
Text Label 3500 2100 2    50   ~ 0
RDY_TP
Text Label 3500 1400 2    50   ~ 0
PGM
Wire Wire Line
	3500 1400 3150 1400
NoConn ~ 3150 2300
NoConn ~ 3150 1700
$Comp
L Device:Crystal_GND24 Y1
U 1 1 5F15F399
P 6700 2350
F 0 "Y1" V 6600 2550 50  0000 L CNN
F 1 "Crystal_GND24" V 7050 2100 50  0000 L CNN
F 2 "Crystal_SMD_5032-4pin_5.0x3.2mm" H 6700 2350 50  0001 C CNN
F 3 "~" H 6700 2350 50  0001 C CNN
F 4 "ABM3B-8.000MHZ-B2-T" H 6700 2350 50  0001 C CNN "MFG Partnumber"
F 5 "Abracon" H 6700 2350 50  0001 C CNN "Manufacturer"
	1    6700 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R6
U 1 1 5F1631E1
P 7150 2500
F 0 "R6" H 7209 2546 50  0000 L CNN
F 1 "0" H 7209 2455 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7150 2500 50  0001 C CNN
F 3 "~" H 7150 2500 50  0001 C CNN
	1    7150 2500
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5F164290
P 6250 2500
F 0 "C7" V 6021 2500 50  0000 C CNN
F 1 "30pF" V 6112 2500 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6250 2500 50  0001 C CNN
F 3 "~" H 6250 2500 50  0001 C CNN
	1    6250 2500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 5F1644CD
P 6250 2200
F 0 "C6" V 6021 2200 50  0000 C CNN
F 1 "30pF" V 6112 2200 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" H 6250 2200 50  0001 C CNN
F 3 "~" H 6250 2200 50  0001 C CNN
	1    6250 2200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6250 2300 6250 2350
Wire Wire Line
	6250 2350 6500 2350
Connection ~ 6250 2350
Wire Wire Line
	6250 2350 6250 2400
Wire Wire Line
	6700 2650 6250 2650
Wire Wire Line
	6250 2650 6250 2600
Connection ~ 6700 2500
Wire Wire Line
	6700 2500 6700 2650
Wire Wire Line
	6250 2100 6250 2050
Wire Wire Line
	6250 2050 6700 2050
Wire Wire Line
	6700 2050 6700 2150
Wire Wire Line
	6700 2150 7150 2150
Wire Wire Line
	7150 2150 7150 2300
Connection ~ 6700 2150
Wire Wire Line
	6700 2150 6700 2200
$Comp
L power:GND #PWR0101
U 1 1 5F17179A
P 6050 2400
F 0 "#PWR0101" H 6050 2150 50  0001 C CNN
F 1 "GND" H 6055 2227 50  0000 C CNN
F 2 "" H 6050 2400 50  0001 C CNN
F 3 "" H 6050 2400 50  0001 C CNN
	1    6050 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6050 2400 6050 2350
Wire Wire Line
	6050 2350 6250 2350
$Comp
L power:GND #PWR0102
U 1 1 5F1736FA
P 7000 2350
F 0 "#PWR0102" H 7000 2100 50  0001 C CNN
F 1 "GND" H 7100 2350 50  0000 C CNN
F 2 "" H 7000 2350 50  0001 C CNN
F 3 "" H 7000 2350 50  0001 C CNN
	1    7000 2350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6700 2500 7050 2500
Wire Wire Line
	7250 2500 7300 2500
Wire Wire Line
	7300 2400 7300 2500
Wire Wire Line
	6900 2350 7000 2350
Text Label 8700 2600 0    50   ~ 0
SCL_UC
Text Label 8700 2700 0    50   ~ 0
SDA_UC
Connection ~ 4050 1800
Connection ~ 4250 1900
Wire Wire Line
	3150 2100 3900 2100
Wire Wire Line
	10050 2800 9550 2800
$Comp
L power:+3.3VA #PWR0104
U 1 1 5F1AD9E3
P 4150 1050
F 0 "#PWR0104" H 4150 900 50  0001 C CNN
F 1 "+3.3VA" H 4165 1223 50  0000 C CNN
F 2 "" H 4150 1050 50  0001 C CNN
F 3 "" H 4150 1050 50  0001 C CNN
	1    4150 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	4150 1050 4150 1100
Connection ~ 4150 1100
Wire Wire Line
	4150 1100 4050 1100
Wire Wire Line
	4150 1100 4250 1100
$Comp
L power:+3.3VA #PWR0105
U 1 1 5F1AFD63
P 1050 900
F 0 "#PWR0105" H 1050 750 50  0001 C CNN
F 1 "+3.3VA" H 1065 1073 50  0000 C CNN
F 2 "" H 1050 900 50  0001 C CNN
F 3 "" H 1050 900 50  0001 C CNN
	1    1050 900 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0106
U 1 1 5F1B2332
P 9700 3100
F 0 "#PWR0106" H 9700 2850 50  0001 C CNN
F 1 "GND" H 9705 2927 50  0000 C CNN
F 2 "" H 9700 3100 50  0001 C CNN
F 3 "" H 9700 3100 50  0001 C CNN
	1    9700 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10050 3100 9700 3100
$Comp
L power:GNDA #PWR0107
U 1 1 5F1B48A2
P 1800 3700
F 0 "#PWR0107" H 1800 3450 50  0001 C CNN
F 1 "GNDA" H 1805 3527 50  0000 C CNN
F 2 "" H 1800 3700 50  0001 C CNN
F 3 "" H 1800 3700 50  0001 C CNN
	1    1800 3700
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0109
U 1 1 5F1B49AD
P 4450 2150
F 0 "#PWR0109" H 4450 1900 50  0001 C CNN
F 1 "GNDA" H 4455 1977 50  0000 C CNN
F 2 "" H 4450 2150 50  0001 C CNN
F 3 "" H 4450 2150 50  0001 C CNN
	1    4450 2150
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR0110
U 1 1 5F1B4A42
P 3750 1300
F 0 "#PWR0110" H 3750 1050 50  0001 C CNN
F 1 "GNDA" H 3755 1127 50  0000 C CNN
F 2 "" H 3750 1300 50  0001 C CNN
F 3 "" H 3750 1300 50  0001 C CNN
	1    3750 1300
	1    0    0    -1  
$EndComp
Text Label 8700 2800 0    50   ~ 0
RDY_UC
Text Label 8700 3000 0    50   ~ 0
SWDIO
Text Label 8700 3100 0    50   ~ 0
SWCLK
$Comp
L power:+3.3V #PWR0111
U 1 1 5F17D0FE
P 9750 3600
F 0 "#PWR0111" H 9750 3450 50  0001 C CNN
F 1 "+3.3V" H 9600 3700 50  0000 C CNN
F 2 "" H 9750 3600 50  0001 C CNN
F 3 "" H 9750 3600 50  0001 C CNN
	1    9750 3600
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0112
U 1 1 5F18521D
P 9800 3900
F 0 "#PWR0112" H 9800 3650 50  0001 C CNN
F 1 "GND" H 9805 3727 50  0000 C CNN
F 2 "" H 9800 3900 50  0001 C CNN
F 3 "" H 9800 3900 50  0001 C CNN
	1    9800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	9800 3900 10050 3900
$Comp
L power:GNDA #PWR0113
U 1 1 5F18ACFB
P 1450 1950
F 0 "#PWR0113" H 1450 1700 50  0001 C CNN
F 1 "GNDA" H 1450 1750 50  0000 C CNN
F 2 "" H 1450 1950 50  0001 C CNN
F 3 "" H 1450 1950 50  0001 C CNN
	1    1450 1950
	1    0    0    -1  
$EndComp
Wire Wire Line
	1450 1950 1450 1800
Connection ~ 1300 1800
Wire Wire Line
	1550 1400 1300 1400
Connection ~ 1450 1800
Wire Wire Line
	1450 1800 1300 1800
Wire Wire Line
	1550 1400 1850 1400
Connection ~ 1150 1800
Wire Wire Line
	1150 1800 1300 1800
Wire Wire Line
	1150 1050 1750 1050
Wire Wire Line
	900  1800 1150 1800
Connection ~ 1050 1050
Wire Wire Line
	1050 1050 900  1050
Wire Wire Line
	1050 1050 1150 1050
Wire Wire Line
	3150 1800 4050 1800
Wire Wire Line
	3150 1900 4250 1900
Wire Wire Line
	4450 2100 4450 2150
$Comp
L Device:C_Small C12
U 1 1 5F1B8C9D
P 9800 1400
F 0 "C12" H 9800 1350 50  0000 R CNN
F 1 "1uF" H 9700 1300 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 9800 1400 50  0001 C CNN
F 3 "~" H 9800 1400 50  0001 C CNN
	1    9800 1400
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C8
U 1 1 5F1B8D25
P 8750 1450
F 0 "C8" H 8700 1300 50  0000 R CNN
F 1 "100pF" H 8750 1250 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 8750 1450 50  0001 C CNN
F 3 "~" H 8750 1450 50  0001 C CNN
	1    8750 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5F1B8EB5
P 9300 1400
F 0 "C10" H 9250 1350 50  0000 R CNN
F 1 "100pF" H 9250 1250 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 9300 1400 50  0001 C CNN
F 3 "~" H 9300 1400 50  0001 C CNN
	1    9300 1400
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5F1BF707
P 9000 1450
F 0 "C9" H 9000 1300 50  0000 R CNN
F 1 "1uF" H 9000 1200 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 9000 1450 50  0001 C CNN
F 3 "~" H 9000 1450 50  0001 C CNN
	1    9000 1450
	-1   0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 5F1C5F54
P 9550 1400
F 0 "C11" H 9500 1350 50  0000 R CNN
F 1 "100pF" H 9500 1250 50  0000 R CNN
F 2 "Resistors_SMD:R_0402" H 9550 1400 50  0001 C CNN
F 3 "~" H 9550 1400 50  0001 C CNN
	1    9550 1400
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9800 1300 9550 1300
Connection ~ 9550 1300
Wire Wire Line
	9550 1300 9350 1300
Wire Wire Line
	9800 1500 9550 1500
Connection ~ 9550 1500
Wire Wire Line
	9550 1500 9300 1500
Wire Wire Line
	8750 1550 9000 1550
Wire Wire Line
	9300 1550 9300 1500
Connection ~ 9300 1500
$Comp
L Device:Ferrite_Bead_Small L1
U 1 1 5F1D3835
P 9150 1300
F 0 "L1" V 8913 1300 50  0000 C CNN
F 1 "Ferrite_Bead_Small" V 9004 1300 50  0000 C CNN
F 2 "Resistors_SMD:R_0402" V 9080 1300 50  0001 C CNN
F 3 "~" H 9150 1300 50  0001 C CNN
	1    9150 1300
	0    1    1    0   
$EndComp
Wire Wire Line
	9000 1550 9200 1550
Connection ~ 9000 1550
Wire Wire Line
	9250 1300 9300 1300
Connection ~ 9300 1300
Wire Wire Line
	9050 1300 9000 1300
Wire Wire Line
	9000 1300 9000 1350
Wire Wire Line
	8750 1350 9000 1350
Connection ~ 9000 1350
Wire Wire Line
	8200 1500 8200 1350
Wire Wire Line
	8200 1350 8750 1350
Connection ~ 8750 1350
Wire Wire Line
	9350 1300 9350 1200
Wire Wire Line
	9350 1200 8550 1200
Wire Wire Line
	8100 1200 8100 1400
Connection ~ 9350 1300
Wire Wire Line
	9350 1300 9300 1300
Wire Wire Line
	8000 1500 8000 1400
Wire Wire Line
	8000 1400 8100 1400
Connection ~ 8100 1400
Wire Wire Line
	8100 1400 8100 1500
Text Label 8750 2100 0    50   ~ 0
DAC1_OUT2
Text Label 8750 2200 0    50   ~ 0
DAC2_OUT1
Text Label 8750 2300 0    50   ~ 0
Switch_Out
Text Label 8750 2000 0    50   ~ 0
Switch_In
$Comp
L Connector:Conn_01x05_Female J2
U 1 1 5F238C6A
P 10250 2300
F 0 "J2" H 10277 2326 50  0000 L CNN
F 1 "Conn_01x05_Female" H 10277 2235 50  0000 L CNN
F 2 ".pretty:503480-0500" H 10250 2300 50  0001 C CNN
F 3 "~" H 10250 2300 50  0001 C CNN
	1    10250 2300
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0114
U 1 1 5F255CED
P 9550 2500
F 0 "#PWR0114" H 9550 2350 50  0001 C CNN
F 1 "+3.3V" H 9550 2650 50  0000 C CNN
F 2 "" H 9550 2500 50  0001 C CNN
F 3 "" H 9550 2500 50  0001 C CNN
	1    9550 2500
	-1   0    0    -1  
$EndComp
$Comp
L power:GND #PWR0115
U 1 1 5F25AADF
P 9850 2200
F 0 "#PWR0115" H 9850 1950 50  0001 C CNN
F 1 "GND" H 9850 2250 50  0000 C CNN
F 2 "" H 9850 2200 50  0001 C CNN
F 3 "" H 9850 2200 50  0001 C CNN
	1    9850 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	9850 2200 10050 2200
$Comp
L MCU_ST_STM32L4:STM32L432KBUx U2
U 1 1 5F2602F3
P 8100 2400
F 0 "U2" H 8100 3478 50  0000 C CNN
F 1 "STM32L432KBUx" H 8100 3387 50  0000 C CNN
F 2 "Package_DFN_QFN:QFN-32-1EP_5x5mm_P0.5mm_EP3.45x3.45mm" H 7700 1500 50  0001 R CNN
F 3 "http://www.st.com/st-web-ui/static/active/en/resource/technical/document/datasheet/DM00257205.pdf" H 8100 2400 50  0001 C CNN
	1    8100 2400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2000 9150 2000
Wire Wire Line
	8600 2800 9200 2800
Text Label 9850 2800 2    50   ~ 0
SDA_UC
Text Label 9850 2900 2    50   ~ 0
SCL_UC
Wire Wire Line
	7150 2300 7600 2300
Wire Wire Line
	7300 2400 7600 2400
$Comp
L Connector:Conn_01x04_Female J4
U 1 1 5F1A26CD
P 10250 3700
F 0 "J4" H 10277 3676 50  0000 L CNN
F 1 "Conn_01x04_Female" H 9950 3200 50  0000 L CNN
F 2 ".pretty:503480-0400" H 10250 3700 50  0001 C CNN
F 3 "~" H 10250 3700 50  0001 C CNN
	1    10250 3700
	1    0    0    -1  
$EndComp
Wire Wire Line
	9750 3600 10050 3600
$Comp
L Connector:Conn_01x06_Female J3
U 1 1 5F1ABB74
P 10250 3000
F 0 "J3" H 10350 3100 50  0000 C CNN
F 1 "Conn_01x06_Female" H 10700 3000 50  0000 C CNN
F 2 ".pretty:503480-0600" H 10250 3000 50  0001 C CNN
F 3 "~" H 10250 3000 50  0001 C CNN
	1    10250 3000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8600 2300 10050 2300
Wire Wire Line
	8600 3000 9000 3000
Wire Wire Line
	8600 3100 8900 3100
Wire Wire Line
	9000 3000 9000 3700
Wire Wire Line
	9000 3700 10050 3700
Wire Wire Line
	8900 3100 8900 3800
Wire Wire Line
	8900 3800 10050 3800
Wire Wire Line
	9550 2700 9550 2800
Wire Wire Line
	8600 2700 9550 2700
Wire Wire Line
	9400 2900 9400 2600
Wire Wire Line
	8600 2600 9400 2600
Wire Wire Line
	9400 2900 10050 2900
Text Notes 10300 2500 0    50   ~ 0
Joy Stick Connector
Text Notes 10350 3100 0    50   ~ 0
To touch controller
Text Notes 9900 4000 0    50   ~ 0
Single wire programming
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5F2438A7
P 8300 5750
F 0 "J5" H 8327 5726 50  0000 L CNN
F 1 "Conn_01x04_Female" H 8000 5250 50  0000 L CNN
F 2 ".pretty:503480-0400" H 8300 5750 50  0001 C CNN
F 3 "~" H 8300 5750 50  0001 C CNN
	1    8300 5750
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8500 5650 9050 5650
Wire Wire Line
	8500 5750 9050 5750
Wire Wire Line
	8500 5850 9050 5850
Wire Wire Line
	9050 5950 8500 5950
Text Label 8550 5750 0    50   ~ 0
Prog_SWDIO
Text Label 8550 5850 0    50   ~ 0
Prog_SWCLK
Text Label 8550 5650 0    50   ~ 0
Prog_VCC
Text Label 8550 5950 0    50   ~ 0
Prog_GND
$Comp
L Connector:Conn_01x04_Male J6
U 1 1 5F2579EC
P 9250 5750
F 0 "J6" H 9223 5723 50  0000 R CNN
F 1 "Conn_01x04_Male" H 9223 5632 50  0000 R CNN
F 2 "SparkFun-Connectors:1X04" H 9250 5750 50  0001 C CNN
F 3 "~" H 9250 5750 50  0001 C CNN
	1    9250 5750
	-1   0    0    -1  
$EndComp
$Comp
L Custom_Touchpad:Custom_Touchpad X1
U 1 1 5F1BAD65
P 2150 4700
F 0 "X1" H 3008 4820 50  0000 L CNN
F 1 "Custom_Touchpad" H 3008 4729 50  0000 L CNN
F 2 "Custom_Touchpad:Touchpad" H 2150 4700 50  0001 C CNN
F 3 "" H 2150 4700 50  0001 C CNN
	1    2150 4700
	1    0    0    -1  
$EndComp
Text GLabel 1650 4200 0    50   Input ~ 0
YA00
Text GLabel 1650 4300 0    50   Input ~ 0
YA01
Text GLabel 1650 4400 0    50   Input ~ 0
YA02
Text GLabel 1650 4500 0    50   Input ~ 0
YA03
Text GLabel 1650 4600 0    50   Input ~ 0
YA04
Text GLabel 1650 4700 0    50   Input ~ 0
YA05
Wire Wire Line
	1650 4200 1950 4200
Wire Wire Line
	1650 4300 1950 4300
Wire Wire Line
	1650 4400 1950 4400
Wire Wire Line
	1650 4500 1950 4500
Wire Wire Line
	1650 4600 1950 4600
Wire Wire Line
	1650 4700 1950 4700
Text GLabel 2350 5500 3    50   Input ~ 0
XA00
Text GLabel 2450 5500 3    50   Input ~ 0
XA01
Text GLabel 2550 5500 3    50   Input ~ 0
XA02
Text GLabel 2750 5500 3    50   Input ~ 0
XA04
Text GLabel 2950 5500 3    50   Input ~ 0
XA06
Text GLabel 2650 5500 3    50   Input ~ 0
XA03
Text GLabel 2850 5500 3    50   Input ~ 0
XA05
Wire Wire Line
	2350 5500 2350 5100
Wire Wire Line
	2450 5100 2450 5500
Wire Wire Line
	2550 5500 2550 5100
Wire Wire Line
	2650 5100 2650 5500
Wire Wire Line
	2750 5500 2750 5100
Wire Wire Line
	2850 5100 2850 5500
Wire Wire Line
	2950 5500 2950 5100
Wire Wire Line
	4250 1100 4250 1500
$Comp
L power:+3.3VA #PWR0103
U 1 1 5F1D7A68
P 4100 2150
F 0 "#PWR0103" H 4100 2000 50  0001 C CNN
F 1 "+3.3VA" H 4115 2323 50  0000 C CNN
F 2 "" H 4100 2150 50  0001 C CNN
F 3 "" H 4100 2150 50  0001 C CNN
	1    4100 2150
	1    0    0    -1  
$EndComp
Wire Wire Line
	4300 2150 4300 2000
Wire Wire Line
	4100 2150 4300 2150
Wire Wire Line
	3900 2100 3900 2400
Wire Wire Line
	3900 2400 4650 2400
Wire Wire Line
	4650 2400 4650 2200
Wire Wire Line
	9550 2500 10050 2500
$Comp
L power:+3.3V #PWR0108
U 1 1 5F1EE180
P 9450 3100
F 0 "#PWR0108" H 9450 2950 50  0001 C CNN
F 1 "+3.3V" H 9450 3250 50  0000 C CNN
F 2 "" H 9450 3100 50  0001 C CNN
F 3 "" H 9450 3100 50  0001 C CNN
	1    9450 3100
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9450 3100 9600 3100
Wire Wire Line
	9600 3100 9600 3000
Wire Wire Line
	9600 3000 10050 3000
Wire Wire Line
	9200 3350 9850 3350
Wire Wire Line
	9850 3350 9850 3200
Wire Wire Line
	9850 3200 10050 3200
Wire Wire Line
	9200 2800 9200 3350
Wire Notes Line
	500  5950 5150 5950
Wire Notes Line
	5150 5950 5150 600 
Wire Notes Line
	5150 600  500  600 
Wire Notes Line
	500  600  500  5950
Wire Notes Line
	11100 600  11100 4400
Wire Notes Line
	11100 4400 5600 4400
Wire Notes Line
	5600 4400 5600 600 
Wire Notes Line
	5600 600  11100 600 
Wire Notes Line
	9850 5350 9850 6400
Wire Notes Line
	9850 6400 7700 6400
Wire Notes Line
	7700 6400 7700 5350
Wire Notes Line
	7700 5350 9850 5350
$Comp
L Switch:SW_Push SW1
U 1 1 5F1E5BC7
P 10600 1850
F 0 "SW1" V 10554 1998 50  0000 L CNN
F 1 "SW_Push" V 10645 1998 50  0000 L CNN
F 2 "" H 10600 2050 50  0001 C CNN
F 3 "" H 10600 2050 50  0001 C CNN
	1    10600 1850
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R3
U 1 1 5F1E5E75
P 10600 1450
F 0 "R3" H 10659 1496 50  0000 L CNN
F 1 "10k" H 10659 1405 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 10600 1450 50  0001 C CNN
F 3 "~" H 10600 1450 50  0001 C CNN
	1    10600 1450
	-1   0    0    -1  
$EndComp
Wire Wire Line
	10600 1550 10600 1600
$Comp
L power:GND #PWR0116
U 1 1 5F1F7CA8
P 10600 2050
F 0 "#PWR0116" H 10600 1800 50  0001 C CNN
F 1 "GND" H 10605 1877 50  0000 C CNN
F 2 "" H 10600 2050 50  0001 C CNN
F 3 "" H 10600 2050 50  0001 C CNN
	1    10600 2050
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR0117
U 1 1 5F1F7CEB
P 10600 1350
F 0 "#PWR0117" H 10600 1200 50  0001 C CNN
F 1 "+3.3V" H 10450 1450 50  0000 C CNN
F 2 "" H 10600 1350 50  0001 C CNN
F 3 "" H 10600 1350 50  0001 C CNN
	1    10600 1350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	9150 2000 9150 1800
Wire Wire Line
	9150 1800 10150 1800
Wire Wire Line
	10150 1800 10150 1600
Wire Wire Line
	10150 1600 10600 1600
Connection ~ 10600 1600
Wire Wire Line
	10600 1600 10600 1650
Wire Wire Line
	8600 2100 9700 2100
Wire Wire Line
	9700 2100 9700 2400
Wire Wire Line
	9700 2400 10050 2400
Wire Wire Line
	8600 2200 9550 2200
Wire Wire Line
	9550 2200 9550 2050
Wire Wire Line
	9550 2050 10000 2050
Wire Wire Line
	10000 2050 10000 2100
Wire Wire Line
	10000 2100 10050 2100
$Comp
L power:+3.3V #PWR0118
U 1 1 5F1DA2D3
P 8550 1200
F 0 "#PWR0118" H 8550 1050 50  0001 C CNN
F 1 "+3.3V" H 8550 1350 50  0000 C CNN
F 2 "" H 8550 1200 50  0001 C CNN
F 3 "" H 8550 1200 50  0001 C CNN
	1    8550 1200
	-1   0    0    -1  
$EndComp
Connection ~ 8550 1200
Wire Wire Line
	8550 1200 8100 1200
$Comp
L power:GND #PWR0119
U 1 1 5F1DA4D1
P 9200 1550
F 0 "#PWR0119" H 9200 1300 50  0001 C CNN
F 1 "GND" H 9205 1377 50  0000 C CNN
F 2 "" H 9200 1550 50  0001 C CNN
F 3 "" H 9200 1550 50  0001 C CNN
	1    9200 1550
	1    0    0    -1  
$EndComp
Connection ~ 9200 1550
Wire Wire Line
	9200 1550 9300 1550
$Comp
L power:GND #PWR0120
U 1 1 5F1DA6B3
P 8000 3500
F 0 "#PWR0120" H 8000 3250 50  0001 C CNN
F 1 "GND" H 8005 3327 50  0000 C CNN
F 2 "" H 8000 3500 50  0001 C CNN
F 3 "" H 8000 3500 50  0001 C CNN
	1    8000 3500
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 3500 8000 3400
Wire Wire Line
	8000 3400 8100 3400
Connection ~ 8000 3400
Connection ~ 8100 3400
Wire Wire Line
	8100 3400 8200 3400
$Comp
L Device:R_Small R4
U 1 1 5F1E7FFC
P 7500 1500
F 0 "R4" H 7559 1546 50  0000 L CNN
F 1 "10k" H 7559 1455 50  0000 L CNN
F 2 "Resistors_SMD:R_0402" H 7500 1500 50  0001 C CNN
F 3 "~" H 7500 1500 50  0001 C CNN
	1    7500 1500
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7500 1600 7500 1700
Wire Wire Line
	7500 1700 7600 1700
Wire Wire Line
	7500 1400 7500 1200
Wire Wire Line
	7500 1200 8100 1200
Connection ~ 8100 1200
$Comp
L Connector:Conn_01x06_Female J1
U 1 1 5F1F693D
P 4950 2000
F 0 "J1" H 5050 2100 50  0000 C CNN
F 1 "Conn_01x06_Female" H 5400 2000 50  0000 C CNN
F 2 ".pretty:503480-0600" H 4950 2000 50  0001 C CNN
F 3 "~" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4050 1800 4750 1800
Wire Wire Line
	4250 1900 4750 1900
Wire Wire Line
	4300 2000 4750 2000
Wire Wire Line
	4450 2100 4750 2100
Wire Wire Line
	4750 2200 4650 2200
Wire Wire Line
	8600 2900 9100 2900
Wire Wire Line
	9100 2900 9100 3450
Wire Wire Line
	9100 3450 9900 3450
Wire Wire Line
	9900 3450 9900 3300
Wire Wire Line
	9900 3300 10050 3300
Text Label 8700 2900 0    50   ~ 0
AZO_UNK
$EndSCHEMATC
