//Maya ASCII 2018 scene
//Name: Salazar_Idle.ma
//Last modified: Sun, Nov 11, 2018 03:08:52 PM
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
fileInfo "osv" "Mac OS X 10.14";
createNode transform -s -n "persp";
	rename -uid "A0F1BC2F-D245-1806-5750-298B0E5B870A";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -48.00095634269465 237.26755300997968 -393.58052575483674 ;
	setAttr ".r" -type "double3" -20.105266384381512 -170.20000000000022 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "8B1630FC-3E40-AB7C-A836-4DBA926BDBE7";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 411.57574301021629;
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
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "CFA3CFF8-8D42-DB7B-0524-17871A5B62E3";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "9A951E55-FD49-BF25-3838-FE8396DD16E3";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "6E413B63-BA46-094E-7484-21ADEBF375F8";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode fosterParent -n "AssaultRifleRNfosterParent1";
	rename -uid "089AD05B-FE43-4E41-3AA8-4B824D3E239E";
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
	setAttr ".lr" -type "double3" 14.23638955018923 65.514247551331636 -6.9098111108931102 ;
	setAttr ".rst" -type "double3" -83.267800538888125 115.47710013837683 7.4111288033754796 ;
	setAttr ".rsrr" -type "double3" 80 1.4739287956515491e-06 -59.999999999999993 ;
	setAttr -k on ".w0";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "DC4C0B6D-994D-77F6-F326-358426A4E64D";
	setAttr -s 4 ".lnk";
	setAttr -s 4 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "05069B40-094D-1800-397E-6FBA7CFFF9F5";
createNode displayLayer -n "defaultLayer";
	rename -uid "D9B4E111-4549-6E85-762D-ACB4132E2884";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "BA12B805-9F44-47BC-2009-FE99B0375888";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "4F6E76A4-E14A-AC0B-8BFA-66B2BDF624B9";
	setAttr ".g" yes;
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "5EB62A59-9A4F-63BB-A200-DFB8E210A0F5";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "1CB98A7C-DA40-710B-19A4-A4A37317E3C2";
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
		"Salazar_RigRN" 335
		2 "|Salazar_Rig:Salazar|Salazar_Rig:Salazar_Geo|Salazar_Rig:Salazar_GeoShape" 
		"visibility" " -k 0 1"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translate" " -type \"double3\" 0.58115860685388321 -6.76055162109475383 0.01757901489399466"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control" 
		"translateZ" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotate" " -type \"double3\" 5.62176726036186114 21.57579650339580013 -0.26445358365074562"
		
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotateX" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
		"rotateY" " -av"
		2 "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:Neck_Control|Salazar_Rig:Head_Control" 
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
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.visibility" 
		"Salazar_RigRN.placeHolderList[234]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateX" 
		"Salazar_RigRN.placeHolderList[235]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateY" 
		"Salazar_RigRN.placeHolderList[236]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[237]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[238]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[239]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:Spine1_Control|Salazar_Rig:Spine2_Control|Salazar_Rig:RightHand_Control|Salazar_Rig:RightFingers_Control.rotateZ" 
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
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.visibility" 
		"Salazar_RigRN.placeHolderList[304]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateX" 
		"Salazar_RigRN.placeHolderList[305]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateY" 
		"Salazar_RigRN.placeHolderList[306]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.translateZ" 
		"Salazar_RigRN.placeHolderList[307]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateX" 
		"Salazar_RigRN.placeHolderList[308]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateY" 
		"Salazar_RigRN.placeHolderList[309]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.rotateZ" 
		"Salazar_RigRN.placeHolderList[310]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleX" 
		"Salazar_RigRN.placeHolderList[311]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleY" 
		"Salazar_RigRN.placeHolderList[312]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:LeftHip_Control.scaleZ" 
		"Salazar_RigRN.placeHolderList[313]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.visibility" 
		"Salazar_RigRN.placeHolderList[314]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateX" 
		"Salazar_RigRN.placeHolderList[315]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateY" 
		"Salazar_RigRN.placeHolderList[316]" ""
		5 4 "Salazar_RigRN" "|Salazar_Rig:ControlGroup|Salazar_Rig:Root_Control|Salazar_Rig:RootMotion_Control|Salazar_Rig:Hips_Control|Salazar_Rig:RightHips_Control.translateZ" 
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
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 0\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 908\n            -height 706\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n"
		+ "            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n"
		+ "            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n"
		+ "            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n"
		+ "                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n"
		+ "                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 0\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n"
		+ "                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n"
		+ "                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n"
		+ "                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n"
		+ "                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n"
		+ "                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -highlightConnections 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n"
		+ "                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 908\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 0\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 908\\n    -height 706\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 20 -size 100 -divisions 1 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "C59C9BD8-9449-4BDC-6489-808960E4478C";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode animCurveTU -n "LeftElbow_Control_visibility";
	rename -uid "39D668CF-7C4D-C7E3-678C-739D1BB13476";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftElbow_Control_translateX";
	rename -uid "702F0ABC-9B4C-DE60-DE01-ACB6DDC9A24C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -10.525599783759894 120 -10.525599783759894;
createNode animCurveTL -n "LeftElbow_Control_translateY";
	rename -uid "9D1B93EE-6B41-0C30-2D36-0AAC35EBEBB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.15867867449458442 120 0.15867867449458442;
createNode animCurveTL -n "LeftElbow_Control_translateZ";
	rename -uid "77E72813-1743-0F42-1EC4-059F101DCE10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 2.2913247298743347 120 2.2913247298743347;
