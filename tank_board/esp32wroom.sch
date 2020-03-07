EESchema Schematic File Version 4
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
L dk_RF-Transceiver-Modules:ESP32-WROOM-32 MOD1
U 1 1 5E2FF85E
P 3600 1550
F 0 "MOD1" H 3350 -550 60  0000 C CNN
F 1 "ESP32-WROOM-32" H 4400 -500 60  0000 C CNN
F 2 "digikey-footprints:ESP32-WROOM-32D" H 3800 1750 60  0001 L CNN
F 3 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3800 1850 60  0001 L CNN
F 4 "1904-1010-1-ND" H 3800 1950 60  0001 L CNN "Digi-Key_PN"
F 5 "ESP32-WROOM-32" H 3800 2050 60  0001 L CNN "MPN"
F 6 "RF/IF and RFID" H 3800 2150 60  0001 L CNN "Category"
F 7 "RF Transceiver Modules" H 3800 2250 60  0001 L CNN "Family"
F 8 "https://www.espressif.com/sites/default/files/documentation/esp32-wroom-32_datasheet_en.pdf" H 3800 2350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/espressif-systems/ESP32-WROOM-32/1904-1010-1-ND/8544305" H 3800 2450 60  0001 L CNN "DK_Detail_Page"
F 10 "SMD MODULE, ESP32-D0WDQ6, 32MBIT" H 3800 2550 60  0001 L CNN "Description"
F 11 "Espressif Systems" H 3800 2650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 3800 2750 60  0001 L CNN "Status"
	1    3600 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R2
U 1 1 5E3D6757
P 2100 1400
F 0 "R2" V 2000 1400 50  0000 C CNN
F 1 "10k" V 2100 1400 50  0000 C CNN
F 2 "" V 2030 1400 50  0001 C CNN
F 3 "~" H 2100 1400 50  0001 C CNN
F 4 "Resistors" H 2100 1400 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2100 1400 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 10K OHM 1% 1/10W 0603" H 2100 1400 50  0001 C CNN "Description"
F 7 "RMCF0603FT10K0CT-ND" H 2100 1400 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 2100 1400 50  0001 C CNN "Family"
F 9 "RMCF0603FT10K0" H 2100 1400 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 2100 1400 50  0001 C CNN "Manufacturer"
F 11 "Active" H 2100 1400 50  0001 C CNN "Status"
	1    2100 1400
	-1   0    0    1   
$EndComp
$Comp
L Device:C C2
U 1 1 5E3D6E2F
P 2100 1900
F 0 "C2" H 2215 1946 50  0000 L CNN
F 1 "0.1u" H 2215 1855 50  0000 L CNN
F 2 "" H 2138 1750 50  0001 C CNN
F 3 "~" H 2100 1900 50  0001 C CNN
F 4 "1276-1005-1-ND" H 2100 1900 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B104KO8NNNC/1276-1005-1-ND/3889091" H 2100 1900 50  0001 C CNN "DK_Detail_Page"
F 6 "CAP CER 0.1UF 16V X7R 0603" H 2100 1900 50  0001 C CNN "Description"
	1    2100 1900
	1    0    0    -1  
$EndComp
$Comp
L Device:R R1
U 1 1 5E3D96EF
P 4650 1100
F 0 "R1" V 4550 1100 50  0000 C CNN
F 1 "10k" V 4650 1100 50  0000 C CNN
F 2 "" V 4580 1100 50  0001 C CNN
F 3 "~" H 4650 1100 50  0001 C CNN
F 4 "Resistors" H 4650 1100 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 4650 1100 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 10K OHM 1% 1/10W 0603" H 4650 1100 50  0001 C CNN "Description"
F 7 "RMCF0603FT10K0CT-ND" H 4650 1100 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 4650 1100 50  0001 C CNN "Family"
F 9 "RMCF0603FT10K0" H 4650 1100 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 4650 1100 50  0001 C CNN "Manufacturer"
F 11 "Active" H 4650 1100 50  0001 C CNN "Status"
	1    4650 1100
	-1   0    0    1   
$EndComp
$Comp
L dk_USB-DVI-HDMI-Connectors:10103594-0001LF J1
U 1 1 5E3ED73C
P 1850 5700
F 0 "J1" H 1864 6423 50  0000 C CNN
F 1 "10103594-0001LF" H 1864 6332 50  0000 C CNN
F 2 "digikey-footprints:USB_Micro_B_Female_10103594-0001LF" H 2050 5900 60  0001 L CNN
F 3 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10103594.pdf" H 2050 6000 60  0001 L CNN
F 4 "609-4050-1-ND" H 2050 6100 60  0001 L CNN "Digi-Key_PN"
F 5 "10103594-0001LF" H 2050 6200 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 2050 6300 60  0001 L CNN "Category"
F 7 "USB, DVI, HDMI Connectors" H 2050 6400 60  0001 L CNN "Family"
F 8 "https://cdn.amphenol-icc.com/media/wysiwyg/files/drawing/10103594.pdf" H 2050 6500 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/amphenol-icc-fci/10103594-0001LF/609-4050-1-ND/2350357" H 2050 6600 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN RCPT USB2.0 MICRO B SMD R/A" H 2050 6700 60  0001 L CNN "Description"
F 11 "Amphenol ICC (FCI)" H 2050 6800 60  0001 L CNN "Manufacturer"
F 12 "Active" H 2050 6900 60  0001 L CNN "Status"
	1    1850 5700
	1    0    0    -1  
