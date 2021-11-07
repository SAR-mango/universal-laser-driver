EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr User 6000 4000
encoding utf-8
Sheet 1 1
Title "Universal Laser Driver"
Date "2021-11-06"
Rev "1.2"
Comp "E.S."
Comment1 "0.8mm PCB required for Leadlight Pen Host"
Comment2 "Revised to prevent feedback oscillations"
Comment3 "High Iout and Vout not guaranteed with Vin below 5V or high battery ESR"
Comment4 "Vin: [2.25V, 15V), Vout: [2V, 15V], Iout: [5mA, 200mA] (adjustable with potentiometer)"
$EndDescr
$Comp
L power:VDD #PWR08
U 1 1 6149BA94
P 5100 1100
F 0 "#PWR08" H 5100 950 50  0001 C CNN
F 1 "VDD" H 5100 1250 50  0000 C CNN
F 2 "" H 5100 1100 50  0001 C CNN
F 3 "" H 5100 1100 50  0001 C CNN
	1    5100 1100
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR07
U 1 1 6149BE8D
P 4950 2000
F 0 "#PWR07" H 4950 1750 50  0001 C CNN
F 1 "GNDA" H 4950 1850 50  0000 C CNN
F 2 "" H 4950 2000 50  0001 C CNN
F 3 "" H 4950 2000 50  0001 C CNN
	1    4950 2000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 6149C300
P 4950 1500
F 0 "#PWR06" H 4950 1250 50  0001 C CNN
F 1 "GND" H 4950 1350 50  0000 C CNN
F 2 "" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 6149DDA1
P 4800 1100
F 0 "#FLG01" H 4800 1175 50  0001 C CNN
F 1 "PWR_FLAG" H 4800 1250 50  0000 C CNN
F 2 "" H 4800 1100 50  0001 C CNN
F 3 "~" H 4800 1100 50  0001 C CNN
	1    4800 1100
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG03
U 1 1 6149ED32
P 4950 1950
F 0 "#FLG03" H 4950 2025 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 2100 50  0000 C CNN
F 2 "" H 4950 1950 50  0001 C CNN
F 3 "~" H 4950 1950 50  0001 C CNN
	1    4950 1950
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 6149F536
P 4950 1450
F 0 "#FLG02" H 4950 1525 50  0001 C CNN
F 1 "PWR_FLAG" H 4950 1600 50  0000 C CNN
F 2 "" H 4950 1450 50  0001 C CNN
F 3 "~" H 4950 1450 50  0001 C CNN
	1    4950 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	4800 1100 4800 1150
Wire Wire Line
	5100 1150 5100 1100
Wire Wire Line
	4800 1150 5100 1150
Wire Wire Line
	4950 1950 4950 2000
Wire Wire Line
	4950 1500 4950 1450
$Comp
L Device:R_POT_US RV1
U 1 1 613E8B50
P 4350 1950
F 0 "RV1" H 4450 2050 50  0000 L TNN
F 1 "2kΩ" H 4450 2100 50  0000 L CNN
F 2 "Potentiometer_SMD:Potentiometer_Bourns_TC33X_Vertical" H 4350 1950 50  0001 C CNN
F 3 "" H 4350 1950 50  0001 C CNN
F 4 "TC33X-2-202E" H 4350 1950 50  0001 C CNN "MPN"
	1    4350 1950
	-1   0    0    1   
$EndComp
Wire Wire Line
	4150 1700 4150 1950
Wire Wire Line
	4200 1950 4150 1950
Wire Wire Line
	4350 2150 4350 2100
Wire Wire Line
	4150 1700 4350 1700
Connection ~ 4150 1700
NoConn ~ 4350 1800
Wire Wire Line
	3350 1700 4150 1700
Wire Wire Line
	3850 2150 4350 2150
Connection ~ 2900 2150
Connection ~ 3850 2150
Wire Wire Line
	3850 1800 3850 2150
Wire Wire Line
	3650 1800 3850 1800
Wire Wire Line
	3650 1650 3650 1800
Wire Wire Line
	3300 1350 3400 1350
Wire Wire Line
	4350 1450 4350 1700
Wire Wire Line
	3350 1550 3350 1700
Wire Wire Line
	3400 1550 3350 1550
Wire Wire Line
	4350 1450 4300 1450
