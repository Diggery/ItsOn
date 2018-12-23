//Maya ASCII 2018 scene
//Name: Salazar_Movement.ma
//Last modified: Sun, Dec 09, 2018 05:57:11 PM
//Codeset: UTF-8
file -rdi 1 -ns "AssaultRifle" -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/ItsOn/ArtSource/AssaultRifle/AssaultRifle.ma";
file -rdi 1 -ns "Salazar_Rig" -rfn "Salazar_RigRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/ItsOn/ArtSource/Salazar/Salazar_Rig.ma";
file -r -ns "AssaultRifle" -dr 1 -rfn "AssaultRifleRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/ItsOn/ArtSource/AssaultRifle/AssaultRifle.ma";
file -r -ns "Salazar_Rig" -dr 1 -rfn "Salazar_RigRN" -op "v=0;" -typ "mayaAscii"
		 "/Users/briancollins/Unity/ItsOn/ArtSource/Salazar/Salazar_Rig.ma";
requires maya "2018";
requires -nodeType "gameFbxExporter" "gameFbxExporter" "1.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2018";
fileInfo "version" "2018";
fileInfo "cutIdentifier" "201706261615-f9658c4cfc";
fileInfo "osv" "Mac OS X 10.14.1";
createNode transform -s -n "persp";
	rename -uid "A0F1BC2F-D245-1806-5750-298B0E5B870A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -45.829410960092673 239.0886897317686 -569.76940481073029 ;
	setAttr ".r" -type "double3" -20.105266384204928 -535.79999999991458 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8B1630FC-3E40-AB7C-A836-4DBA926BDBE7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 635.81437570810158;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 2.3420486450195312 21.035343170166016 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "10587B5D-284C-41FD-A11E-7EB3B3ADCDF0";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "873CC7B8-2842-A9C8-4A13-D8AA00F14175";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "D946F533-CF4C-E009-74C2-3FAA5A7AD88F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 23.410535017754931 43.798126606971351 1000.9627913812501 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CFA3CFF8-8D42-DB7B-0524-17871A5B62E3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1016.9587783410606;
	setAttr ".ow" 210.88392697309556;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" -16.353640165327988 38.557237744084674 -15.995986959810431 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "9A951E55-FD49-BF25-3838-FE8396DD16E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 60.780433549372205 2.1804639838339708 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6E413B63-BA46-094E-7484-21ADEBF375F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 323.1114796659827;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode joint -n "mixamorig:Hips";
	rename -uid "E7931A0C-C94E-96F2-2EFA-7DB96CCFE10D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".v" no;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine" -p "mixamorig:Hips";
	rename -uid "8581E431-F84F-F662-AC20-95987DE6F35C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 10.719300270080566 0.15350000560283661 ;
	setAttr ".jo" -type "double3" 0.8203 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine1" -p "mixamorig:Spine";
	rename -uid "BA8A5544-1047-0309-3802-4DAE6A6082AC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 12.507100105285645 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Spine2" -p "mixamorig:Spine1";
	rename -uid "7A79F185-5342-ADD3-000B-D8BBD4D056A7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 14.293899536132812 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Neck" -p "mixamorig:Spine2";
	rename -uid "614E2AFE-7341-E97A-5811-F99B68976152";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 16.080600738525391 0 ;
	setAttr ".jo" -type "double3" -0.8203 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:Head" -p "mixamorig:Neck";
	rename -uid "F12C6C59-C04A-E5E5-EC7A-8FB347FB5CAC";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 7.2161998748779297 2.9172999858856201 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:HeadTop_End" -p "mixamorig:Head";
	rename -uid "534F1113-6448-F1F9-E166-58B713A70718";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 24.952199935913086 10.087300300598145 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftShoulder" -p "mixamorig:Spine2";
	rename -uid "80809D32-8C49-BF4F-9A05-9EA86A4E3DB7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 9.1749000549316406 12.877599716186523 0.06849999725818634 ;
	setAttr ".jo" -type "double3" 109.2312 89.5731 0.09 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftArm" -p "mixamorig:LeftShoulder";
	rename -uid "1FB9FE63-1448-DCFE-955A-A890DE9EB6EF";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 19.359399795532227 0 ;
	setAttr ".jo" -type "double3" 15.7289 0 2.5195 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftForeArm" -p "mixamorig:LeftArm";
	rename -uid "50AFBFD4-8545-5C31-6739-38803190BF9B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 27.525199890136719 0 ;
	setAttr ".jo" -type "double3" -7.4812 0 3.3289 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHand" -p "mixamorig:LeftForeArm";
	rename -uid "34E1AF02-EE41-7698-CC2B-8FB47DA3BE87";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 27.172599792480469 0 ;
	setAttr ".jo" -type "double3" 11.8545 -8.9805 -2.9083 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandThumb1" -p "mixamorig:LeftHand";
	rename -uid "39532657-CC4D-4B89-D918-E28D67D9289F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -3.9879999160766602 5.8140997886657715 2.8283998966217041 ;
	setAttr ".jo" -type "double3" 21.8733 0 32.2797 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandThumb2" -p "mixamorig:LeftHandThumb1";
	rename -uid "A4F340ED-914C-BA99-7F6F-478BB806180B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.21330000460147858 6.0735001564025879 0 ;
	setAttr ".jo" -type "double3" 15.879700000000001 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandThumb3" -p "mixamorig:LeftHandThumb2";
	rename -uid "4DFA9AAA-E247-DBB3-A48C-1FAA678366C0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.61030000448226929 5.0585999488830566 0 ;
	setAttr ".jo" -type "double3" -19.387 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandThumb4" -p "mixamorig:LeftHandThumb3";
	rename -uid "EDCD205C-B54C-8801-8EC3-EEA8DDA6D240";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.82359999418258667 3.5738000869750977 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex1" -p "mixamorig:LeftHand";
	rename -uid "B6C1B505-634C-A0D9-C26C-528CA69B0770";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -6.3337998390197754 19.56719970703125 -0.063100002706050873 ;
	setAttr ".jo" -type "double3" 2.3047 0 -2.848 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex2" -p "mixamorig:LeftHandIndex1";
	rename -uid "DE55B65B-7746-BFDB-ED2C-80BC117994D1";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.00089999998454004526 4.3189001083374023 0 ;
	setAttr ".jo" -type "double3" -3.1642 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex3" -p "mixamorig:LeftHandIndex2";
	rename -uid "C98F90FB-9A45-2B31-EF4A-2B8601535717";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0017999999690800905 3.888200044631958 0 ;
	setAttr ".jo" -type "double3" 1.3171 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandIndex4" -p "mixamorig:LeftHandIndex3";
	rename -uid "D4BC1ACE-7B42-CD38-1DE1-C38E946C4A6D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0010000000474974513 2.4561998844146729 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandMiddle1" -p "mixamorig:LeftHand";
	rename -uid "59A8428C-F345-7069-265C-559F459B1946";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.334399938583374 18.767799377441406 -0.11590000241994858 ;
	setAttr ".jo" -type "double3" 2.6153000000000004 0 -2.9157 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandMiddle2" -p "mixamorig:LeftHandMiddle1";
	rename -uid "81271F45-2B44-9EEE-9D05-8DA69D152B0E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0098000001162290573 4.9784002304077148 0 ;
	setAttr ".jo" -type "double3" -2.4057 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandMiddle3" -p "mixamorig:LeftHandMiddle2";
	rename -uid "1D381A6C-C647-369A-B1E6-BAAAD1F0340E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0049000000581145287 4.5510997772216797 0 ;
	setAttr ".jo" -type "double3" -22.808000000000003 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandMiddle4" -p "mixamorig:LeftHandMiddle3";
	rename -uid "AA59D54E-864B-D1BC-49A8-D18D7036FA55";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.014700000174343586 3.1619000434875488 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandRing1" -p "mixamorig:LeftHand";
	rename -uid "F2B68841-FA47-63F5-077C-0E8698A3CA7C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.3587000370025635 17.395900726318359 -0.061799999326467514 ;
	setAttr ".jo" -type "double3" 3.231 0 -4.2689 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandRing2" -p "mixamorig:LeftHandRing1";
	rename -uid "7D3FD328-8C41-B1B2-DF43-F9A35476DB19";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0031000000890344381 4.7339000701904297 0 ;
	setAttr ".jo" -type "double3" -3.4658 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandRing3" -p "mixamorig:LeftHandRing2";
	rename -uid "3183E379-614F-E330-0689-E6A9FAB80B72";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0013000000035390258 4.529900074005127 0 ;
	setAttr ".jo" -type "double3" -0.9563 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandRing4" -p "mixamorig:LeftHandRing3";
	rename -uid "C2FE4039-254A-9C53-41F3-92BB77E22D43";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0017999999690800905 3.3396999835968018 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandPinky1" -p "mixamorig:LeftHand";
	rename -uid "5D83289A-3049-2760-71F3-41832837B398";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.3095002174377441 14.942299842834473 -0.025800000876188278 ;
	setAttr ".jo" -type "double3" 0.018600000000000002 0 -10.417300000000001 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandPinky2" -p "mixamorig:LeftHandPinky1";
	rename -uid "656E9707-AA49-C52B-A2DE-B893C871DE2F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.003599999938160181 4.9377999305725098 0 ;
	setAttr ".jo" -type "double3" 2.4882 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandPinky3" -p "mixamorig:LeftHandPinky2";
	rename -uid "FC323CDE-6D48-6934-A1EB-B68FBDA2F00C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.004999999888241291 4.5590000152587891 0 ;
	setAttr ".jo" -type "double3" -19.852 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftHandPinky4" -p "mixamorig:LeftHandPinky3";
	rename -uid "8543BB09-2B4D-947C-D2C9-909B33FD0049";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0086000002920627594 3.3968000411987305 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightShoulder" -p "mixamorig:Spine2";
	rename -uid "BBE9DEF1-0944-36F3-CA8E-F0AA85549D1D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -9.1749000549316406 12.876899719238281 0.023199999704957008 ;
	setAttr ".jo" -type "double3" 109.62980000000002 -89.8567 -0.48450000000000004 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightArm" -p "mixamorig:RightShoulder";
	rename -uid "204D0522-D141-6977-ECF8-E382CADA33A7";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 19.359399795532227 0 ;
	setAttr ".jo" -type "double3" 15.723700000000001 0 -2.972 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightForeArm" -p "mixamorig:RightArm";
	rename -uid "32528CAC-E44D-EDE7-41B7-5BB0333531D6";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 27.529300689697266 0 ;
	setAttr ".jo" -type "double3" -7.4743999999999993 0 -3.2032 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHand" -p "mixamorig:RightForeArm";
	rename -uid "445DA507-8949-6A0A-FC5A-689F472DD88D";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 27.176000595092773 0 ;
	setAttr ".jo" -type "double3" 11.9886 8.4939 3.4122 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandThumb1" -p "mixamorig:RightHand";
	rename -uid "BB852A91-9D4F-1BF4-5595-DD90C8AC7975";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 4.0763998031616211 5.6956000328063965 2.8554999828338623 ;
	setAttr ".jo" -type "double3" 22.201700000000002 0 -32.9608 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandThumb2" -p "mixamorig:RightHandThumb1";
	rename -uid "2DB42AE9-1148-A974-BC7A-55BCB32A8BA1";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.25720000267028809 6.0455999374389648 0 ;
	setAttr ".jo" -type "double3" 14.1997 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandThumb3" -p "mixamorig:RightHandThumb2";
	rename -uid "D26A133B-BA4F-4DBE-CEF6-5798F0029D0F";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.57130002975463867 5.1427001953125 0 ;
	setAttr ".jo" -type "double3" -14.6128 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandThumb4" -p "mixamorig:RightHandThumb3";
	rename -uid "30FB0580-5749-C764-CD87-9B89E537243C";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.82849997282028198 3.6070001125335693 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex1" -p "mixamorig:RightHand";
	rename -uid "7E1E0E7F-6A48-D222-D958-E08C85D9BC21";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 6.134699821472168 18.363899230957031 0.012000000104308128 ;
	setAttr ".jo" -type "double3" 0.63640000000000008 0 -1.9304000000000001 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex2" -p "mixamorig:RightHandIndex1";
	rename -uid "BCB79996-7C4D-839D-16D4-8C8ED7F4CF06";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0010999999940395355 4.5332999229431152 0 ;
	setAttr ".jo" -type "double3" -1.5492 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex3" -p "mixamorig:RightHandIndex2";
	rename -uid "E6B5985B-F948-7FC4-C9C4-E0987F7451A2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0019000000320374966 4.293799877166748 0 ;
	setAttr ".jo" -type "double3" 3.9295 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandIndex4" -p "mixamorig:RightHandIndex3";
	rename -uid "9B53774B-AA4A-5BFC-83A9-129D639E98A9";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0030000000260770321 2.9907000064849854 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandMiddle1" -p "mixamorig:RightHand";
	rename -uid "740E4149-3541-8EE5-F074-3DABCE4CE160";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 2.4762001037597656 18.149299621582031 -0.050999999046325684 ;
	setAttr ".jo" -type "double3" 2.9751000000000003 0 2.2422000000000004 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandMiddle2" -p "mixamorig:RightHandMiddle1";
	rename -uid "987737C6-1645-C565-8E22-38B38B107A09";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0043000001460313797 4.9566998481750488 0 ;
	setAttr ".jo" -type "double3" -4.9914000000000005 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandMiddle3" -p "mixamorig:RightHandMiddle2";
	rename -uid "A9A692C0-6F45-0E1D-F45B-77A5BD9CDB3B";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0024000001139938831 4.7838997840881348 0 ;
	setAttr ".jo" -type "double3" -0.36180000000000007 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandMiddle4" -p "mixamorig:RightHandMiddle3";
	rename -uid "72A3DFC6-7C41-E8ED-E942-1AAAF5C15F25";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0019000000320374966 3.349600076675415 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandRing1" -p "mixamorig:RightHand";
	rename -uid "8CEC7F4A-E141-2EA4-D720-A3822C251FE2";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -2.2469000816345215 16.539300918579102 -0.29670000076293945 ;
	setAttr ".jo" -type "double3" 3.2132 0 3.7178 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandRing2" -p "mixamorig:RightHandRing1";
	rename -uid "1B2793CF-F84E-A516-94B9-9D9BCC09AA10";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0043000001460313797 4.9857997894287109 0 ;
	setAttr ".jo" -type "double3" -1.8701 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandRing3" -p "mixamorig:RightHandRing2";
	rename -uid "740D7FBC-5A40-4C96-8D9A-13B4B70B188A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0017000000225380063 4.8157000541687012 0 ;
	setAttr ".jo" -type "double3" -7.6953 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandRing4" -p "mixamorig:RightHandRing3";
	rename -uid "ABA0C7B3-C147-4956-406E-AD9DD526280E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0060000000521540642 3.8529999256134033 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandPinky1" -p "mixamorig:RightHand";
	rename -uid "5F625D43-1B4B-9DED-C247-30A9D856B98E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -6.3639998435974121 14.858400344848633 0.049800001084804535 ;
	setAttr ".jo" -type "double3" 1.4046 0 7.897 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandPinky2" -p "mixamorig:RightHandPinky1";
	rename -uid "BFF103B8-C542-E7F6-E76E-9E963DDE2A27";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.0017000000225380063 5.1266999244689941 0 ;
	setAttr ".jo" -type "double3" -1.2013 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandPinky3" -p "mixamorig:RightHandPinky2";
	rename -uid "2D33A013-DA47-6C70-CA96-C28B10259D09";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -0.00030000001424923539 4.4018998146057129 0 ;
	setAttr ".jo" -type "double3" -2.5593 0 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightHandPinky4" -p "mixamorig:RightHandPinky3";
	rename -uid "6001F209-C645-1CD2-13A9-8B902D53C552";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0.0020000000949949026 3.348599910736084 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftUpLeg" -p "mixamorig:Hips";
	rename -uid "75FA20EF-C143-470F-215A-45933D6E78AD";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 14.673600196838379 -5.9509000778198242 0.47339999675750732 ;
	setAttr ".jo" -type "double3" -0.076400000000000023 0.0017000000000000003 -178.70780000000002 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftLeg" -p "mixamorig:LeftUpLeg";
	rename -uid "75047BE8-E145-7DAC-063B-ECB614A2EB1A";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 47.564201354980469 0 ;
	setAttr ".jo" -type "double3" -1.9689999999999996 0 -0.13 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftFoot" -p "mixamorig:LeftLeg";
	rename -uid "CA6209A0-6B47-9385-90BC-FB95F2E48233";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 45.361198425292969 0 ;
	setAttr ".jo" -type "double3" 51.3478 10.9839 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftToeBase" -p "mixamorig:LeftFoot";
	rename -uid "7353250E-5145-A416-5C4C-FCBE66ECB428";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 19.256799697875977 0 ;
	setAttr ".jo" -type "double3" 40.6101 0.6615 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:LeftToe_End" -p "mixamorig:LeftToeBase";
	rename -uid "1B8DB493-C14F-FBC1-FC7D-2EA93FDE158E";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 8.1944999694824219 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightUpLeg" -p "mixamorig:Hips";
	rename -uid "CDDEB5AC-9247-31BC-6A56-71AD289B24A0";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" -14.673600196838379 -5.9509000778198242 0.36959999799728394 ;
	setAttr ".jo" -type "double3" -0.079700000000000007 -0.0018000000000000002 178.70780000000002 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightLeg" -p "mixamorig:RightUpLeg";
	rename -uid "DE601A1A-6B43-73EE-5821-DC8A439BCCEE";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 47.564300537109375 0 ;
	setAttr ".jo" -type "double3" -1.9528 0 0.13 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightFoot" -p "mixamorig:RightLeg";
	rename -uid "5767E082-7245-8E74-C54F-D6A0EBD7CF23";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 45.360801696777344 0 ;
	setAttr ".jo" -type "double3" 51.2868 -11.0043 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightToeBase" -p "mixamorig:RightFoot";
	rename -uid "05B3CE98-D44A-42A9-DF23-98BE56B3EEAB";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 19.237899780273438 0 ;
	setAttr ".jo" -type "double3" 40.6582 -0.77440000000000009 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode joint -n "mixamorig:RightToe_End" -p "mixamorig:RightToeBase";
	rename -uid "680C06E3-174A-C414-5425-369AA6475F29";
	addAttr -ci true -h true -sn "fbxID" -ln "filmboxTypeID" -at "short";
	setAttr ".t" -type "double3" 0 8.1281003952026367 0 ;
	setAttr ".ssc" no;
	setAttr ".radi" 3;
	setAttr ".fbxID" 5;
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "C4907363-0D40-42B2-1BB5-4DA295241483";
createNode parentConstraint -n "AssaultRifle_parentConstraint1" -p "AssaultRifleRNfosterParent1";
	rename -uid "AD2DCA63-4D42-CAEB-9418-46A42C18BA3F";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "RightHand_AttachW0" -dv 1 -min 0 
		-at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr ".lr" -type "double3" -94.695736704731218 112.64048968506718 -117.18528206751179 ;
	setAttr ".rst" -type "double3" -83.267800538888125 115.47710013837683 7.4111288033754796 ;
	setAttr ".rsrr" -type "double3" 80 1.4739287956515491e-06 -59.999999999999993 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "C582F2D6-3F41-F9FE-766B-C995F3391289";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "DF022270-4949-7F7F-B681-8D8932A0F475";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9B4E111-4549-6E85-762D-ACB4132E2884";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "39632D8B-8246-4600-9005-00B28132E530";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F6E76A4-E14A-AC0B-8BFA-66B2BDF624B9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "AA5A0F03-0243-ECAD-472B-189A1618EE03";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "F3AF3CB3-D843-B722-FFDD-8A847BEFC3B1";