$EndComp
$Comp
L Device:R R9
U 1 1 5E3F4B9C
P 2850 6000
F 0 "R9" V 2750 6000 50  0000 C CNN
F 1 "100k" V 2850 6000 50  0000 C CNN
F 2 "" V 2780 6000 50  0001 C CNN
F 3 "~" H 2850 6000 50  0001 C CNN
F 4 "Resistors" H 2850 6000 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 2850 6000 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 100K OHM 1% 1/10W 0603" H 2850 6000 50  0001 C CNN "Description"
F 7 "RMCF0603FT100KCT-ND" H 2850 6000 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 2850 6000 50  0001 C CNN "Family"
F 9 "RMCF0603FT100K" H 2850 6000 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 2850 6000 50  0001 C CNN "Manufacturer"
F 11 "Active" H 2850 6000 50  0001 C CNN "Status"
	1    2850 6000
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR04
U 1 1 5E44A9AC
P 7250 1450
F 0 "#PWR04" H 7250 1300 50  0001 C CNN
F 1 "+3V3" H 7265 1623 50  0000 C CNN
F 2 "" H 7250 1450 50  0001 C CNN
F 3 "" H 7250 1450 50  0001 C CNN
	1    7250 1450
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 1500 7600 1500
Wire Wire Line
	7250 1500 7250 1450
NoConn ~ 2100 5800
Wire Wire Line
	2100 5900 2300 5900
Wire Wire Line
	2300 5900 2300 6450
Wire Wire Line
	2300 6450 1700 6450
Wire Wire Line
	1700 6450 1700 6300
$Comp
L power:GND #PWR015
U 1 1 5E4D14C9
P 2300 6450
F 0 "#PWR015" H 2300 6200 50  0001 C CNN
F 1 "GND" H 2305 6277 50  0000 C CNN
F 2 "" H 2300 6450 50  0001 C CNN
F 3 "" H 2300 6450 50  0001 C CNN
	1    2300 6450
	1    0    0    -1  
$EndComp
Connection ~ 2300 6450
Wire Wire Line
	2100 5500 2850 5500
Wire Wire Line
	2850 5500 2850 5800
Wire Wire Line
	2850 6150 2850 6450
Wire Wire Line
	2850 6450 2300 6450
Wire Wire Line
	2100 5600 2500 5600
Wire Wire Line
	2100 5700 2500 5700
Text Label 2500 5600 2    50   ~ 0
D-
Text Label 2500 5700 2    50   ~ 0
D+
$Comp
L Transistor_FET:BS250 Q3
U 1 1 5E4DA70C
P 3450 5500
F 0 "Q3" H 3654 5546 50  0000 L CNN
F 1 "FDN340P" H 3654 5455 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SuperSOT-3" H 3650 5425 50  0001 L CIN
F 3 "http://www.vishay.com/docs/70209/70209.pdf" H 3450 5500 50  0001 L CNN
F 4 "Discrete Semiconductor Products" H 3450 5500 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/on-semiconductor/FDN340P/FDN340PCT-ND/965604?utm_adgroup=Semiconductor%20Modules&utm_source=google&utm_medium=cpc&utm_campaign=Dynamic%20Search&utm_term=&utm_content=Semiconductor%20Modules&gclid=EAIaIQobChMIxIipxsm25wIVCNbACh26dwHDEAAYASAAEgLeTvD_BwE" H 3450 5500 50  0001 C CNN "DK_Detail_Page"
F 6 "MOSFET P-CH 20V 2A SSOT3" H 3450 5500 50  0001 C CNN "Description"
F 7 "FDN340PCT-ND" H 3450 5500 50  0001 C CNN "Digi-Key_PN"
F 8 "Transistors - FETs, MOSFETs - Single" H 3450 5500 50  0001 C CNN "Family"
F 9 "FDN340P" H 3450 5500 50  0001 C CNN "MPN"
F 10 "ON Semiconductor" H 3450 5500 50  0001 C CNN "Manufacturer"
F 11 "Active" H 3450 5500 50  0001 C CNN "Status"
	1    3450 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1650 2100 1650
Wire Wire Line
	2100 1650 2100 1550
Wire Wire Line
	2100 1650 2100 1750
Connection ~ 2100 1650
$Comp
L power:+3V3 #PWR02
U 1 1 5E4F60D5
P 2100 1150
F 0 "#PWR02" H 2100 1000 50  0001 C CNN
F 1 "+3V3" H 2115 1323 50  0000 C CNN
F 2 "" H 2100 1150 50  0001 C CNN
F 3 "" H 2100 1150 50  0001 C CNN
	1    2100 1150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR06
U 1 1 5E4F67BD
P 2100 2250
F 0 "#PWR06" H 2100 2000 50  0001 C CNN
F 1 "GND" H 2105 2077 50  0000 C CNN
F 2 "" H 2100 2250 50  0001 C CNN
F 3 "" H 2100 2250 50  0001 C CNN
	1    2100 2250
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2050 2100 2250
Wire Wire Line
	2100 1250 2100 1150