$Comp
L Device:R_US R4
U 1 1 613EC413
P 4150 1450
F 0 "R4" V 4100 1450 50  0000 C BNN
F 1 "10kΩ" V 4200 1450 50  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 4190 1440 50  0001 C CNN
F 3 "" H 4150 1450 50  0001 C CNN
F 4 "ERJ-PA2F1002X" H 4150 1450 50  0001 C CNN "MPN"
	1    4150 1450
	0    1    1    0   
$EndComp
$Comp
L AD8515:AD8515 U2
U 1 1 613C16CF
P 3650 1650
F 0 "U2" H 3500 1900 30  0000 L CNN
F 1 "AD8515" H 3500 1850 30  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-353_SC-70-5" H 3650 1650 30  0001 C CNN
F 3 "" H 3650 1650 30  0001 C CNN
F 4 "AD8515AKS-REEL7" H 3650 1650 50  0001 C CNN "MPN"
	1    3650 1650
	1    0    0    -1  
$EndComp
Connection ~ 2700 1600
Wire Wire Line
	3650 1200 3650 1250
Wire Wire Line
	3250 1200 3650 1200
Wire Wire Line
	3250 1600 3250 1200
Wire Wire Line
	2700 1600 3250 1600
Wire Wire Line
	3000 1500 2650 1500
Connection ~ 2700 1700
Wire Wire Line
	2700 1800 2700 1700
Wire Wire Line
	2700 2150 2900 2150
Connection ~ 2700 2150
Wire Wire Line
	2700 2100 2700 2150
Wire Wire Line
	2900 2100 2900 2150
Wire Wire Line
	2250 2150 2700 2150
$Comp
L Device:C C5
U 1 1 609E0F1C
P 2900 1950
F 0 "C5" H 2900 2000 50  0000 L BNN
F 1 "22µF" H 2900 1850 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 2938 1800 50  0001 C CNN
F 3 "" H 2900 1950 50  0001 C CNN
F 4 "CL10A226MO7JZNC" H 2900 1950 50  0001 C CNN "MPN"
	1    2900 1950
	1    0    0    -1  
$EndComp
Connection ~ 1300 1500
Wire Wire Line
	1300 1250 1300 1500
Wire Wire Line
	1400 800  1400 750 
Connection ~ 1400 800 
Wire Wire Line
	1300 800  1300 850 
Wire Wire Line
	1400 800  1300 800 
Wire Wire Line
	3000 1450 3000 1500
$Comp
L Device:C C4
U 1 1 609D2CF9
P 2700 1950
F 0 "C4" H 2600 2000 50  0000 L BNN
F 1 "4.7µF" H 2700 1850 50  0000 R CNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2738 1800 50  0001 C CNN
F 3 "" H 2700 1950 50  0001 C CNN
F 4 "CL05A475MP5NRNC" H 2700 1950 50  0001 C CNN "MPN"
	1    2700 1950
	1    0    0    -1  
$EndComp
$Comp
L power:VDD #PWR02
U 1 1 613D28E2
P 1400 750
F 0 "#PWR02" H 1400 600 50  0001 C CNN
F 1 "VDD" H 1400 900 50  0000 C CNN
F 2 "" H 1400 750 50  0001 C CNN
F 3 "" H 1400 750 50  0001 C CNN
	1    1400 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1600 2700 1700
Wire Wire Line
	3000 1150 3000 1100
$Comp
L power:VDD #PWR04
U 1 1 613C6A79
P 3000 750
F 0 "#PWR04" H 3000 600 50  0001 C CNN
F 1 "VDD" H 3000 900 50  0000 C CNN
F 2 "" H 3000 750 50  0001 C CNN
F 3 "" H 3000 750 50  0001 C CNN
	1    3000 750 
	1    0    0    -1  
$EndComp
$Comp
L power:VD #PWR03
U 1 1 613C4DF8
P 2800 750
F 0 "#PWR03" H 2800 600 50  0001 C CNN
F 1 "VD" H 2800 900 50  0000 C CNN
F 2 "" H 2800 750 50  0001 C CNN
F 3 "" H 2800 750 50  0001 C CNN
	1    2800 750 
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR01
U 1 1 613B8D5B
P 1000 2200
F 0 "#PWR01" H 1000 1950 50  0001 C CNN
F 1 "GND" H 1000 2050 50  0000 C CNN
F 2 "" H 1000 2200 50  0001 C CNN
F 3 "" H 1000 2200 50  0001 C CNN
	1    1000 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	1400 1300 1450 1300