createNode animCurveTA -n "LeftElbow_Control_rotateX";
	rename -uid "1552235E-AF46-CB7B-4B0A-618037EC4E3B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftElbow_Control_rotateY";
	rename -uid "40EA30C7-3E45-56B6-0FF6-1E9970C24AB9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftElbow_Control_rotateZ";
	rename -uid "D5A723B5-2B46-E246-DF6E-B0BB20A21D69";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftElbow_Control_scaleX";
	rename -uid "C6D3E421-4B40-67B7-160B-ECACDCB44556";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftElbow_Control_scaleY";
	rename -uid "EC6FC856-AE4F-BDED-5B09-3F917BC2129E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftElbow_Control_scaleZ";
	rename -uid "1A17053F-3941-33DB-563C-039ABC471019";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_visibility";
	rename -uid "7AD9728F-C84E-3C8E-A85D-FF827E5DFA58";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightHandAttach_Control_translateX";
	rename -uid "FCE7D668-E249-2D32-B58B-18916C20E2FC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightHandAttach_Control_translateY";
	rename -uid "27E2DC67-8C40-61F8-E7C0-90BA3A407A00";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightHandAttach_Control_translateZ";
	rename -uid "3BF62819-8042-82E3-3B7B-029677F95ABF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateX";
	rename -uid "E0DA1925-A240-FF40-3627-F4BD038A63BB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateY";
	rename -uid "008BA45C-7142-4A3B-B2D5-078104418FA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHandAttach_Control_rotateZ";
	rename -uid "950B2E39-EE4F-544E-AE00-62B65D803E9C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightHandAttach_Control_scaleX";
	rename -uid "30AE720B-A64D-1257-47AC-20A908367F55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleY";
	rename -uid "20CA3B54-604C-4A74-553D-05B3922E4AC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHandAttach_Control_scaleZ";
	rename -uid "EC49C7DF-A24F-AB42-DC8C-4FB792485562";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFingers_Control_visibility";
	rename -uid "4A562FB7-7A42-BCE2-7161-C18344D94A84";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightFingers_Control_translateX";
	rename -uid "5A98F394-F243-1462-EECA-68A600B1F330";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightFingers_Control_translateY";
	rename -uid "55E6F357-A343-7F56-7851-75A84A0D35C5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightFingers_Control_translateZ";
	rename -uid "C78C17E9-CD40-D8CF-8C38-1196FDEB6C24";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateX";
	rename -uid "D6B96DD2-DB4B-DF2C-A969-00BCE22F2E65";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateY";
	rename -uid "1BF7D4E9-E043-F622-CAD4-59B614948248";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightFingers_Control_rotateZ";
	rename -uid "6A3CAB0F-0D45-1756-314C-7E91F5F41F5E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightFingers_Control_scaleX";
	rename -uid "1B4001C9-5F4F-7C1D-06AC-A492EC759BEE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFingers_Control_scaleY";
	rename -uid "61086239-8546-DF84-801D-EF954454D646";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFingers_Control_scaleZ";
	rename -uid "D51E3795-DC44-04F8-B432-DF963816F1ED";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFingers_Control_RightFingers";
	rename -uid "3720A61E-E54B-D36F-52DC-FD9C076ABB4C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.6 120 0.6;
createNode animCurveTU -n "RightFingers_Control_RightPointer";
	rename -uid "3CE0EA5B-6B44-21BF-BA83-E3B542065735";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.5 120 0.5;
createNode animCurveTU -n "RightFingers_Control_RightThumb";
	rename -uid "28E983E5-4147-C1F0-448B-03B953582EF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.6 120 0.6;
createNode animCurveTU -n "RightHand_Control_visibility";
	rename -uid "4807DE0E-134B-E7E7-87B6-098D575DF39E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightHand_Control_translateX";
	rename -uid "CAFD59FD-C847-46E1-6C23-9FAF7004EDDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 53.797584331959321 120 53.797584331959321;
createNode animCurveTL -n "RightHand_Control_translateY";
	rename -uid "662F34DA-184F-3648-3D31-DE9FFD1E10F8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7110362299840958 120 1.7110362299840958;
createNode animCurveTL -n "RightHand_Control_translateZ";
	rename -uid "741D3AC2-9E40-F191-0ADA-998665B08929";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 24.707413519560998 120 24.707413519560998;
createNode animCurveTA -n "RightHand_Control_rotateX";
	rename -uid "B27DB13F-E04D-C00F-A844-A982E57B34BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 89.66770197789063 120 89.66770197789063;
createNode animCurveTA -n "RightHand_Control_rotateY";
	rename -uid "29008C72-2747-385D-54FB-888918368281";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 43.809715601678299 120 43.809715601678299;
createNode animCurveTA -n "RightHand_Control_rotateZ";
	rename -uid "141C5C0C-C749-504A-A263-3B88B15960E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 149.38536751095813 120 149.38536751095813;
createNode animCurveTU -n "RightHand_Control_scaleX";
	rename -uid "02346E3B-2548-8436-E56F-539A1FF6F6D3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHand_Control_scaleY";
	rename -uid "6C082A7B-8A49-A14B-4E64-ADA2A2FA24B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHand_Control_scaleZ";
	rename -uid "886CFE20-F047-1517-39BB-3BBE4C26212A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_visibility";
	rename -uid "F75A3FD2-F042-3F45-C62E-57B7FF93711F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftHandAttach_Control_translateX";
	rename -uid "5A96C7A9-EB44-C209-6AA3-0B8563804CC2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateY";
	rename -uid "8BAB1BD1-0743-089D-2382-A3BDAAD6217A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftHandAttach_Control_translateZ";
	rename -uid "66D0B879-974E-83E6-A707-8183F2F4E125";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateX";
	rename -uid "49916DFE-A143-3614-ECF6-34AABE085826";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateY";
	rename -uid "4D2096C2-6148-23B0-CBBB-1B91ADF1EC41";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHandAttach_Control_rotateZ";
	rename -uid "07CB8C73-FD4D-9FCD-852F-41AE2A80CF6B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftHandAttach_Control_scaleX";
	rename -uid "4486C166-4743-21DD-4D6F-5083815290A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleY";
	rename -uid "93A28D62-4A44-11D5-93C2-1BB40971B42C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHandAttach_Control_scaleZ";
	rename -uid "06F42C8F-F848-F21A-B746-A0AF48A1152E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_visibility";
	rename -uid "761D49EE-7D46-8FBE-C192-8B8C4638BBF1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftFingers_Control_translateX";
	rename -uid "A2863C5B-AE44-A0DB-77E3-09A20B3F1AA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftFingers_Control_translateY";
	rename -uid "853CACBA-E341-5591-2522-E59DBBDAC732";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftFingers_Control_translateZ";
	rename -uid "A0FBA0AF-C143-282D-16A1-A192C00210B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftFingers_Control_rotateX";
	rename -uid "0E1A79CD-7640-4C53-68D0-69A4E5F82CC6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftFingers_Control_rotateY";
	rename -uid "6A1855D0-694F-0784-1648-90B90DC8CEAD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftFingers_Control_rotateZ";
	rename -uid "BFBEC95C-5F4F-C353-5820-80848C4C6825";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftFingers_Control_scaleX";
	rename -uid "D128CDFB-1B46-6A15-747D-2A9A6788F243";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_scaleY";
	rename -uid "18722A4F-0446-59FF-AA98-2A9D69A95B0B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_scaleZ";
	rename -uid "5798B3D6-CF40-3EF3-5072-E8B0FA90136C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFingers_Control_LeftFingers";
	rename -uid "1E753907-B348-3600-E69D-83AC38C9FACD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.5 120 0.5;
