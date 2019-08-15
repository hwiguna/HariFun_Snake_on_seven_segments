EESchema Schematic File Version 4
LIBS:seven_segment_octet-cache
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
$Comp
L HariLib:5161AS U4
U 1 1 5D4D0151
P 3225 1425
F 0 "U4" H 3225 2142 50  0000 C CNN
F 1 "5161AS" H 3225 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 2725 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3235 1765 50  0001 L CNN
	1    3225 1425
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U7
U 1 1 5D4D01FB
P 3800 1425
F 0 "U7" H 3800 2142 50  0000 C CNN
F 1 "5161AS" H 3800 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3300 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3810 1765 50  0001 L CNN
	1    3800 1425
	1    0    0    -1  
$EndComp
$Comp
L HariLib:74HC595 U1
U 1 1 5D4D02E6
P 2275 1425
F 0 "U1" H 2025 1925 50  0000 C CNN
F 1 "74HC595" H 2375 1925 50  0000 C CNN
F 2 "" H 2275 1425 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2275 1425 50  0001 C CNN
	1    2275 1425
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR01
U 1 1 5D4D070F
P 975 1175
F 0 "#PWR01" H 975 1025 50  0001 C CNN
F 1 "+3V3" H 990 1348 50  0000 C CNN
F 2 "" H 975 1175 50  0001 C CNN
F 3 "" H 975 1175 50  0001 C CNN
	1    975  1175
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR02
U 1 1 5D4D073E
P 975 1825
F 0 "#PWR02" H 975 1575 50  0001 C CNN
F 1 "GND" H 980 1652 50  0000 C CNN
F 2 "" H 975 1825 50  0001 C CNN
F 3 "" H 975 1825 50  0001 C CNN
	1    975  1825
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR03
U 1 1 5D4D0756
P 2075 1975
F 0 "#PWR03" H 2075 1725 50  0001 C CNN
F 1 "GND" H 2080 1802 50  0000 C CNN
F 2 "" H 2075 1975 50  0001 C CNN
F 3 "" H 2075 1975 50  0001 C CNN
	1    2075 1975
	1    0    0    -1  
$EndComp
$Comp
L power:PWR_FLAG #FLG01
U 1 1 5D4E0F6C
P 975 1175
F 0 "#FLG01" H 975 1250 50  0001 C CNN
F 1 "PWR_FLAG" H 975 1348 50  0000 C CNN
F 2 "" H 975 1175 50  0001 C CNN
F 3 "~" H 975 1175 50  0001 C CNN
	1    975  1175
	-1   0    0    1   
$EndComp
$Comp
L power:PWR_FLAG #FLG02
U 1 1 5D4E0FB0
P 975 1825
F 0 "#FLG02" H 975 1900 50  0001 C CNN
F 1 "PWR_FLAG" H 975 1999 50  0000 C CNN
F 2 "" H 975 1825 50  0001 C CNN
F 3 "~" H 975 1825 50  0001 C CNN
	1    975  1825
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U10
U 1 1 5D4E94EC
P 4375 1425
F 0 "U10" H 4375 2142 50  0000 C CNN
F 1 "5161AS" H 4375 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3875 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4385 1765 50  0001 L CNN
	1    4375 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 1025 2925 1025
Connection ~ 2925 1025
Wire Wire Line
	2925 1125 2675 1125
Connection ~ 2925 1125
Wire Wire Line
	2675 1225 2925 1225
Wire Wire Line
	2675 1325 2925 1325
Wire Wire Line
	2925 1425 2675 1425
Wire Wire Line
	2675 1525 2925 1525
Wire Wire Line
	2925 1625 2675 1625
Wire Wire Line
	2675 1725 2925 1725
Wire Wire Line
	3275 1975 3375 1975
Wire Wire Line
	3950 1975 3850 1975
Connection ~ 2925 1225
Connection ~ 2925 1325
Connection ~ 2925 1425
Connection ~ 2925 1525
Connection ~ 2925 1625
Connection ~ 2925 1725
Wire Wire Line
	4425 1975 4525 1975
Wire Wire Line
	3500 1025 4075 1025
Wire Wire Line
	3500 1725 4075 1725
Wire Wire Line
	3500 1625 4075 1625
Wire Wire Line
	3500 1525 4075 1525
Wire Wire Line
	3500 1425 4075 1425
Wire Wire Line
	3500 1325 4075 1325
Wire Wire Line
	3500 1225 4075 1225
Wire Wire Line
	3500 1125 4075 1125
Connection ~ 3500 1025
Connection ~ 3500 1125
Connection ~ 3500 1225
Connection ~ 3500 1325
Connection ~ 3500 1425
Connection ~ 3500 1525
Connection ~ 3500 1625
Connection ~ 3500 1725
Wire Wire Line
	2925 1025 3500 1025
Wire Wire Line
	2925 1125 3500 1125
Wire Wire Line
	2925 1225 3500 1225
Wire Wire Line
	2925 1325 3500 1325
Wire Wire Line
	2925 1425 3500 1425
Wire Wire Line
	2925 1525 3500 1525
Wire Wire Line
	2925 1625 3500 1625
Wire Wire Line
	2925 1725 3500 1725
$Comp
L HariLib:5161AS U13
U 1 1 5D4F3DF7
P 4950 1425
F 0 "U13" H 4950 2142 50  0000 C CNN
F 1 "5161AS" H 4950 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 4450 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4960 1765 50  0001 L CNN
	1    4950 1425
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U16
U 1 1 5D4F3DFE
P 5525 1425
F 0 "U16" H 5525 2142 50  0000 C CNN
F 1 "5161AS" H 5525 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5025 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 5535 1765 50  0001 L CNN
	1    5525 1425
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U19
U 1 1 5D4F3E11
P 6100 1425
F 0 "U19" H 6100 2142 50  0000 C CNN
F 1 "5161AS" H 6100 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5600 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6110 1765 50  0001 L CNN
	1    6100 1425
	1    0    0    -1  