createNode reference -n "AssaultRifleRN";
	rename -uid "5D3F8ABE-2545-9A32-FE7E-8CAAEA6E0B8F";
	setAttr -s 10 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"AssaultRifleRN"
		"AssaultRifleRN" 0
		"AssaultRifleRN" 12
		0 "|AssaultRifleRNfosterParent1|AssaultRifle_parentConstraint1" "|AssaultRifle:AssaultRifle" 
		"-s -r "
		2 "AssaultRifle:Weapon" "displayType" " 2"
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateX" "AssaultRifleRN.placeHolderList[1]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateY" "AssaultRifleRN.placeHolderList[2]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.translateZ" "AssaultRifleRN.placeHolderList[3]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateX" "AssaultRifleRN.placeHolderList[4]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateY" "AssaultRifleRN.placeHolderList[5]" 
		""
		5 4 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateZ" "AssaultRifleRN.placeHolderList[6]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotateOrder" "AssaultRifleRN.placeHolderList[7]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.parentInverseMatrix" 
		"AssaultRifleRN.placeHolderList[8]" ""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivot" "AssaultRifleRN.placeHolderList[9]" 
		""
		5 3 "AssaultRifleRN" "|AssaultRifle:AssaultRifle.rotatePivotTranslate" 
		"AssaultRifleRN.placeHolderList[10]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode reference -n "Salazar_RigRN";
	rename -uid "736888F4-6D4B-0256-4406-3BA1F39552BB";
	setAttr -s 323 ".phl";
	setAttr ".phl[1]" 0;
	setAttr ".phl[2]" 0;
	setAttr ".phl[3]" 0;
	setAttr ".phl[4]" 0;
	setAttr ".phl[5]" 0;
	setAttr ".phl[6]" 0;
	setAttr ".phl[7]" 0;
	setAttr ".phl[8]" 0;
	setAttr ".phl[9]" 0;
	setAttr ".phl[10]" 0;
	setAttr ".phl[11]" 0;
	setAttr ".phl[12]" 0;
	setAttr ".phl[13]" 0;
	setAttr ".phl[14]" 0;
	setAttr ".phl[15]" 0;
	setAttr ".phl[16]" 0;
	setAttr ".phl[17]" 0;
	setAttr ".phl[18]" 0;
	setAttr ".phl[19]" 0;
	setAttr ".phl[20]" 0;
	setAttr ".phl[21]" 0;
	setAttr ".phl[22]" 0;
	setAttr ".phl[23]" 0;
	setAttr ".phl[24]" 0;
	setAttr ".phl[25]" 0;
	setAttr ".phl[26]" 0;
	setAttr ".phl[27]" 0;
	setAttr ".phl[28]" 0;
	setAttr ".phl[29]" 0;
	setAttr ".phl[30]" 0;
	setAttr ".phl[31]" 0;
	setAttr ".phl[32]" 0;
	setAttr ".phl[33]" 0;
	setAttr ".phl[34]" 0;
	setAttr ".phl[35]" 0;
	setAttr ".phl[36]" 0;
	setAttr ".phl[37]" 0;
	setAttr ".phl[38]" 0;
	setAttr ".phl[39]" 0;
	setAttr ".phl[40]" 0;
	setAttr ".phl[41]" 0;
	setAttr ".phl[42]" 0;
	setAttr ".phl[43]" 0;
	setAttr ".phl[44]" 0;
	setAttr ".phl[45]" 0;
	setAttr ".phl[46]" 0;
	setAttr ".phl[47]" 0;
	setAttr ".phl[48]" 0;
	setAttr ".phl[49]" 0;
	setAttr ".phl[50]" 0;
	setAttr ".phl[51]" 0;
	setAttr ".phl[52]" 0;
	setAttr ".phl[53]" 0;
	setAttr ".phl[54]" 0;
	setAttr ".phl[55]" 0;
	setAttr ".phl[56]" 0;
	setAttr ".phl[57]" 0;
	setAttr ".phl[58]" 0;
	setAttr ".phl[59]" 0;
	setAttr ".phl[60]" 0;
	setAttr ".phl[61]" 0;
	setAttr ".phl[62]" 0;
	setAttr ".phl[63]" 0;
	setAttr ".phl[64]" 0;
	setAttr ".phl[65]" 0;
	setAttr ".phl[66]" 0;
	setAttr ".phl[67]" 0;
	setAttr ".phl[68]" 0;
	setAttr ".phl[69]" 0;
	setAttr ".phl[70]" 0;
	setAttr ".phl[71]" 0;
	setAttr ".phl[72]" 0;
	setAttr ".phl[73]" 0;
	setAttr ".phl[74]" 0;
	setAttr ".phl[75]" 0;
	setAttr ".phl[76]" 0;
	setAttr ".phl[77]" 0;
	setAttr ".phl[78]" 0;
	setAttr ".phl[79]" 0;
	setAttr ".phl[80]" 0;
	setAttr ".phl[81]" 0;
	setAttr ".phl[82]" 0;
	setAttr ".phl[83]" 0;
	setAttr ".phl[84]" 0;
	setAttr ".phl[85]" 0;
	setAttr ".phl[86]" 0;
	setAttr ".phl[87]" 0;
	setAttr ".phl[88]" 0;
	setAttr ".phl[89]" 0;
	setAttr ".phl[90]" 0;
	setAttr ".phl[91]" 0;
	setAttr ".phl[92]" 0;
	setAttr ".phl[93]" 0;
	setAttr ".phl[94]" 0;
	setAttr ".phl[95]" 0;
	setAttr ".phl[96]" 0;
	setAttr ".phl[97]" 0;
	setAttr ".phl[98]" 0;
	setAttr ".phl[99]" 0;
	setAttr ".phl[100]" 0;
	setAttr ".phl[101]" 0;
	setAttr ".phl[102]" 0;
	setAttr ".phl[103]" 0;
	setAttr ".phl[104]" 0;
	setAttr ".phl[105]" 0;
	setAttr ".phl[106]" 0;
	setAttr ".phl[107]" 0;
	setAttr ".phl[108]" 0;
	setAttr ".phl[109]" 0;
	setAttr ".phl[110]" 0;
	setAttr ".phl[111]" 0;
	setAttr ".phl[112]" 0;
	setAttr ".phl[113]" 0;
	setAttr ".phl[114]" 0;
	setAttr ".phl[115]" 0;
	setAttr ".phl[116]" 0;
	setAttr ".phl[117]" 0;
	setAttr ".phl[118]" 0;
	setAttr ".phl[119]" 0;
	setAttr ".phl[120]" 0;
	setAttr ".phl[121]" 0;
	setAttr ".phl[122]" 0;
	setAttr ".phl[123]" 0;
	setAttr ".phl[124]" 0;
	setAttr ".phl[125]" 0;
	setAttr ".phl[126]" 0;
	setAttr ".phl[127]" 0;
	setAttr ".phl[128]" 0;
	setAttr ".phl[129]" 0;
	setAttr ".phl[130]" 0;
	setAttr ".phl[131]" 0;
	setAttr ".phl[132]" 0;
	setAttr ".phl[133]" 0;
	setAttr ".phl[134]" 0;
	setAttr ".phl[135]" 0;
	setAttr ".phl[136]" 0;
	setAttr ".phl[137]" 0;
	setAttr ".phl[138]" 0;
	setAttr ".phl[139]" 0;
	setAttr ".phl[140]" 0;
	setAttr ".phl[141]" 0;
	setAttr ".phl[142]" 0;
	setAttr ".phl[143]" 0;
	setAttr ".phl[144]" 0;
	setAttr ".phl[145]" 0;
	setAttr ".phl[146]" 0;
	setAttr ".phl[147]" 0;
	setAttr ".phl[148]" 0;
	setAttr ".phl[149]" 0;
	setAttr ".phl[150]" 0;
	setAttr ".phl[151]" 0;
	setAttr ".phl[152]" 0;
	setAttr ".phl[153]" 0;
	setAttr ".phl[154]" 0;
	setAttr ".phl[155]" 0;
	setAttr ".phl[156]" 0;
	setAttr ".phl[157]" 0;
	setAttr ".phl[158]" 0;
	setAttr ".phl[159]" 0;
	setAttr ".phl[160]" 0;
	setAttr ".phl[161]" 0;
	setAttr ".phl[162]" 0;
	setAttr ".phl[163]" 0;
	setAttr ".phl[164]" 0;
	setAttr ".phl[165]" 0;
	setAttr ".phl[166]" 0;
	setAttr ".phl[167]" 0;
	setAttr ".phl[168]" 0;
	setAttr ".phl[169]" 0;
	setAttr ".phl[170]" 0;
	setAttr ".phl[171]" 0;
	setAttr ".phl[172]" 0;
	setAttr ".phl[173]" 0;
	setAttr ".phl[174]" 0;
	setAttr ".phl[175]" 0;
	setAttr ".phl[176]" 0;
	setAttr ".phl[177]" 0;
	setAttr ".phl[178]" 0;
	setAttr ".phl[179]" 0;
	setAttr ".phl[180]" 0;
	setAttr ".phl[181]" 0;
	setAttr ".phl[182]" 0;
	setAttr ".phl[183]" 0;
	setAttr ".phl[184]" 0;
	setAttr ".phl[185]" 0;
	setAttr ".phl[186]" 0;
	setAttr ".phl[187]" 0;
	setAttr ".phl[188]" 0;
	setAttr ".phl[189]" 0;
	setAttr ".phl[190]" 0;
	setAttr ".phl[191]" 0;
	setAttr ".phl[192]" 0;
	setAttr ".phl[193]" 0;
	setAttr ".phl[194]" 0;
	setAttr ".phl[195]" 0;
	setAttr ".phl[196]" 0;
	setAttr ".phl[197]" 0;
	setAttr ".phl[198]" 0;
	setAttr ".phl[199]" 0;
	setAttr ".phl[200]" 0;
	setAttr ".phl[201]" 0;
	setAttr ".phl[202]" 0;
	setAttr ".phl[203]" 0;
	setAttr ".phl[204]" 0;
	setAttr ".phl[205]" 0;
	setAttr ".phl[206]" 0;
	setAttr ".phl[207]" 0;
	setAttr ".phl[208]" 0;
	setAttr ".phl[209]" 0;
	setAttr ".phl[210]" 0;
	setAttr ".phl[211]" 0;
	setAttr ".phl[212]" 0;
	setAttr ".phl[213]" 0;
	setAttr ".phl[214]" 0;
	setAttr ".phl[215]" 0;
	setAttr ".phl[216]" 0;
	setAttr ".phl[217]" 0;
	setAttr ".phl[218]" 0;
	setAttr ".phl[219]" 0;
	setAttr ".phl[220]" 0;
	setAttr ".phl[221]" 0;
	setAttr ".phl[222]" 0;
	setAttr ".phl[223]" 0;
	setAttr ".phl[224]" 0;
	setAttr ".phl[225]" 0;
	setAttr ".phl[226]" 0;
	setAttr ".phl[227]" 0;
	setAttr ".phl[228]" 0;
	setAttr ".phl[229]" 0;
	setAttr ".phl[230]" 0;
	setAttr ".phl[231]" 0;
	setAttr ".phl[232]" 0;
	setAttr ".phl[233]" 0;
	setAttr ".phl[234]" 0;
	setAttr ".phl[235]" 0;
	setAttr ".phl[236]" 0;
	setAttr ".phl[237]" 0;
	setAttr ".phl[238]" 0;
	setAttr ".phl[239]" 0;
	setAttr ".phl[240]" 0;
	setAttr ".phl[241]" 0;
	setAttr ".phl[242]" 0;
	setAttr ".phl[243]" 0;
	setAttr ".phl[244]" 0;
	setAttr ".phl[245]" 0;
	setAttr ".phl[246]" 0;
	setAttr ".phl[247]" 0;
	setAttr ".phl[248]" 0;
	setAttr ".phl[249]" 0;
	setAttr ".phl[250]" 0;
	setAttr ".phl[251]" 0;
	setAttr ".phl[252]" 0;
	setAttr ".phl[253]" 0;
	setAttr ".phl[254]" 0;
	setAttr ".phl[255]" 0;
	setAttr ".phl[256]" 0;
	setAttr ".phl[257]" 0;
	setAttr ".phl[258]" 0;
	setAttr ".phl[259]" 0;
	setAttr ".phl[260]" 0;
	setAttr ".phl[261]" 0;
	setAttr ".phl[262]" 0;
	setAttr ".phl[263]" 0;
	setAttr ".phl[264]" 0;
	setAttr ".phl[265]" 0;
	setAttr ".phl[266]" 0;
	setAttr ".phl[267]" 0;
	setAttr ".phl[268]" 0;
	setAttr ".phl[269]" 0;
	setAttr ".phl[270]" 0;
	setAttr ".phl[271]" 0;
	setAttr ".phl[272]" 0;
	setAttr ".phl[273]" 0;
	setAttr ".phl[274]" 0;
	setAttr ".phl[275]" 0;
	setAttr ".phl[276]" 0;
	setAttr ".phl[277]" 0;
	setAttr ".phl[278]" 0;
	setAttr ".phl[279]" 0;
	setAttr ".phl[280]" 0;
	setAttr ".phl[281]" 0;
	setAttr ".phl[282]" 0;
	setAttr ".phl[283]" 0;
	setAttr ".phl[284]" 0;
	setAttr ".phl[285]" 0;
	setAttr ".phl[286]" 0;
	setAttr ".phl[287]" 0;
	setAttr ".phl[288]" 0;
	setAttr ".phl[289]" 0;
	setAttr ".phl[290]" 0;
	setAttr ".phl[291]" 0;
	setAttr ".phl[292]" 0;
	setAttr ".phl[293]" 0;
	setAttr ".phl[294]" 0;
	setAttr ".phl[295]" 0;
	setAttr ".phl[296]" 0;
	setAttr ".phl[297]" 0;
	setAttr ".phl[298]" 0;
	setAttr ".phl[299]" 0;
	setAttr ".phl[300]" 0;
	setAttr ".phl[301]" 0;
	setAttr ".phl[302]" 0;
	setAttr ".phl[303]" 0;
	setAttr ".phl[304]" 0;
	setAttr ".phl[305]" 0;
	setAttr ".phl[306]" 0;
	setAttr ".phl[307]" 0;
	setAttr ".phl[308]" 0;
	setAttr ".phl[309]" 0;
	setAttr ".phl[310]" 0;
	setAttr ".phl[311]" 0;
	setAttr ".phl[312]" 0;
	setAttr ".phl[313]" 0;
	setAttr ".phl[314]" 0;
	setAttr ".phl[315]" 0;
	setAttr ".phl[316]" 0;
	setAttr ".phl[317]" 0;
	setAttr ".phl[318]" 0;
	setAttr ".phl[319]" 0;
	setAttr ".phl[320]" 0;
	setAttr ".phl[321]" 0;
	setAttr ".phl[322]" 0;
	setAttr ".phl[323]" 0;
	setAttr ".ed" -type "dataReferenceEdits" 
		"Salazar_RigRN"
		"Salazar_RigRN" 0
		"Salazar_RigRN" 411
		2 "|Salazar_Rig:Salazar|Salazar_Rig:Salazar_Geo|Salazar_Rig:Salazar_GeoShape" 
		"visibility" " -k 0 1"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"visibility" " -av 1"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"translate" " -type \"double3\" -0.49129983480439254 24.14436069284395714 -13.26782981528506866"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotate" " -type \"double3\" 78.9411880063257172 8.02183808664912412 12.08302821946210592"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"scale" " -type \"double3\" 1 1 1"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"scaleX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"scaleY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"scaleZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotatePivot" " -type \"double3\" 16.42849922180175781 16.59269905090332031 -3.81821990013122559"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"rotatePivotTranslate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control" 
		"scalePivot" " -type \"double3\" 16.42849922180175781 16.59269905090332031 -3.81821990013122559"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control" 
		"rotate" " -type \"double3\" 14.67745402282615608 -1.95438153507831491 0.54900608882705948"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"translate" " -type \"double3\" 7.22400258456193622 2.14012808468740046 25.71829868375589356"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control" 
		"rotate" " -type \"double3\" 4.64337511047213436 0.16332091138404345 -0.072767200271067672"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translate" " -type \"double3\" -2.84722222222222232 -3.29629147044736159 6.925784166280053"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"rotate" " -type \"double3\" 14.99999999999999822 15.95435996476596863 10.75587649344155139"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control" 
		"rotate" " -type \"double3\" 10.1667443479039985 -7.99648951999196456 -3.02168618671572764"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control" 
		"rotate" " -type \"double3\" 10.0329794948761144 -8.08584285027116678 -3.09529383855773821"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotate" " -type \"double3\" -16.1516605858675959 -3.54457454864804822 4.20794201288959879"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"translate" " -type \"double3\" -41.82982862336828589 -21.39636528043217467 16.06149043525144293"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"rotate" " -type \"double3\" -79.4388537234035681 -30.18770094842853169 -77.72168743641762489"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"translate" " -type \"double3\" 56.39387656295811979 -0.02750941566715881 25.66708451208712916"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"rotate" " -type \"double3\" 97.01558747089248413 46.78324592041299468 156.43477529040796981"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control" 
		"rotateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"translate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"rotate" " -type \"double3\" 0 0 0"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control" 
		"rotateZ" " -av"
		2 "Salazar_Rig:Skeleton_Layer" "visibility" " 0"
		2 "Salazar_Rig:Geometry_Layer" "displayType" " 2"
		2 "Salazar_Rig:Geometry_Layer" "visibility" " 1"
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.translate" 
		"Salazar_RigRN.placeHolderList[1]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.rotate" 
		"Salazar_RigRN.placeHolderList[2]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.rotateOrder" 
		"Salazar_RigRN.placeHolderList[3]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.rotatePivot" 
		"Salazar_RigRN.placeHolderList[4]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.rotatePivotTranslate" 
		"Salazar_RigRN.placeHolderList[5]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.scale" 
		"Salazar_RigRN.placeHolderList[6]" ""
		5 3 "Salazar_RigRN" "|Salazar_Rig:Salazar|Salazar_Rig:RootMotion|Salazar_Rig:Hips_Skel|Salazar_Rig:Spine1_Skel|Salazar_Rig:Spine2_Skel|Salazar_Rig:RightClav_Skel|Salazar_Rig:RightUpperArm_Skel|Salazar_Rig:RightLowerArm_Skel|Salazar_Rig:RightHand_Skel|Salazar_Rig:RightHand_Attach.parentMatrix" 
		"Salazar_RigRN.placeHolderList[7]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.visibility" 
		"Salazar_RigRN.placeHolderList[8]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.translateX" 
		"Salazar_RigRN.placeHolderList[9]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.translateY" 
		"Salazar_RigRN.placeHolderList[10]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[11]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[12]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[13]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[14]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[15]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[16]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[17]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[18]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[19]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[20]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.translateX" 
		"Salazar_RigRN.placeHolderList[21]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.translateY" 
		"Salazar_RigRN.placeHolderList[22]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[23]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.visibility" 
		"Salazar_RigRN.placeHolderList[24]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[25]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[26]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[27]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.translateX" 
		"Salazar_RigRN.placeHolderList[28]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.translateY" 
		"Salazar_RigRN.placeHolderList[29]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[30]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.visibility" 
		"Salazar_RigRN.placeHolderList[31]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[32]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[33]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[34]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[35]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[36]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftKnee_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[37]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[38]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[39]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[40]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.visibility" 
		"Salazar_RigRN.placeHolderList[41]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.translateX" 
		"Salazar_RigRN.placeHolderList[42]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.translateY" 
		"Salazar_RigRN.placeHolderList[43]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[44]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[45]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[46]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:LeftFoot_Control|Salazar_Rig:LeftToe_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[47]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[48]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[49]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[50]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.translateX" 
		"Salazar_RigRN.placeHolderList[51]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.translateY" 
		"Salazar_RigRN.placeHolderList[52]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[53]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.visibility" 
		"Salazar_RigRN.placeHolderList[54]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[55]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[56]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[57]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[58]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[59]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[60]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.visibility" 
		"Salazar_RigRN.placeHolderList[61]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.translateX" 
		"Salazar_RigRN.placeHolderList[62]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.translateY" 
		"Salazar_RigRN.placeHolderList[63]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[64]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[65]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[66]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightToe_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[67]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.translateX" 
		"Salazar_RigRN.placeHolderList[68]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.translateY" 
		"Salazar_RigRN.placeHolderList[69]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[70]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.visibility" 
		"Salazar_RigRN.placeHolderList[71]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[72]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[73]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[74]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[75]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[76]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RightFoot_Control|Salazar_Rig:RightKnee_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[77]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.translateX" 
		"Salazar_RigRN.placeHolderList[78]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.translateY" 
		"Salazar_RigRN.placeHolderList[79]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[80]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[81]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[82]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[83]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[84]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[85]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[86]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control.visibility" 
		"Salazar_RigRN.placeHolderList[87]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.translateX" 
		"Salazar_RigRN.placeHolderList[88]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.translateY" 
		"Salazar_RigRN.placeHolderList[89]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[90]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[91]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[92]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[93]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[94]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[95]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[96]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control.visibility" 
		"Salazar_RigRN.placeHolderList[97]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.translateX" 
		"Salazar_RigRN.placeHolderList[98]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.translateY" 
		"Salazar_RigRN.placeHolderList[99]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[100]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[101]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[102]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[103]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[104]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[105]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[106]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control.visibility" 
		"Salazar_RigRN.placeHolderList[107]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.translateX" 
		"Salazar_RigRN.placeHolderList[108]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.translateY" 
		"Salazar_RigRN.placeHolderList[109]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[110]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[111]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[112]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[113]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[114]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[115]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[116]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control.visibility" 
		"Salazar_RigRN.placeHolderList[117]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.translateX" 
		"Salazar_RigRN.placeHolderList[118]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.translateY" 
		"Salazar_RigRN.placeHolderList[119]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[120]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.visibility" 
		"Salazar_RigRN.placeHolderList[121]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[122]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[123]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[124]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[125]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[126]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightUpperArm_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[127]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.translateX" 
		"Salazar_RigRN.placeHolderList[128]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.translateY" 
		"Salazar_RigRN.placeHolderList[129]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[130]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[131]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[132]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[133]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[134]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[135]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[136]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightClav_Control.visibility" 
		"Salazar_RigRN.placeHolderList[137]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.translateX" 
		"Salazar_RigRN.placeHolderList[138]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.translateY" 
		"Salazar_RigRN.placeHolderList[139]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[140]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[141]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[142]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[143]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[144]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[145]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[146]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftClav_Control.visibility" 
		"Salazar_RigRN.placeHolderList[147]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.translateX" 
		"Salazar_RigRN.placeHolderList[148]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.translateY" 
		"Salazar_RigRN.placeHolderList[149]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[150]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.visibility" 
		"Salazar_RigRN.placeHolderList[151]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[152]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[153]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[154]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[155]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[156]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftUpperArm_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[157]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.translateX" 
		"Salazar_RigRN.placeHolderList[158]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.translateY" 
		"Salazar_RigRN.placeHolderList[159]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[160]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[161]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[162]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[163]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[164]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[165]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[166]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control.visibility" 
		"Salazar_RigRN.placeHolderList[167]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.translateX" 
		"Salazar_RigRN.placeHolderList[168]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.translateY" 
		"Salazar_RigRN.placeHolderList[169]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[170]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[171]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[172]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[173]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[174]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[175]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[176]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control.visibility" 
		"Salazar_RigRN.placeHolderList[177]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.translateX" 
		"Salazar_RigRN.placeHolderList[178]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.translateY" 
		"Salazar_RigRN.placeHolderList[179]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[180]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[181]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[182]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[183]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[184]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[185]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[186]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control|Salazar_Rig:Jaw_Control.visibility" 
		"Salazar_RigRN.placeHolderList[187]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[188]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[189]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[190]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.translateX" 
		"Salazar_RigRN.placeHolderList[191]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.translateY" 
		"Salazar_RigRN.placeHolderList[192]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[193]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.visibility" 
		"Salazar_RigRN.placeHolderList[194]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[195]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[196]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[197]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.LeftFingers" 
		"Salazar_RigRN.placeHolderList[198]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.LeftPointer" 
		"Salazar_RigRN.placeHolderList[199]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.LeftThumb" 
		"Salazar_RigRN.placeHolderList[200]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.visibility" 
		"Salazar_RigRN.placeHolderList[201]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.translateX" 
		"Salazar_RigRN.placeHolderList[202]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.translateY" 
		"Salazar_RigRN.placeHolderList[203]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[204]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[205]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[206]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[207]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[208]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[209]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftFingers_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[210]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.translateX" 
		"Salazar_RigRN.placeHolderList[211]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.translateY" 
		"Salazar_RigRN.placeHolderList[212]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[213]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[214]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[215]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[216]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[217]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[218]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[219]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftHand_Control|Salazar_Rig:LeftHandAttach_Control.visibility" 
		"Salazar_RigRN.placeHolderList[220]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[221]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[222]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[223]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.translateX" 
		"Salazar_RigRN.placeHolderList[224]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.translateY" 
		"Salazar_RigRN.placeHolderList[225]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[226]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.visibility" 
		"Salazar_RigRN.placeHolderList[227]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[228]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[229]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[230]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.RightFingers" 
		"Salazar_RigRN.placeHolderList[231]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.RightPointer" 
		"Salazar_RigRN.placeHolderList[232]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.RightThumb" 
		"Salazar_RigRN.placeHolderList[233]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateX" 
		"Salazar_RigRN.placeHolderList[234]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateY" 
		"Salazar_RigRN.placeHolderList[235]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[236]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[237]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[238]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[239]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.visibility" 
		"Salazar_RigRN.placeHolderList[240]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[241]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[242]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[243]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.translateX" 
		"Salazar_RigRN.placeHolderList[244]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.translateY" 
		"Salazar_RigRN.placeHolderList[245]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[246]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[247]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[248]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[249]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[250]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[251]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[252]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightHandAttach_Control.visibility" 
		"Salazar_RigRN.placeHolderList[253]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.translateX" 
		"Salazar_RigRN.placeHolderList[254]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.translateY" 
		"Salazar_RigRN.placeHolderList[255]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[256]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.visibility" 
		"Salazar_RigRN.placeHolderList[257]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[258]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[259]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[260]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[261]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[262]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftElbow_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[263]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.translateX" 
		"Salazar_RigRN.placeHolderList[264]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.translateY" 
		"Salazar_RigRN.placeHolderList[265]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[266]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.visibility" 
		"Salazar_RigRN.placeHolderList[267]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[268]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[269]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[270]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[271]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[272]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightElbow_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[273]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.translateX" 
		"Salazar_RigRN.placeHolderList[274]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.translateY" 
		"Salazar_RigRN.placeHolderList[275]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[276]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[277]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[278]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[279]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[280]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[281]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[282]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:LeftBackAttach_Control.visibility" 
		"Salazar_RigRN.placeHolderList[283]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.translateX" 
		"Salazar_RigRN.placeHolderList[284]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.translateY" 
		"Salazar_RigRN.placeHolderList[285]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[286]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[287]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[288]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[289]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[290]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[291]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[292]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightBackAttach_Control.visibility" 
		"Salazar_RigRN.placeHolderList[293]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.translateX" 
		"Salazar_RigRN.placeHolderList[294]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.translateY" 
		"Salazar_RigRN.placeHolderList[295]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[296]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[297]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[298]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[299]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[300]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[301]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[302]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:CenterBackAttach_Control.visibility" 
		"Salazar_RigRN.placeHolderList[303]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateX" 
		"Salazar_RigRN.placeHolderList[304]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateY" 
		"Salazar_RigRN.placeHolderList[305]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[306]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[307]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[308]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[309]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.visibility" 
		"Salazar_RigRN.placeHolderList[310]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[311]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[312]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[313]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateX" 
		"Salazar_RigRN.placeHolderList[314]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateY" 
		"Salazar_RigRN.placeHolderList[315]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[316]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.visibility" 
		"Salazar_RigRN.placeHolderList[317]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[318]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[319]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[320]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[321]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[322]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[323]" "";
	setAttr ".ptag" -type "string" "";
lockNode -l 1 ;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "462C2519-8648-EA5E-F91B-D786E34F647C";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 462\n            -height 331\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 462\n            -height 331\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 462\n            -height 331\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 931\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n"
		+ "            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n"
		+ "            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n"
		+ "            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n"
		+ "                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n"
		+ "                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n"
		+ "            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n"
		+ "                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n"
		+ "\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 931\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 931\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 20 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C59C9BD8-9449-4BDC-6489-808960E4478C";
	setAttr ".b" -type "string" "playbackOptions -min 0 -max 24 -ast 0 -aet 24 ";
	setAttr ".st" 6;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "BCD7307A-2946-76D5-7195-A7AC206FF263";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 4.0636804404917646 4 8.4775271501411744
		 8 6.2706037953164699 12 4.0636804404917646 16 8.4775271501411744 20 6.2706037953164682
		 24 4.0636804404917646;
	setAttr -s 7 ".kit[1:6]"  18 18 1 1 18 1;
	setAttr -s 7 ".kot[1:6]"  18 18 1 1 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 0.07530547817094492 1 1 0.075305478170944906 
		1;
	setAttr -s 7 ".kiy[0:6]"  0 0 -0.99716051113020188 0 0 -0.99716051113020188 
		0;
	setAttr -s 7 ".kox[0:6]"  1 1 0.075305478170944906 1 1 0.075305478170944906 
		1;
	setAttr -s 7 ".koy[0:6]"  0 0 -0.99716051113020188 0 0 -0.99716051113020188 
		0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "F51AAF42-8F4B-6753-69F3-F0A02984F8D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 14.999999999999998 4 14.999999999999998
		 8 14.999999999999998 12 14.999999999999998 16 14.999999999999998 20 14.999999999999998
		 24 14.999999999999998;
	setAttr -s 7 ".kit[0:6]"  1 18 18 1 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 1 18 18 1;
	setAttr -s 7 ".kix[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".kiy[0:6]"  0 0 0 0 0 0 0;
	setAttr -s 7 ".kox[0:6]"  1 1 1 1 1 1 1;
	setAttr -s 7 ".koy[0:6]"  0 0 0 0 0 0 0;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "DBEE512E-2E4E-1F9C-4691-E08FEC3872E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 17.430611890392647 8 14.228428987672753
		 12 0 16 -12.381712121305272 20 -8.4418000240680406 24 0;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "660DC0C1-0341-5275-9640-579B6321B62F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 9 9 9 9 18 9 9 
		9 9 9 9 18;
	setAttr -s 13 ".kot[0:12]"  1 5 5 5 5 18 5 5 
		5 5 5 5 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 0 0 0 0 1 0 0 0 0 0 0 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "22F06316-2948-753F-733B-0C8D0F43F836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 1.0809506628794796 4 4.105046030734707
		 6 6.5742086177615242 8 7.4550464935148328 10 6.8855010807999895 12 5.7732383255617119
		 14 4.7106422494315279 16 3.6726127506955923 18 2.6813599147130152 20 1.7075945455744077
		 22 0.73582198595275838 24 0;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "00B02B7C-E443-952E-E69F-9DB205DA3221";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 26 2 17.054057115654849 4 9.4203916252703266
		 6 3.9175280437908491 8 0.9338542873501261 10 0 12 3.8733499216060761 14 11.210826980662247
		 16 17.365147554497806 18 22.474740333433708 20 25.266917293233082 22 26 24 26;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D5950F9A-D74B-5915-FA95-DA96F4D6617C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 25.963088812499592 2 38.932444120770469
		 4 48.299614482542346 6 39.447942167655022 8 10.610437998049509 10 -9.2669719312944139
		 12 -26.580641570918875 14 -38.495329986172919 16 -32.274996973677652 18 -20.753888472405762
		 20 -5.2821956198339137 22 10.235517188081491 24 25.963088812499592;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 13 ".kix[0:12]"  0.0062687653489285795 0.0074614122927884963 
		1 0.0044220928295384239 0.0034212457177917551 0.0044813163552523171 0.0057021320460730182 
		1 0.0093937864503917407 0.0061743680305690329 0.0053781043154340086 0.0053340623604275312 
		0.0058140779420222536;
	setAttr -s 13 ".kiy[0:12]"  0.99998035109746042 0.99997216327585692 
		0 -0.99999022249970371 -0.99999414752174354 -0.99998995885144981 -0.9999837427129149 
		0 0.99995587741466097 0.99998093840803937 0.99998553789240985 0.99998577378817499 
		0.99998309810600505;
	setAttr -s 13 ".kox[0:12]"  0.0062687650877686968 0.0074614122927884963 
		1 0.0044220928295384239 0.0034212457177917551 0.0044813163552523162 0.0057021320460730182 
		1 0.009393786450391739 0.0061743680305690329 0.0053781043154340095 0.0053340623604275321 
		0.0058140782540255578;
	setAttr -s 13 ".koy[0:12]"  0.99998035109909755 0.99997216327585692 
		0 -0.99999022249970371 -0.99999414752174354 -0.99998995885144981 -0.99998374271291479 
		0 0.99995587741466097 0.99998093840803937 0.99998553789240996 0.99998577378817499 
		0.99998309810419106;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "A057198F-B440-2C71-E06C-719FB794E5D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 19.040937205495045 2 -9.2549603351147045
		 4 -27.256626469074227 6 0 8 0 10 0 12 42.090203358330044 14 58.366167126693242 16 68.926231276925066
		 18 76.721036926466965 20 79.801882662933423 22 77.014877434166223 24 19.040937205495045;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 1;
	setAttr -s 13 ".kix[0:12]"  0.22591347897107236 0.20200693961394769 
		1 1 1 1 0.16146336029271358 0.33524645543915038 0.46153398200405282 0.6597989941986504 
		1 0.49589816566444156 0.22591347897107236;
	setAttr -s 13 ".kiy[0:12]"  -0.97414737079108671 -0.97938409030768259 
		0 0 0 0 0.98687870748283224 0.9421304655489523 0.88712253012505715 0.75144213832766227 
		0 -0.86838068224174692 -0.97414737079108671;
	setAttr -s 13 ".kox[0:12]"  0.22591347067552869 0.20200693961394769 
		1 1 1 1 0.16146336029271355 0.33524645543915038 0.46153398200405277 0.6597989941986504 
		1 0.49589816566444167 0.22591347067552869;
	setAttr -s 13 ".koy[0:12]"  -0.97414737271489726 -0.97938409030768259 
		0 0 0 0 0.98687870748283202 0.9421304655489523 0.88712253012505715 0.75144213832766227 
		0 -0.86838068224174703 -0.97414737271489726;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "870C81DE-4B47-BBFB-9FDC-37AAB7DDEBE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 -7.9638509497840628
		 14 -7.2957999945901975 16 -6.0472174878693661 18 -4.4806616406222588 20 -2.8032755343239897
		 22 -1.0282492971101416 24 0;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 0.98044669457541134 0.95918798171793063 
		0.94685789630587547 0.94042625454381756 0.95951065216020348 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0.19678485484444716 0.28276919161726727 
		0.3216521789188001 0.33999773494052393 0.28167234225443782 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 0.98044669457541123 0.95918798171793074 
		0.94685789630587547 0.94042625454381756 0.95951065216020337 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0.19678485484444719 0.28276919161726727 
		0.3216521789188001 0.33999773494052393 0.28167234225443777 0;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "0D43C7FA-764B-358B-5D64-42AA7057E743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 -6.7343161558068507
		 14 -6.1694052391119278 16 -5.1135907343093363 18 -3.7888946271608299 20 -2.3704792868440103
		 22 -0.86949842449193693 24 0;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 0.9859011006322107 0.97030518109924846 
		0.96113105575978575 0.95630802489996936 0.9705439924768926 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0.16732907629039179 0.24188397121751271 
		0.27609254545184564 0.29236101229801409 0.24092396864366483 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 0.98590110063221059 0.97030518109924846 
		0.96113105575978575 0.95630802489996936 0.97054399247689238 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0.16732907629039179 0.24188397121751273 
		0.27609254545184564 0.29236101229801403 0.2409239686436648 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "D8EEF1D1-564E-EB3B-D21F-0FA83F016BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "FF2C221D-BB43-D2E6-5062-3E8F59D7D5B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "EE904D37-3244-D89B-F759-9C98A62C96A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "LeftToe_Control_rotateX";
	rename -uid "C045A530-954D-D0EA-5C65-AE87A5CD0E6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 4 21.447504691539905 12 -6.1780234230435402
		 16 -12.188149047829429 20 -0.91226923853831032 24 -27.06516423822;
	setAttr -s 6 ".kit[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kot[0:5]"  1 18 18 18 18 18;
	setAttr -s 6 ".kix[0:5]"  1 1 0.64840475371891326 1 1 1;
	setAttr -s 6 ".kiy[0:5]"  0 0 -0.76129578703334178 0 0 0;
	setAttr -s 6 ".kox[0:5]"  1 1 0.64840475371891337 1 1 1;
	setAttr -s 6 ".koy[0:5]"  0 0 -0.76129578703334189 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "4E3FA552-F849-22AD-2F0C-C79098622A18";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 9 9 9 9 9 9 9 
		9 9 9 9 1;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode gameFbxExporter -n "gameExporterPreset1";
	rename -uid "04E9D31F-864B-B45E-4225-9A8C7D69DADF";
	setAttr ".pn" -type "string" "Model Default";
	setAttr ".ils" yes;
	setAttr ".ssn" -type "string" "";
	setAttr ".ebm" yes;
	setAttr ".inc" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode gameFbxExporter -n "gameExporterPreset2";
	rename -uid "8BB50F98-2B4A-DC36-1C46-6996EDEEE1EF";
	setAttr ".pn" -type "string" "Anim Default";
	setAttr ".ils" yes;
	setAttr ".ilu" yes;
	setAttr ".eti" 2;
	setAttr ".esi" 3;
	setAttr ".ssn" -type "string" "Salazar_Rig:ExportSet";
	setAttr ".ac[0].acn" -type "string" "Idle01";
	setAttr ".ac[0].acs" 1;
	setAttr ".ac[0].ace" 120;
	setAttr ".spt" 2;
	setAttr ".ic" no;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
	setAttr ".exp" -type "string" "/Users/briancollins/Unity/ItsOn/Assets/Game/Characters/Salazar/Anims";
	setAttr ".exf" -type "string" "Salazar_";
createNode gameFbxExporter -n "gameExporterPreset3";
	rename -uid "6FD7065F-4742-4F5E-EFC7-7F9A3D9C6BA9";
	setAttr ".pn" -type "string" "TE Anim Default";
	setAttr ".ils" yes;
	setAttr ".eti" 3;
	setAttr ".ebm" yes;
	setAttr ".fv" -type "string" "FBX201800";