createNode animCurveTU -n "LeftFingers_Control_LeftPointer";
	rename -uid "372429B8-1C40-A4C3-6A54-E0B170EBF89B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0.3 120 0.3;
createNode animCurveTU -n "LeftFingers_Control_LeftThumb";
	rename -uid "F17242E2-5C43-F073-967A-B1AA700E88DF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftHand_Control_visibility";
	rename -uid "9D07A970-1045-AC6C-ACCA-CA9E618DDADD";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftHand_Control_translateX";
	rename -uid "F0321AE9-244D-BC86-378F-7A84B9D40B79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -42.621786710404173 120 -42.621786710404173;
createNode animCurveTL -n "LeftHand_Control_translateY";
	rename -uid "25BB6E0C-A94A-C42D-E4C3-DBA095F35BEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -19.701821153764993 120 -19.701821153764993;
createNode animCurveTL -n "LeftHand_Control_translateZ";
	rename -uid "6FFF9280-4543-A0DC-82A8-13878C3C2CA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 12.470532325903976 120 12.470532325903976;
createNode animCurveTA -n "LeftHand_Control_rotateX";
	rename -uid "E8A35397-8B47-484F-E2FB-358C8959EC37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -72.240728316150012 120 -72.240728316150012;
createNode animCurveTA -n "LeftHand_Control_rotateY";
	rename -uid "D2720C64-0749-4E7D-E8EF-879C7C3B4140";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -34.104998628699214 120 -34.104998628699214;
createNode animCurveTA -n "LeftHand_Control_rotateZ";
	rename -uid "1FBBBB0D-9E41-3F8F-B7A2-F29E055598E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -68.577906764008333 120 -68.577906764008333;
createNode animCurveTU -n "LeftHand_Control_scaleX";
	rename -uid "4D218AE5-5B40-9DB4-731B-E9B1FA830E98";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHand_Control_scaleY";
	rename -uid "6AAEEC2C-3249-AF71-21E9-46BA955D990F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHand_Control_scaleZ";
	rename -uid "32D10570-2E4F-94F4-5737-F3B92D23B9A8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Jaw_Control_visibility";
	rename -uid "794161FB-8945-26D1-A038-AD809F63C643";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Jaw_Control_translateX";
	rename -uid "9745BBF9-484B-7CB5-D57E-30AB4B17EDF5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Jaw_Control_translateY";
	rename -uid "87C6D834-AF4C-2283-D561-A79272A5C43D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Jaw_Control_translateZ";
	rename -uid "186F5101-5E43-0A64-967F-1BB1FDC0DAA8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Jaw_Control_rotateX";
	rename -uid "0729332E-5B45-52AE-EFC6-C194D6EF337B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Jaw_Control_rotateY";
	rename -uid "29CB7A8F-0945-1533-AF03-389EC62F696E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Jaw_Control_rotateZ";
	rename -uid "7A86D086-6745-455F-201E-08A66EEEFC34";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Jaw_Control_scaleX";
	rename -uid "B684CE2E-C44C-D6B8-7B3F-10AB532AF5CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Jaw_Control_scaleY";
	rename -uid "8DD269E1-8049-48F6-7060-A7B20B97C48A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Jaw_Control_scaleZ";
	rename -uid "26D1D6DD-B14F-EB4B-6E4E-C49EFE706032";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Head_Control_visibility";
	rename -uid "D384621E-6840-4093-1A43-98B36CFBFDB5";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 44 1 120 1;
	setAttr -s 4 ".kot[0:3]"  5 5 5 5;
createNode animCurveTL -n "Head_Control_translateX";
	rename -uid "777C2C5F-3048-F94D-8B65-4DB86BD6FC95";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 44 0 120 0;
createNode animCurveTL -n "Head_Control_translateY";
	rename -uid "FACE1118-2940-8AAA-68CB-5DAFCA30EFD0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 44 0 120 0;
createNode animCurveTL -n "Head_Control_translateZ";
	rename -uid "5F29122A-8543-80F5-2F41-1AB7294C5C72";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 0 30 0 44 0 120 0;
createNode animCurveTA -n "Head_Control_rotateX";
	rename -uid "C3DFBF59-B64F-07D6-35A0-AAA15E8B7FB0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 3.3341426466611286 30 3.3341426466611286
		 35 2.8932460876712813 44 2.8932460876712813 75 2.8932460876712813 80 5.6217672603618611
		 110 5.6217672603618611 120 3.3341426466611286;
	setAttr -s 8 ".kit[4:7]"  1 18 1 18;
	setAttr -s 8 ".kot[4:7]"  1 18 1 18;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateY";
	rename -uid "B088E4B1-2143-CEBA-93B9-889A69A03B90";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 15.069269476469671 30 15.069269476469671
		 35 6.3726319347657983 44 6.3726319347657983 75 6.3726319347657983 80 21.5757965033958
		 110 21.5757965033958 120 15.069269476469671;
	setAttr -s 8 ".kit[4:7]"  1 18 1 18;
	setAttr -s 8 ".kot[4:7]"  1 18 1 18;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTA -n "Head_Control_rotateZ";
	rename -uid "41FBEEBA-DE48-B31F-6D28-D1ADB60E9DCF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 8 ".ktv[0:7]"  1 -0.62016647832456007 30 -0.62016647832456007
		 35 -0.26827532531799575 44 -0.26827532531799575 75 -0.26827532531799575 80 -0.26445358365074562
		 110 -0.26445358365074562 120 -0.62016647832456007;
	setAttr -s 8 ".kit[4:7]"  1 18 1 18;
	setAttr -s 8 ".kot[4:7]"  1 18 1 18;
	setAttr -s 8 ".kix[4:7]"  1 1 1 1;
	setAttr -s 8 ".kiy[4:7]"  0 0 0 0;
	setAttr -s 8 ".kox[4:7]"  1 1 1 1;
	setAttr -s 8 ".koy[4:7]"  0 0 0 0;