$EndComp
Connection ~ 4650 1025
Connection ~ 4650 1125
Wire Wire Line
	5000 1975 5100 1975
Wire Wire Line
	5675 1975 5575 1975
Connection ~ 4650 1225
Connection ~ 4650 1325
Connection ~ 4650 1425
Connection ~ 4650 1525
Connection ~ 4650 1625
Connection ~ 4650 1725
Wire Wire Line
	6150 1975 6250 1975
Wire Wire Line
	5225 1025 5800 1025
Wire Wire Line
	5225 1725 5800 1725
Wire Wire Line
	5225 1625 5800 1625
Wire Wire Line
	5225 1525 5800 1525
Wire Wire Line
	5225 1425 5800 1425
Wire Wire Line
	5225 1325 5800 1325
Wire Wire Line
	5225 1225 5800 1225
Wire Wire Line
	5225 1125 5800 1125
Connection ~ 5225 1025
Connection ~ 5225 1125
Connection ~ 5225 1225
Connection ~ 5225 1325
Connection ~ 5225 1425
Connection ~ 5225 1525
Connection ~ 5225 1625
Connection ~ 5225 1725
Wire Wire Line
	4650 1025 5225 1025
Wire Wire Line
	4650 1125 5225 1125
Wire Wire Line
	4650 1225 5225 1225
Wire Wire Line
	4650 1325 5225 1325
Wire Wire Line
	4650 1425 5225 1425
Wire Wire Line
	4650 1525 5225 1525
Wire Wire Line
	4650 1625 5225 1625
Wire Wire Line
	4650 1725 5225 1725
$Comp
L HariLib:5161AS U22
U 1 1 5D4F6611
P 6700 1425
F 0 "U22" H 6700 2142 50  0000 C CNN
F 1 "5161AS" H 6700 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6200 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6710 1765 50  0001 L CNN
	1    6700 1425
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U25
U 1 1 5D4F661E
P 7275 1425
F 0 "U25" H 7275 2142 50  0000 C CNN
F 1 "5161AS" H 7275 2051 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6775 725 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 7285 1765 50  0001 L CNN
	1    7275 1425
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 1975 6750 1975
Wire Wire Line
	7325 1975 7425 1975
Wire Wire Line
	6400 1725 6975 1725
Wire Wire Line
	6400 1625 6975 1625
Wire Wire Line
	6400 1525 6975 1525
Wire Wire Line
	6400 1425 6975 1425
Wire Wire Line
	6400 1325 6975 1325
Connection ~ 6400 1325
Connection ~ 6400 1425
Connection ~ 6400 1525
Connection ~ 6400 1625
Connection ~ 6400 1725
Connection ~ 4075 1025
Wire Wire Line
	4075 1025 4650 1025
Connection ~ 4075 1125
Wire Wire Line
	4075 1225 4650 1225
Connection ~ 4075 1225
Wire Wire Line
	4400 1125 4650 1125
Wire Wire Line
	4075 1125 4650 1125
Connection ~ 4075 1325
Connection ~ 4075 1425
Wire Wire Line
	4650 1525 4650 1500
Wire Wire Line
	4400 1325 4650 1325
Wire Wire Line
	4075 1325 4650 1325
Connection ~ 4075 1525
Wire Wire Line
	4400 1425 4650 1425
Wire Wire Line
	4075 1425 4650 1425
Connection ~ 4075 1625
Wire Wire Line
	4400 1625 4650 1625
Wire Wire Line
	4400 1525 4650 1525
Wire Wire Line
	4075 1625 4650 1625
Wire Wire Line
	4075 1725 4650 1725
Wire Wire Line
	4075 1525 4650 1525
Connection ~ 4075 1725
$Comp
L HariLib:5161AS U5
U 1 1 5D50D8E8
P 3225 2875
F 0 "U5" H 3225 3592 50  0000 C CNN
F 1 "5161AS" H 3225 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 2725 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3235 3215 50  0001 L CNN
	1    3225 2875
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U8
U 1 1 5D50D8EF
P 3800 2875
F 0 "U8" H 3800 3592 50  0000 C CNN
F 1 "5161AS" H 3800 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3300 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3810 3215 50  0001 L CNN
	1    3800 2875
	1    0    0    -1  
$EndComp
$Comp
L HariLib:74HC595 U2
U 1 1 5D50D8F6
P 2275 2875
F 0 "U2" H 2025 3375 50  0000 C CNN
F 1 "74HC595" H 2375 3375 50  0000 C CNN
F 2 "" H 2275 2875 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2275 2875 50  0001 C CNN
	1    2275 2875
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR06
U 1 1 5D50D910
P 2325 1975
F 0 "#PWR06" H 2325 1825 50  0001 C CNN
F 1 "+3V3" H 2325 2125 50  0000 C CNN
F 2 "" H 2325 1975 50  0001 C CNN
F 3 "" H 2325 1975 50  0001 C CNN
	1    2325 1975
	-1   0    0    1   
$EndComp
$Comp
L HariLib:5161AS U11
U 1 1 5D50D916
P 4375 2875
F 0 "U11" H 4375 3592 50  0000 C CNN
F 1 "5161AS" H 4375 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3875 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4385 3215 50  0001 L CNN
	1    4375 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 2475 2925 2475
Connection ~ 2925 2475
Wire Wire Line
	2925 2575 2675 2575
Connection ~ 2925 2575
Wire Wire Line
	2675 2675 2925 2675
Wire Wire Line
	2675 2775 2925 2775
Wire Wire Line
	2925 2875 2675 2875
Wire Wire Line
	2675 2975 2925 2975