$Comp
L power:+3V3 #PWR01
U 1 1 5E507A94
P 4650 950
F 0 "#PWR01" H 4650 800 50  0001 C CNN
F 1 "+3V3" H 4665 1123 50  0000 C CNN
F 2 "" H 4650 950 50  0001 C CNN
F 3 "" H 4650 950 50  0001 C CNN
	1    4650 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 1250 4650 1450
Text Label 4650 1450 1    50   ~ 0
IO0
Wire Wire Line
	3600 3650 3600 3750
Wire Wire Line
	3600 3750 3700 3750
Wire Wire Line
	3900 3750 3900 3650
Wire Wire Line
	3800 3650 3800 3750
Connection ~ 3800 3750
Wire Wire Line
	3800 3750 3900 3750
Wire Wire Line
	3700 3650 3700 3750
Connection ~ 3700 3750
Wire Wire Line
	3700 3750 3750 3750
Wire Wire Line
	3750 3750 3750 3850
Connection ~ 3750 3750
Wire Wire Line
	3750 3750 3800 3750
$Comp
L power:GND #PWR08
U 1 1 5E51599A
P 3750 3850
F 0 "#PWR08" H 3750 3600 50  0001 C CNN
F 1 "GND" H 3755 3677 50  0000 C CNN
F 2 "" H 3750 3850 50  0001 C CNN
F 3 "" H 3750 3850 50  0001 C CNN
	1    3750 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	3100 1750 2900 1750
Text Label 2900 1750 0    50   ~ 0
IO0
NoConn ~ 3100 1850
NoConn ~ 3100 2150
NoConn ~ 3100 2450
NoConn ~ 4500 2150
NoConn ~ 4500 2250
NoConn ~ 4500 2350
NoConn ~ 4500 1950
NoConn ~ 4500 2050
NoConn ~ 4500 1850
Wire Wire Line
	4500 2450 4800 2450
Wire Wire Line
	4500 2550 4800 2550
Text Label 4800 2450 2    50   ~ 0
TXD
Text Label 4800 2550 2    50   ~ 0
RXD
NoConn ~ 3100 2350
NoConn ~ 3100 2050
Wire Wire Line
	3100 1950 2850 1950
Wire Wire Line
	3100 2250 2850 2250
Wire Wire Line
	3100 2550 2850 2550
Wire Wire Line
	3100 2650 2850 2650
Wire Wire Line
	3100 2750 2850 2750
Wire Wire Line
	3100 2850 2850 2850
Wire Wire Line
	3100 2950 2850 2950
Wire Wire Line
	3100 3050 2850 3050
Wire Wire Line
	3100 3150 2850 3150
Wire Wire Line
	3100 3250 2850 3250
Wire Wire Line
	3100 3350 2850 3350
Wire Wire Line
	3100 3450 2850 3450
Wire Wire Line
	4500 3050 4700 3050
Wire Wire Line
	4500 2950 4700 2950
Wire Wire Line
	4500 2850 4700 2850
Wire Wire Line
	4500 2750 4700 2750
Wire Wire Line
	4500 1650 4700 1650
Wire Wire Line
	4500 1750 4700 1750
Text HLabel 2850 2250 0    50   Input ~ 0
IO13
Text HLabel 2850 2550 0    50   BiDi ~ 0
IO16
Text HLabel 2850 2650 0    50   BiDi ~ 0
IO17
Text HLabel 2850 2750 0    50   BiDi ~ 0
IO18
Text HLabel 2850 2850 0    50   BiDi ~ 0
IO19
Text HLabel 2850 2950 0    50   BiDi ~ 0
IO21
Text HLabel 2850 3050 0    50   BiDi ~ 0
IO22
Text HLabel 2850 3150 0    50   BiDi ~ 0
IO23
Text HLabel 2850 3250 0    50   BiDi ~ 0
IO25
Text HLabel 2850 3350 0    50   BiDi ~ 0
IO26
Text HLabel 2850 3450 0    50   BiDi ~ 0
IO27
Text HLabel 4700 3050 2    50   BiDi ~ 0
IO32
Text HLabel 4700 2950 2    50   BiDi ~ 0
IO33
Text HLabel 4700 2850 2    50   Input ~ 0
IO34
Text HLabel 4700 2750 2    50   Input ~ 0
IO35
Text HLabel 4700 1750 2    50   Input ~ 0
SENSOR_VN
Text HLabel 4700 1650 2    50   Input ~ 0
SENSOR_VP
Wire Wire Line
	3800 1450 3800 1200
$Comp
L power:+3V3 #PWR03
U 1 1 5E596547
P 3800 1200
F 0 "#PWR03" H 3800 1050 50  0001 C CNN
F 1 "+3V3" H 3815 1373 50  0000 C CNN
F 2 "" H 3800 1200 50  0001 C CNN
F 3 "" H 3800 1200 50  0001 C CNN
	1    3800 1200
	1    0    0    -1  
$EndComp
$Comp
L Diode:MBR0520 D3
U 1 1 5E5A67AF
P 3200 5800
F 0 "D3" H 3200 5584 50  0000 C CNN
F 1 "MBR0520" H 3200 5675 50  0000 C CNN
F 2 "Diode_SMD:D_SOD-123" H 3200 5625 50  0001 C CNN
F 3 "http://www.mccsemi.com/up_pdf/MBR0520~MBR0580(SOD123).pdf" H 3200 5800 50  0001 C CNN
	1    3200 5800
	-1   0    0    1   
