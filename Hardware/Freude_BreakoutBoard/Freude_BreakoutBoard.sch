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
Wire Wire Line
	3750 4100 3300 4100
Wire Wire Line
	3750 4200 3200 4200
Wire Wire Line
	3750 4300 3200 4300
Text Label 3700 4200 2    50   ~ 0
Prog_SWDIO
Text Label 3700 4300 2    50   ~ 0
Prog_SWCLK
Text Label 3700 4100 2    50   ~ 0
Prog_VCC
Text Label 3600 4400 2    50   ~ 0
Prog_GND
Wire Notes Line
	5150 600  500  600 
Wire Notes Line
	2700 3050 2700 4800
Wire Notes Line
	8950 3050 8950 4750
$Comp
L Freude_BreakoutBoard-rescue:TLV713185PDBV-Regulator_Linear-Freude-rescue U3
U 1 1 5F219BC1
P 5100 3500
F 0 "U3" H 5100 3842 50  0000 C CNN
F 1 "TLV713185PDBV" H 5100 3751 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-23-5" H 5100 3825 50  0001 C CIN
F 3 "http://www.ti.com/lit/ds/symlink/tlv713p.pdf" H 5100 3500 50  0001 C CNN
	1    5100 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J9
U 1 1 5F2319DF
P 7100 4250
F 0 "J9" H 7200 4350 50  0000 C CNN
F 1 "Conn_01x06_Female" H 6750 3850 50  0000 C CNN
F 2 ".pretty:503480-0600" H 7100 4250 50  0001 C CNN
F 3 "~" H 7100 4250 50  0001 C CNN
	1    7100 4250
	1    0    0    -1  
$EndComp
Text Label 6800 4050 2    50   ~ 0
SDA_BO
Text Label 6800 4150 2    50   ~ 0
SCL_BO
Text Label 6800 4350 2    50   ~ 0
RDY_BO
$Comp
L Connector:Conn_01x06_Male J8
U 1 1 5F232158
P 5950 4250
F 0 "J8" H 6056 4628 50  0000 C CNN
F 1 "Conn_01x06_Male" H 5950 3800 50  0000 C CNN
F 2 "SparkFun-Connectors:1X06-KIT" H 5950 4250 50  0001 C CNN
F 3 "~" H 5950 4250 50  0001 C CNN
	1    5950 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4050 6900 4050
Wire Wire Line
	6900 4150 6150 4150
Wire Wire Line
	6900 4350 6150 4350
Wire Wire Line
	6150 4550 6900 4550
$Comp
L power:+1V8 #PWR0122
U 1 1 5F274120
P 6350 4250
F 0 "#PWR0122" H 6350 4100 50  0001 C CNN
F 1 "+1V8" H 6500 4300 50  0000 C CNN
F 2 "" H 6350 4250 50  0001 C CNN
F 3 "" H 6350 4250 50  0001 C CNN
	1    6350 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4250 6350 4250
Connection ~ 6350 4250
Wire Wire Line
	6350 4250 6900 4250
$Comp
L power:+1V8 #PWR0123
U 1 1 5F27426D
P 3300 4100
F 0 "#PWR0123" H 3300 3950 50  0001 C CNN
F 1 "+1V8" H 3250 4250 50  0000 C CNN
F 2 "" H 3300 4100 50  0001 C CNN
F 3 "" H 3300 4100 50  0001 C CNN
	1    3300 4100
	1    0    0    -1  
$EndComp
Connection ~ 3300 4100
Wire Wire Line
	3300 4100 3200 4100
$Comp
L Connector:Conn_01x05_Female J12
U 1 1 5F274440
P 8700 4050
F 0 "J12" H 8727 4076 50  0000 L CNN
F 1 "Conn_01x05_Female" H 8100 3750 50  0000 L CNN
F 2 ".pretty:503480-0500" H 8700 4050 50  0001 C CNN
F 3 "~" H 8700 4050 50  0001 C CNN
	1    8700 4050
	1    0    0    -1  
$EndComp
Text Label 7850 3850 0    50   ~ 0
DAC2_OUT1_BO
Text Label 7850 4150 0    50   ~ 0
DAC1_OUT2_BO
Text Label 7850 4050 0    50   ~ 0
Switch_Out_BO
$Comp
L Connector:Conn_01x05_Male J11
U 1 1 5F28FAAB
P 7450 4050
F 0 "J11" H 7556 4428 50  0000 C CNN
F 1 "Conn_01x05_Male" H 7556 4337 50  0000 C CNN
F 2 "SparkFun-Connectors:1X05" H 7450 4050 50  0001 C CNN
F 3 "~" H 7450 4050 50  0001 C CNN
	1    7450 4050
	1    0    0    -1  