Wire Wire Line
	2925 3075 2675 3075
Wire Wire Line
	2675 3175 2925 3175
Wire Wire Line
	3275 3425 3375 3425
Wire Wire Line
	3950 3425 3850 3425
Connection ~ 2925 2675
Connection ~ 2925 2775
Connection ~ 2925 2875
Connection ~ 2925 2975
Connection ~ 2925 3075
Connection ~ 2925 3175
Wire Wire Line
	4425 3425 4525 3425
Wire Wire Line
	3500 2475 4075 2475
Wire Wire Line
	3500 3175 4075 3175
Wire Wire Line
	3500 3075 4075 3075
Wire Wire Line
	3500 2975 4075 2975
Wire Wire Line
	3500 2875 4075 2875
Wire Wire Line
	3500 2775 4075 2775
Wire Wire Line
	3500 2675 4075 2675
Wire Wire Line
	3500 2575 4075 2575
Connection ~ 3500 2475
Connection ~ 3500 2575
Connection ~ 3500 2675
Connection ~ 3500 2775
Connection ~ 3500 2875
Connection ~ 3500 2975
Connection ~ 3500 3075
Connection ~ 3500 3175
Wire Wire Line
	2925 2475 3500 2475
Wire Wire Line
	2925 2575 3500 2575
Wire Wire Line
	2925 2675 3500 2675
Wire Wire Line
	2925 2775 3500 2775
Wire Wire Line
	2925 2875 3500 2875
Wire Wire Line
	2925 2975 3500 2975
Wire Wire Line
	2925 3075 3500 3075
Wire Wire Line
	2925 3175 3500 3175
$Comp
L HariLib:5161AS U14
U 1 1 5D50D951
P 4950 2875
F 0 "U14" H 4950 3592 50  0000 C CNN
F 1 "5161AS" H 4950 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 4450 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4960 3215 50  0001 L CNN
	1    4950 2875
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U17
U 1 1 5D50D958
P 5525 2875
F 0 "U17" H 5525 3592 50  0000 C CNN
F 1 "5161AS" H 5525 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5025 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 5535 3215 50  0001 L CNN
	1    5525 2875
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U20
U 1 1 5D50D96B
P 6100 2875
F 0 "U20" H 6100 3592 50  0000 C CNN
F 1 "5161AS" H 6100 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5600 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6110 3215 50  0001 L CNN
	1    6100 2875
	1    0    0    -1  
$EndComp
Connection ~ 4650 2475
Connection ~ 4650 2575
Wire Wire Line
	5000 3425 5100 3425
Wire Wire Line
	5675 3425 5575 3425
Connection ~ 4650 2675
Connection ~ 4650 2775
Connection ~ 4650 2875
Connection ~ 4650 2975
Connection ~ 4650 3075
Connection ~ 4650 3175
Wire Wire Line
	6150 3425 6250 3425
Wire Wire Line
	5225 2475 5800 2475
Wire Wire Line
	5225 3175 5800 3175
Wire Wire Line
	5225 3075 5800 3075
Wire Wire Line
	5225 2975 5800 2975
Wire Wire Line
	5225 2875 5800 2875
Wire Wire Line
	5225 2775 5800 2775
Wire Wire Line
	5225 2675 5800 2675
Wire Wire Line
	5225 2575 5800 2575
Connection ~ 5225 2475
Connection ~ 5225 2575
Connection ~ 5225 2675
Connection ~ 5225 2775
Connection ~ 5225 2875
Connection ~ 5225 2975
Connection ~ 5225 3075
Connection ~ 5225 3175
Wire Wire Line
	4650 2475 5225 2475
Wire Wire Line
	4650 2575 5225 2575
Wire Wire Line
	4650 2675 5225 2675
Wire Wire Line
	4650 2775 5225 2775
Wire Wire Line
	4650 2875 5225 2875
Wire Wire Line
	4650 2975 5225 2975
Wire Wire Line
	4650 3075 5225 3075
Wire Wire Line
	4650 3175 5225 3175
$Comp
L HariLib:5161AS U23
U 1 1 5D50D99E
P 6700 2875
F 0 "U23" H 6700 3592 50  0000 C CNN
F 1 "5161AS" H 6700 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6200 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6710 3215 50  0001 L CNN
	1    6700 2875
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U26
U 1 1 5D50D9AB
P 7275 2875
F 0 "U26" H 7275 3592 50  0000 C CNN
F 1 "5161AS" H 7275 3501 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6775 2175 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 7285 3215 50  0001 L CNN
	1    7275 2875
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 3425 6750 3425
Wire Wire Line
	7325 3425 7425 3425
Wire Wire Line
	6400 2475 6975 2475
Wire Wire Line
	6400 3175 6975 3175
Wire Wire Line
	6400 3075 6975 3075
Wire Wire Line
	6400 2975 6975 2975
Wire Wire Line
	6400 2875 6975 2875
Wire Wire Line
	6400 2775 6975 2775
Wire Wire Line
	6400 2675 6975 2675
Wire Wire Line
	6400 2575 6975 2575
Connection ~ 6400 2475
Connection ~ 6400 2575
Connection ~ 6400 2675
Connection ~ 6400 2775
Connection ~ 6400 2875
Connection ~ 6400 2975
Connection ~ 6400 3075
Connection ~ 6400 3175
Connection ~ 4075 2475
Wire Wire Line
	4075 2475 4650 2475
Connection ~ 4075 2575
Wire Wire Line
	4075 2675 4650 2675
Connection ~ 4075 2675
Wire Wire Line
	4400 2575 4650 2575
Wire Wire Line
	4075 2575 4650 2575
Connection ~ 4075 2775
Connection ~ 4075 2875
Wire Wire Line
	4650 2975 4650 2950
Wire Wire Line
	4400 2775 4650 2775