createNode animCurveTU -n "RightHips_Control_visibility";
	rename -uid "B77733AE-794A-23D1-3A2E-CFB9B3BDDE76";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightHips_Control_translateX";
	rename -uid "6F547C47-4240-BE30-4975-7BA21EEFA932";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightHips_Control_translateY";
	rename -uid "E6DDC70F-3142-C27B-C36E-1283988E27DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightHips_Control_translateZ";
	rename -uid "9EE770EE-4343-4277-A44E-D39C792CDF5C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHips_Control_rotateX";
	rename -uid "AFC4B872-984B-02C5-20A8-3BB0895EDEF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHips_Control_rotateY";
	rename -uid "32E3FB8E-F640-9F52-4F0E-6F9C1A998846";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHips_Control_rotateZ";
	rename -uid "92BDBACF-644C-A894-B0E6-309278FC4D8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightHips_Control_scaleX";
	rename -uid "C5BCC510-F14F-ABF5-3932-6B947FC19F32";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightHips_Control_scaleY";
	rename -uid "87F70FF2-2A49-8B83-2D30-4E8EE6D7CAAA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightHips_Control_scaleZ";
	rename -uid "BCCCC013-184B-0A9C-DC49-B29E70FDA81B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "01406048-324F-0EB3-3F8C-15938A4DEDA7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "45271581-6A49-BCDF-2919-35A2D6A2A7D9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "DA8741D8-5344-099F-AB31-AA915FBE71D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "AE552CDA-3748-F7C6-D1BD-5EAD9F8AE589";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "EF0DA6D2-D249-68A3-7097-6A8773B0D285";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "BD3F1198-5947-F202-B963-2CB187CBDBCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "46101358-9148-4AE5-1A7D-DD99FD7A0DF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "D89F7D71-6842-C029-681B-B3A33E5FD225";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "02A45A91-5541-3537-6733-6CA0911804FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "33335ADC-0B48-85A1-87AD-0AB7BCF15782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "CenterBackAttach_Control_translateX";
	rename -uid "B29B188A-964B-692E-EF8F-91BB2107BD42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "CenterBackAttach_Control_translateY";
	rename -uid "5C68DCF1-7C49-F2E5-5104-FB8B4BC488AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "CenterBackAttach_Control_translateZ";
	rename -uid "75322071-404A-8CA5-724D-46B3989CBF37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateX";
	rename -uid "323B265F-3546-50A6-8FE1-8D9C442A6A37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateY";
	rename -uid "EE9327E1-5A4A-6336-B14D-3F88B991E86E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateZ";
	rename -uid "4087600C-4B4D-9388-B011-B8B3BE6FDC77";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "CenterBackAttach_Control_scaleX";
	rename -uid "E56F366B-8B41-7895-CD4A-389206A9C778";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "CenterBackAttach_Control_scaleY";
	rename -uid "B980E67E-E446-F710-5AD2-4B959F74BE20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "CenterBackAttach_Control_scaleZ";
	rename -uid "5CE5299B-1E46-DA84-69A0-2A97D611DDD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "CenterBackAttach_Control_visibility";
	rename -uid "7F32FE78-4F41-0732-3E18-E79D029BB3BD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightBackAttach_Control_translateX";
	rename -uid "099D434D-6A47-3617-5EF9-F69A1612D675";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightBackAttach_Control_translateY";
	rename -uid "80222C06-CC4B-0D6D-12A7-67AEF9EA1A12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightBackAttach_Control_translateZ";
	rename -uid "CB54AE7A-B640-2C50-EED6-3F97EFE2C040";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateX";
	rename -uid "FD1FEF60-5540-700D-5B81-CAB58B236BBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateY";
	rename -uid "F63F3EFB-314F-BE6F-3919-FF8EB449E6AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateZ";
	rename -uid "13EDA174-7B4F-CEAF-B2A4-458293E72F6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightBackAttach_Control_scaleX";
	rename -uid "E62A6A0E-2C44-41B9-40EC-D3B9CC59A018";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleY";
	rename -uid "BCAC36C0-8142-6435-45D0-D6BE1C8D88CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleZ";
	rename -uid "5078E1C8-2B45-1904-7363-2B9CE5BA2632";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightBackAttach_Control_visibility";
	rename -uid "FDE300E3-194C-5205-B56B-1088DB82762E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftBackAttach_Control_translateX";
	rename -uid "1D4B4DE9-9442-49BB-B49C-56BE6B98D1F5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateY";
	rename -uid "C79B55A7-8A4B-E8C4-3CAF-2E9A7EEC55CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateZ";
	rename -uid "F6BC4943-A046-9E2F-44B4-CD8A77780D54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateX";
	rename -uid "84CFE21A-9744-9224-C3D0-E0A40E8989BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateY";
	rename -uid "82828B9E-4043-FC16-6598-19A1F871842A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateZ";
	rename -uid "6C20FD0F-604E-018C-1FC3-C8B9630A0032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleX";
	rename -uid "D915D541-6746-2422-7F42-4A8ED5B500D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleY";
	rename -uid "91DE0369-6E4F-329D-0D77-7790F9FB7B54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleZ";
	rename -uid "F0DD0AF1-3B43-471B-1EA6-66858A572FF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftBackAttach_Control_visibility";
	rename -uid "532E795B-B64A-D7DF-C552-A9AFBF60EF7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "F14347C1-2043-BCB2-66EA-C4A6494DA391";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -33.909553021158445 24 -33.909553021158445;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "83AF88F8-7343-9799-788D-DCA4414E1992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1.5354997742790981 24 1.5354997742790981;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "0C64682D-1042-5856-DBC7-3391A271C8F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 22.172661932856251 24 22.172661932856251;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "39A86DA3-7641-4E95-7FB9-D1B2DC1E635C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "56EF71C2-A747-B34C-9A0A-D6A132A3C927";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "D965B362-6A4A-3B01-EC91-42A7EBF4A27C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "D59461E1-6E41-1C2B-8755-BDAD9F542F7F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "010F11F4-8542-5F29-9337-7FA7B34CFCBF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "063614CD-214C-E6AA-4052-91B43953C555";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "4C70BF0C-F748-D666-4A66-72B7788947EE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "5B493563-A140-A322-9080-33A1867A67AE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "02E13501-7A4D-A1CA-430A-41B82DFDCCDF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "F7CD9B0D-E541-0FFB-DA8A-17BC6426A40A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "F358913C-5540-06BD-568F-76AA1A3BC7CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "7D09A8B4-7E41-6DBD-6E3C-859613859E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "57D59D7E-E948-96ED-2282-5C96000D1602";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "F12C5E5A-6540-DEB4-AD01-B9927A339691";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "A9453F3D-B948-25BB-5940-CA97A9A331A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "57E6ED67-A84B-AF47-1FF3-F590053CC42E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "746F7935-6644-A98F-AE1B-81B7E26E84CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "70BC6E63-4341-F07B-50F4-7FACC9051585";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "D496AD0E-E044-E4B0-5971-F2AA48854F7D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "15F6379F-F34B-09EF-CDE5-4F9D3F432416";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "1A6E5CD3-F644-BA04-0535-7E838703EAE3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "FF66C43A-724F-50C3-311B-A48A9A9FDDC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "FD20383A-CB45-8258-C3B5-3B94AAA00E49";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "8EFC5A42-7142-3BDC-12F3-AD89CBD2B026";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "C140AB3B-634E-7B14-9248-36843B21ABF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "0121DA01-754C-F269-82A6-26A8C2491D5B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "5BF62538-C54E-273B-D43B-FC9A32AFE539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "81521B8E-AB4F-20F2-A2AA-9AAD56EA9240";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "E29981C1-ED4C-97C5-2938-B0869076509B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "C1B2EFDA-AA4C-24CA-84E0-17BEB5143D13";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "5290FED5-DE46-FF9E-4631-9EB21D41C7F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "3ACB21BC-C74B-43C0-31FD-B8B6EE658E4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "5F188FD3-A54E-CD77-7156-9CB935BC9430";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "C15FE290-DB4E-FC89-95FF-85A0D05EEF64";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "A37E67B0-6C4E-7A4B-B481-21BC55195694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "7EBDBCB8-EB46-E4E7-50DA-07BA67782C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "33B48951-F84C-C2EB-3FC8-B796B5CF919C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightUpperArm_Control_translateX";
	rename -uid "6D570321-A54C-A69B-BED6-98B2303033D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightUpperArm_Control_translateY";
	rename -uid "5CE98F93-4249-4AAB-E763-E49AA07F4DC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightUpperArm_Control_translateZ";
	rename -uid "7DCB285A-CE43-BE8E-00FC-75A361BFB3C8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightUpperArm_Control_visibility";
	rename -uid "90981B25-3C41-704C-5857-35A83F863927";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "RightUpperArm_Control_rotateX";
	rename -uid "7AFF4A36-6B4A-8D5F-0469-35BB4B5EB551";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateY";
	rename -uid "8AB1E066-7644-E86A-C230-549BBCCEC5A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateZ";
	rename -uid "90121AA4-B547-9EA9-C413-9C8A5D785696";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleX";
	rename -uid "BBCA96AE-E447-B74A-17F6-0E8D4777525A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleY";
	rename -uid "28F52B51-D344-F895-26E7-1980428F983D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleZ";
	rename -uid "2A7343DB-FD44-4CC7-5CD5-9CA1474EBCE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "7B7D91B4-6346-612B-47F9-9C9495555287";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "9CC02130-6E44-02E1-7944-C383F9B8C36B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "E70D76FF-CB41-7464-9804-12A74B14A164";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "E8BB186D-9641-6725-E467-62878BFD164D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.475018007949037 6 10.009120517719461
		 12 10.475018007949037 18 10.92944882885392 24 10.475018007949037;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kix[0:4]"  0.99862084443958932 1 0.99948437461059525 
		1 0.99863544728784626;
	setAttr -s 5 ".kiy[0:4]"  -0.052501514747307881 0 0.032108953724265824 
		0 -0.052223016192128283;
	setAttr -s 5 ".kox[0:4]"  0.99862084442254595 1 0.99948437461059525 
		1 0.9986354473152782;
	setAttr -s 5 ".koy[0:4]"  -0.052501515071485864 0 0.032108953724265824 
		0 -0.052223015667560935;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "4BF23AC4-E242-237A-7B12-45A3945F5145";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -8.5334478522829702 12 0 18 7.4075462285082034
		 24 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "E08C8108-3D4F-02B8-3EEC-59AB43C8A523";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -3.2361202389060786 12 0 18 5.3076482999962247
		 24 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "AB11F16B-D743-E299-FC13-4894C243A0C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "E31F3EA8-7E40-EC5F-8653-E493A6A33849";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "F22BFD0B-B743-1D6F-5537-D8996B71CB8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "EFC31527-2042-C434-BCB9-20A14C89ECC0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "A05B42B6-744A-A819-8647-4BB9B8FEE317";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "D5BFC7DC-AD41-5EA1-9636-FD9EC960325D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "D330DF43-A94C-071A-6962-1D90E35E970B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "9EC672EA-0145-B54A-4811-DA8269E2ACD9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 10.475018007949037 6 10.152730084187183
		 12 10.475018007949037 18 11.004540411130149 24 10.475018007949037;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kix[0:4]"  0.99862084443958932 1 0.99955824377291447 
		1 0.99863544728784626;
	setAttr -s 5 ".kiy[0:4]"  -0.052501514747307881 0 0.02972065452857087 
		0 -0.052223016192128283;
	setAttr -s 5 ".kox[0:4]"  0.99862084442254595 1 0.99955824377291447 
		1 0.9986354473152782;
	setAttr -s 5 ".koy[0:4]"  -0.052501515071485864 0 0.02972065452857087 
		0 -0.052223015667560935;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "3153F9BC-C149-F103-4D06-419408EABEB7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -8.4400815172399462 12 0 18 7.2500916308701022
		 24 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "DB696576-C94E-E0E7-8463-D4AEA46E610E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -3.1581489415631485 12 0 18 5.2636222656238623
		 24 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "1B1A7349-F149-B309-B24D-08B596E5DDB2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "3B702130-F944-CDB0-EB98-C6A5E66588E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "A2B72155-8940-C9C9-5E70-B98D69EA158E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "B0493CB3-B841-A64A-341F-369DBE7021BC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "151F143E-D84A-408E-35CE-CAB4E710CA05";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "D1C172B9-7E4F-8AC1-0537-A6BFDAECC6E7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "58E1C6D0-1B48-6BF0-78AE-BC8B700B0EA0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "ED597493-D341-6F25-285A-C299B74932AE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "A83DC8C4-7947-D313-4903-ACA3BF03404B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "240F7032-9542-CDDC-00AD-9DA9BCBACCFE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "057E03BD-FF47-990C-8BA2-78841516EA79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "7CD3368B-8A4C-91A2-CFCE-C38282916054";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "DFC4DD3F-3F4C-77E9-7931-588C6AE0BA38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "5D4AD53D-3745-047A-BC50-9FBD6A0672B8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "932F1103-C14D-AA42-5CEE-95A00DBBBA63";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "5C9AA09B-2A41-030C-99D5-94B4F395DCFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "C859A4C4-D949-3716-430A-A0A40E22E042";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "29550CFC-4B4A-634C-577D-4C8D5F3BECE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "DDD501B6-F04D-D775-273D-979208B89BD5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "93C7C9EC-9D44-6B56-A5D8-D3935BCAA6C4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "1290A299-424C-05EC-2BC0-F8929B4C7D68";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "FC2683D0-244A-C471-B138-8CB1FBCDCF66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "BA396861-B742-AFCC-6CF1-1A96E9696BEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "557AA5CE-9244-FE01-44B7-42A6B16A5136";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTA -n "RightToe_Control_rotateX";
	rename -uid "35EBEA97-D44A-7F8F-B8D6-D786E41DCAAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 0 8 4.8518531766565971 11 -18.99208707569138
		 14 8.4932455213422529 22 -21.857540302931014 24 0;
createNode animCurveTA -n "RightToe_Control_rotateY";
	rename -uid "DB202F3F-8D4F-3566-3BD2-04A3BB2617AD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 0.23349101294539401 24 0;
createNode animCurveTA -n "RightToe_Control_rotateZ";
	rename -uid "222D04EA-ED4F-85F6-BB17-5EB794E412F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 11 -0.10403130350246084 24 0;
createNode animCurveTU -n "RightToe_Control_visibility";
	rename -uid "31A7B4DF-3943-3FAD-AB21-D1A865F311FC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightToe_Control_translateX";
	rename -uid "C6518474-9241-4563-1DE5-DBB07D3CB5F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightToe_Control_translateY";
	rename -uid "AE33D5F0-1B41-4856-D712-06A1BFD6FA89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightToe_Control_translateZ";
	rename -uid "1CF92F67-4142-3972-8E31-3CA0E83B3B34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightToe_Control_scaleX";
	rename -uid "16CE735F-0E4A-2812-4933-6083A9E922A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightToe_Control_scaleY";
	rename -uid "228887F2-A841-5A4F-D6D5-5587AC80330D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightToe_Control_scaleZ";
	rename -uid "06FE19D2-B145-80AE-B84C-91917C7C50B9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTA -n "LeftToe_Control_rotateY";
	rename -uid "C72AE4C5-A94A-E126-AE28-BAA2FEB3805F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 -6.9365804261874535 24 0;
createNode animCurveTA -n "LeftToe_Control_rotateZ";
	rename -uid "0F3482F9-3A4F-2416-7F70-978882E307AC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 20 1.9485575468573544 24 0;
createNode animCurveTU -n "LeftToe_Control_visibility";
	rename -uid "457B116C-1247-916B-0F29-608B57096C8C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftToe_Control_translateX";
	rename -uid "FBBADB35-2344-9B10-E76E-F9B23B4F81EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftToe_Control_translateY";
	rename -uid "813B1D21-8942-31E1-40EF-0F9A35165DF7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftToe_Control_translateZ";
	rename -uid "16F7AB59-AE41-2FEE-44AA-5684A01DD7EF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftToe_Control_scaleX";
	rename -uid "445A0375-A045-C8BA-0EEA-9DBCA4174940";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftToe_Control_scaleY";
	rename -uid "BA685A0A-9341-D6D9-EAFA-D494DDD79121";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftToe_Control_scaleZ";
	rename -uid "EC312337-E547-1223-2003-569E27A1D558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "A6CB548F-CB4E-272C-5C15-3D9D0D7F4B80";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "E54406DB-FC4A-15A3-51E9-7A86BD5B6C42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "16B41B38-5840-7353-105B-BE99E78C87FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "EC9F56F6-234E-9AD3-5EED-9DB7A635863C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "66D61D59-8D45-5700-68D1-B0A148EA74BC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "E3285408-664B-3D1E-3F7C-62A7A13E4141";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "A519C12E-9343-6506-EC49-A499BA298E92";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "CA93B96D-AE4C-1678-0105-249202169EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "32A98084-F243-E7A4-7F13-C093255C387E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "2830A2ED-7442-6AAF-9879-39B6545097F3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "FB949F01-8A46-7F4F-0C12-F786F01E1B4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 -10.525599783759894 24 -10.525599783759894;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "A701432B-764A-6D06-1B81-6EB2DE10F629";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.15867867449458442 24 0.15867867449458442;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "77E3D509-9544-4A79-88A8-4BAECDA2D961";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 2.2913247298743347 24 2.2913247298743347;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "ADF46DB3-8444-1AF7-A373-A680F58219BF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "CB9C5F77-E947-066D-61D8-60A5F0533CA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "45C53A1B-934D-15D2-DA1A-FEAB8CCED9CD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "83C977C7-974E-0774-9676-A08E7E72DD6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "060040E5-C449-CB51-D74B-79AAA6D29F39";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "AF7B611D-5E45-7DDC-FEED-ED864984926D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "E5834FD2-EC42-96D2-7FCC-00A92262418C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTL -n "RightHandAttach_Control_translateX";
	rename -uid "99ED66A4-0342-81B9-C2A7-159DAB90E7B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightHandAttach_Control_translateY";
	rename -uid "E730964D-2A4E-630B-63B6-62B211140DCC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "RightHandAttach_Control_translateZ";
	rename -uid "7C2F0A8B-634B-F8E2-63A4-F992E7803EDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateX";
	rename -uid "FAB606EE-9343-DB3F-B932-1D938CF0614A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateY";
	rename -uid "1BB0CE5D-E348-9C71-0925-C686CF81BAB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateZ";
	rename -uid "B9D3D6C2-F946-D7D9-F6E3-E7B581B87EBC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "RightHandAttach_Control_scaleX";
	rename -uid "9C37E80A-4C42-24A2-61AC-72A813AD9258";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleY";
	rename -uid "57431DB5-AE4B-7A91-C461-4683FF24ED23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleZ";
	rename -uid "AD7AF66D-FB49-E934-4EDE-699D435CBEC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "RightHandAttach_Control_visibility";
	rename -uid "1909DCF3-1942-DB21-3A5F-7DB958C151ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "RightFingers_Control_RightFingers";
	rename -uid "2F26F0C4-CC44-3057-2F9C-06BA0034E03E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6 12 0.6 24 0.6;
createNode animCurveTU -n "RightFingers_Control_RightPointer";
	rename -uid "CBCA3976-E742-C58E-E39A-D9AD689490F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.5 12 0.5 24 0.5;
createNode animCurveTU -n "RightFingers_Control_RightThumb";
	rename -uid "FF685946-AE48-0EC9-EA3F-CD8D490AC9C7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0.6 12 0.6 24 0.6;
createNode animCurveTU -n "RightFingers_Control_visibility";
	rename -uid "C4BD860C-AA46-B6FF-A5A0-DAB0DD25777F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
	setAttr -s 3 ".kot[0:2]"  5 5 5;
createNode animCurveTL -n "RightFingers_Control_translateX";
	rename -uid "051066AD-174A-1B50-624A-629B273C2DCA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "RightFingers_Control_translateY";
	rename -uid "E731ED0C-0A45-10C8-C3EC-27ADE7F9D87C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTL -n "RightFingers_Control_translateZ";
	rename -uid "CE34A376-8C4A-AEFD-C412-F48E2B1CA106";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTA -n "RightFingers_Control_rotateX";
	rename -uid "49D5300A-A64F-9B5D-A019-27A9D51E876A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTA -n "RightFingers_Control_rotateY";
	rename -uid "EE08C88C-064F-FA06-F522-038D99207A4F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTA -n "RightFingers_Control_rotateZ";
	rename -uid "DD099061-EC42-5AA4-F101-12B4C619EC22";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 0 12 0 24 0;
createNode animCurveTU -n "RightFingers_Control_scaleX";
	rename -uid "9B53C556-2C42-4AD6-07F6-CABCFF2D4FA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "RightFingers_Control_scaleY";
	rename -uid "69B75BDD-444A-ECFF-F2B6-EF95EAFFB8F2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTU -n "RightFingers_Control_scaleZ";
	rename -uid "40881330-3246-3FCD-03FD-979C35E22359";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 3 ".ktv[0:2]"  0 1 12 1 24 1;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "9880B70F-464E-4096-5009-1392AF740546";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 89.66770197789063 4 90.826413228728669
		 8 98.948256407368277 12 102.58214242997256 16 100.54744512709458 20 93.182432773832204
		 24 89.66770197789063;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 18;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 18;
	setAttr -s 7 ".kix[0:6]"  0.98685330531178417 0.9396776279569099 
		0.85160360356226039 1 0.89722046186666682 0.86890358614471086 1;
	setAttr -s 7 ".kiy[0:6]"  -0.16161854409444024 0.34206133297593727 
		0.5241863241250887 0 -0.44158288328213652 -0.49498137135134801 0;
	setAttr -s 7 ".kox[0:6]"  0.98685330418336903 0.9396776279569099 
		0.85160360356226039 1 0.89722046186666682 0.86890358614471086 1;
	setAttr -s 7 ".koy[0:6]"  -0.16161855098461644 0.34206133297593727 
		0.5241863241250887 0 -0.44158288328213657 -0.49498137135134801 0;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "8C7204FA-CE49-5CD2-5165-02B46C2440DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 43.809715601678299 4 46.350584542443485
		 8 46.790113561333143 12 46.236746686139654 16 43.85954676749742 20 43.292785664192337
		 24 43.809715601678299;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  0.96222678686644902 0.99060086110462564 
		1 0.98843134391664611 0.98832720122706008 1 0.99753206691093432;
	setAttr -s 7 ".kiy[0:6]"  0.27224917013035943 0.13678426071289823 
		0 -0.15166897627113088 -0.15234612996294369 0 0.070212359911908537;
	setAttr -s 7 ".kox[0:6]"  0.96222678191801003 0.99060086110462564 
		1 0.98843134391664611 0.98832720122706008 1 0.99753206679631135;
	setAttr -s 7 ".koy[0:6]"  0.27224918761992745 0.13678426071289823 
		0 -0.15166897627113085 -0.15234612996294369 0 0.070212361540397977;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "55B4C041-424F-3D70-20E6-268388351C27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 149.38536751095813 4 153.60774782298137
		 8 156.75362507428349 12 155.62511060457103 16 143.46272405532775 21 144.59239526487784
		 24 149.38536751095813;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  0.92033292061973326 0.93297447187492133 
		1 0.94251843701915639 1 0.96197923679710629 0.77082091340096193;
	setAttr -s 7 ".kiy[0:6]"  0.39113592934368974 0.35994254378957691 
		0 -0.33415414987542263 0 0.27312258780858273 0.63705189699404152;
	setAttr -s 7 ".kox[0:6]"  0.92033292876121686 0.93297447187492133 
		1 0.94251843701915639 1 0.96197923679710629 0.77082091054120705;
	setAttr -s 7 ".koy[0:6]"  0.39113591018698485 0.35994254378957691 
		0 -0.33415414987542263 0 0.27312258780858273 0.63705190045429128;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "26D76705-F846-3830-606E-49A47755DB8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 53.797584331959321 4 55.616870434373929
		 8 56.463707606910255 12 56.083203343547723 16 55.010993083533684 20 54.28306446185114
		 24 53.797584331959321;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "75DD0BA6-744D-E937-A92C-B79CA3EF7493";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 1.7110362299840958 4 0.48332649646176051
		 8 -0.072564202204317405 12 1.5461541044153271 16 4.0174922960397659 20 3.3006064712816148
		 24 1.7110362299840958;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  0.135053671731241 0.18370725153118631 1 
		0.081229151146831144 1 0.14303582116299932 0.12614887533947292;
	setAttr -s 7 ".kiy[0:6]"  -0.99083828435921384 -0.98298099968150832 
		0 0.9966954524848427 0 -0.9897175121539612 -0.99201132113025114;
	setAttr -s 7 ".kox[0:6]"  0.13505367325833612 0.18370725153118631 
		1 0.081229151146831144 1 0.14303582116299932 0.12614887037448777;
	setAttr -s 7 ".koy[0:6]"  -0.99083828415106701 -0.98298099968150832 
		0 0.99669545248484259 0 -0.9897175121539612 -0.99201132176162221;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "45CEADC6-9346-2AA1-EAFF-64AA93CA32B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 24.707413519560998 4 25.568592777718749
		 8 25.668647872950121 12 25.078008333439357 16 24.222330358141861 20 24.279781843481164
		 24 24.707413519560998;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  0.29196746564828213 0.48543854307029249 
		1 0.22458299657045439 1 0.69514575925947064 0.35501765715015177;
	setAttr -s 7 ".kiy[0:6]"  0.95642825083898442 0.87427079380578177 
		0 -0.97445496440391499 0 0.71886881514193812 0.93485959540008856;
	setAttr -s 7 ".kox[0:6]"  0.29196746638333343 0.48543854307029249 
		1 0.22458299657045436 1 0.69514575925947064 0.35501767411399832;
	setAttr -s 7 ".koy[0:6]"  0.95642825061459635 0.87427079380578177 
		0 -0.97445496440391499 0 0.71886881514193823 0.93485958895798182;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "F20FAE28-1440-B5C8-2EFC-A0BF357565E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 16 1 20 1 24 1;
	setAttr -s 5 ".kot[0:4]"  5 5 5 5 5;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "DE5D0A22-BC40-EB34-E7F1-6AB7EB6BDE62";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 16 1 20 1 24 1;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "4C34A47F-B84F-CB20-1A56-60B1D0BB21F4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 16 1 20 1 24 1;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "9A274650-7243-80A9-4BB6-0CBBF03592A0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 12 1 16 1 20 1 24 1;
createNode animCurveTL -n "LeftHandAttach_Control_translateX";
	rename -uid "A82F7470-7B43-7DD2-5A17-0E98DE7CD84F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateY";
	rename -uid "D90A49CD-2B43-FB51-D9FB-3F81081D3062";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateZ";
	rename -uid "2B51840B-5A48-D602-481D-92B82CA023A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateX";
	rename -uid "2AA0EBA8-9A45-4B82-389C-F8A627CC0F8E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateY";
	rename -uid "1F309186-8E49-41C7-84E3-A69A184D73FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateZ";
	rename -uid "F7AF5843-8644-E35E-FF55-C2A29967AC3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleX";
	rename -uid "EECFCE28-154E-8C6D-C132-A0AE120FC97C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleY";
	rename -uid "16E1612D-084C-0BBB-7462-8BA5A2BD97E8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleZ";
	rename -uid "88942161-BA49-80C3-43B8-0797309C5031";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftHandAttach_Control_visibility";
	rename -uid "7966EB6E-6141-3DBD-69F7-CE91BF6D74F1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTU -n "LeftFingers_Control_LeftFingers";
	rename -uid "5F2DC713-6A4F-5CED-756B-599AB1984B3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.5 24 0.5;
createNode animCurveTU -n "LeftFingers_Control_LeftPointer";
	rename -uid "60D901A9-2541-789D-C22C-FF9FCB6C3254";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0.3 24 0.3;
createNode animCurveTU -n "LeftFingers_Control_LeftThumb";
	rename -uid "B4E6F46C-E344-AD9F-F5F1-22BAA6D98A1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "AF48BBCA-CD4C-0C12-0BC5-76B421A22D01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "96CB7370-B44B-6DDB-5D0B-DA8AA1571EF2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "576703D6-F24F-3A0E-AC19-51976C0779BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "C02B9ECD-B44A-B28B-2ABF-178812701003";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "AA42BC8E-294C-A595-EDD2-DDB9C595A3F9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "13BAF0B3-7849-722F-FCF3-2783AEE2768E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "F0060BD1-4D4C-FF9B-8B0F-55A7A7773C94";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "65DF0397-5041-21FB-E8CA-ACA73840F0D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "A70685FF-684E-9868-2D25-EAAEBAEFF47E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "4FBA6C5D-074D-4931-C538-CB99D9D3CCB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "F37817C0-5C41-1A47-0915-FC9E1640EC18";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -72.240728316150012 4 -82.640889316652121
		 8 -78.80026703893634 12 -78.709032778612496 16 -83.956064848514629 20 -72.240728316150012
		 24 -72.240728316150012;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "78DA7246-F748-21F1-A6A1-97A96905DEE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -34.104998628699214 4 -30.185290255860881
		 8 -30.19100449009531 12 -32.884781342438309 16 -13.065055931792001 20 -34.104998628699214
		 24 -34.104998628699214;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "BD951DFE-6841-4F81-BCC9-879F23DD3EDE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -68.577906764008333 4 -75.207254887890116
		 8 -77.927609138699822 12 -73.249396135577328 16 -86.323926986186976 20 -68.577906764008333
		 24 -68.577906764008333;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "34F35BEA-5D4B-656B-D90A-75911121D07A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -42.621786710404173 4 -40.742768032501509
		 8 -42.031136140195464 12 -41.992654108786731 16 -43.729456076665663 20 -42.621786710404173
		 24 -42.621786710404173;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "B0EEFB9E-7D4D-A4F2-716C-15BE8DA40F25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 -19.701821153764993 4 -20.060710211688956
		 8 -21.591225361466975 12 -19.400286779540028 16 -22.084269796068885 20 -19.701821153764993
		 24 -19.701821153764993;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "12AEE6DC-734B-D316-6989-17ADA343EB1C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 12.470532325903976 4 16.867499201655324
		 8 15.621069293051296 12 13.373576087262192 16 9.6045499084964661 20 12.470532325903976
		 24 12.470532325903976;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "76B4A21B-3646-794E-E9F1-E79D0047BFC4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 16 1 20 1 24 1;
	setAttr -s 6 ".kot[0:5]"  5 5 5 5 5 5;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "BC3AEDB0-8447-55EA-C65D-9391F5060358";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 16 1 20 1 24 1;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "309D8768-764D-3715-096F-3893810D7C53";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 16 1 20 1 24 1;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "8A7867A8-BD4F-073A-3A4C-1EB27853C6CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 6 ".ktv[0:5]"  0 1 8 1 12 1 16 1 20 1 24 1;