createNode animCurveTU -n "Head_Control_scaleX";
	rename -uid "2A2FFF5C-AF4D-3CE3-86A6-89BFED71341F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 44 1 120 1;
createNode animCurveTU -n "Head_Control_scaleY";
	rename -uid "F8C9249A-0543-D761-D017-9099C73A30A5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 44 1 120 1;
createNode animCurveTU -n "Head_Control_scaleZ";
	rename -uid "0AF69310-0C49-965F-6D1E-F8BC1AF0741F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 4 ".ktv[0:3]"  1 1 30 1 44 1 120 1;
createNode animCurveTU -n "Neck_Control_visibility";
	rename -uid "6EFF9C79-3F46-B2DC-8E25-8D94663D3DFB";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Neck_Control_translateX";
	rename -uid "6BCD9407-1B40-10A6-21E2-919C8FA1147C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Neck_Control_translateY";
	rename -uid "C9305B93-054C-26A0-411C-46BA6D24179F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Neck_Control_translateZ";
	rename -uid "81DBC0D1-534F-5B25-7BB1-10B19BEEBDE9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Neck_Control_rotateX";
	rename -uid "28E09D25-CC4C-47AA-2A0F-C78585A35339";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Neck_Control_rotateY";
	rename -uid "F1B4FB8F-5A49-62F8-8301-3ABE19373558";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Neck_Control_rotateZ";
	rename -uid "912E3598-624E-E448-2306-599CA7A66DC7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Neck_Control_scaleX";
	rename -uid "BCE64BFA-5143-EA45-EB38-34A74D49206C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Neck_Control_scaleY";
	rename -uid "0BE6A446-8A48-AA3C-53FF-E6954AD84183";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Neck_Control_scaleZ";
	rename -uid "7022A94B-5541-BE28-5DFB-B896A8FCC620";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftUpperArm_Control_visibility";
	rename -uid "1B17F6CC-4145-0520-67F3-D58C44890E2E";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftUpperArm_Control_translateX";
	rename -uid "95DEC8EA-C14B-2E46-2913-BDB77EE673FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateY";
	rename -uid "679D5D19-B04B-0AB0-A7E9-D1A6346C3E15";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftUpperArm_Control_translateZ";
	rename -uid "1B55649F-9E43-5EB7-7ABD-2585683A914A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateX";
	rename -uid "76D2447A-CD47-38E3-E803-FD90FB663F3C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateY";
	rename -uid "622A4FD4-924C-6195-8C78-6592459A17CF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftUpperArm_Control_rotateZ";
	rename -uid "C7581D63-DB4A-D4C2-DD56-9F866A51C9D1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftUpperArm_Control_scaleX";
	rename -uid "96F73800-C84F-F356-7CA3-698A56914452";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleY";
	rename -uid "69C0A567-8848-EFB4-8230-2B9C9E0E387D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftUpperArm_Control_scaleZ";
	rename -uid "4B361AB1-8447-44D4-BFB0-43B89CBB4D74";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHips_Control_visibility";
	rename -uid "1306809C-D944-8C5E-0AB2-5DA40615466D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightHips_Control_translateX";
	rename -uid "7234E7D9-4C4A-E6B7-A321-DAA20F2A3520";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightHips_Control_translateY";
	rename -uid "F7F18685-3645-93A6-2779-028E608944DE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightHips_Control_translateZ";
	rename -uid "740A5991-7D45-2C89-39D7-9AA2033DDE8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHips_Control_rotateX";
	rename -uid "B9C91CD4-834E-B875-5A8F-44A43C412ED1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHips_Control_rotateY";
	rename -uid "6C854525-8644-AD1D-E8C7-42B82093B1E1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightHips_Control_rotateZ";
	rename -uid "10A9CC7E-AF49-6D09-1C08-1ABF500BC8FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightHips_Control_scaleX";
	rename -uid "E88D5A98-4048-C27D-141C-6BA19DC8828F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHips_Control_scaleY";
	rename -uid "D030A33F-964F-FBEF-9F86-1B88A8725C8F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightHips_Control_scaleZ";
	rename -uid "7F6E90C8-FE4C-2DD8-5D1C-CA908F72D22C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHip_Control_visibility";
	rename -uid "7EBBF0C5-C24A-28B3-BC7B-16A754A1DF38";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftHip_Control_translateX";
	rename -uid "9728F30B-8D40-3263-E08F-239BCF87C574";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftHip_Control_translateY";
	rename -uid "3A6B6865-DA43-1589-F126-8D884D123E06";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftHip_Control_translateZ";
	rename -uid "1F50C6A0-5A40-AB21-0B19-DD82CDC50739";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHip_Control_rotateX";
	rename -uid "8D5B4FE8-A046-26C1-1E0C-3AB98CD1F3D6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHip_Control_rotateY";
	rename -uid "8E619C4D-804B-5A75-9E5E-C79637CE1B51";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftHip_Control_rotateZ";
	rename -uid "6657DC53-F34E-ECB6-BCC1-1A96FD8F0428";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftHip_Control_scaleX";
	rename -uid "D73F4A9D-234D-750E-8B45-2AB7698BAD20";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHip_Control_scaleY";
	rename -uid "DAB89713-1446-92B8-3F8C-BAAF116081F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftHip_Control_scaleZ";
	rename -uid "9B766245-5748-0748-BA27-9E9C4884F75D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CenterBackAttach_Control_visibility";
	rename -uid "689EE675-9A40-F4DD-7A83-A6A50A6F40D1";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "CenterBackAttach_Control_translateX";
	rename -uid "77896817-B24A-F142-E195-B0B40418D20A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CenterBackAttach_Control_translateY";
	rename -uid "647D45DE-EE44-A7E9-AD27-1E9D01239716";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "CenterBackAttach_Control_translateZ";
	rename -uid "18B05472-4F46-621C-2C6F-AC88EFA5EE70";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateX";
	rename -uid "BE447FA9-BB4D-1E73-12C7-D3B37D472338";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateY";
	rename -uid "782A5943-4844-CA7C-9025-A78BF45318F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "CenterBackAttach_Control_rotateZ";
	rename -uid "EB3AEBD3-394A-AE97-279F-4680DE5C49F1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "CenterBackAttach_Control_scaleX";
	rename -uid "FC284F5A-634D-D8EB-D1D5-43BD0AE7B4C2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CenterBackAttach_Control_scaleY";
	rename -uid "B4D326F2-B44D-56BB-EF38-E28075FE0FDD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "CenterBackAttach_Control_scaleZ";
	rename -uid "0D751A78-C64B-8A10-FA71-7EBBC0CC255B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_visibility";
	rename -uid "D3368017-DB4B-6C2A-3355-A1ABB11C7B8C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightBackAttach_Control_translateX";
	rename -uid "61A6E570-D34D-3D9F-4075-35831A6A71F0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightBackAttach_Control_translateY";
	rename -uid "1A9EF17A-3A4E-980E-CF33-E5B6B39ECC28";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightBackAttach_Control_translateZ";
	rename -uid "6CCAFCED-9D4B-2397-47A0-D9B3868587C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateX";
	rename -uid "C9FC489D-BB41-597A-F586-BA928C5EC33A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateY";
	rename -uid "207DC75A-F146-7F29-6413-88AABB6B6E12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightBackAttach_Control_rotateZ";
	rename -uid "43E4E01D-D64E-EE87-A6DE-33877940BD12";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightBackAttach_Control_scaleX";
	rename -uid "9C773977-FD44-EBA0-385F-078A0DC291C6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleY";
	rename -uid "B0008C2A-434C-ED98-F28D-8E8658929E78";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightBackAttach_Control_scaleZ";
	rename -uid "55C088C3-FD45-9991-91DC-26BC6CF3C972";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_visibility";
	rename -uid "4A2E13E3-1847-3FA8-7B8A-CBA30196A82D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftBackAttach_Control_translateX";
	rename -uid "88C812A3-3340-6422-574D-B4815568F381";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateY";
	rename -uid "81F2D502-B649-A3D8-8D84-24875DDD8D55";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftBackAttach_Control_translateZ";
	rename -uid "7979C02D-9E49-0438-309B-6593BF1C6783";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateX";
	rename -uid "A6C9528D-FE4E-E1B3-F5B9-AC829F1F4053";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateY";
	rename -uid "F2B7EE0C-9C47-8C26-018A-7BB794D95D97";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftBackAttach_Control_rotateZ";
	rename -uid "28C3C2F5-5044-1898-AE7D-94AB723C4AB8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftBackAttach_Control_scaleX";
	rename -uid "F5DBF428-D344-7943-5477-D5AC320347FD";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleY";
	rename -uid "D6598D85-554B-A416-DA09-3C9E40BA2353";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftBackAttach_Control_scaleZ";
	rename -uid "AB3F8317-6545-5B1B-3769-82BE9EF5352E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightElbow_Control_visibility";
	rename -uid "FFECB240-F046-AD72-FD89-ECB4812CBB3A";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightElbow_Control_translateX";
	rename -uid "AEA7B8B4-3E4D-77C1-27A8-DD9594ED043A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -33.909553021158445 120 -33.909553021158445;