Wire Wire Line
	4075 2775 4650 2775
Connection ~ 4075 2975
Wire Wire Line
	4400 2875 4650 2875
Wire Wire Line
	4075 2875 4650 2875
Connection ~ 4075 3075
Wire Wire Line
	4400 3075 4650 3075
Wire Wire Line
	4400 2975 4650 2975
Wire Wire Line
	4075 3075 4650 3075
Wire Wire Line
	4075 3175 4650 3175
Wire Wire Line
	4075 2975 4650 2975
Connection ~ 4075 3175
$Comp
L HariLib:5161AS U6
U 1 1 5D519838
P 3225 4375
F 0 "U6" H 3225 5092 50  0000 C CNN
F 1 "5161AS" H 3225 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 2725 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3235 4715 50  0001 L CNN
	1    3225 4375
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U9
U 1 1 5D51983F
P 3800 4375
F 0 "U9" H 3800 5092 50  0000 C CNN
F 1 "5161AS" H 3800 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3300 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 3810 4715 50  0001 L CNN
	1    3800 4375
	1    0    0    -1  
$EndComp
$Comp
L HariLib:74HC595 U3
U 1 1 5D519846
P 2275 4375
F 0 "U3" H 2025 4875 50  0000 C CNN
F 1 "74HC595" H 2375 4875 50  0000 C CNN
F 2 "" H 2275 4375 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/sn74hc595.pdf" H 2275 4375 50  0001 C CNN
	1    2275 4375
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR05
U 1 1 5D51984D
P 2075 4925
F 0 "#PWR05" H 2075 4675 50  0001 C CNN
F 1 "GND" H 2080 4752 50  0000 C CNN
F 2 "" H 2075 4925 50  0001 C CNN
F 3 "" H 2075 4925 50  0001 C CNN
	1    2075 4925
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U12
U 1 1 5D519866
P 4375 4375
F 0 "U12" H 4375 5092 50  0000 C CNN
F 1 "5161AS" H 4375 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 3875 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4385 4715 50  0001 L CNN
	1    4375 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	2675 3975 2925 3975
Connection ~ 2925 3975
Wire Wire Line
	2925 4075 2675 4075
Connection ~ 2925 4075
Wire Wire Line
	2675 4175 2925 4175
Wire Wire Line
	2675 4275 2925 4275
Wire Wire Line
	2925 4375 2675 4375
Wire Wire Line
	2675 4475 2925 4475
Wire Wire Line
	2925 4575 2675 4575
Wire Wire Line
	2675 4675 2925 4675
Wire Wire Line
	3275 4925 3375 4925
Wire Wire Line
	3950 4925 3850 4925
Connection ~ 2925 4175
Connection ~ 2925 4275
Connection ~ 2925 4375
Connection ~ 2925 4475
Connection ~ 2925 4575
Connection ~ 2925 4675
Wire Wire Line
	4425 4925 4525 4925
Wire Wire Line
	3500 3975 4075 3975
Wire Wire Line
	3500 4675 4075 4675
Wire Wire Line
	3500 4575 4075 4575
Wire Wire Line
	3500 4475 4075 4475
Wire Wire Line
	3500 4375 4075 4375
Wire Wire Line
	3500 4275 4075 4275
Wire Wire Line
	3500 4175 4075 4175
Wire Wire Line
	3500 4075 4075 4075
Connection ~ 3500 3975
Connection ~ 3500 4075
Connection ~ 3500 4175
Connection ~ 3500 4275
Connection ~ 3500 4375
Connection ~ 3500 4475
Connection ~ 3500 4575
Connection ~ 3500 4675
Wire Wire Line
	2925 3975 3500 3975
Wire Wire Line
	2925 4075 3500 4075
Wire Wire Line
	2925 4175 3500 4175
Wire Wire Line
	2925 4275 3500 4275
Wire Wire Line
	2925 4375 3500 4375
Wire Wire Line
	2925 4475 3500 4475
Wire Wire Line
	2925 4575 3500 4575
Wire Wire Line
	2925 4675 3500 4675
$Comp
L HariLib:5161AS U15
U 1 1 5D5198A1
P 4950 4375
F 0 "U15" H 4950 5092 50  0000 C CNN
F 1 "5161AS" H 4950 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 4450 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 4960 4715 50  0001 L CNN
	1    4950 4375
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U18
U 1 1 5D5198A8
P 5525 4375
F 0 "U18" H 5525 5092 50  0000 C CNN
F 1 "5161AS" H 5525 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5025 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 5535 4715 50  0001 L CNN
	1    5525 4375
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U21
U 1 1 5D5198BB
P 6100 4375
F 0 "U21" H 6100 5092 50  0000 C CNN
F 1 "5161AS" H 6100 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 5600 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6110 4715 50  0001 L CNN
	1    6100 4375
	1    0    0    -1  
$EndComp
Connection ~ 4650 3975
Connection ~ 4650 4075
Wire Wire Line
	5000 4925 5100 4925
Wire Wire Line
	5675 4925 5575 4925
Connection ~ 4650 4175
Connection ~ 4650 4275
Connection ~ 4650 4375
Connection ~ 4650 4475
Connection ~ 4650 4575
Connection ~ 4650 4675
Wire Wire Line
	6150 4925 6250 4925
Wire Wire Line
	5225 3975 5800 3975
Wire Wire Line
	5225 4575 5800 4575
Wire Wire Line
	5225 4475 5800 4475
Wire Wire Line
	5225 4375 5800 4375
Wire Wire Line
	5225 4275 5800 4275
Wire Wire Line
	5225 4175 5800 4175
Wire Wire Line
	5225 4075 5800 4075
Connection ~ 5225 3975
Connection ~ 5225 4075
Connection ~ 5225 4175
Connection ~ 5225 4275
Connection ~ 5225 4375
Connection ~ 5225 4475
Connection ~ 5225 4575
Connection ~ 5225 4675
Wire Wire Line
	4650 3975 5225 3975