Connection ~ 1400 1300
Wire Wire Line
	1400 1300 1400 800 
Wire Wire Line
	1000 1300 1400 1300
Wire Wire Line
	1000 1550 1000 1300
Connection ~ 1300 2150
Wire Wire Line
	1000 2150 1300 2150
Wire Wire Line
	1000 1850 1000 2150
Wire Wire Line
	1300 1500 1300 1800
Connection ~ 1400 2150
Wire Wire Line
	1300 2150 1300 2100
Wire Wire Line
	1400 2150 1300 2150
$Comp
L Device:C C1
U 1 1 609D4222
P 1000 1700
F 0 "C1" H 900 1600 50  0000 L BNN
F 1 "22µF" H 800 1800 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric" H 1038 1550 50  0001 C CNN
F 3 "" H 1000 1700 50  0001 C CNN
F 4 "CL10A226MO7JZNC" H 1000 1700 50  0001 C CNN "MPN"
	1    1000 1700
	-1   0    0    1   
$EndComp
Wire Wire Line
	1450 1500 1300 1500
Wire Wire Line
	1400 2150 1850 2150
Wire Wire Line
	1400 1700 1400 2150
Wire Wire Line
	1450 1700 1400 1700
$Comp
L Device:R_US R1
U 1 1 613857A8
P 1300 1950
F 0 "R1" H 1250 2000 50  0000 R CNN
F 1 "10kΩ" H 1050 1900 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 1340 1940 50  0001 C CNN
F 3 "" H 1300 1950 50  0001 C CNN
F 4 "ERJ-PA2F1002X" H 1300 1950 50  0001 C CNN "MPN"
	1    1300 1950
	1    0    0    -1  
$EndComp
$Comp
L Switch:SW_SPST SW1
U 1 1 60BF49E7
P 1300 1050
F 0 "SW1" V 1250 1150 50  0000 C CNN
F 1 "SW_SPST" V 1150 1400 50  0000 R CNN
F 2 "WUERTH_434121050836:WUERTH_434121050836" H 1300 1050 50  0001 C CNN
F 3 "" H 1300 1050 50  0001 C CNN
F 4 "434121050836" H 1300 1050 50  0001 C CNN "MPN"
	1    1300 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:LED D1
U 1 1 60BEC726
P 3000 1300
F 0 "D1" V 3050 1200 50  0000 C CNN
F 1 "RED" V 2950 1100 50  0000 L CNN
F 2 "LED_SMD:LED_0402_1005Metric" H 3000 1300 50  0001 C CNN
F 3 "" H 3000 1300 50  0001 C CNN
F 4 "5988A10107F" H 3000 1300 50  0001 C CNN "MPN"
	1    3000 1300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3000 800  3000 750 
$Comp
L Device:R_US R2
U 1 1 60C02274
P 3000 950
F 0 "R2" H 3068 996 50  0000 L CNN
F 1 "68Ω" H 3068 905 50  0000 L CNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3040 940 50  0001 C CNN
F 3 "" H 3000 950 50  0001 C CNN
F 4 "ERJ-U02J680X" H 3000 950 50  0001 C CNN "MPN"
	1    3000 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2700 1600 2650 1600
Wire Wire Line
	2650 1700 2700 1700
Connection ~ 2250 2150
Connection ~ 1850 2150
Wire Wire Line
	1950 2150 2050 2150
Connection ~ 1950 2150
Wire Wire Line
	1950 2100 1950 2150
Wire Wire Line
	2050 2100 2050 2150
Wire Wire Line
	2150 2150 2250 2150
Connection ~ 2150 2150
Wire Wire Line
	2150 2100 2150 2150
Wire Wire Line
	2050 2150 2150 2150
Connection ~ 2050 2150
Wire Wire Line
	2250 2150 2250 2100
Wire Wire Line
	1850 2150 1950 2150
Wire Wire Line
	1850 2100 1850 2150
$Comp
L Device:L L1
U 1 1 609D93BC
P 2050 850
F 0 "L1" V 2300 850 50  0000 C BNN
F 1 "6.8µH" V 2200 850 50  0000 C BNN
F 2 "Inductor_SMD:L_Taiyo-Yuden_MD-4040" H 2050 850 50  0001 C CNN
F 3 "" H 2050 850 50  0001 C CNN
F 4 "LQH44PH6R8MPRL" H 2050 850 50  0001 C CNN "MPN"
	1    2050 850 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	2500 850  2500 900 