$EndComp
$Comp
L power:+1V8 #PWR0124
U 1 1 5F28FB0B
P 7800 4250
F 0 "#PWR0124" H 7800 4100 50  0001 C CNN
F 1 "+1V8" H 7950 4300 50  0000 C CNN
F 2 "" H 7800 4250 50  0001 C CNN
F 3 "" H 7800 4250 50  0001 C CNN
	1    7800 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 4150 8500 4150
Wire Wire Line
	8500 4250 7800 4250
Connection ~ 7800 4250
Wire Wire Line
	7800 4250 7650 4250
Wire Wire Line
	7650 4050 8500 4050
Wire Wire Line
	7650 3850 8500 3850
$Comp
L power:VCC #PWR0128
U 1 1 5F2D9E77
P 4650 3400
F 0 "#PWR0128" H 4650 3250 50  0001 C CNN
F 1 "VCC" H 4667 3573 50  0000 C CNN
F 2 "" H 4650 3400 50  0001 C CNN
F 3 "" H 4650 3400 50  0001 C CNN
	1    4650 3400
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 3400 4700 3400
Wire Wire Line
	4800 3500 4800 3400
$Comp
L Device:C_Small C13
U 1 1 5F2EDC1C
P 4700 3600
F 0 "C13" H 4850 3600 50  0000 C CNN
F 1 "0.1uf" H 4900 3700 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 4700 3600 50  0001 C CNN
F 3 "~" H 4700 3600 50  0001 C CNN
	1    4700 3600
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5F2EDE19
P 5550 3550
F 0 "C14" H 5450 3450 50  0000 C CNN
F 1 "0.1uf" H 5350 3550 50  0000 C CNN
F 2 "Resistors_SMD:R_0603" H 5550 3550 50  0001 C CNN
F 3 "~" H 5550 3550 50  0001 C CNN
	1    5550 3550
	-1   0    0    1   
$EndComp
Wire Wire Line
	4700 3500 4700 3400
Connection ~ 4700 3400
Wire Wire Line
	4700 3400 4800 3400
Wire Wire Line
	4700 3700 4700 3800
Wire Wire Line
	4700 3800 5100 3800
Wire Wire Line
	5100 3850 5100 3800
Connection ~ 5100 3800
Wire Wire Line
	5100 3800 5550 3800
Wire Wire Line
	5550 3800 5550 3650
Wire Wire Line
	5550 3450 5550 3400
Wire Wire Line
	5550 3400 5400 3400
$Comp
L power:+1V8 #PWR0129
U 1 1 5F3432FF
P 5550 3400
F 0 "#PWR0129" H 5550 3250 50  0001 C CNN
F 1 "+1V8" H 5700 3450 50  0000 C CNN
F 2 "" H 5550 3400 50  0001 C CNN
F 3 "" H 5550 3400 50  0001 C CNN
	1    5550 3400
	1    0    0    -1  
$EndComp
Connection ~ 5550 3400
$Comp
L Connector:Conn_01x03_Female J7
U 1 1 5F3434C7
P 4650 4350
F 0 "J7" H 4544 4635 50  0000 C CNN
F 1 "Conn_01x03_Female" H 4544 4544 50  0000 C CNN
F 2 "SparkFun-Connectors:1X03" H 4650 4350 50  0001 C CNN
F 3 "~" H 4650 4350 50  0001 C CNN
	1    4650 4350
	-1   0    0    -1  
$EndComp
$Comp
L power:VCC #PWR0130
U 1 1 5F34355B
P 5250 4350
F 0 "#PWR0130" H 5250 4200 50  0001 C CNN
F 1 "VCC" H 5267 4523 50  0000 C CNN
F 2 "" H 5250 4350 50  0001 C CNN
F 3 "" H 5250 4350 50  0001 C CNN
	1    5250 4350
	0    1    1    0   
$EndComp
$Comp
L power:+1V8 #PWR0131
U 1 1 5F3436AA
P 5250 4250
F 0 "#PWR0131" H 5250 4100 50  0001 C CNN
F 1 "+1V8" V 5200 4400 50  0000 C CNN
F 2 "" H 5250 4250 50  0001 C CNN
F 3 "" H 5250 4250 50  0001 C CNN
	1    5250 4250
	1    0    0    -1  
$EndComp
Wire Wire Line
	4850 4250 5250 4250
Wire Wire Line
	4850 4350 5250 4350
Wire Wire Line
	4850 4450 5050 4450
Wire Notes Line
	2700 3050 8950 3050
Wire Notes Line
	2700 4750 8950 4750
$Comp
L Connector:Conn_01x06_Female J10
U 1 1 5F3EB865
P 7150 3350
F 0 "J10" H 7250 3450 50  0000 C CNN
F 1 "Conn_01x06_Female" H 7550 3550 50  0000 C CNN
F 2 ".pretty:503480-0600" H 7150 3350 50  0001 C CNN
F 3 "~" H 7150 3350 50  0001 C CNN
	1    7150 3350
	1    0    0    -1  