createNode animCurveTL -n "Jaw_Control_translateX";
	rename -uid "D39B978E-5841-CFF3-30DD-C695EE47BE42";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Jaw_Control_translateY";
	rename -uid "C0F5882E-BD41-9079-4C4B-51B100BAB4DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Jaw_Control_translateZ";
	rename -uid "1FC99F5A-234F-232D-53CD-C482F45D7FF8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Jaw_Control_rotateX";
	rename -uid "042B5629-674A-BCD3-B0CB-7D85B24BBCE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Jaw_Control_rotateY";
	rename -uid "B950AF0A-6948-0851-23A9-B98D623EDAB3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Jaw_Control_rotateZ";
	rename -uid "E4147BCB-6B4C-CA81-599E-FCA482A36200";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "Jaw_Control_scaleX";
	rename -uid "5B1C7098-5947-83DA-13D2-B1A2E4B2500A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Jaw_Control_scaleY";
	rename -uid "532DA52C-2549-85B6-3373-DC98ABDADFAE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Jaw_Control_scaleZ";
	rename -uid "0ED34216-764F-05AD-0A62-D3BC02A84B8A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Jaw_Control_visibility";
	rename -uid "2D71B954-2942-3E5F-A78E-A390A502FB33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "B66DFCF4-3744-4F79-EB19-10B461C6A8DD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 0 16 0
		 18 0 20 0 22 0 24 0;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "B7356BDA-944E-0E4B-4202-E8A489D77FA5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 0 16 0
		 18 0 20 0 22 0 24 0;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "6F8658FC-C542-7485-9FA4-40B719F8F2A6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0 2 0 4 0 6 0 8 0 10 0 12 0 14 0 16 0
		 18 0 20 0 22 0 24 0;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "9F3B945E-0048-425F-BE96-2D87A8BACD15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -22.831306390415847 2 -21.37503278297951
		 4 -15.923898593281404 6 -14.905513350124645 8 -17.397807821610545 10 -16.139479893409639
		 12 -18.719224209229711 14 -19.706522433312273 16 -18.825587700857067 18 -18.772931626334582
		 20 -23.419667644960288 22 -25.1158037197455 24 -22.831306390415847;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 0.81024834416691782 0.84232099185338227 
		1 1 1 0.93677811814338718 1 0.99945314732117041 1 0.83298819525876866 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0.5860867007318693 0.5389762023346989 
		0 0 0 -0.34992393083030798 0 0.033066694872737619 0 -0.55329076131771771 0 0;
	setAttr -s 13 ".kox[0:12]"  1 0.81024834416691782 0.84232099185338227 
		1 1 1 0.9367781181433873 1 0.99945314732117041 1 0.83298819525876866 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0.5860867007318693 0.5389762023346989 
		0 0 0 -0.34992393083030798 0 0.033066694872737619 0 -0.55329076131771771 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "7D9A9A8E-2B45-04B5-2CEF-00A9AC53BAE1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.62861396586338392 2 -7.4556149343130116
		 4 -8.2235158863731179 6 -3.5997751447402457 8 -3.4893739525558511 10 -2.093303001409152
		 12 -0.28680821296550324 14 4.7026316534878134 16 3.903229990629308 18 0.59812476459762454
		 20 0.49815741830496463 22 2.4168451112065323 24 0.62861396586338392;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 0.90064760454786408 1 0.99760274953835626 
		0.99760274953835626 0.94810187263195156 0.81474074727293389 1 0.91872820481218331 
		0.99803318581723077 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 -0.43455021852738057 0 0.069200824514681902 
		0.069200824514681916 0.31796672642241464 0.57982541746041216 0 -0.39489047302078956 
		-0.06268779791561388 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 0.90064760454786408 1 0.99760274953835626 
		0.99760274953835604 0.94810187263195156 0.81474074727293389 1 0.9187282048121832 
		0.99803318581723077 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 -0.43455021852738057 0 0.069200824514681916 
		0.069200824514681888 0.31796672642241464 0.57982541746041216 0 -0.39489047302078956 
		-0.06268779791561388 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "C6BD6255-7849-8D18-2A32-25A649748622";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 0.72557025277421261 2 -0.86468532009188681
		 4 2.8915579599609837 6 4.3332057235656993 8 3.8616510366023831 10 2.5649875986767845
		 12 0.83964619711293176 14 -1.3064672926701357 16 -3.6867527282254642 18 -4.222461331109626
		 20 -3.442428212597358 22 1.9405620392231775 24 0.72557025277421261;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 0.87831345014250006 1 0.98328514141394818 
		0.95339792748191654 0.92673526615169977 0.90362622633570611 0.95640324106324093 1 
		0.89795153083019941 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0.47808522597835845 0 -0.18207232264831461 
		-0.30171574681011615 -0.37571498036508777 -0.4283218918970767 -0.2920493802145937 
		0 0.44009436292652188 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 0.87831345014250006 1 0.98328514141394818 
		0.95339792748191665 0.92673526615169965 0.90362622633570633 0.95640324106324082 1 
		0.89795153083019963 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0.47808522597835845 0 -0.18207232264831461 
		-0.3017157468101162 -0.37571498036508771 -0.42832189189707676 -0.2920493802145937 
		0 0.44009436292652193 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "3B7C37DB-4F4C-BFAF-F20E-0BAFC3A8A9CA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "7D01FB5A-5A43-CEC8-048B-0C9100794226";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "2620D83C-224B-9397-230F-AEA4AE232A51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
	setAttr -s 13 ".kox[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".koy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "A26B1982-9A44-32E7-0B2D-D3AA44EB8D95";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 1 2 1 4 1 6 1 8 1 10 1 12 1 14 1 16 1
		 18 1 20 1 22 1 24 1;
	setAttr -s 13 ".kit[0:12]"  1 9 9 9 9 9 9 9 
		9 9 9 9 9;
	setAttr -s 13 ".kix[0:12]"  1 1 1 1 1 1 1 1 1 1 1 1 1;
	setAttr -s 13 ".kiy[0:12]"  0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "2E385B81-F94F-726F-A98A-31AEA333BBB4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "5BB28A01-C445-64A7-348D-89BDB55908DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "632D0048-0E4E-89A5-0687-3F8287BE4E44";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "C9968FF4-4C40-4F72-4967-C686D15EAE74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "298A6685-5043-CD41-35B5-07A4CF5C4D6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "B3EBE780-DC45-3767-27B2-45B765C38F6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "AFCC6DAB-DC40-F963-B8AD-1EA003023685";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "F8C69188-6A48-0952-02C8-36B91E828B6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "E3DDBCE8-E24E-4FC5-776C-5C949A44D5BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "8E885F17-9C45-7722-8F81-C489D84FF36D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftUpperArm_Control_translateX";
	rename -uid "8CB3B95F-3A49-C6DE-F12D-7B8C15F8AF25";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateY";
	rename -uid "53208170-1D43-9997-1AF4-D7A09D3F1AE5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateZ";
	rename -uid "251F54BA-594B-FE4D-23A4-4BBBEE26A44B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftUpperArm_Control_visibility";
	rename -uid "B2A6BFFF-354B-CBB5-DA1A-6C8761CF927D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTA -n "LeftUpperArm_Control_rotateX";
	rename -uid "D0C8EFA9-E944-E177-C4D0-428EEBB2F087";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateY";
	rename -uid "4D736966-0443-4264-CAC5-CFBCC09130A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateZ";
	rename -uid "46D02A00-8740-9658-F64E-3B85CA4C3BC4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 0 24 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleX";
	rename -uid "3C4D7355-954C-E4DF-B10D-35A9D9216B5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleY";
	rename -uid "57253115-0049-5051-D4C0-8395D0EBE8FF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleZ";
	rename -uid "80EAD9B3-8747-8B87-B170-BA944490DDEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  0 1 24 1;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "210AA33A-E942-C35C-8077-EB8BBDF6289A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 7 ".ktv[0:6]"  0 0 4 12.000000000000002 8 9.5254832514862819
		 12 0 16 -12.000000000000002 20 -10.063421675076214 24 0;
	setAttr -s 7 ".kit[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kot[0:6]"  1 18 18 18 18 18 1;
	setAttr -s 7 ".kix[0:6]"  0.54000958962199164 1 0.84673301596483042 
		0.66368083978263237 1 0.85431298259414723 0.55024765614261673;
	setAttr -s 7 ".kiy[0:6]"  0.84165886386129629 0 -0.53201804450140799 
		-0.74801587075771314 0 0.51975891312327904 0.83500150713011101;
	setAttr -s 7 ".kox[0:6]"  0.54000962161946542 1 0.84673301596483053 
		0.66368083978263248 1 0.85431298259414712 0.55024771855048871;
	setAttr -s 7 ".koy[0:6]"  0.84165884333166829 0 -0.5320180445014081 
		-0.74801587075771325 0 0.51975891312327904 0.83500146600469038;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "E2778174-0742-0FF8-17C9-9C8873D39BD2";
	setAttr ".tan" 5;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 12 1 20 1 24 1;
	setAttr -s 5 ".kit[0:4]"  1 9 1 9 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "8036E4D9-AA42-DDF2-531C-DFA407026823";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 0 6 -3 12 0 18 3 24 0;
	setAttr -s 5 ".kit[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kot[0:4]"  1 18 18 18 1;
	setAttr -s 5 ".kix[0:4]"  0.073827511969548232 1 0.083045479853739973 
		1 0.060512558144405176;
	setAttr -s 5 ".kiy[0:4]"  -0.99727102558752123 0 0.99654575824487956 
		0 -0.99816743600801772;
	setAttr -s 5 ".kox[0:4]"  0.073827510565830839 1 0.083045479853739973 
		1 0.06051256148278638;
	setAttr -s 5 ".koy[0:4]"  -0.99727102569143777 0 0.99654575824487956 
		0 -0.99816743580563272;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "6C67DB12-D940-B70C-4797-CD90D8A33846";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 -9.2710130606001151 6 -2.8183137432351408
		 12 -9.2710130606001151 18 -2.3864170728459193 24 -9.2710130606001151;
	setAttr -s 5 ".kit[2:4]"  1 18 1;
	setAttr -s 5 ".kot[2:4]"  1 18 1;
	setAttr -s 5 ".kix[2:4]"  1 1 1;
	setAttr -s 5 ".kiy[2:4]"  0 0 0;
	setAttr -s 5 ".kox[2:4]"  1 1 1;
	setAttr -s 5 ".koy[2:4]"  0 0 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "C163A5CA-204F-5A88-22CE-1F8C73B7A671";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 12 1 20 1 24 1;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "B2C29278-C640-1242-734F-8B9C6F094B37";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 12 1 20 1 24 1;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "B097E33C-154F-951A-F19D-14967271AB0E";
	setAttr ".tan" 1;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  0 1 8 1 12 1 20 1 24 1;
	setAttr -s 5 ".kit[1:4]"  18 1 18 1;
	setAttr -s 5 ".kot[1:4]"  18 1 18 1;
	setAttr -s 5 ".kix[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".kiy[0:4]"  0 0 0 0 0;
	setAttr -s 5 ".kox[0:4]"  1 1 1 1 1;
	setAttr -s 5 ".koy[0:4]"  0 0 0 0 0;
createNode animCurveTL -n "Hips_translateX";
	rename -uid "4A7DF0A7-EC4D-FC71-2414-A5B9CB96B79B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.71520310640335083 1.6 -0.9997667670249939
		 3.200000680272109 -2.1152586936950684 4.8000010204081631 -2.449519157409668 6.4000010204081637 -1.6630810499191284
		 8.0000015306122449 0.26666152477264404 11.200002551020408 4.2252373695373535 12 0.71521967649459839
		 12.800002721088436 5.9340624809265137 14.400002891156463 7.1214284896850586 16.000003401360544 7.5762805938720703
		 17.600003401360546 7.0753474235534668 19.200003741496598 5.9721817970275879 20.800004421768708 4.5943622589111328
		 22.400004421768706 2.7176945209503174;
createNode animCurveTL -n "Hips_translateY";
	rename -uid "AE0B31EC-B94F-CE87-5B97-0B8774CEB161";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 97.202751159667969 1.6 99.279800415039062
		 3.200000680272109 101.78253936767578 4.8000010204081631 105.43485260009766 6.4000010204081637 106.86293792724609
		 8.0000015306122449 104.63456726074219 11.200002551020408 97.839340209960938 12 97.202735900878906
		 12.800002721088436 97.78948974609375 14.400002891156463 100.44330596923828 16.000003401360544 104.08561706542969
		 17.600003401360546 106.71175384521484 19.200003741496598 106.26667785644531 20.800004421768708 101.99282836914062
		 22.400004421768706 98.83782958984375;
createNode animCurveTL -n "Hips_translateZ";
	rename -uid "3979A4F0-8A4E-3F03-BACA-7E9D58B5130A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.059016227722167969;
createNode animCurveTA -n "Hips_rotateX";
	rename -uid "8AB53632-E248-CA9D-7E2B-1BA448CF1E67";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 5.6148805618286133 1.6 1.1124597787857056
		 3.200000680272109 2.0647437572479248 4.8000010204081631 3.6418442726135254 6.4000010204081637 5.7105460166931152
		 8.0000015306122449 7.2052950859069815 11.200002551020408 4.7381811141967773 12 5.6148986816406259
		 12.800002721088436 4.4303798675537109 14.400002891156463 7.4897446632385254 16.000003401360544 11.752537727355957
		 17.600003401360546 13.050603866577148 19.200003741496598 10.682716369628906 20.800004421768708 5.2556581497192383
		 22.400004421768706 3.4083988666534424;
createNode animCurveTA -n "Hips_rotateY";
	rename -uid "01B7F58B-AB40-EF32-223C-22A38BE2F60D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -33.404018402099609 1.6 -30.754116058349609
		 3.200000680272109 -29.681291580200195 4.8000010204081631 -30.992727279663089 6.4000010204081637 -33.844623565673828
		 8.0000015306122449 -36.313392639160156 11.200002551020408 -40.178359985351562 12 -33.404006958007812
		 12.800002721088436 -41.268756866455078 14.400002891156463 -41.145343780517578 16.000003401360544 -40.265407562255859
		 17.600003401360546 -38.963886260986328 19.200003741496598 -36.709018707275391 20.800004421768708 -34.122413635253906
		 22.400004421768706 -33.032440185546875;
createNode animCurveTA -n "Hips_rotateZ";
	rename -uid "FD60E977-3C40-0DD7-E453-63B2D85E6BC2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -8.4498271942138672 1.6 -5.3110623359680176
		 3.200000680272109 -5.8690671920776367 4.8000010204081631 -8.4639348983764648 6.4000010204081637 -12.341361045837402
		 8.0000015306122449 -15.276001930236816 11.200002551020408 -15.353339195251465 12 -8.449859619140625
		 12.800002721088436 -14.928905487060547 14.400002891156463 -15.385684967041014 16.000003401360544 -15.851864814758301
		 17.600003401360546 -14.386916160583494 19.200003741496598 -11.363140106201174 20.800004421768708 -7.5688595771789551
		 22.400004421768706 -6.4778060913085938;
createNode animCurveTA -n "Spine_rotateX";
	rename -uid "B17A3C66-B64F-53B8-66B5-2296C513C189";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 10.87034797668457 1.6 12.191813468933105
		 3.200000680272109 12.789031028747559 4.8000010204081631 12.924040794372559 6.4000010204081637 13.046941757202148
		 8.0000015306122449 13.813317298889162 11.200002551020408 17.377664566040039 12 10.874663352966309
		 12.800002721088436 18.028779983520508 14.400002891156463 16.356962203979492 16.000003401360544 13.117554664611816
		 17.600003401360546 10.418675422668457 19.200003741496598 9.8342580795288086 20.800004421768708 10.907313346862793
		 22.400004421768706 11.584023475646973;
createNode animCurveTA -n "Spine_rotateY";
	rename -uid "79408F80-E148-80AF-1AA5-E8B1B7A59214";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -1.7183359861373901 1.6 -0.95016652345657338
		 3.200000680272109 0.13284878432750702 4.8000010204081631 0.59385603666305542 6.4000010204081637 0.51957905292510986
		 8.0000015306122449 0.59896063804626465 11.200002551020408 0.35534960031509399 12 -1.7195504903793335
		 12.800002721088436 -0.70982605218887329 14.400002891156463 -2.1603908538818359 16.000003401360544 -3.4387862682342529
		 17.600003401360546 -4.2178554534912109 19.200003741496598 -4.1930928230285645 20.800004421768708 -3.3511626720428467
		 22.400004421768706 -2.3659687042236328;
createNode animCurveTA -n "Spine_rotateZ";
	rename -uid "D1D01EA6-E840-353A-72A6-BB8CCC622473";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 0.53790724277496338 1.6 -2.7933650016784668
		 3.200000680272109 -4.3411798477172852 4.8000010204081631 -4.0957422256469727 6.4000010204081637 -3.2235934734344487
		 8.0000015306122449 -2.837287425994873 11.200002551020408 -1.8302016258239748 12 0.53736788034439087
		 12.800002721088436 0.045797877013683319 14.400002891156463 2.813438892364502 16.000003401360544 5.0828170776367188
		 17.600003401360546 5.4602231979370117 19.200003741496598 4.8167614936828613 20.800004421768708 3.3094882965087891
		 22.400004421768706 1.8222371339797974;
createNode animCurveTA -n "Spine1_rotateX";
	rename -uid "68FD2C13-B447-ED56-5307-ABB6FF050861";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.264652252197266 1.6 13.993298530578613
		 3.200000680272109 14.21234130859375 4.8000010204081631 14.634320259094238 6.4000010204081637 14.906845092773438
		 8.0000015306122449 15.02784252166748 11.200002551020408 15.280766487121582 12 14.259442329406738
		 12.800002721088436 14.897635459899901 14.400002891156463 14.166360855102539 16.000003401360544 13.646780967712402
		 17.600003401360546 13.970572471618652 19.200003741496598 14.649985313415527 20.800004421768708 14.72982120513916
		 22.400004421768706 14.39344310760498;
createNode animCurveTA -n "Spine1_rotateY";
	rename -uid "DD25A75A-FB4A-A314-D634-66AED901D41F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -2.0428500175476074 1.6 -1.6949334144592285
		 3.200000680272109 -0.70843714475631714 4.8000010204081631 -0.45720502734184265 6.4000010204081637 -1.0517340898513794
		 8.0000015306122449 -1.4660615921020508 11.200002551020408 -2.5376467704772949 12 -2.0445206165313721
		 12.800002721088436 -3.8661208152771001 14.400002891156463 -5.3051857948303232 16.000003401360544 -6.6847825050354004
		 17.600003401360546 -7.5957102775573739 19.200003741496598 -7.1181082725524902 20.800004421768708 -5.2403140068054199
		 22.400004421768706 -3.3364832401275635;
createNode animCurveTA -n "Spine1_rotateZ";
	rename -uid "7C34DF61-4445-2488-8ABF-0888273FE3CB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 6.2402443885803223 1.6 6.7584462165832528
		 3.200000680272109 6.8871145248413095 4.8000010204081631 6.6425132751464853 6.4000010204081637 6.3633880615234384
		 8.0000015306122449 6.4665675163269043 11.200002551020408 6.5452122688293457 12 6.2401309013366699
		 12.800002721088436 6.011357307434082 14.400002891156463 5.7456598281860352 16.000003401360544 6.172661304473877
		 17.600003401360546 6.636362075805665 19.200003741496598 6.4102025032043457 20.800004421768708 5.8256301879882812
		 22.400004421768706 5.5791234970092773;
createNode animCurveTA -n "Spine2_rotateX";
	rename -uid "21F34C15-DA4A-3880-2EE1-52B949E57A56";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.457272529602051 1.6 14.343964576721191
		 3.200000680272109 14.507235527038574 4.8000010204081631 14.746803283691406 6.4000010204081637 14.769428253173828
		 8.0000015306122449 14.656681060791014 11.200002551020408 14.618368148803711 12 14.452118873596191
		 12.800002721088436 14.163366317749023 14.400002891156463 13.384510040283203 16.000003401360544 12.831400871276855
		 17.600003401360546 13.212800025939941 19.200003741496598 14.153068542480469 20.800004421768708 14.565278053283691
		 22.400004421768706 14.437044143676758;
createNode animCurveTA -n "Spine2_rotateY";
	rename -uid "ABDA7E73-E94A-9B0B-9879-8EB3E38ECB49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.67574107646942139 1.6 -0.067407429218292236
		 3.200000680272109 0.99747812747955322 4.8000010204081631 1.1412677764892578 6.4000010204081637 0.38207784295082092
		 8.0000015306122449 -0.10751201212406158 11.200002551020408 -1.3174399137496948 12 -0.67763572931289673
		 12.800002721088436 -2.7906811237335205 14.400002891156463 -4.3194742202758789 16.000003401360544 -5.6839070320129395
		 17.600003401360546 -6.5671939849853516 19.200003741496598 -6.0707025527954102 20.800004421768708 -4.1152744293212891
		 22.400004421768706 -2.1059660911560059;
createNode animCurveTA -n "Spine2_rotateZ";
	rename -uid "4E32A356-8043-DC9E-7F8E-628E6D4860C4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 5.7700681686401367 1.6 5.9807748794555664
		 3.200000680272109 6.1880226135253915 4.8000010204081631 6.3585753440856934 6.4000010204081637 6.6926307678222656
		 8.0000015306122449 7.312908649444581 11.200002551020408 7.9939646720886222 12 5.7702450752258301
		 12.800002721088436 7.6249299049377441 14.400002891156463 7.3857712745666504 16.000003401360544 7.6793866157531738
		 17.600003401360546 7.8397107124328613 19.200003741496598 7.1120142936706543 20.800004421768708 5.9367074966430664
		 22.400004421768706 5.2975664138793945;
createNode animCurveTA -n "Neck_rotateX";
	rename -uid "8DF6A3BF-AB48-B1BE-7D0C-7DACEB4AA8A4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -17.207796096801758 1.6 -16.529687881469727
		 3.200000680272109 -16.444051742553711 4.8000010204081631 -16.550441741943359 6.4000010204081637 -16.83793830871582
		 8.0000015306122449 -17.190231323242188 11.200002551020408 -17.30126953125 12 -17.207185745239258
		 12.800002721088436 -16.888889312744141 14.400002891156463 -16.812002182006836 16.000003401360544 -16.951852798461914
		 17.600003401360546 -17.231048583984379 19.200003741496598 -17.59406852722168 20.800004421768708 -17.518491744995117
		 22.400004421768706 -17.338058471679688;
createNode animCurveTA -n "Neck_rotateY";
	rename -uid "D62BCF15-C445-FA4A-E8FC-84BA913B918B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 3.1068532466888428 1.6 2.5638263225555424
		 3.200000680272109 2.2357115745544434 4.8000010204081631 2.4854094982147217 6.4000010204081637 3.2672059535980225
		 8.0000015306122449 3.8734288215637203 11.200002551020408 4.5282721519470215 12 3.1065518856048584
		 12.800002721088436 4.9690260887146005 14.400002891156463 5.4055352210998544 16.000003401360544 5.7595334053039551
		 17.600003401360546 5.8185882568359375 19.200003741496598 5.2358217239379883 20.800004421768708 4.0831584930419922
		 22.400004421768706 3.3057165145874023;
createNode animCurveTA -n "Neck_rotateZ";
	rename -uid "600881AF-0746-9282-35CE-F8A98344280E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -4.3093662261962891 1.6 -4.1447253227233887
		 3.200000680272109 -3.8143625259399414 4.8000010204081631 -3.6475811004638672 6.4000010204081637 -3.5313901901245117
		 8.0000015306122449 -3.467484712600708 11.200002551020408 -4.1130766868591309 12 -4.3101396560668945
		 12.800002721088436 -4.8024659156799316 14.400002891156463 -5.3107357025146484 16.000003401360544 -5.7341341972351074
		 17.600003401360546 -5.9553108215332031 19.200003741496598 -5.7179994583129883 20.800004421768708 -5.1677908897399902
		 22.400004421768706 -4.6352725028991699;
createNode animCurveTA -n "Head_rotateX";
	rename -uid "52B387C3-404D-80EF-EBB9-4DA1A465BA9A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -3.9355316162109379 1.6 -0.17568466067314151
		 3.200000680272109 0.22839683294296262 4.8000010204081631 -0.24108485877513883 6.4000010204081637 -1.6308246850967407
		 8.0000015306122449 -3.5910003185272212 11.200002551020408 -4.4150314331054688 12 -3.9359958171844482
		 12.800002721088436 -2.0445373058319092 14.400002891156463 -1.9957163333892824 16.000003401360544 -3.1018686294555664
		 17.600003401360546 -4.8108057975769043 19.200003741496598 -6.3448886871337891 20.800004421768708 -5.0267720222473153
		 22.400004421768706 -4.0102677345275879;
createNode animCurveTA -n "Head_rotateY";
	rename -uid "1DA480C6-0349-EC2D-3A7A-C1AACF5A711E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 27.360269546508789 1.6 24.609380722045898
		 3.200000680272109 22.974481582641602 4.8000010204081631 24.363443374633789 6.4000010204081637 28.350776672363281
		 8.0000015306122449 31.382755279541016 11.200002551020408 34.485908508300781 12 27.360326766967773
		 12.800002721088436 36.606113433837891 14.400002891156463 38.654106140136719 16.000003401360544 40.234535217285156
		 17.600003401360546 40.310348510742188 19.200003741496598 37.311870574951172 20.800004421768708 31.869918823242188
		 22.400004421768706 28.215824127197266;
createNode animCurveTA -n "Head_rotateZ";
	rename -uid "DDBAACFC-1941-8274-2B0B-0A9A9D0DA9BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -5.952256679534913 1.6 -3.6680178642272945
		 3.200000680272109 -1.8562241792678831 4.8000010204081631 -0.99814087152481079 6.4000010204081637 -1.0452797412872314
		 8.0000015306122449 -1.7751623392105103 11.200002551020408 -5.7879409790039062 12 -5.9516763687133789
		 12.800002721088436 -8.0720357894897461 14.400002891156463 -10.70536994934082 16.000003401360544 -13.584540367126465
		 17.600003401360546 -15.60792350769043 19.200003741496598 -14.909318923950195 20.800004421768708 -11.005707740783691
		 22.400004421768706 -7.646716594696044;
createNode animCurveTA -n "LeftShoulder_rotateX";
	rename -uid "46B0DD10-5941-CDA9-1F71-44A541712544";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -5.1618900299072275 1.6 -4.7516202926635742
		 3.200000680272109 -4.4896559715270996 4.8000010204081631 -4.4498004913330078 6.4000010204081637 -4.3870859146118164
		 8.0000015306122449 -4.8254199028015137 11.200002551020408 -5.7132844924926758 12 -5.1618938446044922
		 12.800002721088436 -6.0196027755737305 14.400002891156463 -6.1473650932312021 16.000003401360544 -6.0361156463623047
		 17.600003401360546 -5.810579776763916 19.200003741496598 -5.7380795478820801 20.800004421768708 -5.886683464050293
		 22.400004421768706 -5.5341677665710449;
createNode animCurveTA -n "LeftShoulder_rotateY";
	rename -uid "48E0CB15-0D43-E4E5-0B32-3B8F675F5F59";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 10.654163360595703 1.6 12.61613941192627
		 3.200000680272109 13.406538963317871 4.8000010204081631 13.454372406005861 6.4000010204081637 13.619768142700195
		 8.0000015306122449 11.360182762145996 11.200002551020408 5.9453811645507812 12 10.654150009155273
		 12.800002721088436 3.7006206512451172 14.400002891156463 1.9416739940643313 16.000003401360544 0.87665188312530518
		 17.600003401360546 0.72438937425613403 19.200003741496598 1.3794076442718506 20.800004421768708 4.0835909843444824
		 22.400004421768706 7.4689140319824219;
createNode animCurveTA -n "LeftShoulder_rotateZ";
	rename -uid "5AD0EF82-CF4C-3BAA-990D-DD85A23A850F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 10.427611351013184 1.6 19.107936859130859
		 3.200000680272109 22.661245346069336 4.8000010204081631 23.262075424194336 6.4000010204081637 23.990932464599609
		 8.0000015306122449 20.766477584838867 11.200002551020408 13.403613090515137 12 10.427586555480957
		 12.800002721088436 9.5416631698608398 14.400002891156463 3.9282264709472656 16.000003401360544 -1.7938777208328247
		 17.600003401360546 -5.5928463935852051 19.200003741496598 -5.3971424102783203 20.800004421768708 4.8096389770507812
		 22.400004421768706 9.8984661102294922;