Wire Wire Line
	1600 850  1600 900 
Connection ~ 1900 850 
$Comp
L Device:C C2
U 1 1 609DB67E
P 1750 850
F 0 "C2" V 1550 850 50  0000 C BNN
F 1 "22nF" V 1650 850 50  0000 C BNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 1788 700 50  0001 C CNN
F 3 "" H 1750 850 50  0001 C CNN
F 4 "C1005X7R1E223K050BB" H 1750 850 50  0001 C CNN "MPN"
	1    1750 850 
	0    1    1    0   
$EndComp
Connection ~ 2200 850 
$Comp
L Device:C C3
U 1 1 609DAEBA
P 2350 850
F 0 "C3" V 2150 850 50  0000 C BNN
F 1 "22nF" V 2250 850 50  0000 C BNN
F 2 "Capacitor_SMD:C_0402_1005Metric" H 2388 700 50  0001 C CNN
F 3 "" H 2350 850 50  0001 C CNN
F 4 "C1005X7R1E223K050BB" H 2350 850 50  0001 C CNN "MPN"
	1    2350 850 
	0    1    1    0   
$EndComp
Wire Wire Line
	2200 850  2200 900 
Wire Wire Line
	1900 850  1900 900 
Wire Wire Line
	1000 2200 1000 2150
Connection ~ 1000 2150
Wire Wire Line
	3900 1450 3950 1450
Wire Wire Line
	3950 1450 3950 1750
Wire Wire Line
	3950 1750 2800 1750
Wire Wire Line
	2800 1750 2800 1400
Wire Wire Line
	2800 1400 2650 1400
Connection ~ 3950 1450
Wire Wire Line
	3950 1450 4000 1450
$Comp
L LTC3129IUD:LTC3129IUD U1
U 1 1 61368472
P 2050 1500
F 0 "U1" H 2100 1550 50  0000 R CNN
F 1 "LTC3129IUD" H 2250 1450 50  0000 R CNN
F 2 "Package_DFN_QFN:VQFN-16-1EP_3x3mm_P0.5mm_EP1.68x1.68mm" H 2050 1550 50  0001 C CNN
F 3 "" H 2050 1550 50  0001 C CNN
F 4 "LTC3129IUD" H 2050 1500 50  0001 C CNN "MPN"
	1    2050 1500
	1    0    0    -1  
$EndComp
$Comp
L power:GNDA #PWR05
U 1 1 613F3AFF
P 3300 1950
F 0 "#PWR05" H 3300 1700 50  0001 C CNN
F 1 "GNDA" H 3300 1800 50  0000 C CNN
F 2 "" H 3300 1950 50  0001 C CNN
F 3 "" H 3300 1950 50  0001 C CNN
	1    3300 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 613F488D
P 3500 1900
F 0 "R3" V 3450 1900 50  0000 C BNN
F 1 "1Ω" V 3550 1900 50  0000 C TNN
F 2 "Resistor_SMD:R_0402_1005Metric" V 3540 1890 50  0001 C CNN
F 3 "" H 3500 1900 50  0001 C CNN
F 4 "MCS0402MC1008FE000" H 3500 1900 50  0001 C CNN "MPN"
	1    3500 1900
	0    1    1    0   
$EndComp
Wire Wire Line
	3300 1350 3300 1900
Wire Wire Line
	3350 1900 3300 1900
Connection ~ 3300 1900
Wire Wire Line
	3300 1900 3300 1950
Wire Wire Line
	3650 1900 3700 1900
Wire Wire Line
	3700 1900 3700 2150
Connection ~ 3700 2150
Wire Wire Line
	3700 2150 3850 2150
Wire Wire Line
	2900 2150 3700 2150
Wire Wire Line
	2900 1300 2900 1800
Wire Wire Line
	2650 1300 2800 1300
Wire Wire Line
	2800 1300 2800 750 
Connection ~ 2800 1300
Wire Wire Line
	2800 1300 2900 1300
Text Notes 5150 1100 0    50   ~ 0
IN+
Text Notes 5150 1550 0    50   ~ 0
IN-
Text Notes 2550 700  0    50   ~ 0
OUT+
Text Notes 5150 2000 0    50   ~ 0
OUT-
$EndSCHEMATC