createNode animCurveTL -n "RightElbow_Control_translateY";
	rename -uid "5087540C-D046-902E-3F80-6E90E5C30D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.5354997742790981 120 1.5354997742790981;
createNode animCurveTL -n "RightElbow_Control_translateZ";
	rename -uid "7ECFF391-D241-B645-1BBC-7BA242E6AB40";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 22.172661932856251 120 22.172661932856251;
createNode animCurveTA -n "RightElbow_Control_rotateX";
	rename -uid "B8FF029B-BB47-3FCA-E603-529E0447109E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightElbow_Control_rotateY";
	rename -uid "899DBA58-BB49-B884-666F-8F9BE0AAD892";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightElbow_Control_rotateZ";
	rename -uid "3A5DD4FA-7C46-10AD-CFB7-868E6007A1B8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightElbow_Control_scaleX";
	rename -uid "3CD71051-A749-63F5-7ADE-B880E56EEB0C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightElbow_Control_scaleY";
	rename -uid "803156CC-9546-3B01-5C84-109CAFDB2128";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightElbow_Control_scaleZ";
	rename -uid "243BC06B-1F4E-49BE-50B7-95841800F3F6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftClav_Control_visibility";
	rename -uid "9A338A7B-9943-73B4-A1D1-788640916DEF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftClav_Control_translateX";
	rename -uid "CB0F1D30-2044-E355-CE81-7AAD820593BA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftClav_Control_translateY";
	rename -uid "0192FD97-C84C-6199-7673-988BEDF9ED79";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftClav_Control_translateZ";
	rename -uid "AE1CC89C-9648-D797-A2DE-51A2D063969F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftClav_Control_rotateX";
	rename -uid "4D9B8F30-D941-7DBF-5E54-9ABA0CB98AD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftClav_Control_rotateY";
	rename -uid "EAA8C9F0-DE46-E08C-A4E1-5ABE577A7A54";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftClav_Control_rotateZ";
	rename -uid "C4C52E00-9A40-A4FB-1274-B39FAAAA3635";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftClav_Control_scaleX";
	rename -uid "41F3353B-244F-8D8F-2A6F-32992A9A0332";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftClav_Control_scaleY";
	rename -uid "EC328310-2843-8B8C-07A6-F3A80AC9E694";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftClav_Control_scaleZ";
	rename -uid "AFCC9C93-A940-A3B8-F2A0-C189D603CC5D";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightClav_Control_visibility";
	rename -uid "E4110A9E-E840-23C5-3B23-F29DCFB59743";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightClav_Control_translateX";
	rename -uid "F55E6B82-F346-6ADE-FD32-3FBFDC8F7504";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightClav_Control_translateY";
	rename -uid "AC7FDA49-AA40-C25D-89A8-5DABAEFFB202";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightClav_Control_translateZ";
	rename -uid "106F595E-CA42-3D22-6DE2-0C82690A74B3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightClav_Control_rotateX";
	rename -uid "C91D4937-6E43-788B-AD72-FEA7CB31ECE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightClav_Control_rotateY";
	rename -uid "B104C189-1848-B3C2-247F-5B9D6A93EFF6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightClav_Control_rotateZ";
	rename -uid "09A826EC-4B42-CCAC-4293-CB8C80907D84";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightClav_Control_scaleX";
	rename -uid "D3FE41DC-C142-05C9-9F04-DE9E40B3658E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightClav_Control_scaleY";
	rename -uid "B3725639-7A4E-C960-095C-A095F43DB9B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightClav_Control_scaleZ";
	rename -uid "8BD5B4D2-A649-7FEE-CAB1-E9A23AB96E59";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightUpperArm_Control_visibility";
	rename -uid "57E0F371-C645-0ED0-FDBA-46953659AB5C";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightUpperArm_Control_translateX";
	rename -uid "B77EA819-174A-E2AB-60EA-9EB6D57E645B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightUpperArm_Control_translateY";
	rename -uid "5729D20F-7D46-ADB4-90CB-4BAD60918879";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightUpperArm_Control_translateZ";
	rename -uid "E49B95CC-0A42-8526-95A0-76A62A49C419";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateX";
	rename -uid "D503F426-CB48-7DC7-6F39-85813F052C10";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateY";
	rename -uid "F903FAD2-9740-4E60-4A9E-70856698EE23";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightUpperArm_Control_rotateZ";
	rename -uid "3BC20A4F-E146-3615-C0C0-EF99DC13594E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightUpperArm_Control_scaleX";
	rename -uid "D7F8C9E6-E448-75CB-AB39-E4959FDDCDAF";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleY";
	rename -uid "E6A5DB09-A84A-3842-44F1-A6A7605614CC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightUpperArm_Control_scaleZ";
	rename -uid "736D09D2-2D4A-700B-207B-918DCFAFB243";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine2_Control_visibility";
	rename -uid "683DAFD5-2A4B-C45C-64DF-38B9446FE69D";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Spine2_Control_translateX";
	rename -uid "F3BBDC7E-0243-F605-86F6-B586A2F432A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Spine2_Control_translateY";
	rename -uid "5C4986C3-5041-C74F-E803-A69A6692EFB6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Spine2_Control_translateZ";
	rename -uid "DE4B483D-7747-91DD-340E-9FAA82579CFB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Spine2_Control_rotateX";
	rename -uid "B063D546-E04E-46F1-D57D-C0B00F687FD3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.2290536499320548 120 3.2290536499320548;