Wire Wire Line
	4650 4075 5225 4075
Wire Wire Line
	4650 4175 5225 4175
Wire Wire Line
	4650 4275 5225 4275
Wire Wire Line
	4650 4375 5225 4375
Wire Wire Line
	4650 4475 5225 4475
Wire Wire Line
	4650 4575 5225 4575
Wire Wire Line
	4650 4675 5225 4675
$Comp
L HariLib:5161AS U24
U 1 1 5D5198EE
P 6700 4375
F 0 "U24" H 6700 5092 50  0000 C CNN
F 1 "5161AS" H 6700 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6200 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 6710 4715 50  0001 L CNN
	1    6700 4375
	1    0    0    -1  
$EndComp
$Comp
L HariLib:5161AS U27
U 1 1 5D5198FB
P 7275 4375
F 0 "U27" H 7275 5092 50  0000 C CNN
F 1 "5161AS" H 7275 5001 50  0000 C CNN
F 2 "Display_7Segment:5161AS" H 6775 3675 50  0001 L CNN
F 3 "https://www.digchip.com/datasheets/parts/datasheet/161/MAN3640A-pdf.php" H 7285 4715 50  0001 L CNN
	1    7275 4375
	1    0    0    -1  
$EndComp
Wire Wire Line
	6850 4925 6750 4925
Wire Wire Line
	7325 4925 7425 4925
Wire Wire Line
	6400 3975 6975 3975
Wire Wire Line
	6400 4675 6975 4675
Wire Wire Line
	6400 4575 6975 4575
Wire Wire Line
	6400 4475 6975 4475
Wire Wire Line
	6400 4375 6975 4375
Wire Wire Line
	6400 4275 6975 4275
Wire Wire Line
	6400 4175 6975 4175
Wire Wire Line
	6400 4075 6975 4075
Connection ~ 6400 3975
Connection ~ 6400 4075
Connection ~ 6400 4175
Connection ~ 6400 4275
Connection ~ 6400 4375
Connection ~ 6400 4475
Connection ~ 6400 4575
Connection ~ 6400 4675
Connection ~ 4075 3975
Wire Wire Line
	4075 3975 4650 3975
Connection ~ 4075 4075
Wire Wire Line
	4075 4175 4650 4175
Connection ~ 4075 4175
Wire Wire Line
	4400 4075 4650 4075
Wire Wire Line
	4075 4075 4650 4075
Connection ~ 4075 4275
Connection ~ 4075 4375
Wire Wire Line
	4650 4475 4650 4450
Wire Wire Line
	4400 4275 4650 4275
Wire Wire Line
	4075 4275 4650 4275
Connection ~ 4075 4475
Wire Wire Line
	4400 4375 4650 4375
Wire Wire Line
	4075 4375 4650 4375
Connection ~ 4075 4575
Wire Wire Line
	4400 4575 4650 4575
Wire Wire Line
	4400 4475 4650 4475
Wire Wire Line
	4075 4575 4650 4575
Wire Wire Line
	4075 4675 4650 4675
Wire Wire Line
	4075 4475 4650 4475
Connection ~ 4075 4675
$Comp
L Device:Q_NPN_BCE Q1
U 1 1 5D5080DC
P 3175 5125
F 0 "Q1" H 3366 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3366 5080 50  0001 L CNN
F 2 "" H 3375 5225 50  0001 C CNN
F 3 "~" H 3175 5125 50  0001 C CNN
	1    3175 5125
	1    0    0    -1  
$EndComp
Connection ~ 3275 4925
$Comp
L power:GND #PWR09
U 1 1 5D50868B
P 3275 5325
F 0 "#PWR09" H 3275 5075 50  0001 C CNN
F 1 "GND" H 3280 5152 50  0000 C CNN
F 2 "" H 3275 5325 50  0001 C CNN
F 3 "" H 3275 5325 50  0001 C CNN
	1    3275 5325
	1    0    0    -1  
$EndComp
Wire Wire Line
	3275 4925 3275 3425
Connection ~ 3275 1975
Wire Wire Line
	3275 1975 3275 1925
Connection ~ 3275 3425
Wire Wire Line
	3275 3425 3275 1975
$Comp
L Device:Q_NPN_BCE Q2
U 1 1 5D524307
P 3750 5125
F 0 "Q2" H 3941 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 3941 5080 50  0001 L CNN
F 2 "" H 3950 5225 50  0001 C CNN
F 3 "~" H 3750 5125 50  0001 C CNN
	1    3750 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 5D52430E
P 3850 5325
F 0 "#PWR010" H 3850 5075 50  0001 C CNN
F 1 "GND" H 3855 5152 50  0000 C CNN
F 2 "" H 3850 5325 50  0001 C CNN
F 3 "" H 3850 5325 50  0001 C CNN
	1    3850 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q3
U 1 1 5D53F83A
P 4325 5150
F 0 "Q3" H 4516 5150 50  0000 L CNN
F 1 "Q_NPN_BCE" H 4516 5105 50  0001 L CNN
F 2 "" H 4525 5250 50  0001 C CNN
F 3 "~" H 4325 5150 50  0001 C CNN
	1    4325 5150
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR011
U 1 1 5D53F841
P 4425 5350
F 0 "#PWR011" H 4425 5100 50  0001 C CNN
F 1 "GND" H 4430 5177 50  0000 C CNN
F 2 "" H 4425 5350 50  0001 C CNN
F 3 "" H 4425 5350 50  0001 C CNN
	1    4425 5350
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q4
U 1 1 5D55AD74
P 4900 5125
F 0 "Q4" H 5091 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 5091 5080 50  0001 L CNN
F 2 "" H 5100 5225 50  0001 C CNN
F 3 "~" H 4900 5125 50  0001 C CNN
	1    4900 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR012