$EndComp
Text Label 6800 3150 2    50   ~ 0
SDA_BO
Text Label 6800 3250 2    50   ~ 0
SCL_BO
$Comp
L power:+1V8 #PWR0133
U 1 1 5F3F809E
P 6300 3350
F 0 "#PWR0133" H 6300 3200 50  0001 C CNN
F 1 "+1V8" H 6450 3400 50  0000 C CNN
F 2 "" H 6300 3350 50  0001 C CNN
F 3 "" H 6300 3350 50  0001 C CNN
	1    6300 3350
	1    0    0    -1  
$EndComp
Text Label 6800 3450 2    50   ~ 0
RDY_BO
Text Label 6500 4550 0    50   ~ 0
UNK_BO
Text Label 6550 3650 0    50   ~ 0
UNK_BO
Wire Wire Line
	6950 3150 6800 3150
Wire Wire Line
	6950 3250 6800 3250
Wire Wire Line
	6950 3350 6300 3350
Wire Wire Line
	6950 3450 6800 3450
Wire Wire Line
	6950 3550 6300 3550
Wire Wire Line
	6950 3650 6550 3650
$Comp
L power:GND #PWR0121
U 1 1 5F37A60E
P 3700 4400
F 0 "#PWR0121" H 3700 4150 50  0001 C CNN
F 1 "GND" H 3705 4227 50  0000 C CNN
F 2 "" H 3700 4400 50  0001 C CNN
F 3 "" H 3700 4400 50  0001 C CNN
	1    3700 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4400 3700 4400
Connection ~ 3700 4400
Wire Wire Line
	3700 4400 3750 4400
$Comp
L power:GND #PWR0125
U 1 1 5F37B2FE
P 5050 4450
F 0 "#PWR0125" H 5050 4200 50  0001 C CNN
F 1 "GND" H 5055 4277 50  0000 C CNN
F 2 "" H 5050 4450 50  0001 C CNN
F 3 "" H 5050 4450 50  0001 C CNN
	1    5050 4450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0126
U 1 1 5F37C3DC
P 5100 3850
F 0 "#PWR0126" H 5100 3600 50  0001 C CNN
F 1 "GND" H 5105 3677 50  0000 C CNN
F 2 "" H 5100 3850 50  0001 C CNN
F 3 "" H 5100 3850 50  0001 C CNN
	1    5100 3850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0127
U 1 1 5F37C7FE
P 6300 4450
F 0 "#PWR0127" H 6300 4200 50  0001 C CNN
F 1 "GND" H 6250 4500 50  0000 C CNN
F 2 "" H 6300 4450 50  0001 C CNN
F 3 "" H 6300 4450 50  0001 C CNN
	1    6300 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	6150 4450 6300 4450
Connection ~ 6300 4450
Wire Wire Line
	6300 4450 6900 4450
$Comp
L power:GND #PWR0132
U 1 1 5F37D102
P 7750 3950
F 0 "#PWR0132" H 7750 3700 50  0001 C CNN
F 1 "GND" H 7700 4000 50  0000 C CNN
F 2 "" H 7750 3950 50  0001 C CNN
F 3 "" H 7750 3950 50  0001 C CNN
	1    7750 3950
	1    0    0    -1  
$EndComp
Wire Wire Line
	7650 3950 7750 3950
Connection ~ 7750 3950
Wire Wire Line
	7750 3950 8500 3950
$Comp
L power:GND #PWR0134
U 1 1 5F37DC1D
P 6300 3550
F 0 "#PWR0134" H 6300 3300 50  0001 C CNN
F 1 "GND" H 6250 3600 50  0000 C CNN
F 2 "" H 6300 3550 50  0001 C CNN
F 3 "" H 6300 3550 50  0001 C CNN
	1    6300 3550
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Female J5
U 1 1 5F38A8DF
P 3950 4300
F 0 "J5" H 4050 4400 50  0000 C CNN
F 1 "Conn_01x06_Female" H 4400 4300 50  0000 C CNN
F 2 ".pretty:503480-0600" H 3950 4300 50  0001 C CNN
F 3 "~" H 3950 4300 50  0001 C CNN
	1    3950 4300
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J6
U 1 1 5F38D1AE
P 3000 4300
F 0 "J6" H 3106 4678 50  0000 C CNN
F 1 "Conn_01x06_Male" H 3000 3850 50  0000 C CNN
F 2 "SparkFun-Connectors:1X06-KIT" H 3000 4300 50  0001 C CNN
F 3 "~" H 3000 4300 50  0001 C CNN
	1    3000 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 4500 3750 4500
Wire Wire Line
	3200 4600 3750 4600
Text Label 3250 4500 0    50   ~ 0
Prog_TX
Text Label 3250 4600 0    50   ~ 0
Prog_RX
$EndSCHEMATC