createNode animCurveTA -n "Spine2_Control_rotateY";
	rename -uid "2E50E377-3746-E473-E42E-E99B78CAC7C9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Spine2_Control_rotateZ";
	rename -uid "A4D18EFC-C541-AE99-5A59-AEB2D88143B1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Spine2_Control_scaleX";
	rename -uid "87065031-CB47-6295-977E-65BD2DC8A525";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine2_Control_scaleY";
	rename -uid "9A479C5D-C043-6C7C-3612-C7A03985A089";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine2_Control_scaleZ";
	rename -uid "D4674C76-FF4D-B34F-0EBE-4BAE08A3E80F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine1_Control_visibility";
	rename -uid "448A63C2-A941-3C21-E85C-7C9B0D33B539";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Spine1_Control_translateX";
	rename -uid "3F4C89D9-4648-078B-9939-3DB129752BDC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Spine1_Control_translateY";
	rename -uid "FD5D034F-FB43-6103-5C35-DC9D0F157981";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Spine1_Control_translateZ";
	rename -uid "5F2D0FD2-F048-FED8-D919-4696163EA9DA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Spine1_Control_rotateX";
	rename -uid "A73DCFAA-9D49-F037-4A80-A9B121B31C52";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 3.2290536499320548 120 3.2290536499320548;
createNode animCurveTA -n "Spine1_Control_rotateY";
	rename -uid "4FAF797D-EF44-0801-D389-2ABAD76F6C76";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Spine1_Control_rotateZ";
	rename -uid "CC6C80DC-9545-4C19-3AF2-42BAE6D22E66";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Spine1_Control_scaleX";
	rename -uid "080689CA-EE46-DA55-1F3A-7CB865DEF498";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine1_Control_scaleY";
	rename -uid "7A77C01C-9048-5975-43BD-0F8CEF1DACA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Spine1_Control_scaleZ";
	rename -uid "32346CCF-0F48-1CAE-DCE7-0F9D5CAECABA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Hips_Control_visibility";
	rename -uid "3D4A3968-074A-3BA6-0F60-7F9C7B5379ED";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Hips_Control_translateX";
	rename -uid "76F71288-F94E-C5C3-14A0-C99D622F5407";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 -1.576791388020311 60 -0.49328515610246493
		 90 0.58350799411975451 120 0;
createNode animCurveTL -n "Hips_Control_translateY";
	rename -uid "05F27631-F94F-A426-516B-BCB6AF4BA3B2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 -6.474946516270478 30 -6.7660319671309708
		 60 -6.3994799178489323 90 -6.7617322955108374 120 -6.474946516270478;
createNode animCurveTL -n "Hips_Control_translateZ";
	rename -uid "BCD7307A-2946-76D5-7195-A7AC206FF263";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 5 ".ktv[0:4]"  1 0 30 -0.59079410414136646 60 -0.29071098573540732
		 90 0.018258943953819495 120 0;
createNode animCurveTA -n "Hips_Control_rotateX";
	rename -uid "F51AAF42-8F4B-6753-69F3-F0A02984F8D2";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -2.49658846601967 120 -2.49658846601967;
createNode animCurveTA -n "Hips_Control_rotateY";
	rename -uid "DBEE512E-2E4E-1F9C-4691-E08FEC3872E9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -12.309668497139857 120 -12.309668497139857;