$EndComp
Wire Wire Line
	3550 5700 3550 5800
Wire Wire Line
	3550 5800 3350 5800
Wire Wire Line
	3050 5800 2850 5800
Connection ~ 2850 5800
Wire Wire Line
	2850 5800 2850 5850
Wire Wire Line
	2850 5500 3250 5500
Connection ~ 2850 5500
Wire Wire Line
	3550 5300 3550 5100
$Comp
L dk_Interface-Controllers:FT231XS-U U1
U 1 1 5E3B6CFC
P 7050 2550
F 0 "U1" H 6750 1400 60  0000 C CNN
F 1 "FT231XS-U" H 6750 1500 60  0000 C CNN
F 2 "digikey-footprints:SSOP-20_W3.9mm" H 7250 2750 60  0001 L CNN
F 3 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 7250 2850 60  0001 L CNN
F 4 "768-1156-5-ND" H 7250 2950 60  0001 L CNN "Digi-Key_PN"
F 5 "FT231XS-U" H 7250 3050 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 7250 3150 60  0001 L CNN "Category"
F 7 "Interface - Controllers" H 7250 3250 60  0001 L CNN "Family"
F 8 "http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT231X.pdf" H 7250 3350 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/ftdi-future-technology-devices-international-ltd/FT231XS-U/768-1156-5-ND/3749471" H 7250 3450 60  0001 L CNN "DK_Detail_Page"
F 10 "IC USB SERIAL FULL UART 20SSOP" H 7250 3550 60  0001 L CNN "Description"
F 11 "FTDI, Future Technology Devices International Ltd" H 7250 3650 60  0001 L CNN "Manufacturer"
F 12 "Active" H 7250 3750 60  0001 L CNN "Status"
	1    7050 2550
	1    0    0    -1  
$EndComp
$Comp
L Device:R R3
U 1 1 5E3BFE8B
P 6250 2350
F 0 "R3" V 6150 2350 50  0000 C CNN
F 1 "27R" V 6250 2350 50  0000 C CNN
F 2 "" V 6180 2350 50  0001 C CNN
F 3 "~" H 6250 2350 50  0001 C CNN
F 4 "Resistors" H 6250 2350 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT27R0/RMCF0603FT27R0CT-ND/2418003" H 6250 2350 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 27 OHM 1% 1/10W 0603" H 6250 2350 50  0001 C CNN "Description"
F 7 "RMCF0603FT27R0CT-ND " H 6250 2350 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 6250 2350 50  0001 C CNN "Family"
F 9 "RMCF0603FT27R0" H 6250 2350 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 6250 2350 50  0001 C CNN "Manufacturer"
F 11 "Active" H 6250 2350 50  0001 C CNN "Status"
	1    6250 2350
	0    1    1    0   
$EndComp
$Comp
L Device:R R4
U 1 1 5E3C4521
P 6250 2450
F 0 "R4" V 6150 2450 50  0000 C CNN
F 1 "27R" V 6250 2450 50  0000 C CNN
F 2 "" V 6180 2450 50  0001 C CNN
F 3 "~" H 6250 2450 50  0001 C CNN
F 4 "Resistors" H 6250 2450 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT27R0/RMCF0603FT27R0CT-ND/2418003" H 6250 2450 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 27 OHM 1% 1/10W 0603" H 6250 2450 50  0001 C CNN "Description"
F 7 "RMCF0603FT27R0CT-ND " H 6250 2450 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 6250 2450 50  0001 C CNN "Family"
F 9 "RMCF0603FT27R0" H 6250 2450 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 6250 2450 50  0001 C CNN "Manufacturer"
F 11 "Active" H 6250 2450 50  0001 C CNN "Status"
	1    6250 2450
	0    -1   -1   0   
$EndComp
$Comp
L Device:C C3
U 1 1 5E3C4BCD
P 7700 3200
F 0 "C3" H 7815 3246 50  0000 L CNN
F 1 "0.1u" H 7815 3155 50  0000 L CNN
F 2 "" H 7738 3050 50  0001 C CNN
F 3 "~" H 7700 3200 50  0001 C CNN
F 4 "1276-1005-1-ND" H 7700 3200 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B104KO8NNNC/1276-1005-1-ND/3889091" H 7700 3200 50  0001 C CNN "DK_Detail_Page"
F 6 "CAP CER 0.1UF 16V X7R 0603" H 7700 3200 50  0001 C CNN "Description"
	1    7700 3200
	1    0    0    -1  
$EndComp
$Comp
L Device:R R5
U 1 1 5E3CA7C4
P 8950 2450
F 0 "R5" V 8850 2450 50  0000 C CNN
F 1 "10k" V 8950 2450 50  0000 C CNN
F 2 "" V 8880 2450 50  0001 C CNN
F 3 "~" H 8950 2450 50  0001 C CNN
F 4 "Resistors" H 8950 2450 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 8950 2450 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 10K OHM 1% 1/10W 0603" H 8950 2450 50  0001 C CNN "Description"
F 7 "RMCF0603FT10K0CT-ND" H 8950 2450 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 8950 2450 50  0001 C CNN "Family"
F 9 "RMCF0603FT10K0" H 8950 2450 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 8950 2450 50  0001 C CNN "Manufacturer"
F 11 "Active" H 8950 2450 50  0001 C CNN "Status"
	1    8950 2450
	0    1    1    0   