U 1 1 5D55AD7B
P 5000 5325
F 0 "#PWR012" H 5000 5075 50  0001 C CNN
F 1 "GND" H 5005 5152 50  0000 C CNN
F 2 "" H 5000 5325 50  0001 C CNN
F 3 "" H 5000 5325 50  0001 C CNN
	1    5000 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q5
U 1 1 5D5762A9
P 5475 5125
F 0 "Q5" H 5666 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 5666 5080 50  0001 L CNN
F 2 "" H 5675 5225 50  0001 C CNN
F 3 "~" H 5475 5125 50  0001 C CNN
	1    5475 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR013
U 1 1 5D5762B0
P 5575 5325
F 0 "#PWR013" H 5575 5075 50  0001 C CNN
F 1 "GND" H 5580 5152 50  0000 C CNN
F 2 "" H 5575 5325 50  0001 C CNN
F 3 "" H 5575 5325 50  0001 C CNN
	1    5575 5325
	1    0    0    -1  
$EndComp
Connection ~ 5575 4925
$Comp
L Device:Q_NPN_BCE Q6
U 1 1 5D59194B
P 6050 5125
F 0 "Q6" H 6241 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6241 5080 50  0001 L CNN
F 2 "" H 6250 5225 50  0001 C CNN
F 3 "~" H 6050 5125 50  0001 C CNN
	1    6050 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 5D591952
P 6150 5325
F 0 "#PWR014" H 6150 5075 50  0001 C CNN
F 1 "GND" H 6155 5152 50  0000 C CNN
F 2 "" H 6150 5325 50  0001 C CNN
F 3 "" H 6150 5325 50  0001 C CNN
	1    6150 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q7
U 1 1 5D5ACE88
P 6650 5125
F 0 "Q7" H 6841 5125 50  0000 L CNN
F 1 "Q_NPN_BCE" H 6841 5080 50  0001 L CNN
F 2 "" H 6850 5225 50  0001 C CNN
F 3 "~" H 6650 5125 50  0001 C CNN
	1    6650 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR015
U 1 1 5D5ACE8F
P 6750 5325
F 0 "#PWR015" H 6750 5075 50  0001 C CNN
F 1 "GND" H 6755 5152 50  0000 C CNN
F 2 "" H 6750 5325 50  0001 C CNN
F 3 "" H 6750 5325 50  0001 C CNN
	1    6750 5325
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NPN_BCE Q8
U 1 1 5D5C83C0
P 7225 5125
F 0 "Q8" H 7416 5171 50  0000 L CNN
F 1 "Q_NPN_BCE" H 7416 5080 50  0000 L CNN
F 2 "" H 7425 5225 50  0001 C CNN
F 3 "~" H 7225 5125 50  0001 C CNN
	1    7225 5125
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR016
U 1 1 5D5C83C7
P 7325 5325
F 0 "#PWR016" H 7325 5075 50  0001 C CNN
F 1 "GND" H 7330 5152 50  0000 C CNN
F 2 "" H 7325 5325 50  0001 C CNN
F 3 "" H 7325 5325 50  0001 C CNN
	1    7325 5325
	1    0    0    -1  
$EndComp
Connection ~ 3850 1975
Wire Wire Line
	3850 1975 3850 1950
Connection ~ 3850 3425
Wire Wire Line
	3850 3425 3850 1975
Wire Wire Line
	4425 1950 4425 1975
Connection ~ 4425 1975
Wire Wire Line
	4425 1975 4425 3425
Connection ~ 4425 3425
Wire Wire Line
	4425 3425 4425 4925
Connection ~ 4425 4925
Wire Wire Line
	4425 4925 4425 4950
Connection ~ 5000 1975
Wire Wire Line
	5000 1975 5000 1950
Connection ~ 5000 3425
Wire Wire Line
	5000 3425 5000 1975
Wire Wire Line
	5575 1950 5575 1975
Connection ~ 5575 1975
Wire Wire Line
	5575 1975 5575 3425
Connection ~ 5575 3425
Wire Wire Line
	5575 3425 5575 4925
Wire Wire Line
	6150 4925 6150 3425
Connection ~ 6150 4925
Connection ~ 6150 1975
Wire Wire Line
	6150 1975 6150 1950
Connection ~ 6150 3425
Wire Wire Line
	6150 3425 6150 1975
Wire Wire Line
	6750 1975 6750 3425
Connection ~ 6750 1975
Connection ~ 6750 4925
Connection ~ 6750 3425
Wire Wire Line
	6750 3425 6750 4925
Wire Wire Line
	7325 4925 7325 3425
Connection ~ 7325 4925
Connection ~ 7325 1975
Connection ~ 7325 3425
Wire Wire Line
	7325 3425 7325 1975
Wire Wire Line
	1875 2475 1725 2475
$Comp
L power:GND #PWR04
U 1 1 5D753951
P 2075 3425
F 0 "#PWR04" H 2075 3175 50  0001 C CNN
F 1 "GND" H 2080 3252 50  0000 C CNN
F 2 "" H 2075 3425 50  0001 C CNN
F 3 "" H 2075 3425 50  0001 C CNN
	1    2075 3425
	1    0    0    -1  
$EndComp
$Comp
L power:+3V3 #PWR07
U 1 1 5D7539A2
P 2325 3425
F 0 "#PWR07" H 2325 3275 50  0001 C CNN
F 1 "+3V3" H 2325 3575 50  0000 C CNN
F 2 "" H 2325 3425 50  0001 C CNN
F 3 "" H 2325 3425 50  0001 C CNN
	1    2325 3425
	-1   0    0    1   