createNode animCurveTA -n "LeftArm_rotateX";
	rename -uid "9B98219E-1047-CF1D-F416-B5809843F249";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -7.7847919464111319 1.6 -10.51372241973877
		 3.200000680272109 -12.871000289916992 4.8000010204081631 -12.72688102722168 6.4000010204081637 -9.0310525894165039
		 8.0000015306122449 -5.3213357925415039 11.200002551020408 0.80765146017074585 12 -7.7768106460571289
		 12.800002721088436 5.8662223815917969 14.400002891156463 14.550399780273438 16.000003401360544 23.502086639404297
		 17.600003401360546 28.470819473266602 19.200003741496598 25.184562683105469 20.800004421768708 11.102884292602539
		 22.400004421768706 -0.94860607385635376;
createNode animCurveTA -n "LeftArm_rotateY";
	rename -uid "78DFA3B1-0844-F630-C824-9A8DA80B462B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -39.469337463378906 1.6 -40.481338500976562
		 3.200000680272109 -40.572418212890625 4.8000010204081631 -42.582347869873047 6.4000010204081637 -47.886920928955078
		 8.0000015306122449 -46.867218017578125 11.200002551020408 -42.238300323486328 12 -39.470722198486328
		 12.800002721088436 -40.634063720703125 14.400002891156463 -39.558219909667969 16.000003401360544 -39.083347320556641
		 17.600003401360546 -40.723770141601562 19.200003741496598 -43.411521911621101 20.800004421768708 -44.316787719726562
		 22.400004421768706 -41.818561553955085;
createNode animCurveTA -n "LeftArm_rotateZ";
	rename -uid "D1CBFCC0-3644-AD99-908E-B386A982B9D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 47.682014465332031 1.6 44.52215576171875
		 3.200000680272109 45.122207641601562 4.8000010204081631 42.654003143310547 6.4000010204081637 32.475246429443359
		 8.0000015306122449 29.004398345947266 11.200002551020408 25.899820327758789 12 47.668163299560547
		 12.800002721088436 21.872621536254883 14.400002891156463 18.871084213256836 16.000003401360544 17.304737091064453
		 17.600003401360546 18.85261344909668 19.200003741496598 26.416540145874023 20.800004421768708 35.079463958740234
		 22.400004421768706 43.857421875;
createNode animCurveTA -n "LeftForeArm_rotateX";
	rename -uid "9F0CFDCE-5C4B-FAC5-2BEA-1D92EFBCB236";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -9.83294677734375 0.64 -9.58734130859375
		 0.8 -9.53460693359375 0.96 -9.4851531982421875 1.12 -9.4389495849609375 1.28 -9.395904541015625
		 1.6 -9.3189849853515625 3.2000005102040818 -8.291534423828125 4.8000010204081631 -8.281005859375
		 6.4000011904761909 -6.0406341552734375 8.0000017006802722 -4.9597625732421875 9.6000015306122446 -4.7970886230468759
		 11.200001870748299 -4.3216400146484375 12 -9.8318634033203125 12.800002891156463 -3.10693359375
		 14.400003571428572 -3.026214599609375 16.00000306122449 -3.7202911376953125 17.600003401360546 -5.0821075439453125
		 19.200003571428571 -6.7261962890625 20.800003911564627 -8.9369049072265625 22.400004421768706 -10.260726928710938
		 22.560004421768706 -10.211395263671875 22.720004251700679 -10.163436889648438 22.880004251700679 -10.116851806640625
		 23.040004081632652 -10.071670532226562 23.200004081632652 -10.027938842773438 23.360004761904761 -9.9856719970703125;
createNode animCurveTA -n "LeftForeArm_rotateY";
	rename -uid "AD015965-A341-64EE-4B51-51B749F95379";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 -112.62856292724609 0.64 -113.39435577392578
		 0.8 -113.58615875244141 0.96 -113.77809143066406 1.12 -113.97013092041016 1.28 -114.16228485107422
		 1.6 -114.54686737060547 3.2000005102040818 -114.55315399169922 4.8000010204081631 -114.27213287353516
		 6.4000011904761909 -115.68375396728516 8.0000017006802722 -116.431396484375 9.6000015306122446 -116.28272247314452
		 11.200001870748299 -116.73268127441406 12 -112.62853240966797 12.800002891156463 -118.55438232421875
		 14.400003571428572 -119.06136322021483 16.00000306122449 -119.11459350585938 17.600003401360546 -118.85861206054686
		 19.200003571428571 -118.24611663818359 20.800003911564627 -116.20736694335938 22.400004421768706 -114.24212646484375
		 22.560004421768706 -114.08111572265625 22.720004251700679 -113.92001342773438 22.880004251700679 -113.75883483886719
		 23.040004081632652 -113.59757995605469 23.200004081632652 -113.43624114990234 23.360004761904761 -113.27484130859375;
createNode animCurveTA -n "LeftForeArm_rotateZ";
	rename -uid "BCAB8CE8-7040-879C-AB36-06816EAF1215";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 27 ".ktv[0:26]"  0 88.802803039550781 0.64 87.371864318847656
		 0.8 87.02227783203125 0.96 86.675788879394531 1.12 86.332321166992188 1.28 85.991798400878906
		 1.6 85.319282531738281 3.2000005102040818 87.104438781738281 4.8000010204081631 89.828895568847656
		 6.4000011904761909 94.7821044921875 8.0000017006802722 96.839630126953125 9.6000015306122446 97.559677124023438
		 11.200001870748299 97.749374389648438 12 88.805671691894531 12.800002891156463 98.000129699707031
		 14.400003571428572 98.503425598144545 16.00000306122449 97.777542114257812 17.600003401360546 95.425201416015625
		 19.200003571428571 92.030860900878906 20.800003911564627 88.287109375 22.400004421768706 86.339096069335938
		 22.560004421768706 86.580085754394531 22.720004251700679 86.822265625 22.880004251700679 87.065643310546875
		 23.040004081632652 87.310256958007812 23.200004081632652 87.556144714355469 23.360004761904761 87.803337097167969;
createNode animCurveTA -n "LeftHand_rotateX";
	rename -uid "1B5E784D-3942-2320-273D-79BC8DF875E4";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -11.480867385864258 1.6 -11.199502944946289
		 3.200000680272109 -15.181941032409668 4.8000010204081631 -17.568708419799805 6.4000010204081637 -20.749011993408203
		 8.0000015306122449 -21.400302886962891 11.200002551020408 -18.616592407226562 12 -11.482386589050293
		 12.800002721088436 -16.93621826171875 14.400002891156463 -14.622457504272463 16.000003401360544 -11.739692687988281
		 17.600003401360546 -8.8878412246704102 19.200003741496598 -7.0211186408996582 20.800004421768708 -8.242915153503418
		 22.400004421768706 -9.3433637619018555;
createNode animCurveTA -n "LeftHand_rotateY";
	rename -uid "78B88017-0C44-B9D0-8DED-989EDDF21998";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -34.001869201660156 1.6 -32.402854919433594
		 3.200000680272109 -30.170173645019535 4.8000010204081631 -28.908643722534183 6.4000010204081637 -26.936853408813477
		 8.0000015306122449 -24.994848251342773 11.200002551020408 -25.818706512451172 12 -34.001789093017578
		 12.800002721088436 -24.698266983032227 14.400002891156463 -22.847688674926758 16.000003401360544 -21.043691635131839
		 17.600003401360546 -20.232088088989258 19.200003741496598 -21.190380096435547 20.800004421768708 -25.929225921630863
		 22.400004421768706 -30.425321578979492;
createNode animCurveTA -n "LeftHand_rotateZ";
	rename -uid "C565397A-D14A-5DB2-5F93-439F5E33C77B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 11.99794864654541 1.6 8.4342031478881836
		 3.200000680272109 8.8513860702514648 4.8000010204081631 8.6180009841918945 6.4000010204081637 10.006527900695801
		 8.0000015306122449 12.658929824829102 11.200002551020408 16.889360427856449 12 11.999579429626465
		 12.800002721088436 17.365489959716797 14.400002891156463 14.908291816711424 16.000003401360544 10.706282615661621
		 17.600003401360546 6.0373320579528809 19.200003741496598 2.84175705909729 20.800004421768708 4.0124630928039551
		 22.400004421768706 6.6535954475402832;
createNode animCurveTA -n "LeftHandThumb1_rotateX";
	rename -uid "E3B1F976-1548-31DF-82BE-9BA041D237A8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.8760509490966797;
createNode animCurveTA -n "LeftHandThumb1_rotateY";
	rename -uid "B477A709-E743-AA72-039A-21A726F762B6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.9574713706970215;
createNode animCurveTA -n "LeftHandThumb1_rotateZ";
	rename -uid "34D70AA5-E547-8795-FFA4-7EBB429578A6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.4070653915405273;
createNode animCurveTA -n "LeftHandThumb2_rotateX";
	rename -uid "8ACF3DA8-8B4B-16A7-975F-7A8243518800";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -14.124299049377441;
createNode animCurveTA -n "LeftHandThumb2_rotateY";
	rename -uid "BBE98EC2-314A-937F-5791-F5B72865910A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.0976853370666513;
createNode animCurveTA -n "LeftHandThumb2_rotateZ";
	rename -uid "EC7E80FF-AE4B-0504-9781-4BB37DB2A3D3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -18.027374267578125;
createNode animCurveTA -n "LeftHandThumb3_rotateX";
	rename -uid "C04E43F5-2448-5A10-ECF9-2AB17FA1332D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.3347494602203369;
createNode animCurveTA -n "LeftHandThumb3_rotateY";
	rename -uid "2449662C-F542-71CC-84FD-83A9A6FB06E9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -15.685073852539062;
createNode animCurveTA -n "LeftHandThumb3_rotateZ";
	rename -uid "4C93301C-DF4F-1AB1-6234-739098C879A9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 42.559795379638672;
createNode animCurveTA -n "LeftHandIndex1_rotateX";
	rename -uid "DE472991-024F-4FBB-102A-E2881AF50E12";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.347103118896488;
createNode animCurveTA -n "LeftHandIndex1_rotateY";
	rename -uid "39A47DA7-3B4B-50E2-B2B0-BAB5567317B8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 9.7541112899780273;
createNode animCurveTA -n "LeftHandIndex1_rotateZ";
	rename -uid "FBBAF524-6C49-471A-D8ED-9C80E0F5BEF3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.800126075744629;
createNode animCurveTA -n "LeftHandIndex2_rotateX";
	rename -uid "703F54C0-5D40-9AD8-6840-3AB9C7B30157";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 31.589969635009762;
createNode animCurveTA -n "LeftHandIndex2_rotateY";
	rename -uid "A1E37077-8E45-F366-6326-5D861B2903BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.88436931371688843;
createNode animCurveTA -n "LeftHandIndex2_rotateZ";
	rename -uid "BFAAAD66-ED43-42A2-DC4F-27887477FCBC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8121919631958008;
createNode animCurveTA -n "LeftHandIndex3_rotateX";
	rename -uid "69EC330D-7A4A-3335-8D06-D683C2FDB94B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 27.206583023071289;
createNode animCurveTA -n "LeftHandIndex3_rotateY";
	rename -uid "4EFBD92A-EB44-6BFB-0A1C-5CB5F8D57CD1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.64409458637237549;
createNode animCurveTA -n "LeftHandIndex3_rotateZ";
	rename -uid "9929C028-8146-F411-7994-409C59146079";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.7983467578887939;
createNode animCurveTA -n "LeftHandMiddle1_rotateX";
	rename -uid "49C2B71C-2C4B-33D5-9518-46B6173A8DC8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 18.015499114990234;
createNode animCurveTA -n "LeftHandMiddle1_rotateY";
	rename -uid "EFCA5711-F94D-E89B-BCFE-B79EED1FFE9A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 10.361191749572754;
createNode animCurveTA -n "LeftHandMiddle1_rotateZ";
	rename -uid "A07389FE-F044-2377-8985-DFA66EDD23AC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.395403861999512;
createNode animCurveTA -n "LeftHandMiddle2_rotateX";
	rename -uid "6E284225-B045-003F-D7AF-9681983393B9";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 48.046051025390625;
createNode animCurveTA -n "LeftHandMiddle2_rotateY";
	rename -uid "59F119DE-384C-7939-674E-129348DA7BE8";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9261666536331179;
createNode animCurveTA -n "LeftHandMiddle2_rotateZ";
	rename -uid "39C7D830-034C-8611-3054-FB8BE039F8EF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2538509368896484;
createNode animCurveTA -n "LeftHandMiddle3_rotateX";
	rename -uid "18799F46-5B44-69A1-DAC1-ADA179BD086D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 66.462554931640625;
createNode animCurveTA -n "LeftHandMiddle3_rotateY";
	rename -uid "D589569F-F44C-0DD2-72DC-FBB23ADA8C3F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 3.4009044170379639;
createNode animCurveTA -n "LeftHandMiddle3_rotateZ";
	rename -uid "9178CF52-CC45-0430-88AA-1CA6E9EE7387";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.2815499305725098;
createNode animCurveTA -n "LeftHandRing1_rotateX";
	rename -uid "A2325FB1-3149-372C-4330-1BA65E47ABBD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 14.427402496337889;
createNode animCurveTA -n "LeftHandRing1_rotateY";
	rename -uid "5D52DCA3-0348-0F0C-BFAA-36B29E3A6A01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.6032657623291016;
createNode animCurveTA -n "LeftHandRing1_rotateZ";
	rename -uid "C9BD63F5-684D-7B7E-9D36-BFAB8BA33A0C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 11.339818000793457;
createNode animCurveTA -n "LeftHandRing2_rotateX";
	rename -uid "358F6FD9-A246-7A7E-F658-4E88A5731B7C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 72.038238525390625;
createNode animCurveTA -n "LeftHandRing2_rotateY";
	rename -uid "662D9861-414A-3AAB-C8B9-478C7D789048";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.193687915802002;
createNode animCurveTA -n "LeftHandRing2_rotateZ";
	rename -uid "C6D775F3-3B45-13EB-D564-598E7B5CA05D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.4344692230224609;
createNode animCurveTA -n "LeftHandRing3_rotateX";
	rename -uid "4ACCEAE1-D04F-51E6-8120-06A3CC9C5DA2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 33.764743804931641;
createNode animCurveTA -n "LeftHandRing3_rotateY";
	rename -uid "D9238943-EC4C-56C9-FB4D-45980E2B4E20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.4268889427185059;
createNode animCurveTA -n "LeftHandRing3_rotateZ";
	rename -uid "92C89BCD-9243-0C63-D347-59BD588299BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -9.6946039199829102;
createNode animCurveTA -n "LeftHandPinky1_rotateX";
	rename -uid "CE62C862-1649-70EA-7615-6280A9F6E45D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.3424663543701172;
createNode animCurveTA -n "LeftHandPinky1_rotateY";
	rename -uid "5BCFDAAB-E943-364F-5659-07ADBEEB97B7";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.8940739631652832;
createNode animCurveTA -n "LeftHandPinky1_rotateZ";
	rename -uid "2BC80F7F-A048-A420-D375-A38331081D84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 15.995383262634279;
createNode animCurveTA -n "LeftHandPinky2_rotateX";
	rename -uid "FAD5F0C3-8E4D-B5E5-A903-1BAA1769B78F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 48.836215972900391;
createNode animCurveTA -n "LeftHandPinky2_rotateY";
	rename -uid "8E53F7D4-9C45-8116-5841-0DA70768C588";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.8979855775833132;
createNode animCurveTA -n "LeftHandPinky2_rotateZ";
	rename -uid "86BE5D75-AF4D-5AC4-8DE8-58ACB9A81102";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.5420093536376953;
createNode animCurveTA -n "LeftHandPinky3_rotateX";
	rename -uid "83E5ED83-FA43-779D-9733-F8A3B579C51E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 51.651309967041016;
createNode animCurveTA -n "LeftHandPinky3_rotateY";
	rename -uid "8A1C7DC6-5A41-5C91-CBC3-B993DB52B6A2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9707566499710083;
createNode animCurveTA -n "LeftHandPinky3_rotateZ";
	rename -uid "712AA953-BE4B-4412-BA0B-21B775726AE6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.6748929023742676;
createNode animCurveTA -n "RightShoulder_rotateX";
	rename -uid "918184BD-054B-EEEE-FDCF-82B9EF6C8B47";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -4.8192315101623535 1.6 -4.7773585319519043
		 3.200000680272109 -4.5110154151916504 4.8000010204081631 -4.1301498413085938 6.4000010204081637 -3.5617091655731201
		 8.0000015306122449 -4.0618104934692383 11.200002551020408 -4.2153487205505371 12 -4.8191461563110352
		 12.800002721088436 -4.1485748291015625 14.400002891156463 -4.0108599662780771 16.000003401360544 -3.9352474212646484
		 17.600003401360546 -4.0670609474182129 19.200003741496598 -4.2827057838439941 20.800004421768708 -4.6243886947631836
		 22.400004421768706 -4.8032364845275879;
createNode animCurveTA -n "RightShoulder_rotateY";
	rename -uid "032A0377-9842-E01D-740F-08B5C9057BCC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -13.817693710327148 1.6 -13.917204856872559
		 3.200000680272109 -15.978435516357422 4.8000010204081631 -19.302585601806641 6.4000010204081637 -20.871236801147461
		 8.0000015306122449 -20.418779373168945 11.200002551020408 -19.430292129516602 12 -13.818172454833984
		 12.800002721088436 -19.781217575073242 14.400002891156463 -20.556472778320312 16.000003401360544 -20.748762130737305
		 17.600003401360546 -19.561662673950195 19.200003741496598 -18.208591461181641 20.800004421768708 -15.570730209350584
		 22.400004421768706 -14.052501678466799;
createNode animCurveTA -n "RightShoulder_rotateZ";
	rename -uid "4F55B943-FF41-F358-60F1-DA8B4CBE5BFA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -13.958518028259277 1.6 -15.232030868530275
		 3.200000680272109 -17.222278594970703 4.8000010204081631 -19.067085266113285 6.4000010204081637 -19.975397109985352
		 8.0000015306122449 -18.559478759765625 11.200002551020408 -16.942451477050781 12 -13.960057258605957
		 12.800002721088436 -17.822515487670898 14.400002891156463 -19.347414016723633 16.000003401360544 -20.44526481628418
		 17.600003401360546 -19.864416122436523 19.200003741496598 -17.822963714599609 20.800004421768708 -14.976665496826172
		 22.400004421768706 -13.633986473083496;
createNode animCurveTA -n "RightArm_rotateX";
	rename -uid "7CCB8CF0-2847-9DC9-3D9A-1DB81FC08A42";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -12.187772750854492 1.6 -9.8621644973754883
		 3.200000680272109 -6.6360116004943848 4.8000010204081631 -3.1086082458496094 6.4000010204081637 -1.555824875831604
		 8.0000015306122449 -1.6631697416305542 11.200002551020408 -5.1661009788513184 12 -12.181364059448242
		 12.800002721088436 -6.6209330558776855 14.400002891156463 -7.7125320434570312 16.000003401360544 -7.2642645835876456
		 17.600003401360546 -5.7237353324890137 19.200003741496598 -7.2233176231384286 20.800004421768708 -7.9010081291198739
		 22.400004421768706 -9.4750699996948242;
createNode animCurveTA -n "RightArm_rotateY";
	rename -uid "8D2653A6-034D-416B-AC9A-19A2BC416B04";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -5.8321623802185059 1.6 -4.2571306228637695
		 3.200000680272109 0.89913088083267212 4.8000010204081631 4.7455458641052246 6.4000010204081637 3.9202978610992432
		 8.0000015306122449 2.5342233180999756 11.200002551020408 -0.17416425049304962 12 -5.8371572494506836
		 12.800002721088436 -2.2199110984802246 14.400002891156463 -5.0175518989562988 16.000003401360544 -7.17352294921875
		 17.600003401360546 -8.2160615921020508 19.200003741496598 -8.3856191635131836 20.800004421768708 -6.6331262588500977
		 22.400004421768706 -5.6842107772827148;
createNode animCurveTA -n "RightArm_rotateZ";
	rename -uid "B1A1CA27-074F-E604-A17F-5CA657A19EEE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -40.844200134277344 1.6 -37.453117370605469
		 3.200000680272109 -32.387580871582031 4.8000010204081631 -33.044208526611328 6.4000010204081637 -37.474418640136719
		 8.0000015306122449 -40.712848663330078 11.200002551020408 -46.230159759521491 12 -40.842582702636719
		 12.800002721088436 -47.833110809326172 14.400002891156463 -47.079391479492188 16.000003401360544 -46.271575927734375
		 17.600003401360546 -47.932712554931641 19.200003741496598 -48.829418182373047 20.800004421768708 -48.110710144042969
		 22.400004421768706 -44.906959533691406;
createNode animCurveTA -n "RightForeArm_rotateX";
	rename -uid "B5754600-6641-3860-3E21-7EBEA023240A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -11.255336761474609 1.6 -11.263228416442871
		 3.200000680272109 -11.752304077148438 4.8000010204081631 -11.771884918212891 6.4000010204081637 -11.539450645446777
		 8.0000015306122449 -11.328055381774902 11.200002551020408 -11.046753883361816 12 -11.254277229309082
		 12.800002721088436 -11.052305221557617 14.400002891156463 -11.267956733703613 16.000003401360544 -11.15996265411377
		 17.600003401360546 -10.816381454467773 19.200003741496598 -10.73465633392334 20.800004421768708 -10.635324478149414
		 22.400004421768706 -10.838973045349121;
createNode animCurveTA -n "RightForeArm_rotateY";
	rename -uid "60103F21-C14E-0CC3-FE7E-009CCE0B5A7E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 22.500270843505859 1.6 22.755762100219727
		 3.200000680272109 22.630502700805664 4.8000010204081631 22.54456901550293 6.4000010204081637 22.206266403198242
		 8.0000015306122449 22.188362121582031 11.200002551020408 23.136251449584961 12 22.497331619262695
		 12.800002721088436 23.794717788696293 14.400002891156463 24.727533340454102 16.000003401360544 24.318056106567383
		 17.600003401360546 23.614574432373047 19.200003741496598 23.14561653137207 20.800004421768708 23.028633117675781
		 22.400004421768706 22.982612609863281;
createNode animCurveTA -n "RightForeArm_rotateZ";
	rename -uid "45A5A1D0-A347-B49B-2301-79853B0DF925";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -106.71384429931641 1.6 -106.47029113769533
		 3.200000680272109 -112.05219268798828 4.8000010204081631 -112.26531982421875 6.4000010204081637 -109.92391967773438
		 8.0000015306122449 -107.85182189941406 11.200002551020408 -104.7528076171875 12 -106.71251678466797
		 12.800002721088436 -103.84438323974609 14.400002891156463 -104.2650146484375 16.000003401360544 -103.95182037353516
		 17.600003401360546 -101.65138244628906 19.200003741496598 -101.10301208496094 20.800004421768708 -100.24440765380859
		 22.400004421768706 -102.27945709228516;
createNode animCurveTA -n "RightHand_rotateX";
	rename -uid "B85FE119-7847-D7B1-1CC1-C3AE7AC26A69";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -27.270002365112305 1.6 -29.192197799682617
		 3.200000680272109 -30.31662559509277 4.8000010204081631 -27.919500350952148 6.4000010204081637 -25.034223556518555
		 8.0000015306122449 -21.83671760559082 11.200002551020408 -17.229841232299805 12 -27.269132614135742
		 12.800002721088436 -15.864162445068359 14.400002891156463 -15.870512008666992 16.000003401360544 -14.940203666687012
		 17.600003401360546 -13.035092353820801 19.200003741496598 -15.238747596740724 20.800004421768708 -19.016387939453125
		 22.400004421768706 -23.324506759643555;
createNode animCurveTA -n "RightHand_rotateY";
	rename -uid "4E710F0C-284B-3318-9CED-A4B3FE5B4C5D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.543057441711428 1.6 13.187661170959473
		 3.200000680272109 9.1376838684082031 4.8000010204081631 5.7707972526550293 6.4000010204081637 4.923919677734375
		 8.0000015306122449 6.232473850250245 11.200002551020408 8.7237567901611328 12 14.544792175292971
		 12.800002721088436 9.5690679550170898 14.400002891156463 9.0660152435302734 16.000003401360544 9.0076923370361328
		 17.600003401360546 8.4850597381591797 19.200003741496598 8.3442850112915057 20.800004421768708 10.759392738342285
		 22.400004421768706 13.0161190032959;
createNode animCurveTA -n "RightHand_rotateZ";
	rename -uid "E0D76EED-EE4D-12D3-F0D3-C08C3FEE3BB1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -9.6028633117675781 1.6 -10.200925827026367
		 3.200000680272109 -9.0377225875854492 4.8000010204081631 -8.2488889694213867 6.4000010204081637 -7.8855838775634766
		 8.0000015306122449 -9.2627992630004883 11.200002551020408 -8.1709318161010742 12 -9.6053104400634766
		 12.800002721088436 -7.1013312339782715 14.400002891156463 -6.5722365379333496 16.000003401360544 -5.8747701644897461
		 17.600003401360546 -5.1589527130126953 19.200003741496598 -5.4601774215698251 20.800004421768708 -6.6113862991333017
		 22.400004421768706 -8.3591718673706055;
createNode animCurveTA -n "RightHandThumb1_rotateX";
	rename -uid "7298DEA2-8041-F31D-0A22-3E819BCD1A61";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.5513982772827148;
createNode animCurveTA -n "RightHandThumb1_rotateY";
	rename -uid "DB47E2DD-6B40-DE98-4A85-B9B113140908";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.877762794494631;
createNode animCurveTA -n "RightHandThumb1_rotateZ";
	rename -uid "4962078F-504D-0FAD-2056-8D87767AD9BE";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 7.4023003578186044;
createNode animCurveTA -n "RightHandThumb2_rotateX";
	rename -uid "9BCBCD20-AB43-2327-CA90-C8BEAF05398F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -12.702176094055176;
createNode animCurveTA -n "RightHandThumb2_rotateY";
	rename -uid "AEA78FF3-BC41-0734-DA3B-6488DCA3EF96";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.910614013671875;
createNode animCurveTA -n "RightHandThumb2_rotateZ";
	rename -uid "FE41362E-5843-2442-E647-A396224D3FEC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 24.76661491394043;
createNode animCurveTA -n "RightHandThumb3_rotateX";
	rename -uid "80E7CC39-7745-0E9F-DB8E-49914DC08B57";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -1.9584715366363525;
createNode animCurveTA -n "RightHandThumb3_rotateY";
	rename -uid "8609A1B8-5D40-800C-84A9-87911E0D4C29";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.9849311113357544;
createNode animCurveTA -n "RightHandThumb3_rotateZ";
	rename -uid "43DD414F-8345-2E1B-2846-86AD551E1D41";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 6.8350162506103516;
createNode animCurveTA -n "RightHandIndex1_rotateX";
	rename -uid "4BEAEC23-1B43-23A0-CCE5-C69F350509E3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.3145427703857422;
createNode animCurveTA -n "RightHandIndex1_rotateY";
	rename -uid "EF1A780A-F84E-AAE0-C71D-2CA8BF4A13D6";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.31573686003684998;
createNode animCurveTA -n "RightHandIndex1_rotateZ";
	rename -uid "74B1A557-8C49-7F6D-B0E4-22BD99B77D20";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.040620643645524986;
createNode animCurveTA -n "RightHandIndex2_rotateX";
	rename -uid "6C4D0A3C-DF4B-0A47-D980-DD9193D6772C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 13.081859588623047;
createNode animCurveTA -n "RightHandIndex2_rotateY";
	rename -uid "3A7B30B2-784E-C68E-1230-90A7A1ADE101";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.13348092138767242;
createNode animCurveTA -n "RightHandIndex2_rotateZ";
	rename -uid "1A5C370D-FD4C-6013-2C7F-9A8F4E48BBB2";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 1.0042955875396729;
createNode animCurveTA -n "RightHandIndex3_rotateX";
	rename -uid "E4086CDE-E74D-0BD3-2A74-53BD06473F8B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 29.583139419555664;
createNode animCurveTA -n "RightHandIndex3_rotateY";
	rename -uid "028478CE-0343-BCEC-23BB-E481AEE1C54C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -0.61265450716018677;
createNode animCurveTA -n "RightHandIndex3_rotateZ";
	rename -uid "AFC8083C-AB4B-8D6B-9E3A-EB9F89E268A0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.7271516323089604;
createNode animCurveTA -n "RightHandMiddle1_rotateX";
	rename -uid "62B169D7-5940-26DC-27B2-4482DE8AE951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -2.8377382755279541;
createNode animCurveTA -n "RightHandMiddle1_rotateY";
	rename -uid "BF84366A-5947-936E-B170-71B3CF674E6F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.2836897373199463;
createNode animCurveTA -n "RightHandMiddle1_rotateZ";
	rename -uid "24030E4D-3748-684D-92CC-A39EC129A6EB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 2.2343530654907227;
createNode animCurveTA -n "RightHandMiddle2_rotateX";
	rename -uid "6C1DAA75-074E-E2FC-858E-438B3838DBAA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 107.58677673339844;
createNode animCurveTA -n "RightHandMiddle2_rotateY";
	rename -uid "EE0BAE61-FE4E-9C92-BBC1-329B8239BFE5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -6.7979950904846191;
createNode animCurveTA -n "RightHandMiddle2_rotateZ";
	rename -uid "70C1C732-6A4F-642F-45F6-878ABD186E14";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.558870792388916;
createNode animCurveTA -n "RightHandMiddle3_rotateX";
	rename -uid "88F065C7-8941-5081-0865-7E8E7913EB94";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 71.278800964355469;
createNode animCurveTA -n "RightHandMiddle3_rotateY";
	rename -uid "1585F417-CB4B-65A2-95B7-44876ADD3C89";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -3.5728321075439458;