$EndComp
$Comp
L Device:R R6
U 1 1 5E3CAE33
P 8950 3350
F 0 "R6" V 8850 3350 50  0000 C CNN
F 1 "10k" V 8950 3350 50  0000 C CNN
F 2 "" V 8880 3350 50  0001 C CNN
F 3 "~" H 8950 3350 50  0001 C CNN
F 4 "Resistors" H 8950 3350 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT10K0/RMCF0603FT10K0CT-ND/1943057" H 8950 3350 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 10K OHM 1% 1/10W 0603" H 8950 3350 50  0001 C CNN "Description"
F 7 "RMCF0603FT10K0CT-ND" H 8950 3350 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 8950 3350 50  0001 C CNN "Family"
F 9 "RMCF0603FT10K0" H 8950 3350 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 8950 3350 50  0001 C CNN "Manufacturer"
F 11 "Active" H 8950 3350 50  0001 C CNN "Status"
	1    8950 3350
	0    -1   -1   0   
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904-7-F Q1
U 1 1 5E3CD8B5
P 9600 2450
F 0 "Q1" H 9788 2503 60  0000 L CNN
F 1 "MMBT3904-7-F" H 9788 2397 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9800 2650 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 9800 2750 60  0001 L CNN
F 4 "MMBT3904-FDICT-ND" H 9800 2850 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT3904-7-F" H 9800 2950 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9800 3050 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9800 3150 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 9800 3250 60  0001 L CNN "DK_Datasheet_Link"
F 9 "https://www.digikey.com/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 9800 3350 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A SMD SOT23-3" H 9800 3450 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 9800 3550 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9800 3650 60  0001 L CNN "Status"
	1    9600 2450
	1    0    0    -1  
$EndComp
$Comp
L dk_Transistors-Bipolar-BJT-Single:MMBT3904-7-F Q2
U 1 1 5E3D1176
P 9600 3350
F 0 "Q2" H 9788 3403 60  0000 L CNN
F 1 "MMBT3904-7-F" H 9788 3297 60  0000 L CNN
F 2 "digikey-footprints:SOT-23-3" H 9800 3550 60  0001 L CNN
F 3 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 9800 3650 60  0001 L CNN
F 4 "MMBT3904-FDICT-ND" H 9800 3750 60  0001 L CNN "Digi-Key_PN"
F 5 "MMBT3904-7-F" H 9800 3850 60  0001 L CNN "MPN"
F 6 "Discrete Semiconductor Products" H 9800 3950 60  0001 L CNN "Category"
F 7 "Transistors - Bipolar (BJT) - Single" H 9800 4050 60  0001 L CNN "Family"
F 8 "https://www.diodes.com/assets/Datasheets/ds30036.pdf" H 9800 4150 60  0001 L CNN "DK_Datasheet_Link"
F 9 "https://www.digikey.com/product-detail/en/diodes-incorporated/MMBT3904-7-F/MMBT3904-FDICT-ND/815727" H 9800 4250 60  0001 L CNN "DK_Detail_Page"
F 10 "TRANS NPN 40V 0.2A SMD SOT23-3" H 9800 4350 60  0001 L CNN "Description"
F 11 "Diodes Incorporated" H 9800 4450 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9800 4550 60  0001 L CNN "Status"
	1    9600 3350
	1    0    0    1   
$EndComp
Wire Wire Line
	6650 2350 6400 2350
Wire Wire Line
	6650 2450 6400 2450
Wire Wire Line
	6100 2350 5800 2350
Wire Wire Line
	6100 2450 5800 2450
Text Label 5800 2350 0    50   ~ 0
D-
Text Label 5800 2450 0    50   ~ 0
D+
Wire Wire Line
	7150 3650 7150 3750
Wire Wire Line
	7150 3750 7200 3750
Wire Wire Line
	7250 3750 7250 3650
$Comp
L power:GND #PWR07
U 1 1 5E43BEBA
P 7200 3750
F 0 "#PWR07" H 7200 3500 50  0001 C CNN
F 1 "GND" H 7205 3577 50  0000 C CNN
F 2 "" H 7200 3750 50  0001 C CNN
F 3 "" H 7200 3750 50  0001 C CNN
	1    7200 3750
	1    0    0    -1  
$EndComp
Connection ~ 7200 3750
Wire Wire Line
	7200 3750 7250 3750
Wire Wire Line
	7150 2150 7150 2100
Wire Wire Line
	6650 2550 6500 2550
Wire Wire Line
	6500 2550 6500 2100
Wire Wire Line
	6500 2100 7150 2100
Wire Wire Line
	7700 2100 7700 2650
Wire Wire Line
	7700 2650 7450 2650
Connection ~ 7150 2100
Wire Wire Line
	7700 3750 7250 3750
Connection ~ 7250 3750
Wire Wire Line
	7700 2650 7700 3050
Connection ~ 7700 2650
Wire Wire Line
	7700 3350 7700 3750
Wire Wire Line
	7450 2750 7950 2750
Text Label 7950 2750 2    50   ~ 0
RXD
Text Label 5800 2650 0    50   ~ 0
TXD
Wire Wire Line
	6650 2650 5800 2650
Wire Wire Line
	7150 2100 7700 2100
Wire Wire Line
	7600 1800 7600 1850