$EndComp
$Comp
L power:+3V3 #PWR08
U 1 1 5D753D68
P 2325 4925
F 0 "#PWR08" H 2325 4775 50  0001 C CNN
F 1 "+3V3" H 2325 5075 50  0000 C CNN
F 2 "" H 2325 4925 50  0001 C CNN
F 3 "" H 2325 4925 50  0001 C CNN
	1    2325 4925
	-1   0    0    1   
$EndComp
Wire Wire Line
	2650 4775 2675 4775
Wire Wire Line
	2800 4775 2800 3725
Wire Wire Line
	2800 3725 1725 3725
Wire Wire Line
	1725 3725 1725 2475
Connection ~ 2675 4775
Wire Wire Line
	2675 4775 2800 4775
Wire Wire Line
	2675 3275 2800 3275
Wire Wire Line
	2800 3275 2800 2250
Wire Wire Line
	2800 2250 1725 2250
Wire Wire Line
	1725 2250 1725 1025
Wire Wire Line
	1725 1025 1875 1025
Wire Wire Line
	1825 4175 1825 2675
Wire Wire Line
	1825 2675 1875 2675
Wire Wire Line
	1825 2675 1825 1225
Wire Wire Line
	1825 1225 1875 1225
Connection ~ 1825 2675
Wire Wire Line
	1875 1525 1625 1525
Wire Wire Line
	1625 1525 1625 2975
Wire Wire Line
	1625 2975 1875 2975
Wire Wire Line
	1625 2975 1625 4475
Wire Wire Line
	1625 4475 1875 4475
Connection ~ 1625 2975
$Comp
L Device:R_US R1
U 1 1 5D907368
P 2975 5275
F 0 "R1" H 3043 5321 50  0000 L CNN
F 1 "R_US" H 3043 5230 50  0000 L CNN
F 2 "" V 3015 5265 50  0001 C CNN
F 3 "~" H 2975 5275 50  0001 C CNN
	1    2975 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 5D907520
P 3550 5275
F 0 "R2" H 3618 5321 50  0000 L CNN
F 1 "R_US" H 3618 5230 50  0000 L CNN
F 2 "" V 3590 5265 50  0001 C CNN
F 3 "~" H 3550 5275 50  0001 C CNN
	1    3550 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 5D90759F
P 4125 5300
F 0 "R3" H 4193 5346 50  0000 L CNN
F 1 "R_US" H 4193 5255 50  0000 L CNN
F 2 "" V 4165 5290 50  0001 C CNN
F 3 "~" H 4125 5300 50  0001 C CNN
	1    4125 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 5D907809
P 4700 5275
F 0 "R4" H 4768 5321 50  0000 L CNN
F 1 "R_US" H 4768 5230 50  0000 L CNN
F 2 "" V 4740 5265 50  0001 C CNN
F 3 "~" H 4700 5275 50  0001 C CNN
	1    4700 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 5D90786F
P 5275 5275
F 0 "R5" H 5343 5321 50  0000 L CNN
F 1 "R_US" H 5343 5230 50  0000 L CNN
F 2 "" V 5315 5265 50  0001 C CNN
F 3 "~" H 5275 5275 50  0001 C CNN
	1    5275 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 5D9078DD
P 5850 5275
F 0 "R6" H 5918 5321 50  0000 L CNN
F 1 "R_US" H 5918 5230 50  0000 L CNN
F 2 "" V 5890 5265 50  0001 C CNN
F 3 "~" H 5850 5275 50  0001 C CNN
	1    5850 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 5D907949
P 6450 5275
F 0 "R7" H 6518 5321 50  0000 L CNN
F 1 "R_US" H 6518 5230 50  0000 L CNN
F 2 "" V 6490 5265 50  0001 C CNN
F 3 "~" H 6450 5275 50  0001 C CNN
	1    6450 5275
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 5D907BAB
P 7025 5275
F 0 "R8" H 7093 5321 50  0000 L CNN
F 1 "R_US" H 7093 5230 50  0000 L CNN
F 2 "" V 7065 5265 50  0001 C CNN
F 3 "~" H 7025 5275 50  0001 C CNN
	1    7025 5275
	1    0    0    -1  
$EndComp
$Comp
L HariLib:Header_8pos U28
U 1 1 5D92957A
P 2825 6050
F 0 "U28" V 2822 5122 50  0000 R CNN
F 1 "Header_8pos" V 2913 5122 50  0000 R CNN
F 2 "" H 2825 6050 50  0001 C CNN
F 3 "" H 2825 6050 50  0001 C CNN
	1    2825 6050
	0    -1   1    0   
$EndComp
Wire Wire Line
	2975 5425 2975 5850
Wire Wire Line
	3550 5425 3550 5550
Wire Wire Line
	3550 5550 3075 5550
Wire Wire Line
	3075 5550 3075 5850
Wire Wire Line
	3175 5850 3175 5600
Wire Wire Line
	3175 5600 4125 5600
Wire Wire Line
	4125 5600 4125 5450
Wire Wire Line
	3275 5850 3275 5650
Wire Wire Line
	3275 5650 4700 5650
Wire Wire Line
	4700 5650 4700 5425
Wire Wire Line
	3375 5850 3375 5700
Wire Wire Line
	3375 5700 5275 5700
Wire Wire Line
	5275 5700 5275 5425
Wire Wire Line
	3475 5850 3475 5750
Wire Wire Line
	3475 5750 5850 5750
Wire Wire Line
	5850 5750 5850 5425
Wire Wire Line
	3575 5850 3575 5800
Wire Wire Line
	3575 5800 6450 5800
Wire Wire Line
	6450 5800 6450 5425
Wire Wire Line
	3675 5850 7025 5850
Wire Wire Line
	7025 5850 7025 5425
NoConn ~ 2675 1825
Wire Wire Line
	1875 1625 1875 1975
Wire Wire Line
	1875 1975 2075 1975