createNode animCurveTA -n "Hips_Control_rotateZ";
	rename -uid "7FA781CE-0643-CC1C-DEF8-E58D70CC8896";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Hips_Control_scaleX";
	rename -uid "8DF0C4F8-E042-3524-F3E8-6BA93D4DECDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Hips_Control_scaleY";
	rename -uid "5913B50D-E146-ABC3-7C23-3889B1783BA3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Hips_Control_scaleZ";
	rename -uid "1B3F78C1-A04F-33D1-E6BF-C9B1B92C0EEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RootMotion_Control_visibility";
	rename -uid "8149FB9A-064F-1240-9087-029448148F88";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RootMotion_Control_translateX";
	rename -uid "6C3DAE3E-9D4A-113B-4E26-048587263399";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RootMotion_Control_translateY";
	rename -uid "E5AD375C-4040-9790-8604-D58AB4DA7D73";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RootMotion_Control_translateZ";
	rename -uid "CD946412-C343-C418-53B9-66B61047D677";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateX";
	rename -uid "EC4B4C8F-6F41-B640-1DCF-E1A82FD7A064";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateY";
	rename -uid "A4456A4E-2849-1004-BD85-999E2B35F6DB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RootMotion_Control_rotateZ";
	rename -uid "8BEAF678-8642-88AD-CB5D-23A10204144E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RootMotion_Control_scaleX";
	rename -uid "510E7D6E-E448-4010-E13C-498B9B41AF89";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RootMotion_Control_scaleY";
	rename -uid "B4865DCA-2748-A7E5-8053-37867D44EC3F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RootMotion_Control_scaleZ";
	rename -uid "E6B620DB-044E-6EBF-9CB2-04AA1837C39F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightKnee_Control_visibility";
	rename -uid "0D2CE090-254F-003C-E2B2-68BC7B3CA7AF";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightKnee_Control_translateX";
	rename -uid "7F54C300-EB40-3E6A-F3D2-F9B57A3D881F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightKnee_Control_translateY";
	rename -uid "20520005-5C42-A471-A98D-30A3A7E250FB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightKnee_Control_translateZ";
	rename -uid "AF6282AC-B344-D2FC-FB53-47BE4147022F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateX";
	rename -uid "36B6D4E2-EE4A-2A92-911D-6BAFC0EF9F27";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateY";
	rename -uid "45C466F8-C443-5CCC-924C-528445CA98E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightKnee_Control_rotateZ";
	rename -uid "6910446E-6F4B-1722-8DFF-3CAFB93D724C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightKnee_Control_scaleX";
	rename -uid "F05BE754-F54B-165C-B1B8-7DAE86F41304";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightKnee_Control_scaleY";
	rename -uid "7EAB29AF-5F49-327E-E7C8-A8AA2958C557";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightKnee_Control_scaleZ";
	rename -uid "AE1D0B03-B147-AD8B-38E5-2DB2BA3459FA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightToe_Control_visibility";
	rename -uid "024BF566-BE47-96DA-8052-B5AE90546929";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightToe_Control_translateX";
	rename -uid "6AD12CC6-2148-6DE9-038C-12AE8B561C38";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightToe_Control_translateY";
	rename -uid "54C76099-B84E-708C-E6E2-8CAC316646C3";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightToe_Control_translateZ";
	rename -uid "330E1BD6-F141-BB31-85F0-F0AABE881461";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightToe_Control_rotateX";
	rename -uid "FA87C227-334D-383F-3A48-52A7FB123F37";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightToe_Control_rotateY";
	rename -uid "CA274B22-6E4D-0463-8245-BEB560B846E5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightToe_Control_rotateZ";
	rename -uid "B0A56978-AC42-D0BA-CBE3-65B80651A436";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightToe_Control_scaleX";
	rename -uid "E98471A5-DD49-A0D3-ECB2-E7BACB887C4E";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightToe_Control_scaleY";
	rename -uid "867CFCD7-DE45-DFE9-1FD1-9DBD81B7517F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightToe_Control_scaleZ";
	rename -uid "4CDB499B-4847-F8DA-1BA6-319F2FCE8D8C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFoot_Control_visibility";
	rename -uid "660DC0C1-0341-5275-9640-579B6321B62F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "RightFoot_Control_translateX";
	rename -uid "22F06316-2948-753F-733B-0C8D0F43F836";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -7.1180413499650115 120 -7.1180413499650115;
createNode animCurveTL -n "RightFoot_Control_translateY";
	rename -uid "00B02B7C-E443-952E-E69F-9DB205DA3221";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "RightFoot_Control_translateZ";
	rename -uid "D5950F9A-D74B-5915-FA95-DA96F4D6617C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -13.49253964167076 120 -13.49253964167076;
createNode animCurveTA -n "RightFoot_Control_rotateX";
	rename -uid "A057198F-B440-2C71-E06C-719FB794E5D8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "RightFoot_Control_rotateY";
	rename -uid "870C81DE-4B47-BBFB-9FDC-37AAB7DDEBE8";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 -42.667786881423176 120 -42.667786881423176;
createNode animCurveTA -n "RightFoot_Control_rotateZ";
	rename -uid "0D43C7FA-764B-358B-5D64-42AA7057E743";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "RightFoot_Control_scaleX";
	rename -uid "D8EEF1D1-564E-EB3B-D21F-0FA83F016BE4";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFoot_Control_scaleY";
	rename -uid "FF2C221D-BB43-D2E6-5062-3E8F59D7D5B7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "RightFoot_Control_scaleZ";
	rename -uid "EE904D37-3244-D89B-F759-9C98A62C96A1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftToe_Control_visibility";
	rename -uid "60279CF0-2542-2289-E17E-1D93158F0448";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftToe_Control_translateX";
	rename -uid "DF29B82D-534E-D173-B000-F18825005900";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftToe_Control_translateY";
	rename -uid "2F04782B-3240-BD72-8554-E6B8CFB83DD6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftToe_Control_translateZ";
	rename -uid "15F84AD9-1D47-B058-1564-438F20B354B5";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftToe_Control_rotateX";
	rename -uid "C045A530-954D-D0EA-5C65-AE87A5CD0E6C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftToe_Control_rotateY";
	rename -uid "8F0403E6-9649-0115-2977-1EB2A2A0ADEA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftToe_Control_rotateZ";
	rename -uid "9E4A9694-EF46-1C44-2C2D-8CA52D0395CE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftToe_Control_scaleX";
	rename -uid "C829844F-AE43-A536-AFF9-989FF6A766B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftToe_Control_scaleY";
	rename -uid "EF07BD61-C949-31D5-2D87-2596F922B3D7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftToe_Control_scaleZ";
	rename -uid "ACC3F8FF-7C4B-AFE1-6D9F-D18F253C9EA9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_visibility";
	rename -uid "32216D47-8B48-26E5-2C83-F29F86B3227F";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftKnee_Control_translateX";
	rename -uid "124AED6D-5B47-420E-ACB4-9AB18F3C45E6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftKnee_Control_translateY";
	rename -uid "00A3C51F-0B4C-895E-3600-DC8C75D14FDA";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftKnee_Control_translateZ";
	rename -uid "A4037718-634D-2EF8-5331-969AD514C379";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateX";
	rename -uid "62CC0559-5245-0FB9-56DC-11811E247543";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateY";
	rename -uid "FF4F5354-2A43-1D54-C1E1-5CBDB04D054C";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftKnee_Control_rotateZ";
	rename -uid "3FC4EE5F-AE4C-6235-3026-FA9064BE085F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftKnee_Control_scaleX";
	rename -uid "ADF5DA0C-0B49-35FF-BECD-32AB462295B6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_scaleY";
	rename -uid "22465C28-2E49-6B06-EEFA-C89C2EB91517";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftKnee_Control_scaleZ";
	rename -uid "F5E18AAB-3D4E-36CE-6033-C881E5BE7FEC";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_visibility";
	rename -uid "4E3FA552-F849-22AD-2F0C-C79098622A18";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "LeftFoot_Control_translateX";
	rename -uid "06C1C4C1-9749-365F-D473-70AADDF18C45";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 10.208309121488618 120 10.208309121488618;