$Comp
L power:GND #PWR05
U 1 1 5E45A75D
P 7600 1850
F 0 "#PWR05" H 7600 1600 50  0001 C CNN
F 1 "GND" H 7605 1677 50  0000 C CNN
F 2 "" H 7600 1850 50  0001 C CNN
F 3 "" H 7600 1850 50  0001 C CNN
	1    7600 1850
	1    0    0    -1  
$EndComp
Wire Wire Line
	7450 2950 8400 2950
Wire Wire Line
	7450 2850 8400 2850
Wire Wire Line
	8400 2850 8400 2450
Wire Wire Line
	8400 2450 8650 2450
Wire Wire Line
	9100 2450 9400 2450
Wire Wire Line
	8400 2950 8400 3350
Wire Wire Line
	8400 3350 8650 3350
Wire Wire Line
	9100 3350 9400 3350
Wire Wire Line
	9700 2650 9700 2750
Wire Wire Line
	9700 3150 9700 3000
Wire Wire Line
	9700 2750 9400 3050
Wire Wire Line
	9700 3000 9400 2750
Wire Wire Line
	9400 2750 8950 2750
Wire Wire Line
	9400 3050 8950 3050
Wire Wire Line
	8950 3050 8650 3350
Connection ~ 8650 3350
Wire Wire Line
	8650 3350 8800 3350
Wire Wire Line
	8650 2450 8950 2750
Connection ~ 8650 2450
Wire Wire Line
	8650 2450 8800 2450
Wire Wire Line
	9700 2250 9700 2050
Wire Wire Line
	9700 2050 10300 2050
Wire Wire Line
	9700 3550 9700 3800
Wire Wire Line
	9700 3800 10300 3800
Text Label 10300 2050 2    50   ~ 0
IO0
Text Label 10300 3800 2    50   ~ 0
EN
NoConn ~ 6650 2750
NoConn ~ 6650 2850
NoConn ~ 6650 2950
NoConn ~ 6650 3050
$Comp
L power:+3V3 #PWR013
U 1 1 5E4CCA86
P 5700 5800
F 0 "#PWR013" H 5700 5650 50  0001 C CNN
F 1 "+3V3" H 5715 5973 50  0000 C CNN
F 2 "" H 5700 5800 50  0001 C CNN
F 3 "" H 5700 5800 50  0001 C CNN
	1    5700 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 2150 7250 1500
$Comp
L Device:C C1
U 1 1 5E3C70A4
P 7600 1650
F 0 "C1" H 7715 1696 50  0000 L CNN
F 1 "2.2u" H 7715 1605 50  0000 L CNN
F 2 "" H 7638 1500 50  0001 C CNN
F 3 "~" H 7600 1650 50  0001 C CNN
F 4 "1276-2956-1-ND" H 7600 1650 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL21B225KOFNFNE/1276-2956-1-ND/3891042" H 7600 1650 50  0001 C CNN "DK_Detail_Page"
F 6 "CAP CER 2.2UF 16V X7R 0805" H 7600 1650 50  0001 C CNN "Description"
	1    7600 1650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5E3AAA0B
P 4900 6400
F 0 "#PWR014" H 4900 6150 50  0001 C CNN
F 1 "GND" H 4905 6227 50  0000 C CNN
F 2 "" H 4900 6400 50  0001 C CNN
F 3 "" H 4900 6400 50  0001 C CNN
	1    4900 6400
	1    0    0    -1  
$EndComp
Wire Wire Line
	5300 5900 5450 5900
Connection ~ 4900 6400
Wire Wire Line
	5450 6400 5450 6250
Wire Wire Line
	4900 6400 5450 6400
Wire Wire Line
	4900 6400 4900 6100
Wire Wire Line
	4250 6400 4900 6400
Wire Wire Line
	4250 6250 4250 6400
Wire Wire Line
	4250 5800 4250 5950
$Comp
L Device:C C4
U 1 1 5E3A5F42
P 4250 6100
F 0 "C4" H 4365 6146 50  0000 L CNN
F 1 "1u" H 4365 6055 50  0000 L CNN
F 2 "" H 4288 5950 50  0001 C CNN
F 3 "~" H 4250 6100 50  0001 C CNN
F 4 " 1276-6524-1-ND " H 4250 6100 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL10B105MO8NNWC/1276-6524-1-ND/5961383" H 4250 6100 50  0001 C CNN "DK_Detail_Page"
F 6 "CAP CER 1UF 16V X7R 0603" H 4250 6100 50  0001 C CNN "Description"
	1    4250 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:C C5
U 1 1 5E3A46E4
P 5450 6100
F 0 "C5" H 5565 6146 50  0000 L CNN
F 1 "4.7u" H 5565 6055 50  0000 L CNN
F 2 "" H 5488 5950 50  0001 C CNN
F 3 "~" H 5450 6100 50  0001 C CNN
F 4 "1276-2873-1-ND" H 5450 6100 50  0001 C CNN "Digi-Key_PN"
F 5 "https://www.digikey.com/product-detail/en/samsung-electro-mechanics/CL21B475KOFNNNE/1276-2873-1-ND/3890959" H 5450 6100 50  0001 C CNN "DK_Detail_Page"
F 6 "4.7µF ±10% 16V Ceramic Capacitor X7R 0805 (2012 Metric)" H 5450 6100 50  0001 C CNN "Description"
	1    5450 6100
	1    0    0    -1  