createNode animCurveTA -n "RightHandMiddle3_rotateZ";
	rename -uid "6EAD829F-2F42-311C-2EBB-DBA4019B32A5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.8876972198486328;
createNode animCurveTA -n "RightHandRing1_rotateX";
	rename -uid "63EEE557-F64B-9FF4-55DD-298094A82A88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 8.4262962341308594;
createNode animCurveTA -n "RightHandRing1_rotateY";
	rename -uid "2D2EA83A-5C4D-A421-10BB-4A816B568855";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 12.265299797058105;
createNode animCurveTA -n "RightHandRing1_rotateZ";
	rename -uid "B2484EAE-6547-7CF4-51F1-8B80546EE152";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 0.7489849328994751;
createNode animCurveTA -n "RightHandRing2_rotateX";
	rename -uid "1848C11C-9F46-6058-CEE7-E9B755FC0584";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 115.50748443603516;
createNode animCurveTA -n "RightHandRing2_rotateY";
	rename -uid "0715AED6-654D-6010-04E3-62B3A2704697";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -7.5206365585327157;
createNode animCurveTA -n "RightHandRing2_rotateZ";
	rename -uid "3A613C29-FD4A-405A-ACF5-4A9707743FF5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.6477441787719727;
createNode animCurveTA -n "RightHandRing3_rotateX";
	rename -uid "A975CA99-B841-62A9-CF4D-048B11DCC1E5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 86.119895935058594;
createNode animCurveTA -n "RightHandRing3_rotateY";
	rename -uid "4A46240D-5246-CA4E-7C8C-F299D84F12A1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.96486520767212;
createNode animCurveTA -n "RightHandRing3_rotateZ";
	rename -uid "595B8394-984F-2DEA-3613-F9A14DB2B404";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.5805020332336426;
createNode animCurveTA -n "RightHandPinky1_rotateX";
	rename -uid "BE1A42A0-1442-BD76-DCB0-5C8ED6C41E53";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.9611992835998544;
createNode animCurveTA -n "RightHandPinky1_rotateY";
	rename -uid "18AB140E-B743-D9BE-4B89-E49EA5755850";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 17.416803359985352;
createNode animCurveTA -n "RightHandPinky1_rotateZ";
	rename -uid "53FC111B-014D-AF6C-2529-C6BD00F6E84D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.135526180267334;
createNode animCurveTA -n "RightHandPinky2_rotateX";
	rename -uid "1C4C789B-C146-8F2A-C5E5-EE9B66580E32";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 94.862876892089844;
createNode animCurveTA -n "RightHandPinky2_rotateY";
	rename -uid "171BAC5E-CC45-73C0-1253-72A7837F5C01";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -5.5699625015258789;
createNode animCurveTA -n "RightHandPinky2_rotateZ";
	rename -uid "2E29A481-E74E-BB43-30D1-819502445AAC";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 5.032996654510498;
createNode animCurveTA -n "RightHandPinky3_rotateX";
	rename -uid "93FBBE03-DD41-9F8E-6444-03A024718C33";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 79.661247253417969;
createNode animCurveTA -n "RightHandPinky3_rotateY";
	rename -uid "90659EB8-F442-C9CC-3FEF-BF8BEA2D3055";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 -4.2469048500061035;
createNode animCurveTA -n "RightHandPinky3_rotateZ";
	rename -uid "DC15FDD0-3F46-3BC7-119D-D78C6B7836BB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr ".ktv[0]"  0 4.8363051414489746;
createNode animCurveTA -n "LeftUpLeg_rotateX";
	rename -uid "426246C5-2740-4DC8-7BD4-D5A55780EDA3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 44.648841857910156 1.6 50.343666076660156
		 3.200000680272109 53.164508819580078 4.8000010204081631 46.378002166748054 6.4000010204081637 42.625846862792969
		 8.0000015306122449 39.535305023193359 11.200002551020408 45.060420989990234 12 44.649013519287109
		 12.800002721088436 34.532859802246094 14.400002891156463 21.197881698608402 16.000003401360544 6.5874958038330078
		 17.600003401360546 3.4109375476837158 19.200003741496598 12.904532432556154 20.800004421768708 24.460090637207031
		 22.400004421768706 33.795578002929688;
createNode animCurveTA -n "LeftUpLeg_rotateY";
	rename -uid "1F3039C1-6346-1750-A9F9-F8930EB99081";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -19.821929931640625 1.6 -16.543087005615234
		 3.200000680272109 -14.827041625976561 4.8000010204081631 -13.961508750915527 6.4000010204081637 -17.266565322875977
		 8.0000015306122449 -20.866765975952148 11.200002551020408 -33.718494415283203 12 -19.822015762329102
		 12.800002721088436 -33.748165130615234 14.400002891156463 -34.58538818359375 16.000003401360544 -26.13530158996582
		 17.600003401360546 -25.366994857788089 19.200003741496598 -25.28569221496582 20.800004421768708 -24.527505874633789
		 22.400004421768706 -21.834819793701172;
createNode animCurveTA -n "LeftUpLeg_rotateZ";
	rename -uid "196C62A7-CD49-6067-7FBB-FBA8D6713392";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 13.964164733886719 1.6 13.120148658752441
		 3.200000680272109 14.970221519470217 4.8000010204081631 19.005378723144531 6.4000010204081637 22.746500015258789
		 8.0000015306122449 24.437793731689453 11.200002551020408 16.559171676635742 12 13.964179992675781
		 12.800002721088436 13.056835174560547 14.400002891156463 7.7866120338439941 16.000003401360544 -0.87408566474914551
		 17.600003401360546 -8.2414875030517578 19.200003741496598 -5.1705970764160156 20.800004421768708 4.6042852401733398
		 22.400004421768706 9.290593147277832;
createNode animCurveTA -n "LeftLeg_rotateX";
	rename -uid "39C105A5-A24C-3645-4ED2-FA991E009A6A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -98.457939147949233 1.6 -81.401687622070312
		 3.200000680272109 -60.074222564697259 4.8000010204081631 -36.151622772216797 6.4000010204081637 -29.611528396606442
		 8.0000015306122449 -24.433538436889652 11.200002551020408 -72.419174194335938 12 -98.457664489746094
		 12.800002721088436 -78.090087890625 14.400002891156463 -68.882209777832031 16.000003401360544 -45.284004211425781
		 17.600003401360546 -38.576156616210938 19.200003741496598 -60.07398605346679 20.800004421768708 -93.954025268554688
		 22.400004421768706 -102.40449523925781;
createNode animCurveTA -n "LeftLeg_rotateY";
	rename -uid "616047DB-BC45-C0F5-423A-75AAE99FD199";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -5.4981722831726074 1.6 -3.6891436576843262
		 3.200000680272109 -2.5165371894836426 4.8000010204081631 -3.780890941619873 6.4000010204081637 -3.7372255325317378
		 8.0000015306122449 -3.6202948093414307 11.200002551020408 -2.5338969230651855 12 -5.4981598854064941
		 12.800002721088436 -3.9873869419097905 14.400002891156463 -3.0551562309265137 16.000003401360544 -5.0532064437866211
		 17.600003401360546 -0.012245296500623228 19.200003741496598 -1.4922726154327393 20.800004421768708 -3.9949829578399658
		 22.400004421768706 -4.8837161064147949;
createNode animCurveTA -n "LeftLeg_rotateZ";
	rename -uid "7EA24C15-6A49-706A-A8BA-D98BEB643BE3";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -4.0391607284545898 1.6 -3.6543176174163814
		 3.200000680272109 -2.6523025035858154 4.8000010204081631 0.21454870700836184 6.4000010204081637 0.34571966528892517
		 8.0000015306122449 -0.090301536023616791 11.200002551020408 -5.628511905670166 12 -4.0391869544982919
		 12.800002721088436 -2.7556412220001221 14.400002891156463 -3.1671464443206787 16.000003401360544 1.527591347694397
		 17.600003401360546 0.91882586479187012 19.200003741496598 1.3073350191116333 20.800004421768708 0.095117606222629547
		 22.400004421768706 -1.936837911605835;
createNode animCurveTA -n "LeftFoot_rotateX";
	rename -uid "FA87C7B2-1F49-D067-9A69-DCAE35AD699F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.3212697505950928 1.6 5.2020511627197266
		 3.200000680272109 0.49645969271659851 4.8000010204081631 -2.9409666061401367 6.4000010204081637 -0.50039821863174438
		 8.0000015306122449 -7.0739398002624512 11.200002551020408 18.862646102905273 12 1.3206071853637695
		 12.800002721088436 36.376686096191406 14.400002891156463 45.817394256591797 16.000003401360544 44.385574340820312
		 17.600003401360546 8.5699958801269531 19.200003741496598 -30.250522613525391 20.800004421768708 -29.754020690917969
		 22.400004421768706 -14.085176467895508;
createNode animCurveTA -n "LeftFoot_rotateY";
	rename -uid "AA01E127-B94B-6A0B-99E7-A593D779FEFA";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 6.4539628028869629 1.6 2.4529516696929932
		 3.200000680272109 -1.7667958736419678 4.8000010204081631 -4.242124080657959 6.4000010204081637 -3.443162202835083
		 8.0000015306122449 -6.6150522232055664 11.200002551020408 7.7311639785766593 12 6.4538769721984863
		 12.800002721088436 11.283500671386719 14.400002891156463 11.455413818359375 16.000003401360544 7.2780628204345703
		 17.600003401360546 12.217763900756836 19.200003741496598 2.8109183311462402 20.800004421768708 10.199580192565918
		 22.400004421768706 10.619385719299316;
createNode animCurveTA -n "LeftFoot_rotateZ";
	rename -uid "996EF908-2542-9DD3-6A6F-1AAC42357484";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.71982318162918091 1.6 -1.1991125345230103
		 3.200000680272109 -2.4193477630615239 4.8000010204081631 -3.8693532943725586 6.4000010204081637 -4.6093015670776367
		 8.0000015306122449 -4.3109626770019531 11.200002551020408 5.0701408386230469 12 -0.71992361545562744
		 12.800002721088436 10.690725326538086 14.400002891156463 16.122625350952148 16.000003401360544 16.493082046508789
		 17.600003401360546 12.784152030944824 19.200003741496598 -1.3100066184997559 20.800004421768708 -2.6264171600341797
		 22.400004421768706 -2.0366923809051514;
createNode animCurveTA -n "LeftToeBase_rotateX";
	rename -uid "77DA0324-B347-787A-C610-E983BDEA7F91";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 14.280849456787109 1.6 7.7348952293396005
		 3.200000680272109 -1.3916598558425903 4.8000010204081631 -2.7024238109588623 6.4000010204081637 -2.0158467292785645
		 8.0000015306122449 5.7723250389099121 11.200002551020408 2.5331099033355713 12 14.281046867370605
		 12.800002721088436 2.5306088924407959 14.400002891156463 2.5359444618225102 16.000003401360544 2.6975808143615723
		 17.600003401360546 40.545310974121094 19.200003741496598 21.774394989013672 20.800004421768708 3.0645542144775391
		 22.400004421768706 2.1439676284790039;
createNode animCurveTA -n "LeftToeBase_rotateY";
	rename -uid "31E3FBF1-0F46-971E-2ED2-55AA86AE3E64";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -3.2995791435241699 1.6 -2.6142525672912598
		 3.200000680272109 -4.7883238792419434 4.8000010204081631 -7.4288935661315909 6.4000010204081637 -15.634865760803223
		 8.0000015306122449 -14.393615722656248 11.200002551020408 -2.4576606750488281 12 -3.2995505332946777
		 12.800002721088436 -2.464984655380249 14.400002891156463 -2.4472379684448242 16.000003401360544 -1.9126015901565554
		 17.600003401360546 12.944767951965332 19.200003741496598 5.9246559143066406 20.800004421768708 -6.1598553657531738
		 22.400004421768706 -6.40673828125;
createNode animCurveTA -n "LeftToeBase_rotateZ";
	rename -uid "C21B5AD6-E442-BDB8-5F72-F0AD3FB6D686";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -1.1061322689056396 1.6 -0.53227955102920532
		 3.200000680272109 -0.34627240896224976 4.8000010204081631 -0.40127933025360107 6.4000010204081637 0.0078390762209892273
		 8.0000015306122449 -0.79327309131622314 11.200002551020408 -0.45206812024116516 12 -1.1060985326766968
		 12.800002721088436 -0.45240053534507751 14.400002891156463 -0.45150080323219299 16.000003401360544 -0.42436259984970093
		 17.600003401360546 8.7372674942016602 19.200003741496598 4.5835795402526855 20.800004421768708 -0.54546701908111572
		 22.400004421768706 -0.42597681283950806;
createNode animCurveTA -n "RightUpLeg_rotateX";
	rename -uid "F3A0619D-5246-0855-8A32-47BB93C3D1A1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 37.834529876708984 1.6 21.034061431884766
		 3.200000680272109 1.5848850011825562 4.8000010204081631 -9.4596500396728516 6.4000010204081637 -11.304158210754395
		 8.0000015306122449 11.058231353759766 11.200002551020408 36.344989776611328 12 37.834606170654297
		 12.800002721088436 45.924953460693366 14.400002891156463 53.972831726074219 16.000003401360544 55.844932556152344
		 17.600003401360546 49.320217132568359 19.200003741496598 39.958751678466797 20.800004421768708 37.399154663085938
		 22.400004421768706 42.523300170898438;
createNode animCurveTA -n "RightUpLeg_rotateY";
	rename -uid "41BB5CCA-7E44-8E4B-59E9-3B9D5C0D2947";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -2.8350598812103271 1.6 3.6153686046600342
		 3.200000680272109 8.4002456665039062 4.8000010204081631 -2.0170416831970215 6.4000010204081637 -6.265167236328125
		 8.0000015306122449 -17.08531379699707 11.200002551020408 -25.414043426513672 12 -2.8350253105163574
		 12.800002721088436 -26.40093994140625 14.400002891156463 -24.215202331542969 16.000003401360544 -19.254987716674805
		 17.600003401360546 -14.71905040740967 19.200003741496598 -15.860757827758789 20.800004421768708 -9.6692895889282227
		 22.400004421768706 -5.4990234375000009;
createNode animCurveTA -n "RightUpLeg_rotateZ";
	rename -uid "E8E593DD-0D45-9AEA-416F-B8AC346FFB9C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 20.845186233520508 1.6 11.419403076171875
		 3.200000680272109 2.0542123317718506 4.8000010204081631 -4.8815798759460449 6.4000010204081637 -6.9401631355285653
		 8.0000015306122449 -1.0560225248336792 11.200002551020408 1.176662802696228 12 20.845348358154297
		 12.800002721088436 2.4911608695983887 14.400002891156463 7.4465761184692374 16.000003401360544 15.875389099121094
		 17.600003401360546 22.784282684326172 19.200003741496598 21.612579345703125 20.800004421768708 25.057611465454102
		 22.400004421768706 23.371334075927734;
createNode animCurveTA -n "RightLeg_rotateX";
	rename -uid "4147C233-EF4C-5695-7EF7-5B912FBFB93B";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -69.332328796386719 1.6 -65.716209411621094
		 3.200000680272109 -47.130142211914062 4.8000010204081631 -32.095848083496094 6.4000010204081637 -29.190080642700195
		 8.0000015306122449 -68.134735107421875 11.200002551020408 -93.821319580078125 12 -69.332359313964844
		 12.800002721088436 -93.303321838378906 14.400002891156463 -84.413963317871094 16.000003401360544 -66.448661804199219
		 17.600003401360546 -41.079357147216797 19.200003741496598 -20.922796249389648 20.800004421768708 -27.3592529296875
		 22.400004421768706 -56.526283264160156;
createNode animCurveTA -n "RightLeg_rotateY";
	rename -uid "E79A4923-FA46-CD71-22E9-74A3E656CE49";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -9.2464895248413086 1.6 -10.343989372253418
		 3.200000680272109 -12.868514060974121 4.8000010204081631 -5.2859621047973633 6.4000010204081637 -0.82494574785232544
		 8.0000015306122449 4.9485769271850595 11.200002551020408 0.81044900417327881 12 -9.2464523315429688
		 12.800002721088436 -0.70472115278244019 14.400002891156463 -3.2526676654815674 16.000003401360544 -8.1951141357421875
		 17.600003401360546 -12.003111839294435 19.200003741496598 -6.7528171539306641 20.800004421768708 -7.688450813293457
		 22.400004421768706 -9.026947021484375;
createNode animCurveTA -n "RightLeg_rotateZ";
	rename -uid "56254642-0342-F9B5-2A11-1B8D02785DB0";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 3.1917510032653809 1.6 4.5012459754943848
		 3.200000680272109 5.4421391487121582 4.8000010204081631 10.045540809631348 6.4000010204081637 11.166753768920898
		 8.0000015306122449 2.4221570491790771 11.200002551020408 -1.6724389791488647 12 3.1917457580566411
		 12.800002721088436 -0.96001827716827393 14.400002891156463 -0.19445054233074191 16.000003401360544 2.6630184650421143
		 17.600003401360546 0.28518733382225037 19.200003741496598 -2.8742694854736328 20.800004421768708 0.19358536601066589
		 22.400004421768706 1.4715741872787476;
createNode animCurveTA -n "RightFoot_rotateX";
	rename -uid "D218C600-3744-B71F-15F5-9A9CB7233C26";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 28.424528121948242 1.6 40.668060302734375
		 3.200000680272109 43.163742065429688 4.8000010204081631 17.665872573852539 6.4000010204081637 -20.739921569824222
		 8.0000015306122449 -22.261550903320312 11.200002551020408 -11.47191047668457 12 28.424434661865234
		 12.800002721088436 -3.577439546585083 14.400002891156463 0.99164593219757069 16.000003401360544 5.7244448661804199
		 17.600003401360546 6.5084052085876465 19.200003741496598 11.779487609863281 20.800004421768708 -2.2833437919616699
		 22.400004421768706 9.1570281982421875;
createNode animCurveTA -n "RightFoot_rotateY";
	rename -uid "BFBE17C7-674E-AE61-35B6-2F805583CC22";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -1.1056828498840332 1.6 0.024196332320570946
		 3.200000680272109 -1.5753978490829468 4.8000010204081631 -4.8744769096374512 6.4000010204081637 -8.0849819183349609
		 8.0000015306122449 -2.0585525035858159 11.200002551020408 6.1798191070556641 12 -1.105810284614563
		 12.800002721088436 10.017317771911621 14.400002891156463 15.590165138244629 16.000003401360544 20.673662185668945
		 17.600003401360546 20.627029418945312 19.200003741496598 17.159008026123047 20.800004421768708 -7.2340941429138184
		 22.400004421768706 -3.0151774883270264;
createNode animCurveTA -n "RightFoot_rotateZ";
	rename -uid "8A242EB9-6C48-E8EA-514B-CAB280110D19";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -16.856538772583008 1.6 -14.752399444580076
		 3.200000680272109 -9.6602916717529297 4.8000010204081631 -4.6818170547485352 6.4000010204081637 -1.1832352876663208
		 8.0000015306122449 -3.7776849269866939 11.200002551020408 -0.14537158608436584 12 -16.856622695922852
		 12.800002721088436 1.1661376953125 14.400002891156463 2.2363042831420898 16.000003401360544 1.1105198860168457
		 17.600003401360546 0.73856031894683838 19.200003741496598 -0.91281133890151978 20.800004421768708 -16.112415313720703
		 22.400004421768706 -16.440160751342773;
createNode animCurveTA -n "RightToeBase_rotateX";
	rename -uid "22CB61E7-B045-C17B-8939-1888EF3FAE68";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 2.4275195598602295 1.6 2.4275295734405522
		 3.200000680272109 2.4275319576263428 4.8000010204081631 29.664478302001953 6.4000010204081637 41.105472564697266
		 8.0000015306122449 18.135025024414062 11.200002551020408 6.2797231674194336 12 2.427553653717041
		 12.800002721088436 3.4805684089660645 14.400002891156463 1.8769410848617554 16.000003401360544 1.3563207387924194
		 17.600003401360546 1.3112354278564453 19.200003741496598 2.1698474884033203 20.800004421768708 2.5089056491851807
		 22.400004421768706 2.4275457859039307;
createNode animCurveTA -n "RightToeBase_rotateY";
	rename -uid "8EF37D97-A749-3F06-CABA-CA88EE465A43";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 1.4349169731140137 1.6 1.4349027872085571
		 3.200000680272109 1.4349297285079956 4.8000010204081631 2.0996503829956055 6.4000010204081637 4.7984848022460938
		 8.0000015306122449 5.2714080810546875 11.200002551020408 -0.78344833850860607 12 1.4349219799041748
		 12.800002721088436 -2.6125621795654297 14.400002891156463 0.23568959534168241 16.000003401360544 5.1194915771484375
		 17.600003401360546 7.7041831016540518 19.200003741496598 6.8785018920898438 20.800004421768708 3.0935366153717045
		 22.400004421768706 1.434931755065918;
createNode animCurveTA -n "RightToeBase_rotateZ";
	rename -uid "AB015F95-F248-43F6-D821-8FBDBDF4E951";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 15 ".ktv[0:14]"  0 -0.020685268566012383 1.6 -0.020739970728754997
		 3.200000680272109 -0.020739961415529251 4.8000010204081631 -5.9293251037597656 6.4000010204081637 -3.7884831428527832
		 8.0000015306122449 0.67939299345016479 11.200002551020408 1.7157299518585205 12 -0.02073785662651062
		 12.800002721088436 1.83249294757843 14.400002891156463 1.9793610572814941 16.000003401360544 1.713327169418335
		 17.600003401360546 1.3337588310241699 19.200003741496598 1.0882068872451782 20.800004421768708 0.31961244344711304
		 22.400004421768706 -0.020865414291620255;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "BF27133F-7F43-7A0B-E5C4-04978F36AFEB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 -4.419862333717882 2 -3.5551586250961691
		 4 -2.4432476448721583 6 -1.1640039312127786 8 0.14190051259579217 10 1.1051142341895677
		 12 1.7099429797257777 14 1.8694925561276268 16 0.51604677460415882 18 -1.3748710490050717
		 20 -2.7136942053352247 22 -3.9111211226295954 24 -4.419862333717882;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 0.084021094394294879 0.069532632086984875 
		0.064337267541563478 0.073252642920407021 0.10569427524038578 0.21303678039775181 
		1 0.051303492778116251 0.05153515340213758 0.065572386145643383 0.097222024556462699 
		1;
	setAttr -s 13 ".kiy[0:12]"  0 0.99646397611593818 0.99757967755716437 
		0.99792821184957248 0.99731341628656289 0.99439867265670145 0.97704418026912176 0 
		-0.99868310871305199 -0.9986711811020772 -0.99784781513774257 -0.99526271805043642 
		0;
	setAttr -s 13 ".kox[0:12]"  1 0.084021094394294879 0.069532632086984875 
		0.064337267541563478 0.073252642920407035 0.10569427524038578 0.21303678039775181 
		1 0.051303492778116258 0.05153515340213758 0.065572386145643383 0.097222024556462699 
		1;
	setAttr -s 13 ".koy[0:12]"  0 0.99646397611593818 0.99757967755716437 
		0.99792821184957248 0.99731341628656289 0.99439867265670145 0.97704418026912176 0 
		-0.99868310871305199 -0.9986711811020772 -0.99784781513774257 -0.99526271805043642 
		0;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "87B4357F-7A40-3EC9-3CBE-3E86D579620B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  -12 26 -10 17.054057115654849 -8 9.4203916252703266
		 -6 3.9175280437908491 -4 0.9338542873501261 -2 0 0 3.8733499216060761 2 11.210826980662247
		 4 17.365147554497806 6 22.474740333433708 8 25.266917293233082 10 26 12 24.460526315789473
		 14 17.054057115654849 16 9.4203916252703266 18 3.9175280437908491 20 0.9338542873501261
		 22 0 24 3.8733499216060761 26 11.210826980662247 28 17.365147554497806 30 22.474740333433708
		 32 25.266917293233082 34 26 36 26;
	setAttr -s 25 ".kit[6:24]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[6:24]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[6:24]"  0.014864938337806402 0.01235224214685113 
		0.014794895850482616 0.021087631088568672 0.047225092021437112 1 0.018627186868008662 
		0.011080780711526779 0.012686247141572666 0.019635161978960404 0.042505385476994062 
		1 0.014864938337806402 0.012352242146851137 0.014794895850482617 0.021087631088568655 
		0.047225092021437126 1 1;
	setAttr -s 25 ".kiy[6:24]"  0.99988951070016396 0.99992370814674947 
		0.99989054953868506 0.99977763118359086 0.99888427291832294 0 -0.99982649890337694 
		-0.99993860626481612 -0.99991952632872561 -0.99980721162335096 -0.99909623770958722 
		0 0.99988951070016396 0.99992370814674925 0.99989054953868506 0.99977763118359086 
		0.99888427291832294 0 0;
	setAttr -s 25 ".kox[6:24]"  0.014864938337806402 0.01235224214685113 
		0.014794895850482616 0.021087631088568672 0.047225092021437112 1 0.018627186868008658 
		0.01108078071152678 0.012686247141572666 0.019635161978960404 0.042505385476994069 
		1 0.014864938337806402 0.012352242146851137 0.014794895850482617 0.021087631088568655 
		0.047225092021437126 1 1;
	setAttr -s 25 ".koy[6:24]"  0.99988951070016396 0.99992370814674947 
		0.99989054953868506 0.99977763118359086 0.99888427291832294 0 -0.99982649890337694 
		-0.99993860626481623 -0.99991952632872561 -0.99980721162335096 -0.99909623770958733 
		0 0.99988951070016396 0.99992370814674925 0.99989054953868506 0.99977763118359086 
		0.99888427291832294 0 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "511A7DCC-6C43-85ED-4938-7EAAA4302802";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  -12 25.963088812499592 -10 38.932444120770469
		 -8 48.299614482542346 -6 39.447942167655022 -4 10.610437998049509 -2 -9.2669719312944139
		 0 -26.580641570918875 2 -38.495329986172919 4 -32.274996973677652 6 -20.753888472405762
		 8 -5.2821956198339137 10 10.235517188081491 12 25.963088812499592 14 38.932444120770469
		 16 48.299614482542346 18 39.447942167655022 20 10.610437998049509 22 -9.2669719312944139
		 24 -26.580641570918875 26 -38.495329986172919 28 -32.274996973677652 30 -20.753888472405762
		 32 -5.2821956198339137 34 10.235517188081491 36 25.963088812499592;
	setAttr -s 25 ".kit[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kot[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 1;
	setAttr -s 25 ".kix[0:24]"  0.0062687653489285795 0.0074614122927884972 
		1 0.0044220928295384239 0.0034212457177917551 0.0044813163552523162 0.0057021320460730164 
		1 0.0093937864503917442 0.0061743680305690295 0.0053781043154340112 0.005334062360427533 
		0.0062687653489285795 0.0074614122927884946 1 0.0044220928295384265 0.0034212457177917538 
		0.0044813163552523162 0.0057021320460730164 1 0.0093937864503917459 0.0061743680305690243 
		0.0053781043154340121 0.0053340623604275347 0.0058140779420222536;
	setAttr -s 25 ".kiy[0:24]"  0.99998035109746042 0.99997216327585692 
		0 -0.99999022249970371 -0.99999414752174354 -0.99998995885144981 -0.9999837427129149 
		0 0.99995587741466097 0.99998093840803937 0.99998553789240996 0.99998577378817499 
		0.99998035109746042 0.99997216327585692 0 -0.99999022249970371 -0.99999414752174354 
		-0.99998995885144981 -0.9999837427129149 0 0.99995587741466097 0.99998093840803937 
		0.99998553789240985 0.99998577378817499 0.99998309810600505;
	setAttr -s 25 ".kox[0:24]"  0.0062687650877686968 0.007461412292788498 
		1 0.0044220928295384239 0.0034212457177917551 0.0044813163552523162 0.0057021320460730164 
		1 0.0093937864503917442 0.0061743680305690303 0.0053781043154340104 0.005334062360427533 
		0.0062687650877686968 0.0074614122927884946 1 0.0044220928295384265 0.0034212457177917538 
		0.0044813163552523162 0.0057021320460730164 1 0.0093937864503917459 0.0061743680305690243 
		0.005378104315434013 0.0053340623604275347 0.0058140782540255578;
	setAttr -s 25 ".koy[0:24]"  0.99998035109909755 0.99997216327585692 
		0 -0.99999022249970371 -0.99999414752174354 -0.99998995885144981 -0.9999837427129149 
		0 0.99995587741466097 0.99998093840803937 0.99998553789240985 0.99998577378817499 
		0.99998035109909755 0.99997216327585692 0 -0.99999022249970371 -0.99999414752174354 
		-0.99998995885144981 -0.9999837427129149 0 0.99995587741466097 0.99998093840803937 
		0.99998553789240996 0.99998577378817499 0.99998309810419106;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "F3EA1C88-B749-6730-D1CA-00935F2ADFC9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 44.103787591572974 2 58.366167126693242
		 4 68.926231276925066 6 76.721036926466965 8 79.801882662933423 10 78.099433996920112
		 12 42.237537598864492 14 17.217383513501073 16 -4.3925480618743711 18 -8.9818873263158885
		 20 -0.21958855246309739 22 17.853537845102998 24 44.103787591572974;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1;
	setAttr -s 13 ".kix[0:12]"  0.33240269559574726 0.35905123166683167 
		0.46153398200405293 0.65979899419865018 1 0.6829136522008209 0.22591347897107236 
		0.20062459699510868 0.342448926446354 1 0.33525313905299003 0.21061347538834121 0.13796567472157276;
	setAttr -s 13 ".kiy[0:12]"  0.94313755516397557 0.93331785209462859 
		0.88712253012505704 0.75144213832766238 0 -0.73049910584321476 -0.97414737079108671 
		-0.97966819438039854 -0.93953644568784012 0 0.94212808723395802 0.97756941645329953 
		0.9904370109192312;
	setAttr -s 13 ".kox[0:12]"  0.33240268841705373 0.35905123166683167 
		0.46153398200405282 0.65979899419865029 1 0.6829136522008209 0.22591347067552869 
		0.20062459699510868 0.342448926446354 1 0.33525313905299003 0.21061347538834119 0.13796571517902842;
	setAttr -s 13 ".koy[0:12]"  0.94313755769405938 0.93331785209462859 
		0.88712253012505693 0.75144213832766238 0 -0.73049910584321487 -0.97414737271489726 
		-0.97966819438039854 -0.93953644568784012 0 0.94212808723395802 0.97756941645329942 
		0.99043700528359679;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "2A900D92-314C-38C8-53B8-4C8E58BE9FEF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 17.476425262925378 2 16.400682946107967
		 4 13.233015396457096 6 9.7666148964733672 8 6.3367623830266258 10 3.3479707326568531
		 12 2.5279354111349441 14 2.6922842144775054 16 3.3162729458457196 18 5.4320787382966271
		 20 9.7429646873367179 22 17.40576223648095 24 17.476425262925378;
	setAttr -s 13 ".kit[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kot[0:12]"  1 18 18 18 18 18 18 18 
		18 18 18 18 18;
	setAttr -s 13 ".kix[0:12]"  1 0.91383718779686063 0.82126470350052294 
		0.81069781176141009 0.82994053412019642 0.9288415558058386 1 0.99660969565760882 
		0.96121960429008568 0.82961669853806819 0.6235138535487551 0.99901582414200674 1;
	setAttr -s 13 ".kiy[0:12]"  0 -0.40608077299907358 -0.57054735717922511 
		-0.5854648221757317 -0.55785187086204424 -0.37047721145596696 0 0.082274628660652216 
		0.27578410456081609 0.55833335338917023 0.78181230128003321 0.044355192637019827 
		0;
	setAttr -s 13 ".kox[0:12]"  1 0.91383718779686063 0.82126470350052283 
		0.81069781176141009 0.82994053412019653 0.92884155580583849 1 0.99660969565760893 
		0.96121960429008568 0.82961669853806819 0.6235138535487551 0.99901582414200674 1;
	setAttr -s 13 ".koy[0:12]"  0 -0.40608077299907358 -0.57054735717922511 
		-0.5854648221757317 -0.55785187086204424 -0.37047721145596696 0 0.082274628660652216 
		0.27578410456081609 0.55833335338917023 0.78181230128003332 0.044355192637019827 
		0;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "66990B1B-8C45-4B38-30D7-269FE6A6702C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 13 ".ktv[0:12]"  0 16.627169683836584 2 16.627169683836584
		 4 16.111546521124232 6 14.05364495680254 8 9.9137195154873403 10 6.2662822180909767
		 12 3.5785819315826752 14 2.7115818391606425 16 2.3087849363780442 18 1.7218491775750162
		 20 0.75398803344085397 22 1.9788549870348131 24 16.627169683836584;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "78F167B0-A045-6377-2910-009F9C741ECC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  -12 1 -10 1 -8 1 -6 1 -4 1 -2 1 0 1 2 1
		 4 1 6 1 8 1 10 1 12 1 14 1 16 1 18 1 20 1 22 1 24 1 26 1 28 1 30 1 32 1 34 1 36 1;
	setAttr -s 25 ".kit[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "C463B040-584B-D02D-D115-6A8069DA4E0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  -12 1 -10 1 -8 1 -6 1 -4 1 -2 1 0 1 2 1
		 4 1 6 1 8 1 10 1 12 1 14 1 16 1 18 1 20 1 22 1 24 1 26 1 28 1 30 1 32 1 34 1 36 1;
	setAttr -s 25 ".kit[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "568ACB24-3E42-CC13-BC46-A9AEDF482782";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 25 ".ktv[0:24]"  -12 1 -10 1 -8 1 -6 1 -4 1 -2 1 0 1 2 1
		 4 1 6 1 8 1 10 1 12 1 14 1 16 1 18 1 20 1 22 1 24 1 26 1 28 1 30 1 32 1 34 1 36 1;
	setAttr -s 25 ".kit[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kot[0:24]"  1 18 18 18 18 18 1 18 
		18 18 18 18 1 18 18 18 18 18 18 18 18 18 18 18 18;
	setAttr -s 25 ".kix[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".kiy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
	setAttr -s 25 ".kox[0:24]"  1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 
		1 1 1 1 1;
	setAttr -s 25 ".koy[0:24]"  0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 
		0 0 0 0 0;