createNode animCurveTL -n "LeftFoot_Control_translateY";
	rename -uid "0B9B932F-E349-FAF7-B8E9-FE9A23D0CF29";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "LeftFoot_Control_translateZ";
	rename -uid "E7F79FFB-F847-6B62-A244-6FB9D179612B";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 14.034956650750683 120 14.034956650750683;
createNode animCurveTA -n "LeftFoot_Control_rotateX";
	rename -uid "77F517CA-524C-EE8B-15F0-21BF5F8D0235";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "LeftFoot_Control_rotateY";
	rename -uid "46150D33-C64D-0D1E-8D5E-DCA5E23CD1A9";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1.7167722194533417 120 1.7167722194533417;
createNode animCurveTA -n "LeftFoot_Control_rotateZ";
	rename -uid "6B4AEBDE-B142-6956-6D16-E1BB01AADBA6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "LeftFoot_Control_scaleX";
	rename -uid "4AB55E0C-3C4D-3DA7-CBB7-5F878A61F564";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_scaleY";
	rename -uid "837733A1-3645-4B8A-508A-5EB298D7CACE";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "LeftFoot_Control_scaleZ";
	rename -uid "0ABB4238-9A4B-CA6E-414E-DF9258711BA1";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Root_Control_visibility";
	rename -uid "29B4D154-2548-F231-EFD6-A8BD9EF44F52";
	setAttr ".tan" 9;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
	setAttr -s 2 ".kot[0:1]"  5 5;
createNode animCurveTL -n "Root_Control_translateX";
	rename -uid "F749B1F0-3A44-0BC6-6324-C0833C36B992";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Root_Control_translateY";
	rename -uid "81124182-BB42-862F-71D8-50AFDBABBAE0";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTL -n "Root_Control_translateZ";
	rename -uid "EA35A0D2-9F45-F64D-EA3B-68A59A1B88A7";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Root_Control_rotateX";
	rename -uid "ABFCB3E4-0449-29E3-7532-4AB233EA2EE6";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Root_Control_rotateY";
	rename -uid "29D3D6AA-2B46-6455-870D-25888910BF6F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTA -n "Root_Control_rotateZ";
	rename -uid "20C1463A-7741-CB4F-01E0-E7A09347357F";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 0 120 0;
createNode animCurveTU -n "Root_Control_scaleX";
	rename -uid "8721E19B-7347-D005-5339-A3914C99EABB";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Root_Control_scaleY";
	rename -uid "F6A7B6CF-474E-66A6-0180-9281F9E16601";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
createNode animCurveTU -n "Root_Control_scaleZ";
	rename -uid "A7D7AA52-D145-CDD4-7FA4-5E89FC4B634A";
	setAttr ".tan" 18;
	setAttr ".wgt" no;
	setAttr -s 2 ".ktv[0:1]"  1 1 120 1;
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
select -ne :time1;
	setAttr ".o" 89;
	setAttr ".unw" 89;
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
connectAttr "RightFingers_Control_visibility.o" "Salazar_RigRN.phl[234]";
connectAttr "RightFingers_Control_translateX.o" "Salazar_RigRN.phl[235]";
connectAttr "RightFingers_Control_translateY.o" "Salazar_RigRN.phl[236]";
connectAttr "RightFingers_Control_translateZ.o" "Salazar_RigRN.phl[237]";
connectAttr "RightFingers_Control_rotateX.o" "Salazar_RigRN.phl[238]";
connectAttr "RightFingers_Control_rotateY.o" "Salazar_RigRN.phl[239]";
connectAttr "RightFingers_Control_rotateZ.o" "Salazar_RigRN.phl[240]";
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
connectAttr "LeftHip_Control_visibility.o" "Salazar_RigRN.phl[304]";
connectAttr "LeftHip_Control_translateX.o" "Salazar_RigRN.phl[305]";
connectAttr "LeftHip_Control_translateY.o" "Salazar_RigRN.phl[306]";
connectAttr "LeftHip_Control_translateZ.o" "Salazar_RigRN.phl[307]";
connectAttr "LeftHip_Control_rotateX.o" "Salazar_RigRN.phl[308]";
connectAttr "LeftHip_Control_rotateY.o" "Salazar_RigRN.phl[309]";
connectAttr "LeftHip_Control_rotateZ.o" "Salazar_RigRN.phl[310]";
connectAttr "LeftHip_Control_scaleX.o" "Salazar_RigRN.phl[311]";
connectAttr "LeftHip_Control_scaleY.o" "Salazar_RigRN.phl[312]";
connectAttr "LeftHip_Control_scaleZ.o" "Salazar_RigRN.phl[313]";
connectAttr "RightHips_Control_visibility.o" "Salazar_RigRN.phl[314]";
connectAttr "RightHips_Control_translateX.o" "Salazar_RigRN.phl[315]";
connectAttr "RightHips_Control_translateY.o" "Salazar_RigRN.phl[316]";
connectAttr "RightHips_Control_translateZ.o" "Salazar_RigRN.phl[317]";
connectAttr "RightHips_Control_rotateX.o" "Salazar_RigRN.phl[318]";
connectAttr "RightHips_Control_rotateY.o" "Salazar_RigRN.phl[319]";
connectAttr "RightHips_Control_rotateZ.o" "Salazar_RigRN.phl[320]";
connectAttr "RightHips_Control_scaleX.o" "Salazar_RigRN.phl[321]";
connectAttr "RightHips_Control_scaleY.o" "Salazar_RigRN.phl[322]";
connectAttr "RightHips_Control_scaleZ.o" "Salazar_RigRN.phl[323]";
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
// End of Salazar_Idle.ma