$EndComp
$Comp
L dk_PMIC-Voltage-Regulators-Linear:LD1117S33CTR U2
U 1 1 5E3A2333
P 4900 5800
F 0 "U2" H 4950 6087 60  0000 C CNN
F 1 "LDL1117S33R" H 4950 5981 60  0000 C CNN
F 2 "digikey-footprints:SOT-223" H 5100 6000 60  0001 L CNN
F 3 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/0e/5a/00/ca/10/1a/4f/a5/DM00366442/files/DM00366442.pdf/jcr:content/translations/en.DM00366442.pdf" H 5100 6100 60  0001 L CNN
F 4 " 497-17239-1-ND " H 5100 6200 60  0001 L CNN "Digi-Key_PN"
F 5 " LDL1117S33R " H 5100 6300 60  0001 L CNN "MPN"
F 6 "Integrated Circuits (ICs)" H 5100 6400 60  0001 L CNN "Category"
F 7 "PMIC - Voltage Regulators - Linear" H 5100 6500 60  0001 L CNN "Family"
F 8 "https://www.st.com/content/ccc/resource/technical/document/datasheet/group3/0e/5a/00/ca/10/1a/4f/a5/DM00366442/files/DM00366442.pdf/jcr:content/translations/en.DM00366442.pdf" H 5100 6600 60  0001 L CNN "DK_Datasheet_Link"
F 9 "https://www.digikey.com/product-detail/en/stmicroelectronics/LDL1117S33R/497-17239-1-ND/7102079" H 5100 6700 60  0001 L CNN "DK_Detail_Page"
F 10 "IC REG LINEAR 3.3V 1.2A SOT223" H 5100 6800 60  0001 L CNN "Description"
F 11 "STMicroelectronics" H 5100 6900 60  0001 L CNN "Manufacturer"
F 12 "Active" H 5100 7000 60  0001 L CNN "Status"
	1    4900 5800
	1    0    0    -1  
$EndComp
Connection ~ 7250 1500
$Comp
L dk_LED-Indication-Discrete:LG_R971-KN-1 D1
U 1 1 5E6A5E13
P 7850 4950
F 0 "D1" V 7747 5128 60  0000 L CNN
F 1 "LG_R971-KN-1" V 7853 5128 60  0000 L CNN
F 2 "digikey-footprints:0805" H 8050 5150 60  0001 L CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 8050 5250 60  0001 L CNN
F 4 "475-1410-1-ND" H 8050 5350 60  0001 L CNN "Digi-Key_PN"
F 5 "LG R971-KN-1" H 8050 5450 60  0001 L CNN "MPN"
F 6 "Optoelectronics" H 8050 5550 60  0001 L CNN "Category"
F 7 "LED Indication - Discrete" H 8050 5650 60  0001 L CNN "Family"
F 8 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493936/LG%20R971.pdf" H 8050 5750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/osram-opto-semiconductors-inc/LG-R971-KN-1/475-1410-1-ND/1802598" H 8050 5850 60  0001 L CNN "DK_Detail_Page"
F 10 "LED GREEN DIFFUSED 0805 SMD" H 8050 5950 60  0001 L CNN "Description"
F 11 "OSRAM Opto Semiconductors Inc." H 8050 6050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 8050 6150 60  0001 L CNN "Status"
	1    7850 4950
	0    1    1    0   
$EndComp
$Comp
L power:+3V3 #PWR09
U 1 1 5E6A65B9
P 7850 4650
F 0 "#PWR09" H 7850 4500 50  0001 C CNN
F 1 "+3V3" H 7865 4823 50  0000 C CNN
F 2 "" H 7850 4650 50  0001 C CNN
F 3 "" H 7850 4650 50  0001 C CNN
	1    7850 4650
	1    0    0    -1  
$EndComp
Text Label 2850 1950 0    50   ~ 0
IO4
Text Label 7850 5650 2    50   ~ 0
IO4
$Comp
L Device:R R7
U 1 1 5E6C49E8
P 7850 5350
F 0 "R7" V 7750 5350 50  0000 C CNN
F 1 "1k" V 7850 5350 50  0000 C CNN
F 2 "" V 7780 5350 50  0001 C CNN
F 3 "~" H 7850 5350 50  0001 C CNN
F 4 "Resistors" H 7850 5350 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 7850 5350 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 1K OHM 1% 1/10W 0603" H 7850 5350 50  0001 C CNN "Description"
F 7 "RMCF0603FT1K00CT-ND" H 7850 5350 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 7850 5350 50  0001 C CNN "Family"
F 9 "RMCF0603FT1K00" H 7850 5350 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 7850 5350 50  0001 C CNN "Manufacturer"
F 11 "Active" H 7850 5350 50  0001 C CNN "Status"
	1    7850 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	7850 5500 7850 5650
Wire Wire Line
	7850 4750 7850 4650
Wire Wire Line
	7850 5050 7850 5200
$Comp
L power:+3V3 #PWR010
U 1 1 5E76C1BE
P 9100 4650
F 0 "#PWR010" H 9100 4500 50  0001 C CNN
F 1 "+3V3" H 9115 4823 50  0000 C CNN
F 2 "" H 9100 4650 50  0001 C CNN
F 3 "" H 9100 4650 50  0001 C CNN
	1    9100 4650
	1    0    0    -1  