Connection ~ 2075 1975
Wire Wire Line
	1875 3075 1875 3425
Wire Wire Line
	1875 3425 2075 3425
Connection ~ 2075 3425
Wire Wire Line
	1875 4575 1875 4925
Wire Wire Line
	1875 4925 2075 4925
Connection ~ 2075 4925
$Comp
L power:+3V3 #PWR018
U 1 1 5DBF12FA
P 1475 1325
F 0 "#PWR018" H 1475 1175 50  0001 C CNN
F 1 "+3V3" H 1475 1475 50  0000 C CNN
F 2 "" H 1475 1325 50  0001 C CNN
F 3 "" H 1475 1325 50  0001 C CNN
	1    1475 1325
	1    0    0    -1  
$EndComp
Wire Wire Line
	1875 1325 1475 1325
Connection ~ 1475 1325
Wire Wire Line
	1475 2775 1875 2775
$Comp
L dk_Rectangular-Connectors-Headers-Male-Pins:B3B-PH-K-S_LF__SN_ J1
U 1 1 5DC61DA6
P 1625 6125
F 0 "J1" H 1903 6228 50  0000 L CNN
F 1 "B3B-PH-K-S_LF__SN_" H 1903 6137 50  0000 L CNN
F 2 "digikey-footprints:PinHeader_1x3_P2mm_Drill1mm" H 1825 6325 60  0001 L CNN
F 3 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" H 1825 6425 60  0001 L CNN
F 4 "455-1705-ND" H 1825 6525 60  0001 L CNN "Digi-Key_PN"
F 5 "B3B-PH-K-S(LF)(SN)" H 1825 6625 60  0001 L CNN "MPN"
F 6 "Connectors, Interconnects" H 1825 6725 60  0001 L CNN "Category"
F 7 "Rectangular Connectors - Headers, Male Pins" H 1825 6825 60  0001 L CNN "Family"
F 8 "http://www.jst-mfg.com/product/pdf/eng/ePH.pdf" H 1825 6925 60  0001 L CNN "DK_Datasheet_Link"
F 9 "/product-detail/en/jst-sales-america-inc/B3B-PH-K-S(LF)(SN)/455-1705-ND/926612" H 1825 7025 60  0001 L CNN "DK_Detail_Page"
F 10 "CONN HEADER VERT 3POS 2MM" H 1825 7125 60  0001 L CNN "Description"
F 11 "JST Sales America Inc." H 1825 7225 60  0001 L CNN "Manufacturer"
F 12 "Active" H 1825 7325 60  0001 L CNN "Status"
	1    1625 6125
	1    0    0    -1  
$EndComp
Wire Wire Line
	1625 5975 1625 4475
Connection ~ 1625 4475
Wire Wire Line
	1725 5975 1725 3975
Wire Wire Line
	1725 3975 1875 3975
Wire Wire Line
	1825 5975 1825 4175
Connection ~ 1825 4175
Wire Wire Line
	1825 4175 1875 4175
Wire Wire Line
	5000 3425 5000 4925
Connection ~ 5000 4925
Wire Wire Line
	3850 3425 3850 4925
Connection ~ 3850 4925
Connection ~ 6400 1025
Wire Wire Line
	6400 1025 6975 1025
Wire Wire Line
	5800 1025 6400 1025
Connection ~ 5800 1025
Connection ~ 5800 1125
Connection ~ 5800 1225
Wire Wire Line
	5800 1325 6400 1325
Connection ~ 5800 1325
Wire Wire Line
	5800 1425 6400 1425
Connection ~ 5800 1425
Wire Wire Line
	5800 1525 6400 1525
Connection ~ 5800 1525
Wire Wire Line
	5800 1625 6400 1625
Connection ~ 5800 1625
Wire Wire Line
	5800 1725 6400 1725
Connection ~ 5800 1725
Wire Wire Line
	5800 1225 6400 1225
Connection ~ 6400 1225
Wire Wire Line
	6400 1225 6975 1225
Wire Wire Line
	5800 1125 6400 1125
Connection ~ 6400 1125
Wire Wire Line
	6400 1125 6975 1125
Wire Wire Line
	5800 2475 6400 2475
Connection ~ 5800 2475
Wire Wire Line
	5800 2575 6400 2575
Connection ~ 5800 2575
Wire Wire Line
	5800 2675 6400 2675
Connection ~ 5800 2675
Wire Wire Line
	5800 2775 6400 2775
Connection ~ 5800 2775
Wire Wire Line
	5800 2875 6400 2875
Connection ~ 5800 2875
Wire Wire Line
	5800 2975 6400 2975
Connection ~ 5800 2975
Wire Wire Line
	5800 3075 6400 3075
Connection ~ 5800 3075
Wire Wire Line
	5800 3175 6400 3175
Connection ~ 5800 3175
Wire Wire Line
	5800 3975 6400 3975
Connection ~ 5800 3975
Wire Wire Line
	5800 4075 6400 4075
Connection ~ 5800 4075
Wire Wire Line
	5800 4175 6400 4175
Connection ~ 5800 4175
Wire Wire Line
	5800 4275 6400 4275
Connection ~ 5800 4275
Wire Wire Line
	5800 4375 6400 4375
Connection ~ 5800 4375
Wire Wire Line
	5800 4475 6400 4475
Connection ~ 5800 4475
Wire Wire Line
	5800 4575 6400 4575
Connection ~ 5800 4575
Wire Wire Line
	5225 4675 5800 4675
Connection ~ 5800 4675
Wire Wire Line
	5800 4675 6400 4675
Wire Wire Line
	1475 2775 1475 4275
Wire Wire Line
	1475 1325 1475 2775
Connection ~ 1475 2775
Wire Wire Line
	1475 4275 1875 4275
$EndSCHEMATC