select -ne :time1;
	setAttr ".o" 7;
	setAttr ".unw" 7;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 4 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 6 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :defaultRenderingList1;
	setAttr -s 3 ".r";
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
connectAttr "AssaultRifle_parentConstraint1.ctx" "AssaultRifleRN.phl[1]";
connectAttr "AssaultRifle_parentConstraint1.cty" "AssaultRifleRN.phl[2]";
connectAttr "AssaultRifle_parentConstraint1.ctz" "AssaultRifleRN.phl[3]";
connectAttr "AssaultRifle_parentConstraint1.crx" "AssaultRifleRN.phl[4]";
connectAttr "AssaultRifle_parentConstraint1.cry" "AssaultRifleRN.phl[5]";
connectAttr "AssaultRifle_parentConstraint1.crz" "AssaultRifleRN.phl[6]";
connectAttr "AssaultRifleRN.phl[7]" "AssaultRifle_parentConstraint1.cro";
connectAttr "AssaultRifleRN.phl[8]" "AssaultRifle_parentConstraint1.cpim";
connectAttr "AssaultRifleRN.phl[9]" "AssaultRifle_parentConstraint1.crp";
connectAttr "AssaultRifleRN.phl[10]" "AssaultRifle_parentConstraint1.crt";
connectAttr "Salazar_RigRN.phl[1]" "AssaultRifle_parentConstraint1.tg[0].tt";
connectAttr "Salazar_RigRN.phl[2]" "AssaultRifle_parentConstraint1.tg[0].tr";
connectAttr "Salazar_RigRN.phl[3]" "AssaultRifle_parentConstraint1.tg[0].tro";
connectAttr "Salazar_RigRN.phl[4]" "AssaultRifle_parentConstraint1.tg[0].trp";
connectAttr "Salazar_RigRN.phl[5]" "AssaultRifle_parentConstraint1.tg[0].trt";
connectAttr "Salazar_RigRN.phl[6]" "AssaultRifle_parentConstraint1.tg[0].ts";
connectAttr "Salazar_RigRN.phl[7]" "AssaultRifle_parentConstraint1.tg[0].tpm";
connectAttr "Root_Control_visibility.o" "Salazar_RigRN.phl[8]";
connectAttr "Root_Control_translateX.o" "Salazar_RigRN.phl[9]";
connectAttr "Root_Control_translateY.o" "Salazar_RigRN.phl[10]";
connectAttr "Root_Control_translateZ.o" "Salazar_RigRN.phl[11]";
connectAttr "Root_Control_rotateX.o" "Salazar_RigRN.phl[12]";
connectAttr "Root_Control_rotateY.o" "Salazar_RigRN.phl[13]";
connectAttr "Root_Control_rotateZ.o" "Salazar_RigRN.phl[14]";
connectAttr "Root_Control_scaleX.o" "Salazar_RigRN.phl[15]";
connectAttr "Root_Control_scaleY.o" "Salazar_RigRN.phl[16]";
connectAttr "Root_Control_scaleZ.o" "Salazar_RigRN.phl[17]";
connectAttr "LeftFoot_Control_rotateX.o" "Salazar_RigRN.phl[18]";
connectAttr "LeftFoot_Control_rotateY.o" "Salazar_RigRN.phl[19]";
connectAttr "LeftFoot_Control_rotateZ.o" "Salazar_RigRN.phl[20]";
connectAttr "LeftFoot_Control_translateX.o" "Salazar_RigRN.phl[21]";
connectAttr "LeftFoot_Control_translateY.o" "Salazar_RigRN.phl[22]";
connectAttr "LeftFoot_Control_translateZ.o" "Salazar_RigRN.phl[23]";
connectAttr "LeftFoot_Control_visibility.o" "Salazar_RigRN.phl[24]";
connectAttr "LeftFoot_Control_scaleX.o" "Salazar_RigRN.phl[25]";
connectAttr "LeftFoot_Control_scaleY.o" "Salazar_RigRN.phl[26]";
connectAttr "LeftFoot_Control_scaleZ.o" "Salazar_RigRN.phl[27]";
connectAttr "LeftKnee_Control_translateX.o" "Salazar_RigRN.phl[28]";
connectAttr "LeftKnee_Control_translateY.o" "Salazar_RigRN.phl[29]";
connectAttr "LeftKnee_Control_translateZ.o" "Salazar_RigRN.phl[30]";
connectAttr "LeftKnee_Control_visibility.o" "Salazar_RigRN.phl[31]";
connectAttr "LeftKnee_Control_rotateX.o" "Salazar_RigRN.phl[32]";
connectAttr "LeftKnee_Control_rotateY.o" "Salazar_RigRN.phl[33]";
connectAttr "LeftKnee_Control_rotateZ.o" "Salazar_RigRN.phl[34]";
connectAttr "LeftKnee_Control_scaleX.o" "Salazar_RigRN.phl[35]";
connectAttr "LeftKnee_Control_scaleY.o" "Salazar_RigRN.phl[36]";
connectAttr "LeftKnee_Control_scaleZ.o" "Salazar_RigRN.phl[37]";
connectAttr "LeftToe_Control_rotateX.o" "Salazar_RigRN.phl[38]";
connectAttr "LeftToe_Control_rotateY.o" "Salazar_RigRN.phl[39]";
connectAttr "LeftToe_Control_rotateZ.o" "Salazar_RigRN.phl[40]";
connectAttr "LeftToe_Control_visibility.o" "Salazar_RigRN.phl[41]";
connectAttr "LeftToe_Control_translateX.o" "Salazar_RigRN.phl[42]";
connectAttr "LeftToe_Control_translateY.o" "Salazar_RigRN.phl[43]";
connectAttr "LeftToe_Control_translateZ.o" "Salazar_RigRN.phl[44]";
connectAttr "LeftToe_Control_scaleX.o" "Salazar_RigRN.phl[45]";
connectAttr "LeftToe_Control_scaleY.o" "Salazar_RigRN.phl[46]";
connectAttr "LeftToe_Control_scaleZ.o" "Salazar_RigRN.phl[47]";
connectAttr "RightFoot_Control_rotateX.o" "Salazar_RigRN.phl[48]";
connectAttr "RightFoot_Control_rotateY.o" "Salazar_RigRN.phl[49]";
connectAttr "RightFoot_Control_rotateZ.o" "Salazar_RigRN.phl[50]";
connectAttr "RightFoot_Control_translateX.o" "Salazar_RigRN.phl[51]";
connectAttr "RightFoot_Control_translateY.o" "Salazar_RigRN.phl[52]";
connectAttr "RightFoot_Control_translateZ.o" "Salazar_RigRN.phl[53]";
connectAttr "RightFoot_Control_visibility.o" "Salazar_RigRN.phl[54]";
connectAttr "RightFoot_Control_scaleX.o" "Salazar_RigRN.phl[55]";
connectAttr "RightFoot_Control_scaleY.o" "Salazar_RigRN.phl[56]";
connectAttr "RightFoot_Control_scaleZ.o" "Salazar_RigRN.phl[57]";
connectAttr "RightToe_Control_rotateX.o" "Salazar_RigRN.phl[58]";
connectAttr "RightToe_Control_rotateY.o" "Salazar_RigRN.phl[59]";
connectAttr "RightToe_Control_rotateZ.o" "Salazar_RigRN.phl[60]";
connectAttr "RightToe_Control_visibility.o" "Salazar_RigRN.phl[61]";
connectAttr "RightToe_Control_translateX.o" "Salazar_RigRN.phl[62]";
connectAttr "RightToe_Control_translateY.o" "Salazar_RigRN.phl[63]";
connectAttr "RightToe_Control_translateZ.o" "Salazar_RigRN.phl[64]";
connectAttr "RightToe_Control_scaleX.o" "Salazar_RigRN.phl[65]";
connectAttr "RightToe_Control_scaleY.o" "Salazar_RigRN.phl[66]";
connectAttr "RightToe_Control_scaleZ.o" "Salazar_RigRN.phl[67]";
connectAttr "RightKnee_Control_translateX.o" "Salazar_RigRN.phl[68]";
connectAttr "RightKnee_Control_translateY.o" "Salazar_RigRN.phl[69]";
connectAttr "RightKnee_Control_translateZ.o" "Salazar_RigRN.phl[70]";
connectAttr "RightKnee_Control_visibility.o" "Salazar_RigRN.phl[71]";
connectAttr "RightKnee_Control_rotateX.o" "Salazar_RigRN.phl[72]";
connectAttr "RightKnee_Control_rotateY.o" "Salazar_RigRN.phl[73]";
connectAttr "RightKnee_Control_rotateZ.o" "Salazar_RigRN.phl[74]";
connectAttr "RightKnee_Control_scaleX.o" "Salazar_RigRN.phl[75]";
connectAttr "RightKnee_Control_scaleY.o" "Salazar_RigRN.phl[76]";
connectAttr "RightKnee_Control_scaleZ.o" "Salazar_RigRN.phl[77]";
connectAttr "RootMotion_Control_translateX.o" "Salazar_RigRN.phl[78]";
connectAttr "RootMotion_Control_translateY.o" "Salazar_RigRN.phl[79]";
connectAttr "RootMotion_Control_translateZ.o" "Salazar_RigRN.phl[80]";
connectAttr "RootMotion_Control_rotateX.o" "Salazar_RigRN.phl[81]";
connectAttr "RootMotion_Control_rotateY.o" "Salazar_RigRN.phl[82]";
connectAttr "RootMotion_Control_rotateZ.o" "Salazar_RigRN.phl[83]";
connectAttr "RootMotion_Control_scaleX.o" "Salazar_RigRN.phl[84]";
connectAttr "RootMotion_Control_scaleY.o" "Salazar_RigRN.phl[85]";
connectAttr "RootMotion_Control_scaleZ.o" "Salazar_RigRN.phl[86]";
connectAttr "RootMotion_Control_visibility.o" "Salazar_RigRN.phl[87]";
connectAttr "Hips_Control_translateX.o" "Salazar_RigRN.phl[88]";
connectAttr "Hips_Control_translateY.o" "Salazar_RigRN.phl[89]";
connectAttr "Hips_Control_translateZ.o" "Salazar_RigRN.phl[90]";
connectAttr "Hips_Control_rotateX.o" "Salazar_RigRN.phl[91]";
connectAttr "Hips_Control_rotateY.o" "Salazar_RigRN.phl[92]";
connectAttr "Hips_Control_rotateZ.o" "Salazar_RigRN.phl[93]";
connectAttr "Hips_Control_scaleX.o" "Salazar_RigRN.phl[94]";
connectAttr "Hips_Control_scaleY.o" "Salazar_RigRN.phl[95]";
connectAttr "Hips_Control_scaleZ.o" "Salazar_RigRN.phl[96]";
connectAttr "Hips_Control_visibility.o" "Salazar_RigRN.phl[97]";
connectAttr "Spine1_Control_translateX.o" "Salazar_RigRN.phl[98]";
connectAttr "Spine1_Control_translateY.o" "Salazar_RigRN.phl[99]";
connectAttr "Spine1_Control_translateZ.o" "Salazar_RigRN.phl[100]";
connectAttr "Spine1_Control_rotateX.o" "Salazar_RigRN.phl[101]";
connectAttr "Spine1_Control_rotateY.o" "Salazar_RigRN.phl[102]";
connectAttr "Spine1_Control_rotateZ.o" "Salazar_RigRN.phl[103]";
connectAttr "Spine1_Control_scaleX.o" "Salazar_RigRN.phl[104]";
connectAttr "Spine1_Control_scaleY.o" "Salazar_RigRN.phl[105]";
connectAttr "Spine1_Control_scaleZ.o" "Salazar_RigRN.phl[106]";
connectAttr "Spine1_Control_visibility.o" "Salazar_RigRN.phl[107]";
connectAttr "Spine2_Control_translateX.o" "Salazar_RigRN.phl[108]";
connectAttr "Spine2_Control_translateY.o" "Salazar_RigRN.phl[109]";
connectAttr "Spine2_Control_translateZ.o" "Salazar_RigRN.phl[110]";
connectAttr "Spine2_Control_rotateX.o" "Salazar_RigRN.phl[111]";
connectAttr "Spine2_Control_rotateY.o" "Salazar_RigRN.phl[112]";
connectAttr "Spine2_Control_rotateZ.o" "Salazar_RigRN.phl[113]";
connectAttr "Spine2_Control_scaleX.o" "Salazar_RigRN.phl[114]";
connectAttr "Spine2_Control_scaleY.o" "Salazar_RigRN.phl[115]";
connectAttr "Spine2_Control_scaleZ.o" "Salazar_RigRN.phl[116]";
connectAttr "Spine2_Control_visibility.o" "Salazar_RigRN.phl[117]";
connectAttr "RightUpperArm_Control_translateX.o" "Salazar_RigRN.phl[118]";
connectAttr "RightUpperArm_Control_translateY.o" "Salazar_RigRN.phl[119]";
connectAttr "RightUpperArm_Control_translateZ.o" "Salazar_RigRN.phl[120]";
connectAttr "RightUpperArm_Control_visibility.o" "Salazar_RigRN.phl[121]";
connectAttr "RightUpperArm_Control_rotateX.o" "Salazar_RigRN.phl[122]";
connectAttr "RightUpperArm_Control_rotateY.o" "Salazar_RigRN.phl[123]";
connectAttr "RightUpperArm_Control_rotateZ.o" "Salazar_RigRN.phl[124]";
connectAttr "RightUpperArm_Control_scaleX.o" "Salazar_RigRN.phl[125]";
connectAttr "RightUpperArm_Control_scaleY.o" "Salazar_RigRN.phl[126]";
connectAttr "RightUpperArm_Control_scaleZ.o" "Salazar_RigRN.phl[127]";
connectAttr "RightClav_Control_translateX.o" "Salazar_RigRN.phl[128]";
connectAttr "RightClav_Control_translateY.o" "Salazar_RigRN.phl[129]";
connectAttr "RightClav_Control_translateZ.o" "Salazar_RigRN.phl[130]";
connectAttr "RightClav_Control_rotateX.o" "Salazar_RigRN.phl[131]";
connectAttr "RightClav_Control_rotateY.o" "Salazar_RigRN.phl[132]";
connectAttr "RightClav_Control_rotateZ.o" "Salazar_RigRN.phl[133]";
connectAttr "RightClav_Control_scaleX.o" "Salazar_RigRN.phl[134]";
connectAttr "RightClav_Control_scaleY.o" "Salazar_RigRN.phl[135]";
connectAttr "RightClav_Control_scaleZ.o" "Salazar_RigRN.phl[136]";
connectAttr "RightClav_Control_visibility.o" "Salazar_RigRN.phl[137]";
connectAttr "LeftClav_Control_translateX.o" "Salazar_RigRN.phl[138]";
connectAttr "LeftClav_Control_translateY.o" "Salazar_RigRN.phl[139]";
connectAttr "LeftClav_Control_translateZ.o" "Salazar_RigRN.phl[140]";
connectAttr "LeftClav_Control_rotateX.o" "Salazar_RigRN.phl[141]";
connectAttr "LeftClav_Control_rotateY.o" "Salazar_RigRN.phl[142]";
connectAttr "LeftClav_Control_rotateZ.o" "Salazar_RigRN.phl[143]";
connectAttr "LeftClav_Control_scaleX.o" "Salazar_RigRN.phl[144]";
connectAttr "LeftClav_Control_scaleY.o" "Salazar_RigRN.phl[145]";
connectAttr "LeftClav_Control_scaleZ.o" "Salazar_RigRN.phl[146]";
connectAttr "LeftClav_Control_visibility.o" "Salazar_RigRN.phl[147]";
connectAttr "LeftUpperArm_Control_translateX.o" "Salazar_RigRN.phl[148]";
connectAttr "LeftUpperArm_Control_translateY.o" "Salazar_RigRN.phl[149]";
connectAttr "LeftUpperArm_Control_translateZ.o" "Salazar_RigRN.phl[150]";
connectAttr "LeftUpperArm_Control_visibility.o" "Salazar_RigRN.phl[151]";
connectAttr "LeftUpperArm_Control_rotateX.o" "Salazar_RigRN.phl[152]";
connectAttr "LeftUpperArm_Control_rotateY.o" "Salazar_RigRN.phl[153]";
connectAttr "LeftUpperArm_Control_rotateZ.o" "Salazar_RigRN.phl[154]";
connectAttr "LeftUpperArm_Control_scaleX.o" "Salazar_RigRN.phl[155]";
connectAttr "LeftUpperArm_Control_scaleY.o" "Salazar_RigRN.phl[156]";
connectAttr "LeftUpperArm_Control_scaleZ.o" "Salazar_RigRN.phl[157]";
connectAttr "Neck_Control_translateX.o" "Salazar_RigRN.phl[158]";
connectAttr "Neck_Control_translateY.o" "Salazar_RigRN.phl[159]";
connectAttr "Neck_Control_translateZ.o" "Salazar_RigRN.phl[160]";
connectAttr "Neck_Control_rotateX.o" "Salazar_RigRN.phl[161]";
connectAttr "Neck_Control_rotateY.o" "Salazar_RigRN.phl[162]";
connectAttr "Neck_Control_rotateZ.o" "Salazar_RigRN.phl[163]";
connectAttr "Neck_Control_scaleX.o" "Salazar_RigRN.phl[164]";
connectAttr "Neck_Control_scaleY.o" "Salazar_RigRN.phl[165]";
connectAttr "Neck_Control_scaleZ.o" "Salazar_RigRN.phl[166]";
connectAttr "Neck_Control_visibility.o" "Salazar_RigRN.phl[167]";
connectAttr "Head_Control_translateX.o" "Salazar_RigRN.phl[168]";
connectAttr "Head_Control_translateY.o" "Salazar_RigRN.phl[169]";
connectAttr "Head_Control_translateZ.o" "Salazar_RigRN.phl[170]";
connectAttr "Head_Control_rotateX.o" "Salazar_RigRN.phl[171]";
connectAttr "Head_Control_rotateY.o" "Salazar_RigRN.phl[172]";
connectAttr "Head_Control_rotateZ.o" "Salazar_RigRN.phl[173]";
connectAttr "Head_Control_scaleX.o" "Salazar_RigRN.phl[174]";
connectAttr "Head_Control_scaleY.o" "Salazar_RigRN.phl[175]";
connectAttr "Head_Control_scaleZ.o" "Salazar_RigRN.phl[176]";
connectAttr "Head_Control_visibility.o" "Salazar_RigRN.phl[177]";
connectAttr "Jaw_Control_translateX.o" "Salazar_RigRN.phl[178]";
connectAttr "Jaw_Control_translateY.o" "Salazar_RigRN.phl[179]";
connectAttr "Jaw_Control_translateZ.o" "Salazar_RigRN.phl[180]";
connectAttr "Jaw_Control_rotateX.o" "Salazar_RigRN.phl[181]";
connectAttr "Jaw_Control_rotateY.o" "Salazar_RigRN.phl[182]";
connectAttr "Jaw_Control_rotateZ.o" "Salazar_RigRN.phl[183]";
connectAttr "Jaw_Control_scaleX.o" "Salazar_RigRN.phl[184]";
connectAttr "Jaw_Control_scaleY.o" "Salazar_RigRN.phl[185]";
connectAttr "Jaw_Control_scaleZ.o" "Salazar_RigRN.phl[186]";
connectAttr "Jaw_Control_visibility.o" "Salazar_RigRN.phl[187]";
connectAttr "LeftHand_Control_rotateX.o" "Salazar_RigRN.phl[188]";
connectAttr "LeftHand_Control_rotateY.o" "Salazar_RigRN.phl[189]";
connectAttr "LeftHand_Control_rotateZ.o" "Salazar_RigRN.phl[190]";
connectAttr "LeftHand_Control_translateX.o" "Salazar_RigRN.phl[191]";
connectAttr "LeftHand_Control_translateY.o" "Salazar_RigRN.phl[192]";
connectAttr "LeftHand_Control_translateZ.o" "Salazar_RigRN.phl[193]";
connectAttr "LeftHand_Control_visibility.o" "Salazar_RigRN.phl[194]";
connectAttr "LeftHand_Control_scaleX.o" "Salazar_RigRN.phl[195]";
connectAttr "LeftHand_Control_scaleY.o" "Salazar_RigRN.phl[196]";
connectAttr "LeftHand_Control_scaleZ.o" "Salazar_RigRN.phl[197]";
connectAttr "LeftFingers_Control_LeftFingers.o" "Salazar_RigRN.phl[198]";
connectAttr "LeftFingers_Control_LeftPointer.o" "Salazar_RigRN.phl[199]";
connectAttr "LeftFingers_Control_LeftThumb.o" "Salazar_RigRN.phl[200]";
connectAttr "LeftFingers_Control_visibility.o" "Salazar_RigRN.phl[201]";
connectAttr "LeftFingers_Control_translateX.o" "Salazar_RigRN.phl[202]";
connectAttr "LeftFingers_Control_translateY.o" "Salazar_RigRN.phl[203]";
connectAttr "LeftFingers_Control_translateZ.o" "Salazar_RigRN.phl[204]";
connectAttr "LeftFingers_Control_rotateX.o" "Salazar_RigRN.phl[205]";
connectAttr "LeftFingers_Control_rotateY.o" "Salazar_RigRN.phl[206]";
connectAttr "LeftFingers_Control_rotateZ.o" "Salazar_RigRN.phl[207]";
connectAttr "LeftFingers_Control_scaleX.o" "Salazar_RigRN.phl[208]";
connectAttr "LeftFingers_Control_scaleY.o" "Salazar_RigRN.phl[209]";
connectAttr "LeftFingers_Control_scaleZ.o" "Salazar_RigRN.phl[210]";
connectAttr "LeftHandAttach_Control_translateX.o" "Salazar_RigRN.phl[211]";
connectAttr "LeftHandAttach_Control_translateY.o" "Salazar_RigRN.phl[212]";
connectAttr "LeftHandAttach_Control_translateZ.o" "Salazar_RigRN.phl[213]";
connectAttr "LeftHandAttach_Control_rotateX.o" "Salazar_RigRN.phl[214]";
connectAttr "LeftHandAttach_Control_rotateY.o" "Salazar_RigRN.phl[215]";
connectAttr "LeftHandAttach_Control_rotateZ.o" "Salazar_RigRN.phl[216]";
connectAttr "LeftHandAttach_Control_scaleX.o" "Salazar_RigRN.phl[217]";
connectAttr "LeftHandAttach_Control_scaleY.o" "Salazar_RigRN.phl[218]";
connectAttr "LeftHandAttach_Control_scaleZ.o" "Salazar_RigRN.phl[219]";
connectAttr "LeftHandAttach_Control_visibility.o" "Salazar_RigRN.phl[220]";
connectAttr "RightHand_Control_rotateX.o" "Salazar_RigRN.phl[221]";
connectAttr "RightHand_Control_rotateY.o" "Salazar_RigRN.phl[222]";
connectAttr "RightHand_Control_rotateZ.o" "Salazar_RigRN.phl[223]";
connectAttr "RightHand_Control_translateX.o" "Salazar_RigRN.phl[224]";
connectAttr "RightHand_Control_translateY.o" "Salazar_RigRN.phl[225]";
connectAttr "RightHand_Control_translateZ.o" "Salazar_RigRN.phl[226]";
connectAttr "RightHand_Control_visibility.o" "Salazar_RigRN.phl[227]";
connectAttr "RightHand_Control_scaleX.o" "Salazar_RigRN.phl[228]";
connectAttr "RightHand_Control_scaleY.o" "Salazar_RigRN.phl[229]";
connectAttr "RightHand_Control_scaleZ.o" "Salazar_RigRN.phl[230]";
connectAttr "RightFingers_Control_RightFingers.o" "Salazar_RigRN.phl[231]";
connectAttr "RightFingers_Control_RightPointer.o" "Salazar_RigRN.phl[232]";
connectAttr "RightFingers_Control_RightThumb.o" "Salazar_RigRN.phl[233]";
connectAttr "RightFingers_Control_translateX.o" "Salazar_RigRN.phl[234]";
connectAttr "RightFingers_Control_translateY.o" "Salazar_RigRN.phl[235]";
connectAttr "RightFingers_Control_translateZ.o" "Salazar_RigRN.phl[236]";
connectAttr "RightFingers_Control_rotateX.o" "Salazar_RigRN.phl[237]";
connectAttr "RightFingers_Control_rotateY.o" "Salazar_RigRN.phl[238]";
connectAttr "RightFingers_Control_rotateZ.o" "Salazar_RigRN.phl[239]";
connectAttr "RightFingers_Control_visibility.o" "Salazar_RigRN.phl[240]";
connectAttr "RightFingers_Control_scaleX.o" "Salazar_RigRN.phl[241]";
connectAttr "RightFingers_Control_scaleY.o" "Salazar_RigRN.phl[242]";
connectAttr "RightFingers_Control_scaleZ.o" "Salazar_RigRN.phl[243]";
connectAttr "RightHandAttach_Control_translateX.o" "Salazar_RigRN.phl[244]";
connectAttr "RightHandAttach_Control_translateY.o" "Salazar_RigRN.phl[245]";
connectAttr "RightHandAttach_Control_translateZ.o" "Salazar_RigRN.phl[246]";
connectAttr "RightHandAttach_Control_rotateX.o" "Salazar_RigRN.phl[247]";
connectAttr "RightHandAttach_Control_rotateY.o" "Salazar_RigRN.phl[248]";
connectAttr "RightHandAttach_Control_rotateZ.o" "Salazar_RigRN.phl[249]";
connectAttr "RightHandAttach_Control_scaleX.o" "Salazar_RigRN.phl[250]";
connectAttr "RightHandAttach_Control_scaleY.o" "Salazar_RigRN.phl[251]";
connectAttr "RightHandAttach_Control_scaleZ.o" "Salazar_RigRN.phl[252]";
connectAttr "RightHandAttach_Control_visibility.o" "Salazar_RigRN.phl[253]";
connectAttr "LeftElbow_Control_translateX.o" "Salazar_RigRN.phl[254]";
connectAttr "LeftElbow_Control_translateY.o" "Salazar_RigRN.phl[255]";
connectAttr "LeftElbow_Control_translateZ.o" "Salazar_RigRN.phl[256]";
connectAttr "LeftElbow_Control_visibility.o" "Salazar_RigRN.phl[257]";
connectAttr "LeftElbow_Control_rotateX.o" "Salazar_RigRN.phl[258]";
connectAttr "LeftElbow_Control_rotateY.o" "Salazar_RigRN.phl[259]";
connectAttr "LeftElbow_Control_rotateZ.o" "Salazar_RigRN.phl[260]";
connectAttr "LeftElbow_Control_scaleX.o" "Salazar_RigRN.phl[261]";
connectAttr "LeftElbow_Control_scaleY.o" "Salazar_RigRN.phl[262]";
connectAttr "LeftElbow_Control_scaleZ.o" "Salazar_RigRN.phl[263]";
connectAttr "RightElbow_Control_translateX.o" "Salazar_RigRN.phl[264]";
connectAttr "RightElbow_Control_translateY.o" "Salazar_RigRN.phl[265]";
connectAttr "RightElbow_Control_translateZ.o" "Salazar_RigRN.phl[266]";
connectAttr "RightElbow_Control_visibility.o" "Salazar_RigRN.phl[267]";
connectAttr "RightElbow_Control_rotateX.o" "Salazar_RigRN.phl[268]";
connectAttr "RightElbow_Control_rotateY.o" "Salazar_RigRN.phl[269]";
connectAttr "RightElbow_Control_rotateZ.o" "Salazar_RigRN.phl[270]";
connectAttr "RightElbow_Control_scaleX.o" "Salazar_RigRN.phl[271]";
connectAttr "RightElbow_Control_scaleY.o" "Salazar_RigRN.phl[272]";
connectAttr "RightElbow_Control_scaleZ.o" "Salazar_RigRN.phl[273]";
connectAttr "LeftBackAttach_Control_translateX.o" "Salazar_RigRN.phl[274]";
connectAttr "LeftBackAttach_Control_translateY.o" "Salazar_RigRN.phl[275]";
connectAttr "LeftBackAttach_Control_translateZ.o" "Salazar_RigRN.phl[276]";
connectAttr "LeftBackAttach_Control_rotateX.o" "Salazar_RigRN.phl[277]";
connectAttr "LeftBackAttach_Control_rotateY.o" "Salazar_RigRN.phl[278]";
connectAttr "LeftBackAttach_Control_rotateZ.o" "Salazar_RigRN.phl[279]";
connectAttr "LeftBackAttach_Control_scaleX.o" "Salazar_RigRN.phl[280]";
connectAttr "LeftBackAttach_Control_scaleY.o" "Salazar_RigRN.phl[281]";
connectAttr "LeftBackAttach_Control_scaleZ.o" "Salazar_RigRN.phl[282]";
connectAttr "LeftBackAttach_Control_visibility.o" "Salazar_RigRN.phl[283]";
connectAttr "RightBackAttach_Control_translateX.o" "Salazar_RigRN.phl[284]";
connectAttr "RightBackAttach_Control_translateY.o" "Salazar_RigRN.phl[285]";
connectAttr "RightBackAttach_Control_translateZ.o" "Salazar_RigRN.phl[286]";
connectAttr "RightBackAttach_Control_rotateX.o" "Salazar_RigRN.phl[287]";
connectAttr "RightBackAttach_Control_rotateY.o" "Salazar_RigRN.phl[288]";
connectAttr "RightBackAttach_Control_rotateZ.o" "Salazar_RigRN.phl[289]";
connectAttr "RightBackAttach_Control_scaleX.o" "Salazar_RigRN.phl[290]";
connectAttr "RightBackAttach_Control_scaleY.o" "Salazar_RigRN.phl[291]";
connectAttr "RightBackAttach_Control_scaleZ.o" "Salazar_RigRN.phl[292]";
connectAttr "RightBackAttach_Control_visibility.o" "Salazar_RigRN.phl[293]";
connectAttr "CenterBackAttach_Control_translateX.o" "Salazar_RigRN.phl[294]";
connectAttr "CenterBackAttach_Control_translateY.o" "Salazar_RigRN.phl[295]";
connectAttr "CenterBackAttach_Control_translateZ.o" "Salazar_RigRN.phl[296]";
connectAttr "CenterBackAttach_Control_rotateX.o" "Salazar_RigRN.phl[297]";
connectAttr "CenterBackAttach_Control_rotateY.o" "Salazar_RigRN.phl[298]";
connectAttr "CenterBackAttach_Control_rotateZ.o" "Salazar_RigRN.phl[299]";
connectAttr "CenterBackAttach_Control_scaleX.o" "Salazar_RigRN.phl[300]";
connectAttr "CenterBackAttach_Control_scaleY.o" "Salazar_RigRN.phl[301]";
connectAttr "CenterBackAttach_Control_scaleZ.o" "Salazar_RigRN.phl[302]";
connectAttr "CenterBackAttach_Control_visibility.o" "Salazar_RigRN.phl[303]";
connectAttr "LeftHip_Control_translateX.o" "Salazar_RigRN.phl[304]";
connectAttr "LeftHip_Control_translateY.o" "Salazar_RigRN.phl[305]";
connectAttr "LeftHip_Control_translateZ.o" "Salazar_RigRN.phl[306]";
connectAttr "LeftHip_Control_rotateX.o" "Salazar_RigRN.phl[307]";
connectAttr "LeftHip_Control_rotateY.o" "Salazar_RigRN.phl[308]";
connectAttr "LeftHip_Control_rotateZ.o" "Salazar_RigRN.phl[309]";
connectAttr "LeftHip_Control_visibility.o" "Salazar_RigRN.phl[310]";
connectAttr "LeftHip_Control_scaleX.o" "Salazar_RigRN.phl[311]";
connectAttr "LeftHip_Control_scaleY.o" "Salazar_RigRN.phl[312]";
connectAttr "LeftHip_Control_scaleZ.o" "Salazar_RigRN.phl[313]";
connectAttr "RightHips_Control_translateX.o" "Salazar_RigRN.phl[314]";
connectAttr "RightHips_Control_translateY.o" "Salazar_RigRN.phl[315]";
connectAttr "RightHips_Control_translateZ.o" "Salazar_RigRN.phl[316]";
connectAttr "RightHips_Control_visibility.o" "Salazar_RigRN.phl[317]";
connectAttr "RightHips_Control_rotateX.o" "Salazar_RigRN.phl[318]";
connectAttr "RightHips_Control_rotateY.o" "Salazar_RigRN.phl[319]";
connectAttr "RightHips_Control_rotateZ.o" "Salazar_RigRN.phl[320]";
connectAttr "RightHips_Control_scaleX.o" "Salazar_RigRN.phl[321]";
connectAttr "RightHips_Control_scaleY.o" "Salazar_RigRN.phl[322]";
connectAttr "RightHips_Control_scaleZ.o" "Salazar_RigRN.phl[323]";
connectAttr "Hips_translateX.o" "mixamorig:Hips.tx";
connectAttr "Hips_translateY.o" "mixamorig:Hips.ty";
connectAttr "Hips_translateZ.o" "mixamorig:Hips.tz";
connectAttr "Hips_rotateX.o" "mixamorig:Hips.rx";
connectAttr "Hips_rotateY.o" "mixamorig:Hips.ry";
connectAttr "Hips_rotateZ.o" "mixamorig:Hips.rz";
connectAttr "mixamorig:Hips.s" "mixamorig:Spine.is";
connectAttr "Spine_rotateX.o" "mixamorig:Spine.rx";
connectAttr "Spine_rotateY.o" "mixamorig:Spine.ry";
connectAttr "Spine_rotateZ.o" "mixamorig:Spine.rz";
connectAttr "mixamorig:Spine.s" "mixamorig:Spine1.is";
connectAttr "Spine1_rotateX.o" "mixamorig:Spine1.rx";
connectAttr "Spine1_rotateY.o" "mixamorig:Spine1.ry";
connectAttr "Spine1_rotateZ.o" "mixamorig:Spine1.rz";
connectAttr "mixamorig:Spine1.s" "mixamorig:Spine2.is";
connectAttr "Spine2_rotateX.o" "mixamorig:Spine2.rx";
connectAttr "Spine2_rotateY.o" "mixamorig:Spine2.ry";
connectAttr "Spine2_rotateZ.o" "mixamorig:Spine2.rz";
connectAttr "mixamorig:Spine2.s" "mixamorig:Neck.is";
connectAttr "Neck_rotateX.o" "mixamorig:Neck.rx";
connectAttr "Neck_rotateY.o" "mixamorig:Neck.ry";
connectAttr "Neck_rotateZ.o" "mixamorig:Neck.rz";
connectAttr "mixamorig:Neck.s" "mixamorig:Head.is";
connectAttr "Head_rotateX.o" "mixamorig:Head.rx";
connectAttr "Head_rotateY.o" "mixamorig:Head.ry";
connectAttr "Head_rotateZ.o" "mixamorig:Head.rz";
connectAttr "mixamorig:Head.s" "mixamorig:HeadTop_End.is";
connectAttr "mixamorig:Spine2.s" "mixamorig:LeftShoulder.is";
connectAttr "LeftShoulder_rotateX.o" "mixamorig:LeftShoulder.rx";
connectAttr "LeftShoulder_rotateY.o" "mixamorig:LeftShoulder.ry";
connectAttr "LeftShoulder_rotateZ.o" "mixamorig:LeftShoulder.rz";
connectAttr "mixamorig:LeftShoulder.s" "mixamorig:LeftArm.is";
connectAttr "LeftArm_rotateX.o" "mixamorig:LeftArm.rx";
connectAttr "LeftArm_rotateY.o" "mixamorig:LeftArm.ry";
connectAttr "LeftArm_rotateZ.o" "mixamorig:LeftArm.rz";
connectAttr "mixamorig:LeftArm.s" "mixamorig:LeftForeArm.is";
connectAttr "LeftForeArm_rotateX.o" "mixamorig:LeftForeArm.rx";
connectAttr "LeftForeArm_rotateY.o" "mixamorig:LeftForeArm.ry";
connectAttr "LeftForeArm_rotateZ.o" "mixamorig:LeftForeArm.rz";
connectAttr "mixamorig:LeftForeArm.s" "mixamorig:LeftHand.is";
connectAttr "LeftHand_rotateX.o" "mixamorig:LeftHand.rx";
connectAttr "LeftHand_rotateY.o" "mixamorig:LeftHand.ry";
connectAttr "LeftHand_rotateZ.o" "mixamorig:LeftHand.rz";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandThumb1.is";
connectAttr "LeftHandThumb1_rotateX.o" "mixamorig:LeftHandThumb1.rx";
connectAttr "LeftHandThumb1_rotateY.o" "mixamorig:LeftHandThumb1.ry";
connectAttr "LeftHandThumb1_rotateZ.o" "mixamorig:LeftHandThumb1.rz";
connectAttr "mixamorig:LeftHandThumb1.s" "mixamorig:LeftHandThumb2.is";
connectAttr "LeftHandThumb2_rotateX.o" "mixamorig:LeftHandThumb2.rx";
connectAttr "LeftHandThumb2_rotateY.o" "mixamorig:LeftHandThumb2.ry";
connectAttr "LeftHandThumb2_rotateZ.o" "mixamorig:LeftHandThumb2.rz";
connectAttr "mixamorig:LeftHandThumb2.s" "mixamorig:LeftHandThumb3.is";
connectAttr "LeftHandThumb3_rotateX.o" "mixamorig:LeftHandThumb3.rx";
connectAttr "LeftHandThumb3_rotateY.o" "mixamorig:LeftHandThumb3.ry";
connectAttr "LeftHandThumb3_rotateZ.o" "mixamorig:LeftHandThumb3.rz";
connectAttr "mixamorig:LeftHandThumb3.s" "mixamorig:LeftHandThumb4.is";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandIndex1.is";
connectAttr "LeftHandIndex1_rotateX.o" "mixamorig:LeftHandIndex1.rx";
connectAttr "LeftHandIndex1_rotateY.o" "mixamorig:LeftHandIndex1.ry";
connectAttr "LeftHandIndex1_rotateZ.o" "mixamorig:LeftHandIndex1.rz";
connectAttr "mixamorig:LeftHandIndex1.s" "mixamorig:LeftHandIndex2.is";
connectAttr "LeftHandIndex2_rotateX.o" "mixamorig:LeftHandIndex2.rx";
connectAttr "LeftHandIndex2_rotateY.o" "mixamorig:LeftHandIndex2.ry";
connectAttr "LeftHandIndex2_rotateZ.o" "mixamorig:LeftHandIndex2.rz";
connectAttr "mixamorig:LeftHandIndex2.s" "mixamorig:LeftHandIndex3.is";
connectAttr "LeftHandIndex3_rotateX.o" "mixamorig:LeftHandIndex3.rx";
connectAttr "LeftHandIndex3_rotateY.o" "mixamorig:LeftHandIndex3.ry";
connectAttr "LeftHandIndex3_rotateZ.o" "mixamorig:LeftHandIndex3.rz";
connectAttr "mixamorig:LeftHandIndex3.s" "mixamorig:LeftHandIndex4.is";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandMiddle1.is";
connectAttr "LeftHandMiddle1_rotateX.o" "mixamorig:LeftHandMiddle1.rx";
connectAttr "LeftHandMiddle1_rotateY.o" "mixamorig:LeftHandMiddle1.ry";
connectAttr "LeftHandMiddle1_rotateZ.o" "mixamorig:LeftHandMiddle1.rz";
connectAttr "mixamorig:LeftHandMiddle1.s" "mixamorig:LeftHandMiddle2.is";
connectAttr "LeftHandMiddle2_rotateX.o" "mixamorig:LeftHandMiddle2.rx";
connectAttr "LeftHandMiddle2_rotateY.o" "mixamorig:LeftHandMiddle2.ry";
connectAttr "LeftHandMiddle2_rotateZ.o" "mixamorig:LeftHandMiddle2.rz";
connectAttr "mixamorig:LeftHandMiddle2.s" "mixamorig:LeftHandMiddle3.is";
connectAttr "LeftHandMiddle3_rotateX.o" "mixamorig:LeftHandMiddle3.rx";
connectAttr "LeftHandMiddle3_rotateY.o" "mixamorig:LeftHandMiddle3.ry";
connectAttr "LeftHandMiddle3_rotateZ.o" "mixamorig:LeftHandMiddle3.rz";
connectAttr "mixamorig:LeftHandMiddle3.s" "mixamorig:LeftHandMiddle4.is";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandRing1.is";
connectAttr "LeftHandRing1_rotateX.o" "mixamorig:LeftHandRing1.rx";
connectAttr "LeftHandRing1_rotateY.o" "mixamorig:LeftHandRing1.ry";
connectAttr "LeftHandRing1_rotateZ.o" "mixamorig:LeftHandRing1.rz";
connectAttr "mixamorig:LeftHandRing1.s" "mixamorig:LeftHandRing2.is";
connectAttr "LeftHandRing2_rotateX.o" "mixamorig:LeftHandRing2.rx";
connectAttr "LeftHandRing2_rotateY.o" "mixamorig:LeftHandRing2.ry";
connectAttr "LeftHandRing2_rotateZ.o" "mixamorig:LeftHandRing2.rz";
connectAttr "mixamorig:LeftHandRing2.s" "mixamorig:LeftHandRing3.is";
connectAttr "LeftHandRing3_rotateX.o" "mixamorig:LeftHandRing3.rx";
connectAttr "LeftHandRing3_rotateY.o" "mixamorig:LeftHandRing3.ry";
connectAttr "LeftHandRing3_rotateZ.o" "mixamorig:LeftHandRing3.rz";
connectAttr "mixamorig:LeftHandRing3.s" "mixamorig:LeftHandRing4.is";
connectAttr "mixamorig:LeftHand.s" "mixamorig:LeftHandPinky1.is";
connectAttr "LeftHandPinky1_rotateX.o" "mixamorig:LeftHandPinky1.rx";
connectAttr "LeftHandPinky1_rotateY.o" "mixamorig:LeftHandPinky1.ry";
connectAttr "LeftHandPinky1_rotateZ.o" "mixamorig:LeftHandPinky1.rz";
connectAttr "mixamorig:LeftHandPinky1.s" "mixamorig:LeftHandPinky2.is";
connectAttr "LeftHandPinky2_rotateX.o" "mixamorig:LeftHandPinky2.rx";
connectAttr "LeftHandPinky2_rotateY.o" "mixamorig:LeftHandPinky2.ry";
connectAttr "LeftHandPinky2_rotateZ.o" "mixamorig:LeftHandPinky2.rz";
connectAttr "mixamorig:LeftHandPinky2.s" "mixamorig:LeftHandPinky3.is";
connectAttr "LeftHandPinky3_rotateX.o" "mixamorig:LeftHandPinky3.rx";
connectAttr "LeftHandPinky3_rotateY.o" "mixamorig:LeftHandPinky3.ry";
connectAttr "LeftHandPinky3_rotateZ.o" "mixamorig:LeftHandPinky3.rz";
connectAttr "mixamorig:LeftHandPinky3.s" "mixamorig:LeftHandPinky4.is";
connectAttr "mixamorig:Spine2.s" "mixamorig:RightShoulder.is";
connectAttr "RightShoulder_rotateX.o" "mixamorig:RightShoulder.rx";
connectAttr "RightShoulder_rotateY.o" "mixamorig:RightShoulder.ry";
connectAttr "RightShoulder_rotateZ.o" "mixamorig:RightShoulder.rz";
connectAttr "mixamorig:RightShoulder.s" "mixamorig:RightArm.is";
connectAttr "RightArm_rotateX.o" "mixamorig:RightArm.rx";
connectAttr "RightArm_rotateY.o" "mixamorig:RightArm.ry";
connectAttr "RightArm_rotateZ.o" "mixamorig:RightArm.rz";
connectAttr "mixamorig:RightArm.s" "mixamorig:RightForeArm.is";
connectAttr "RightForeArm_rotateX.o" "mixamorig:RightForeArm.rx";
connectAttr "RightForeArm_rotateY.o" "mixamorig:RightForeArm.ry";
connectAttr "RightForeArm_rotateZ.o" "mixamorig:RightForeArm.rz";
connectAttr "mixamorig:RightForeArm.s" "mixamorig:RightHand.is";
connectAttr "RightHand_rotateX.o" "mixamorig:RightHand.rx";
connectAttr "RightHand_rotateY.o" "mixamorig:RightHand.ry";
connectAttr "RightHand_rotateZ.o" "mixamorig:RightHand.rz";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandThumb1.is";
connectAttr "RightHandThumb1_rotateX.o" "mixamorig:RightHandThumb1.rx";
connectAttr "RightHandThumb1_rotateY.o" "mixamorig:RightHandThumb1.ry";
connectAttr "RightHandThumb1_rotateZ.o" "mixamorig:RightHandThumb1.rz";
connectAttr "mixamorig:RightHandThumb1.s" "mixamorig:RightHandThumb2.is";
connectAttr "RightHandThumb2_rotateX.o" "mixamorig:RightHandThumb2.rx";
connectAttr "RightHandThumb2_rotateY.o" "mixamorig:RightHandThumb2.ry";
connectAttr "RightHandThumb2_rotateZ.o" "mixamorig:RightHandThumb2.rz";
connectAttr "mixamorig:RightHandThumb2.s" "mixamorig:RightHandThumb3.is";
connectAttr "RightHandThumb3_rotateX.o" "mixamorig:RightHandThumb3.rx";
connectAttr "RightHandThumb3_rotateY.o" "mixamorig:RightHandThumb3.ry";
connectAttr "RightHandThumb3_rotateZ.o" "mixamorig:RightHandThumb3.rz";
connectAttr "mixamorig:RightHandThumb3.s" "mixamorig:RightHandThumb4.is";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandIndex1.is";
connectAttr "RightHandIndex1_rotateX.o" "mixamorig:RightHandIndex1.rx";
connectAttr "RightHandIndex1_rotateY.o" "mixamorig:RightHandIndex1.ry";
connectAttr "RightHandIndex1_rotateZ.o" "mixamorig:RightHandIndex1.rz";
connectAttr "mixamorig:RightHandIndex1.s" "mixamorig:RightHandIndex2.is";
connectAttr "RightHandIndex2_rotateX.o" "mixamorig:RightHandIndex2.rx";
connectAttr "RightHandIndex2_rotateY.o" "mixamorig:RightHandIndex2.ry";
connectAttr "RightHandIndex2_rotateZ.o" "mixamorig:RightHandIndex2.rz";
connectAttr "mixamorig:RightHandIndex2.s" "mixamorig:RightHandIndex3.is";
connectAttr "RightHandIndex3_rotateX.o" "mixamorig:RightHandIndex3.rx";
connectAttr "RightHandIndex3_rotateY.o" "mixamorig:RightHandIndex3.ry";
connectAttr "RightHandIndex3_rotateZ.o" "mixamorig:RightHandIndex3.rz";
connectAttr "mixamorig:RightHandIndex3.s" "mixamorig:RightHandIndex4.is";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandMiddle1.is";
connectAttr "RightHandMiddle1_rotateX.o" "mixamorig:RightHandMiddle1.rx";
connectAttr "RightHandMiddle1_rotateY.o" "mixamorig:RightHandMiddle1.ry";
connectAttr "RightHandMiddle1_rotateZ.o" "mixamorig:RightHandMiddle1.rz";
connectAttr "mixamorig:RightHandMiddle1.s" "mixamorig:RightHandMiddle2.is";
connectAttr "RightHandMiddle2_rotateX.o" "mixamorig:RightHandMiddle2.rx";
connectAttr "RightHandMiddle2_rotateY.o" "mixamorig:RightHandMiddle2.ry";
connectAttr "RightHandMiddle2_rotateZ.o" "mixamorig:RightHandMiddle2.rz";
connectAttr "mixamorig:RightHandMiddle2.s" "mixamorig:RightHandMiddle3.is";
connectAttr "RightHandMiddle3_rotateX.o" "mixamorig:RightHandMiddle3.rx";
connectAttr "RightHandMiddle3_rotateY.o" "mixamorig:RightHandMiddle3.ry";
connectAttr "RightHandMiddle3_rotateZ.o" "mixamorig:RightHandMiddle3.rz";
connectAttr "mixamorig:RightHandMiddle3.s" "mixamorig:RightHandMiddle4.is";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandRing1.is";
connectAttr "RightHandRing1_rotateX.o" "mixamorig:RightHandRing1.rx";
connectAttr "RightHandRing1_rotateY.o" "mixamorig:RightHandRing1.ry";
connectAttr "RightHandRing1_rotateZ.o" "mixamorig:RightHandRing1.rz";
connectAttr "mixamorig:RightHandRing1.s" "mixamorig:RightHandRing2.is";
connectAttr "RightHandRing2_rotateX.o" "mixamorig:RightHandRing2.rx";
connectAttr "RightHandRing2_rotateY.o" "mixamorig:RightHandRing2.ry";
connectAttr "RightHandRing2_rotateZ.o" "mixamorig:RightHandRing2.rz";
connectAttr "mixamorig:RightHandRing2.s" "mixamorig:RightHandRing3.is";
connectAttr "RightHandRing3_rotateX.o" "mixamorig:RightHandRing3.rx";
connectAttr "RightHandRing3_rotateY.o" "mixamorig:RightHandRing3.ry";
connectAttr "RightHandRing3_rotateZ.o" "mixamorig:RightHandRing3.rz";
connectAttr "mixamorig:RightHandRing3.s" "mixamorig:RightHandRing4.is";
connectAttr "mixamorig:RightHand.s" "mixamorig:RightHandPinky1.is";
connectAttr "RightHandPinky1_rotateX.o" "mixamorig:RightHandPinky1.rx";
connectAttr "RightHandPinky1_rotateY.o" "mixamorig:RightHandPinky1.ry";
connectAttr "RightHandPinky1_rotateZ.o" "mixamorig:RightHandPinky1.rz";
connectAttr "mixamorig:RightHandPinky1.s" "mixamorig:RightHandPinky2.is";
connectAttr "RightHandPinky2_rotateX.o" "mixamorig:RightHandPinky2.rx";
connectAttr "RightHandPinky2_rotateY.o" "mixamorig:RightHandPinky2.ry";
connectAttr "RightHandPinky2_rotateZ.o" "mixamorig:RightHandPinky2.rz";
connectAttr "mixamorig:RightHandPinky2.s" "mixamorig:RightHandPinky3.is";
connectAttr "RightHandPinky3_rotateX.o" "mixamorig:RightHandPinky3.rx";
connectAttr "RightHandPinky3_rotateY.o" "mixamorig:RightHandPinky3.ry";
connectAttr "RightHandPinky3_rotateZ.o" "mixamorig:RightHandPinky3.rz";
connectAttr "mixamorig:RightHandPinky3.s" "mixamorig:RightHandPinky4.is";
connectAttr "mixamorig:Hips.s" "mixamorig:LeftUpLeg.is";
connectAttr "LeftUpLeg_rotateX.o" "mixamorig:LeftUpLeg.rx";
connectAttr "LeftUpLeg_rotateY.o" "mixamorig:LeftUpLeg.ry";
connectAttr "LeftUpLeg_rotateZ.o" "mixamorig:LeftUpLeg.rz";
connectAttr "mixamorig:LeftUpLeg.s" "mixamorig:LeftLeg.is";
connectAttr "LeftLeg_rotateX.o" "mixamorig:LeftLeg.rx";
connectAttr "LeftLeg_rotateY.o" "mixamorig:LeftLeg.ry";
connectAttr "LeftLeg_rotateZ.o" "mixamorig:LeftLeg.rz";
connectAttr "mixamorig:LeftLeg.s" "mixamorig:LeftFoot.is";
connectAttr "LeftFoot_rotateX.o" "mixamorig:LeftFoot.rx";
connectAttr "LeftFoot_rotateY.o" "mixamorig:LeftFoot.ry";
connectAttr "LeftFoot_rotateZ.o" "mixamorig:LeftFoot.rz";
connectAttr "mixamorig:LeftFoot.s" "mixamorig:LeftToeBase.is";
connectAttr "LeftToeBase_rotateX.o" "mixamorig:LeftToeBase.rx";
connectAttr "LeftToeBase_rotateY.o" "mixamorig:LeftToeBase.ry";
connectAttr "LeftToeBase_rotateZ.o" "mixamorig:LeftToeBase.rz";
connectAttr "mixamorig:LeftToeBase.s" "mixamorig:LeftToe_End.is";
connectAttr "mixamorig:Hips.s" "mixamorig:RightUpLeg.is";
connectAttr "RightUpLeg_rotateX.o" "mixamorig:RightUpLeg.rx";
connectAttr "RightUpLeg_rotateY.o" "mixamorig:RightUpLeg.ry";
connectAttr "RightUpLeg_rotateZ.o" "mixamorig:RightUpLeg.rz";
connectAttr "mixamorig:RightUpLeg.s" "mixamorig:RightLeg.is";
connectAttr "RightLeg_rotateX.o" "mixamorig:RightLeg.rx";
connectAttr "RightLeg_rotateY.o" "mixamorig:RightLeg.ry";
connectAttr "RightLeg_rotateZ.o" "mixamorig:RightLeg.rz";
connectAttr "mixamorig:RightLeg.s" "mixamorig:RightFoot.is";
connectAttr "RightFoot_rotateX.o" "mixamorig:RightFoot.rx";
connectAttr "RightFoot_rotateY.o" "mixamorig:RightFoot.ry";
connectAttr "RightFoot_rotateZ.o" "mixamorig:RightFoot.rz";
connectAttr "mixamorig:RightFoot.s" "mixamorig:RightToeBase.is";
connectAttr "RightToeBase_rotateX.o" "mixamorig:RightToeBase.rx";
connectAttr "RightToeBase_rotateY.o" "mixamorig:RightToeBase.ry";
connectAttr "RightToeBase_rotateZ.o" "mixamorig:RightToeBase.rz";
connectAttr "mixamorig:RightToeBase.s" "mixamorig:RightToe_End.is";
connectAttr "AssaultRifle_parentConstraint1.w0" "AssaultRifle_parentConstraint1.tg[0].tw"
		;
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "AssaultRifleRNfosterParent1.msg" "AssaultRifleRN.fp";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of Salazar_Movement.ma