$EndComp
$Comp
L Device:R R8
U 1 1 5E76C1CD
P 9100 5350
F 0 "R8" V 9000 5350 50  0000 C CNN
F 1 "1k" V 9100 5350 50  0000 C CNN
F 2 "" V 9030 5350 50  0001 C CNN
F 3 "~" H 9100 5350 50  0001 C CNN
F 4 "Resistors" H 9100 5350 50  0001 C CNN "Category"
F 5 "https://www.digikey.com/product-detail/en/stackpole-electronics-inc/RMCF0603FT1K00/RMCF0603FT1K00CT-ND/1942996" H 9100 5350 50  0001 C CNN "DK_Detail_Page"
F 6 "RES 1K OHM 1% 1/10W 0603" H 9100 5350 50  0001 C CNN "Description"
F 7 "RMCF0603FT1K00CT-ND" H 9100 5350 50  0001 C CNN "Digi-Key_PN"
F 8 "Chip Resistor - Surface Mount" H 9100 5350 50  0001 C CNN "Family"
F 9 "RMCF0603FT1K00" H 9100 5350 50  0001 C CNN "MPN"
F 10 "Stackpole Electronics Inc" H 9100 5350 50  0001 C CNN "Manufacturer"
F 11 "Active" H 9100 5350 50  0001 C CNN "Status"
	1    9100 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	9100 5500 9100 5600
Wire Wire Line
	9100 4750 9100 4650
Wire Wire Line
	9100 5050 9100 5200
$Comp
L power:GND #PWR012
U 1 1 5E76FA35
P 9100 5600
F 0 "#PWR012" H 9100 5350 50  0001 C CNN
F 1 "GND" H 9105 5427 50  0000 C CNN
F 2 "" H 9100 5600 50  0001 C CNN
F 3 "" H 9100 5600 50  0001 C CNN
	1    9100 5600
	1    0    0    -1  
$EndComp
$Comp
L dk_LED-Indication-Discrete:LH_R974-LP-1 D2
U 1 1 5E775D4A
P 9100 4950
F 0 "D2" V 8997 5128 60  0000 L CNN
F 1 "LH_R974-LP-1" V 9103 5128 60  0000 L CNN
F 2 "digikey-footprints:0805" H 9300 5150 60  0001 L CNN
F 3 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493888/LH%20R974.pdf" H 9300 5250 60  0001 L CNN
F 4 "475-1415-1-ND" H 9300 5350 60  0001 L CNN "Digi-Key_PN"
F 5 "LH R974-LP-1" H 9300 5450 60  0001 L CNN "MPN"
F 6 "Optoelectronics" H 9300 5550 60  0001 L CNN "Category"
F 7 "LED Indication - Discrete" H 9300 5650 60  0001 L CNN "Family"
F 8 "https://dammedia.osram.info/media/resource/hires/osram-dam-2493888/LH%20R974.pdf" H 9300 5750 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/osram-opto-semiconductors-inc/LH-R974-LP-1/475-1415-1-ND/1802604" H 9300 5850 60  0001 L CNN "DK_Detail_Page"
F 10 "LED RED DIFFUSED 0805 SMD" H 9300 5950 60  0001 L CNN "Description"
F 11 "OSRAM Opto Semiconductors Inc." H 9300 6050 60  0001 L CNN "Manufacturer"
F 12 "Active" H 9300 6150 60  0001 L CNN "Status"
	1    9100 4950
	0    1    1    0   
$EndComp
NoConn ~ 6650 3150
NoConn ~ 6650 3250
NoConn ~ 6650 3350
NoConn ~ 6650 3450
$Comp
L power:PWR_FLAG #FLG0101
U 1 1 5E7CA4F0
P 2850 5500
F 0 "#FLG0101" H 2850 5575 50  0001 C CNN
F 1 "PWR_FLAG" H 2850 5673 50  0000 C CNN
F 2 "" H 2850 5500 50  0001 C CNN
F 3 "~" H 2850 5500 50  0001 C CNN
	1    2850 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5450 5950 5450 5900
Wire Wire Line
	5300 5800 5450 5800
Wire Wire Line
	5450 5900 5450 5800
Connection ~ 5450 5900
Connection ~ 5450 5800
Wire Wire Line
	5450 5800 5700 5800
Text Label 2900 1650 0    50   ~ 0
EN
Wire Wire Line
	3550 5800 4250 5800
Connection ~ 3550 5800
Wire Wire Line
	4250 5800 4600 5800
Connection ~ 4250 5800
$Comp
L power:PWR_FLAG #FLG0104
U 1 1 5E7F4EDA
P 4250 5800
F 0 "#FLG0104" H 4250 5875 50  0001 C CNN
F 1 "PWR_FLAG" H 4250 5973 50  0000 C CNN
F 2 "" H 4250 5800 50  0001 C CNN
F 3 "~" H 4250 5800 50  0001 C CNN
	1    4250 5800
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR?
U 1 1 5E82B569
P 3550 5100
F 0 "#PWR?" H 3550 4950 50  0001 C CNN
F 1 "VCC" H 3567 5273 50  0000 C CNN
F 2 "" H 3550 5100 50  0001 C CNN
F 3 "" H 3550 5100 50  0001 C CNN
	1    3550 5100
	1    0    0    -1  
$EndComp
$EndSCHEMATC
