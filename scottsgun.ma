//Maya ASCII 2008 scene
//Name: scottsgun.ma
//Last modified: Thu, Jul 03, 2008 01:55:35 PM
//Codeset: 1252
requires maya "2008";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya Complete 2008";
fileInfo "version" "2008";
fileInfo "cutIdentifier" "200708022245-704165";
fileInfo "osv" "Microsoft Windows XP Service Pack 3 (Build 2600)\n";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 8.0999937244208926 1.384287699889108 -1.4825386480953366 ;
	setAttr ".r" -type "double3" -183.09013926010371 -2791.976089087324 179.99953390883294 ;
	setAttr ".rp" -type "double3" 5.7245874707234634e-017 2.2204460492503131e-016 -2.2204460492503131e-016 ;
	setAttr ".rpt" -type "double3" -1.0543886542998159e-015 -1.1351425936127943e-015 
		-5.0813086047359012e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999909969089224;
	setAttr ".coi" 8.6602305589436988;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.0383644 1.656532 -1.015241 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1.9137869370902898 100.1 -2.1884410716874361 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 10.218273502984315;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0.15134347034377271 1.0044370533754463 100.1 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 0.76547137740767812;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.10499170993863 0.92496550388222309 -1.9515304010805856 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
	setAttr ".rp" -type "double3" 1.4210854715202004e-014 0 0 ;
	setAttr ".rpt" -type "double3" 1.5099033134902126e-014 0 1.6875389974302379e-014 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".fl" 35.000000000000014;
	setAttr ".coi" 100.1;
	setAttr ".ow" 5.8296121643587799;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "nurbsPlane1";
	setAttr ".t" -type "double3" 0 0.26587490100953581 -0.43762394927346882 ;
	setAttr ".r" -type "double3" 0 0 90 ;
	setAttr ".s" -type "double3" 3.21 1 7.48 ;
createNode nurbsSurface -n "nurbsPlaneShape1" -p "nurbsPlane1";
	addAttr -ci true -sn "mso" -ln "miShadingSamplesOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "msh" -ln "miShadingSamples" -min 0 -max 12 -smx 8 -at "float";
	addAttr -ci true -sn "mdo" -ln "miMaxDisplaceOverride" -min 0 -max 1 -at "bool";
	addAttr -ci true -sn "mmd" -ln "miMaxDisplace" -min 0 -smx 1 -at "float";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode transform -n "planarTrimmedSurface1";
createNode nurbsSurface -n "planarTrimmedSurfaceShape1" -p "planarTrimmedSurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 2;
	setAttr ".dvv" 2;
	setAttr ".cpr" 4;
	setAttr ".cps" 16;
createNode transform -n "curve1";
createNode nurbsCurve -n "curveShape1" -p "curve1";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 19 0 no 3
		20 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19
		20
		0 1 3
		0 1 3
		0 1 3
		0 1.0638074041225027 3.0005067221191224
		0 1.0603238513352868 2.8036859896414241
		0 1.058582074941679 2.7688504617692651
		0 1.0725162860905424 2.7514326978331853
		0 1.0707745096969346 2.7183389463546344
		0 1.0585820749416788 2.7148553935674187
		0 1.0742580624841505 2.6852451948760834
		0 1.0742580624841505 2.6538932197911405
		0 1.051614969367247 2.6277665738870213
		0 1.0463896401864232 2.4953915679728169
		0 1.053356745760855 2.4797155804303452
		0 1.0568402985480709 2.1766464879425618
		0 1.0429060873992073 2.1609705004000905
		0 1.0394225346119914 1.9937599666137271
		0 1.0498731929736391 1.9833093082520796
		0 1.0498731929736391 1.6628224518282169
		0 1 1.6620953796400575
		;
createNode transform -n "revolvedSurface1";
	setAttr ".t" -type "double3" 0 0.97964442400464358 0 ;
	setAttr ".s" -type "double3" 0.071539971938772026 0.049552007446018169 1.0621843555715098 ;
	setAttr ".rp" -type "double3" 0 -1.3128330339871586e-017 2.3313010508795902 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-016 2.3313010508795902 ;
	setAttr ".spt" -type "double3" 0 3.1993857704767538e-016 0 ;
createNode nurbsSurface -n "revolvedSurfaceShape1" -p "revolvedSurface1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "curve2";
createNode nurbsCurve -n "curveShape2" -p "curve2";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 0.99743401080230532 1.5642181949157128
		0 1.0396376123869673 1.5656249816352015
		0 1.0396376123869673 1.3616409073093354
		0 0.99884079752179411 1.3609375139495912
		;
createNode transform -n "revolvedSurface2";
	setAttr ".t" -type "double3" 0 0.9820541446045572 0 ;
	setAttr ".s" -type "double3" 0.05755996873275767 0.058810152845087303 1.7230809023168252 ;
	setAttr ".rp" -type "double3" 0 -4.8349739646205384e-017 1.4632812477923962 ;
	setAttr ".sp" -type "double3" 0 -3.3306690738754696e-016 1.4632812477923962 ;
	setAttr ".spt" -type "double3" 0 2.8471716774134158e-016 0 ;
createNode nurbsSurface -n "revolvedSurfaceShape2" -p "revolvedSurface2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "curve3";
createNode nurbsCurve -n "curveShape3" -p "curve3";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 9 0 no 3
		10 0 1 2 3 4 5 6 7 8 9
		10
		0 1.1603822504791004 -0.16218591368324506
		0 1.182596081173048 -0.15626222549819244
		0 1.2151763661908381 -0.13849116094303424
		0 1.206290833913259 1.1513919413521996
		0 1.1870388473118376 1.1662011618148314
		0 1.1544585622940475 1.203224212971411
		0 1.1544585622940475 1.2313617318504115
		0 1.0004426694826765 1.2372854200354642
		0 0.99748082539015004 -0.16218591368324506
		0 1.1633440945716267 -0.16218591368324506
		;
createNode transform -n "revolvedSurface3";
	setAttr ".t" -type "double3" 0 0.8632550625787101 0.0017538549925675273 ;
createNode nurbsSurface -n "revolvedSurfaceShape3" -p "revolvedSurface3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 170 ".cp";
	setAttr ".cp[0:165]" -type "double3" 0.41597918007262247 -0.7455819996861841 
		0.021516525891500993 2.0107829200336897e-017 -0.84308809720652345 0.021516525891500993 
		-0.41597918007262236 -0.74558199968618433 0.021516525891500993 -0.74956858188201381 
		-0.47237598557287808 0.021516525891500993 -0.9346967331942978 -0.077581856613623212 
		0.021516525891500993 -0.93469673319429802 0.36060656811895508 0.021516525891500993 
		-0.74956858188201381 0.75540069707820989 0.021516525891500993 -0.41597918007262258 
		1.0286067111915158 0.021516525891500993 -9.9629224752197991e-017 1.1261128087118544 
		0.021516525891500993 0.41597918007262236 1.028606711191516 0.021516525891500993 0.74956858188201425 
		0.75540069707821034 0.021516525891500993 0.93469673319429802 0.36060656811895536 
		0.021516525891500993 0.93469673319429802 -0.077581856613623101 0.021516525891500993 
		0.74956858188201447 -0.4723759855728783 0.021516525891500993 0 0 0 0 0 0 0 0 0 0.42394249653538751 
		-0.76256413105982301 0.021427897986561056 2.0492764348469886e-017 -0.86193684101847778 
		0.021427897986561056 -0.42394249653538718 -0.76256413105982301 0.021427897986561056 
		-0.76391798231842589 -0.48412798511747979 0.021427897986561056 -0.95259014286407806 
		-0.081776096690562683 0.021427897986561056 -0.95259014286407828 0.36480080819589439 
		0.021427897986561056 -0.76391798231842589 0.76715269662281149 0.021427897986561056 
		-0.42394249653538763 1.0455888425651549 0.021427897986561056 -1.015364813737991e-016 
		1.1449615525238099 0.021427897986561056 0.42394249653538729 1.0455888425651552 0.021427897986561056 
		0.76391798231842611 0.76715269662281194 0.021427897986561056 0.95259014286407828 
		0.36480080819589433 0.021427897986561056 0.95259014286407828 -0.081776096690562405 
		0.021427897986561056 0.76391798231842634 -0.48412798511748023 0.021427897986561056 
		0 0 0 0 0 0 0 0 0 0.43562202734744282 -0.78747125707449417 0.021162014271738416 2.105733589906501e-017 
		-0.88958166527601024 0.021162014271738416 -0.43562202734744249 -0.78747125707449439 
		0.021162014271738416 -0.7849637696251639 -0.50136425111622851 0.021162014271738416 
		-0.97883381037975659 -0.08792764880340731 0.021162014271738416 -0.97883381037975703 
		0.3709523603087389 0.021162014271738416 -0.78496376962516368 0.78438896262156033 
		0.021162014271738416 -0.43562202734744282 1.0704959685798261 0.021162014271738416 
		-1.0433379108548066e-016 1.1726063767813411 0.021162014271738416 0.43562202734744249 
		1.0704959685798265 0.021162014271738416 0.78496376962516368 0.78438896262156055 0.021162014271738416 
		0.97883381037975703 0.37095236030873924 0.021162014271738416 0.97883381037975703 
		-0.087927648803407088 0.021162014271738416 0.7849637696251639 -0.50136425111622895 
		0.021162014271738416 0 0 0 0 0 0 0 0 0 0.43243670076233676 -0.78067840452503867 0.0018632879709166161 
		2.0903361839811805e-017 -0.88204216775122868 0.0018632879709166161 -0.43243670076233665 
		-0.78067840452503867 0.0018632879709166161 -0.77922400945059878 -0.49666345129838751 
		0.0018632879709166161 -0.97167644651184359 -0.086249952772631422 0.0018632879709166161 
		-0.97167644651184382 0.36927466427796279 0.0018632879709166161 -0.77922400945059855 
		0.77968816280371933 0.0018632879709166161 -0.43243670076233676 1.0637031160303707 
		0.0018632879709166161 -1.0357088843684018e-016 1.1650668792565604 0.0018632879709166161 
		0.43243670076233665 1.0637031160303703 0.0018632879709166161 0.779224009450599 0.77968816280371955 
		0.0018632879709166161 0.97167644651184382 0.36927466427796296 0.0018632879709166161 
		0.97167644651184382 -0.086249952772631144 0.0018632879709166161 0.77922400945059922 
		-0.49666345129838796 0.0018632879709166161 0 0 0 0 0 0 0 0 0 0.42553515982794032 
		-0.76596055733455104 0.001641718208563514 2.0569751378096506e-017 -0.86570658978086779 
		0.001641718208563514 -0.42553515982793999 -0.76596055733455104 0.001641718208563514 
		-0.76678786240570829 -0.48647838502639995 0.001641718208563514 -0.95616882479803367 
		-0.08261494470595071 0.001641718208563514 -0.95616882479803389 0.36563965621128203 
		0.001641718208563514 -0.76678786240570806 0.76950309653173199 0.001641718208563514 
		-0.42553515982794043 1.0489852688398835 0.001641718208563514 -1.0191793269811928e-016 
		1.1487313012862013 0.001641718208563514 0.4255351598279401 1.0489852688398831 0.001641718208563514 
		0.76678786240570851 0.76950309653173221 0.001641718208563514 0.95616882479803389 
		0.3656396562112823 0.001641718208563514 0.95616882479803389 -0.082614944705950433 
		0.001641718208563514 0.76678786240570873 -0.4864783850264004 0.001641718208563514 
		0 0 0 0 0 0 0 0 0 0.41385562901588518 -0.74105343131988066 0.0010877938026829792 
		2.0005179827501403e-017 -0.83806176552333544 0.0010877938026829792 -0.41385562901588485 
		-0.74105343131988088 0.0010877938026829792 -0.7457420750989705 -0.46924211902765123 
		0.0010877938026829792 -0.92992515728235647 -0.076463392593106194 0.0010877938026829792 
		-0.9299251572823567 0.35948810409843734 0.0010877938026829792 -0.7457420750989705 
		0.75226683053298271 0.0010877938026829792 -0.4138556290158853 1.0240781428252115 
		0.0010877938026829792 -9.9120622986437723e-017 1.1210864770286675 0.0010877938026829792 
		0.41385562901588496 1.0240781428252119 0.0010877938026829792 0.74574207509897072 
		0.75226683053298316 0.0010877938026829792 0.9299251572823567 0.35948810409843768 
		0.0010877938026829792 0.9299251572823567 -0.076463392593105972 0.0010877938026829792 
		0.74574207509897095 -0.46924211902765167 0.0010877938026829792 0 0 0 0 0 0 0 0 0 
		0.41385562901588518 -0.74105343131988066 0.00066681125421275134 2.0005179827501403e-017 
		-0.83806176552333544 0.00066681125421275134 -0.41385562901588485 -0.74105343131988088 
		0.00066681125421275134 -0.7457420750989705 -0.46924211902765123 0.00066681125421275134 
		-0.92992515728235647 -0.076463392593106194 0.00066681125421275134 -0.9299251572823567 
		0.35948810409843734 0.00066681125421275134 -0.7457420750989705 0.75226683053298271 
		0.00066681125421275134 -0.4138556290158853 1.0240781428252115 0.00066681125421275134 
		-9.9120622986437723e-017 1.1210864770286675 0.00066681125421275134 0.41385562901588496 
		1.0240781428252119 0.00066681125421275134 0.74574207509897072 0.75226683053298316 
		0.00066681125421275134 0.9299251572823567 0.35948810409843768 0.00066681125421275134 
		0.9299251572823567 -0.076463392593105972 0.00066681125421275134 0.74574207509897095 
		-0.46924211902765167 0.00066681125421275134 0 0 0 0 0 0 0 0 0 0.35864330154071505 
		-0.62331065379598094 0.00057818334927572934 1.7336296133779123e-017 -0.70737714176045108 
		0.00057818334927572934 -0.35864330154071489 -0.62331065379598094 0.00057818334927572934 
		-0.64625289873984726 -0.38776158885174716 0.00057818334927572934 -0.80586418357187961 
		-0.047383328059659779 0.00057818334927572934 -0.8058641835718795 0.3304080395649911 
		0.00057818334927572934 -0.64625289873984704 0.67078630035707887 0.00057818334927572934 
		-0.35864330154071522 0.90633536530131242 0.00057818334927572934 -8.5896977076670493e-017 
		0.99040185326578367 0.00057818334927572934 0.35864330154071483 0.90633536530131242 
		0.00057818334927572934 0.64625289873984748 0.67078630035707931 0.00057818334927572934 
		0.8058641835718795 0.33040803956499132 0.00057818334927572934 0.8058641835718795 
		-0.047383328059659557 0.00057818334927572934 0.6462528987398477 -0.3877615888517475 
		0.00057818334927572934 0 0 0 0 0 0 0 0 0 0.35758152601234655 -0.62104636961282889 
		0.021516525891500993 1.728497144736138e-017 -0.70486397591885719 0.021516525891500993 
		-0.35758152601234622 -0.62104636961282889 0.021516525891500993 -0.64433964534832566 
		-0.38619465557913357 0.021516525891500993 -0.80347839561590861 -0.046824096049401187 
		0.021516525891500993 -0.80347839561590884 0.32984880755473217 0.021516525891500993 
		-0.64433964534832566 0.66921936708446572 0.021516525891500993 -0.35758152601234655 
		0.90407108111816092 0.021516525891500993 -8.5642676193790292e-017 0.98788868742418989 
		0.021516525891500993 0.35758152601234633 0.90407108111816115 0.021516525891500993 
		0.64433964534832588 0.66921936708446594 0.021516525891500993 0.80347839561590884 
		0.32984880755473245 0.021516525891500993 0.80347839561590884 -0.046824096049400965 
		0.021516525891500993 0.64433964534832611 -0.38619465557913391 0.021516525891500993 
		0 0 0 0 0 0 0 0 0 0.41704095560099141 -0.74784628386933594 0.021516525891500993 2.015915388675462e-017 
		-0.845601263048117 0.021516525891500993 -0.41704095560099108 -0.74784628386933594 
		0.021516525891500993 -0.75148183527353596 -0.47394291884549189 0.021516525891500993 
		-0.93708252115026847 -0.078141088623881971 0.021516525891500993 -0.93708252115026869 
		0.36116580012921295 0.021516525891500993 -0.75148183527353574 0.75696763035082304 
		0.021516525891500993 -0.41704095560099141 1.030870995374668 0.021516525891500993 
		-9.9883525635078193e-017 1.1286259745534486 0.021516525891500993 0.41704095560099108 
		1.030870995374668 0.021516525891500993 0.75148183527353596 0.75696763035082348 0.021516525891500993 
		0.93708252115026869 0.36116580012921312 0.021516525891500993 0.93708252115026869 
		-0.078141088623881749 0.021516525891500993;
	setAttr ".cp[166:169]" -type "double3" 0.7514818352735364 -0.47394291884549233 
		0.021516525891500993 0 0 0 0 0 0 0 0 0;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "nurbsToPoly1";
createNode mesh -n "nurbsToPolyShape1" -p "nurbsToPoly1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 67 ".pt";
	setAttr ".pt[0:1]" -type "float3" 0 1.8626451e-009 0  0 1.8626451e-009 
		0 ;
	setAttr ".pt[5]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[7]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[10]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[14]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[17]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[20]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[27]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[34:37]" -type "float3" 0 -0.014323894 0  0 -0.014323894 0  
		0 -0.014323894 0  0 -0.026115518 0 ;
	setAttr ".pt[46:49]" -type "float3" 0 -0.026115518 0  0 -0.014323894 0  
		0 -0.014323894 0  0 -0.026115518 0 ;
	setAttr ".pt[52]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[77]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[96:104]" -type "float3" 0 -0.038277283 0  0 -0.038277283 0  
		0 -0.088714935 0  0 -0.088714935 0  0 -0.088714935 0  0 -0.038277283 0  0 -0.019657716 
		0  0 -0.019657716 0  0 -0.019657716 0 ;
	setAttr ".pt[107:112]" -type "float3" 0 -0.038277283 0  -1.4551915e-011 -0.087353572 
		0  0 -0.088714942 0  0 -0.038277283 0  -1.4551915e-011 -0.091267191 0  -1.4551915e-011 
		-0.087353572 0 ;
	setAttr ".pt[115:116]" -type "float3" 0 -0.019657716 0  0 -0.019657716 0 ;
	setAttr ".pt[145:146]" -type "float3" 0 -0.088714935 0  -1.4551915e-011 -0.088714935 
		0 ;
	setAttr ".pt[153:154]" -type "float3" 0 -0.047878623 0  0 -0.070849031 0 ;
	setAttr ".pt[156:157]" -type "float3" 0 -0.017251419 0  0 -0.017251419 0 ;
	setAttr ".pt[270:271]" -type "float3" 0 -0.017251419 0  0 -0.017251419 0 ;
	setAttr ".pt[278:279]" -type "float3" 0 -0.017251419 0  0 -0.017251419 0 ;
	setAttr ".pt[281:282]" -type "float3" 0 -0.017251419 0  0 -0.017251419 0 ;
	setAttr ".pt[312:313]" -type "float3" 0 -0.017251419 0  0 -0.017251419 0 ;
	setAttr ".pt[320:321]" -type "float3" 0 -0.017251439 0  0 -0.017251447 0 ;
	setAttr ".pt[323:324]" -type "float3" 0 -0.017251439 0  0 -0.017251439 0 ;
	setAttr ".pt[438:439]" -type "float3" 0 -0.017251439 0  0 -0.017251439 0 ;
	setAttr ".pt[446:447]" -type "float3" 0 -0.017251439 0  0 -0.017251439 0 ;
	setAttr ".pt[519]" -type "float3" 0 -0.026115518 0 ;
	setAttr ".pt[591]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[598]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[613]" -type "float3" 0 -0.014323894 0 ;
	setAttr ".pt[675]" -type "float3" 0 -0.038277283 0 ;
	setAttr ".pt[677]" -type "float3" 0 1.8626451e-009 0 ;
	setAttr ".pt[680:681]" -type "float3" 0 -0.088714935 0  0 1.8626451e-009 0 ;
	setAttr ".pt[687]" -type "float3" 0 -0.019657716 0 ;
	setAttr ".dr" 1;
createNode transform -n "curve4";
createNode nurbsCurve -n "curveShape4" -p "curve4";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 5 0 no 3
		6 0 1 2 3 4 5
		6
		0 1.0003003693014689 -0.14548956545100483
		0 1.1512886018916277 -0.15310241751437417
		0 1.1487509845371713 -0.18355382576785162
		0 1.1830088188223333 -0.18989786915399279
		0 1.1880840535312462 -0.32058516290849998
		0 1.001569177978697 -0.31677873687681535
		;
createNode transform -n "revolvedSurface4";
	setAttr ".t" -type "double3" 0 1.0022637660511284 0 ;
	setAttr ".s" -type "double3" 0.20826359586377105 0.18054433979993076 0.99999999999999656 ;
createNode nurbsSurface -n "revolvedSurfaceShape4" -p "revolvedSurface4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "curve5";
createNode nurbsCurve -n "curveShape5" -p "curve5";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 31 0 no 3
		32 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31
		32
		0 1.267329401000399 1.3052519612350144
		0 1.1858795876232562 1.2441646012021572
		0 1.0007663754024769 1.2386112048355338
		0 0.88229391958117831 1.2386112048355338
		0 0.89340071231442497 1.3367212073125467
		0 0.91376316565871074 1.3589347927790403
		0 1.0377890178466327 1.3626370570234558
		0 1.0618537354353341 1.3478280000457936
		0 1.0748116602907887 1.3515302642902092
		0 1.0822161887796198 1.3626370570234558
		0 1.0859184530240353 1.5125787589222872
		0 1.0840673209018277 1.5255366837777418
		0 1.0748116602907887 1.5347923443887805
		0 1.0674071318019576 1.540345740755404
		0 1.0600026033131262 1.540345740755404
		0 1.0544492069465028 1.5292389480221573
		0 1.045193546335464 1.5662615904663131
		0 0.92857222263637307 1.5681127225885207
		0 0.77677938861533413 1.5773683831995597
		0 0.823057691670529 1.7217566887317677
		0 0.87303825897013931 1.7291612172205988
		0 0.88044278745897053 1.673627253554365
		0 1.0396401499688406 1.6662227250655337
		0 1.054449206946503 1.6347534789880014
		0 1.4950186520319573 1.6162421577659234
		0 1.5209345017428664 1.5995819686660533
		0 1.5301901623539054 1.5829217795661832
		0 1.5375946908427365 1.5662615904663131
		0 1.5394458229649444 1.5458991371220274
		0 1.5338924265983209 1.5162810231667028
		0 1.5209345017428664 1.4996208340668327
		0 1.2636271367559833 1.3034008291128067
		;
createNode transform -n "revolvedSurface5";
	setAttr ".t" -type "double3" 0 0.98438279863445033 0.66044663198971987 ;
	setAttr ".s" -type "double3" 0.13600163539302268 0.13633834357542257 1.118620468316093 ;
	setAttr ".rp" -type "double3" 0 -4.6435547042000587e-017 0.69119976901763791 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-016 1.4838862110280662 ;
	setAttr ".spt" -type "double3" 0 3.9765366280806201e-016 -0.79268644201042826 ;
createNode nurbsSurface -n "revolvedSurfaceShape5" -p "revolvedSurface5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "nurbsToPoly2";
createNode mesh -n "nurbsToPolyShape2" -p "nurbsToPoly2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
createNode transform -n "curve6";
createNode nurbsCurve -n "curveShape6" -p "curve6";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 14 0 no 3
		15 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14
		15
		0 0.37179603172050801 -0.48303750816328039
		0 0.20850823863047219 -0.46733675882770009
		0 0.064061344743132784 -0.44849585962500366
		0 -0.0018818024663047439 -0.44221555989077144
		0 -0.2405331923671262 -0.36999211294710177
		0 -0.51058608093910851 -0.27264746706650356
		0 -0.67701402389626053 -0.82531384367893246
		0 -0.49802548147064418 -0.89125699088836996
		0 -0.31903693904502806 -0.95091983836357541
		0 -0.17144989529057258 -0.99488193650320045
		0 -0.0081621022005369352 -1.0294235850414772
		0 0.23676958743451687 -1.0482644842441737
		0 0.28701198530837413 -1.0325637349085934
		0 0.3937770807903207 -0.48303750816328039
		0 0.37493618158762398 -0.47989735829616431
		;
createNode transform -n "pCube1";
	setAttr ".t" -type "double3" 0 0.7332363691611451 -3.0334398013519457 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[6:8]" -type "float3" 0.00041176379 -0.062451206 0.0029169731  
		0 -0.0249005 1.4901161e-008  0.00040082398 -0.059850294 0.011174323 ;
	setAttr ".pt[91:93]" -type "float3" 0 -9.3132257e-009 0  0 -9.3132257e-009 
		0  0 -9.3132257e-009 0 ;
	setAttr ".pt[101:103]" -type "float3" 0 0.067904562 0.012934204  0 0.067904562 
		0.012934204  0 0.067904562 0.012934204 ;
	setAttr ".dr" 1;
createNode transform -n "curve7";
createNode nurbsCurve -n "curveShape7" -p "curve7";
	setAttr -k off ".v";
	setAttr ".cc" -type "nurbsCurve" 
		1 3 0 no 3
		4 0 1 2 3
		4
		0 1.0013259243181043 -2.2212734225625046
		0 1.0833572362707509 -2.2147972663557169
		0 1.0855159550063469 -2.0982264546335347
		0 1.0013259243181043 -2.0982264546335347
		;
createNode transform -n "revolvedSurface6";
	setAttr ".t" -type "double3" 0 0.94347877563052618 -1.7154299431673667 ;
	setAttr ".s" -type "double3" 0.16895476913719099 0.12271663943736134 0.96530473338858547 ;
	setAttr ".rp" -type "double3" 0 -6.448349073219301e-017 -0.4408116273317994 ;
	setAttr ".sp" -type "double3" 0 -4.4408920985006262e-016 -2.1597499385980194 ;
	setAttr ".spt" -type "double3" 0 3.7960571911786961e-016 1.71893831126622 ;
createNode nurbsSurface -n "revolvedSurfaceShape6" -p "revolvedSurface6";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr -s 68 ".cp[0:67]" -type "double3" 0.08152530524428403 0 0 3.940814809700813e-018 
		0 0 -0.08152530524428403 0 0 -0.14690352394268347 0 0 -0.18318569807074669 0 0 -0.18318569807074681 
		0 0 -0.14690352394268347 0 0 -0.08152530524428403 0 0 -1.9525743951311e-017 0 0 0.08152530524428403 
		0 0 0.14690352394268347 0 0 0.18318569807074681 0 0 0.18318569807074681 0 0 0.14690352394268347 
		0 0 0 0 0 0 0 0 0 0 0 0.088204077444337503 0 0 4.2636569544523493e-018 0 0 -0.088204077444337448 
		0 0 -0.15893825559880392 0 0 -0.19819276298214183 0 0 -0.19819276298214206 0 0 -0.15893825559880392 
		0 0 -0.088204077444337559 0 0 -2.1125345394036328e-017 0 0 0.088204077444337503 0 
		0 0.15893825559880403 0 0 0.19819276298214206 0 0 0.19819276298214206 0 0 0.15893825559880403 
		0 0 0 0 0 0 0 0 0 0 0 0.088379834607496766 0 0 4.2721528003668697e-018 0 0 -0.088379834607496766 
		0 0 -0.15925495906343867 0 0 -0.19858768574296826 0 0 -0.19858768574296826 0 0 -0.15925495906343867 
		0 0 -0.088379834607496766 0 0 -2.1167440168844879e-017 0 0 0.088379834607496766 0 
		0 0.15925495906343878 0 0 0.19858768574296826 0 0 0.19858768574296826 0 0 0.15925495906343889 
		0 0 0 0 0 0 0 0 0 0 0 0.08152530524428403 0 0 3.940814809700813e-018 0 0 -0.08152530524428403 
		0 0 -0.14690352394268347 0 0 -0.18318569807074669 0 0 -0.18318569807074681 0 0 -0.14690352394268347 
		0 0 -0.08152530524428403 0 0 -1.9525743951311e-017 0 0 0.08152530524428403 0 0 0.14690352394268347 
		0 0 0.18318569807074681 0 0 0.18318569807074681 0 0 0.14690352394268347 0 0 0 0 0 
		0 0 0 0 0 0;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 3;
	setAttr ".cps" 1;
createNode transform -n "pCube2";
	setAttr ".s" -type "double3" 0.50788056347503285 1 1 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[624:625]" -type "float3" 0 0 -0.38765776  0 0 -0.38765776 ;
	setAttr ".pt[648:649]" -type "float3" 0 0 -0.38765776  0 0 -0.38765776 ;
	setAttr ".dr" 1;
createNode transform -n "pCube3";
	setAttr ".t" -type "double3" 0 0.16875805622278323 -1.8797560572892209 ;
	setAttr ".r" -type "double3" 24.620305378193937 -1.6592493918344957 1.3983432218505909 ;
	setAttr ".s" -type "double3" 0.23603936363210204 1 -0.39947980961021162 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 10 ".pt";
	setAttr ".pt[4:5]" -type "float3" 0.0011364145 -0.013340002 -0.11236324  
		0.0011364145 -0.013340002 -0.11236324 ;
	setAttr ".pt[9:10]" -type "float3" 0.016752193 0.056868039 -0.31063953  
		0.016752193 0.056868039 -0.31063953 ;
	setAttr ".pt[29:30]" -type "float3" 0.001891376 0.0064205797 -0.035072215  
		0.001891376 0.0064205797 -0.035072215 ;
	setAttr ".pt[48:49]" -type "float3" 0.011348256 0.038523488 -0.21043332  
		0.011348256 0.038523488 -0.21043332 ;
	setAttr ".pt[52:53]" -type "float3" 0.0048635397 0.016510066 -0.090185694  
		0.0048635397 0.016510066 -0.090185694 ;
	setAttr ".dr" 1;
createNode lightLinker -n "lightLinker1";
	setAttr -s 3 ".lnk";
	setAttr -s 3 ".slnk";
createNode displayLayerManager -n "layerManager";
	setAttr ".cdl" 16;
	setAttr -s 17 ".dli[1:16]"  1 2 3 4 5 6 7 8 
		9 10 11 12 13 14 15 16;
	setAttr -s 15 ".dli";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode lambert -n "lambert2";
createNode shadingEngine -n "lambert2SG";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
createNode file -n "file1";
	setAttr ".ftn" -type "string" "C:/Documents and Settings/iD Student/Desktop/M16.jpg";
createNode place2dTexture -n "place2dTexture1";
	setAttr ".rf" 90;
createNode displayLayer -n "layer1";
	setAttr ".do" 1;
createNode displayLayer -n "layer2";
	setAttr ".do" 2;
createNode makeNurbPlane -n "makeNurbPlane1";
	setAttr ".ax" -type "double3" 0 1 0 ;
createNode revolve -n "revolve1";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode script -n "uiConfigurationScriptNode";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n"
		+ "                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n"
		+ "                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n"
		+ "            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 1\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n"
		+ "                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n"
		+ "                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 1\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n"
		+ "            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n"
		+ "            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n"
		+ "                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n"
		+ "                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n"
		+ "            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n"
		+ "            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n"
		+ "\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 8192\n                -fogging 0\n"
		+ "                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n"
		+ "                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -shadows 0\n                $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n"
		+ "            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 8192\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nRigids 1\n"
		+ "            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -shadows 0\n            $editorName;\nmodelEditor -e -viewSelected 0 $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUnitlessCurves 1\n                -showCompounds 1\n"
		+ "                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -autoExpand 0\n            -showDagOnly 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n"
		+ "            -attrAlphaOrder \"default\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 1\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n"
		+ "                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n"
		+ "                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n"
		+ "                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n"
		+ "                -showMuteInfo 0\n                -autoExpand 0\n                -showDagOnly 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -zoom 1\n                -animateTransition 0\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n"
		+ "                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Texture Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Texture Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"multiListerPanel\" (localizedPanelLabel(\"Multilister\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"multiListerPanel\" -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Multilister\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"devicePanel\" (localizedPanelLabel(\"Devices\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tdevicePanel -unParent -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tdevicePanel -edit -l (localizedPanelLabel(\"Devices\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"webBrowserPanel\" (localizedPanelLabel(\"Web Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"webBrowserPanel\" -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Web Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 8192\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -shadows 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode revolve -n "revolve2";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode displayLayer -n "layer3";
	setAttr ".do" 3;
createNode displayLayer -n "layer4";
	setAttr ".do" 4;
createNode revolve -n "revolve3";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode displayLayer -n "layer5";
	setAttr ".do" 5;
createNode nurbsTessellate -n "nurbsTessellate1";
	setAttr ".pt" 1;
	setAttr ".chr" 0.9;
	setAttr ".ut" 1;
	setAttr ".vt" 1;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
	setAttr ".mnd" yes;
	setAttr ".ntr" no;
createNode displayLayer -n "layer6";
	setAttr ".do" 6;
createNode revolve -n "revolve4";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode displayLayer -n "layer7";
	setAttr ".do" 7;
createNode revolve -n "revolve5";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode displayLayer -n "layer8";
	setAttr ".do" 8;
createNode nurbsTessellate -n "nurbsTessellate2";
	setAttr ".pt" 1;
	setAttr ".chr" 0.9;
	setAttr ".ut" 1;
	setAttr ".vt" 1;
	setAttr ".ucr" no;
	setAttr ".cht" 0.01;
	setAttr ".mnd" yes;
	setAttr ".ntr" no;
createNode displayLayer -n "layer9";
	setAttr ".do" 9;
createNode displayLayer -n "layer10";
	setAttr ".do" 10;
createNode polyCube -n "polyCube1";
	setAttr ".sw" 2;
	setAttr ".sh" 2;
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[22:24]" "e[37:39]" "e[41]" "e[45]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.80433464050292969;
	setAttr ".re" 41;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk[0:25]" -type "float3"  0.36365157 0.2659052 0.003545396 
		0 0.2659052 0.003545396 -0.36365157 0.2659052 0.003545396 0.36365157 -0.010636198 
		0.30845004 0 -0.010636198 0.30845004 -0.36365157 -0.010636198 0.30845004 0.36365157 
		-0.13827071 0.31554085 0 -0.13827071 0.31554085 -0.36365157 -0.13827071 0.31554085 
		0.36365157 -0.15245232 -0.042544823 0 -0.15245232 -0.042544823 -0.36365157 -0.15245232 
		-0.042544823 0.36365157 -0.15954313 -0.21272416 0 -0.15954313 -0.21272416 -0.36365157 
		-0.15954313 -0.21272416 0.36365157 -0.10990747 -0.24108735 0 -0.10990747 -0.24108735 
		-0.36365157 -0.10990747 -0.24108735 0.36365157 -0.24463278 -0.13827069 0 -0.24463278 
		-0.13827069 -0.36365157 -0.24463278 -0.13827069 0.36365157 0.13472527 -0.017727006 
		0 0.13472527 -0.017727006 -0.36365157 0.13472527 -0.017727006 -0.36365157 0 0 0.36365157 
		0 0;
createNode polySplitRing -n "polySplitRing2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[25:27]" "e[34:36]" "e[40]" "e[44]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.6107526421546936;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing3";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[34:36]" "e[40]" "e[44]" "e[73]" "e[75]" "e[77]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.39524295926094055;
	setAttr ".dr" no;
	setAttr ".re" 40;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 26 ".tk";
	setAttr ".tk[0:2]" -type "float3" 0 0.17372474 0.060271829  0 0.17372474 
		0.060271829  0 0.17372474 0.060271829 ;
	setAttr ".tk[12:14]" -type "float3" 0.00086232903 -0.023805916 0  0 -0.023805916 
		0  -0.00086232903 -0.023805916 0 ;
	setAttr ".tk[18]" -type "float3" 0.040183824 0 0 ;
	setAttr ".tk[20:38]" -type "float3" -0.040183824 0 0  0.040183824 0.092180468 
		0.17727013  0 0.092180468 0.17727013  -0.040183824 0.092180468 0.17727013  0 -0.014181608 
		-0.0070908042  0 -0.014181608 -0.0070908042  0 -0.014181608 -0.13117988  -0.040183824 
		-0.01772701 0.070908047  0 -0.01772701 0.070908047  0.040183824 -0.01772701 0.070908047  
		0 -0.014181608 -0.13117988  0 -0.0028988544 -0.11015646  0 -0.0028988544 -0.11015646  
		0 -0.0028988544 -0.11015646  0 0 -0.031908616  -0.040183824 0.028363215 0.10636207  
		0 0.028363215 0.10636207  0.040183824 0.028363215 0.10636207  0 0 -0.031908616 ;
createNode polySplitRing -n "polySplitRing4";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[16:18]" "e[31:33]" "e[42]" "e[46]" "e[50]" "e[56]" "e[66]" "e[72]" "e[82]" "e[88]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.60108089447021484;
	setAttr ".re" 66;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[73]" "e[75]" "e[77]" "e[80:81]" "e[83]" "e[85]" "e[87]" "e[98]" "e[108]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.41796362400054932;
	setAttr ".dr" no;
	setAttr ".re" 98;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing6";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 9 "e[80:81]" "e[83]" "e[85]" "e[87]" "e[108]" "e[124]" "e[127]" "e[129]" "e[131]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.30512696504592896;
	setAttr ".re" 124;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak3";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[35:37]" -type "float3" 0 0.012934215 0.012934207  0 0.012934215 
		0.012934207  0 0.012934215 0.012934207 ;
	setAttr ".tk[43:45]" -type "float3" 0 0.071138084 -0.0097006522  0 0.071138084 
		-0.0097006522  0 0.071138084 -0.0097006522 ;
	setAttr ".tk[51:55]" -type "float3" 0 -0.061437454 0.035569061  0 0.054970365 
		0  0 0.054970365 0  0 0.054970365 0  0 -0.061437454 0.035569061 ;
	setAttr ".tk[64]" -type "float3" 0 0.071138121 0 ;
	setAttr ".tk[70:73]" -type "float3" 0 0.071138121 0  0 0.21341437 0.038802613  
		0 0.21341437 0.038802613  0 0.21341437 0.038802613 ;
createNode polySplitRing -n "polySplitRing7";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[73]" "e[75]" "e[77]" "e[98]" "e[125]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.3308565616607666;
	setAttr ".re" 98;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak4";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[43:45]" -type "float3" 0 -0.11964139 -0.025868405  0 -0.11964139 
		-0.025868405  0 -0.11964139 -0.025868405 ;
	setAttr ".tk[50:51]" -type "float3" 0 0.045269709 0.051736817  0 0.10994072 
		-0.077605218 ;
	setAttr ".tk[55:56]" -type "float3" 0 0.10994072 -0.077605218  0 0.045269709 
		0.051736817 ;
	setAttr ".tk[71:74]" -type "float3" 0 -0.045269702 -0.087305874  0 -0.045269702 
		-0.087305874  0 -0.045269702 -0.087305874  0 0.016167754 -0.064671017 ;
	setAttr ".tk[80:83]" -type "float3" 0 0.016167754 -0.064671017  0 -0.12934203 
		-0.13257557  0 -0.12934203 -0.13257557  0 -0.12934203 -0.13257557 ;
createNode polySplitRing -n "polySplitRing8";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[125]" "e[133]" "e[135]" "e[137]" "e[139]" "e[141]" "e[164]" "e[167]" "e[169]" "e[171]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0.7332363691611451 -3.0334398013519457 1;
	setAttr ".wt" 0.44155645370483398;
	setAttr ".dr" no;
	setAttr ".re" 164;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode displayLayer -n "layer11";
	setAttr ".do" 11;
createNode revolve -n "revolve6";
	setAttr ".s" 14;
	setAttr ".ax" -type "double3" 0 0 1 ;
createNode displayLayer -n "layer12";
	setAttr ".do" 12;
createNode polyCube -n "polyCube2";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.17501261830329895;
	setAttr ".dr" no;
	setAttr ".re" 5;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk[0:7]" -type "float3"  0.30915257 0.34087127 -1.5034064 
		-0.30633467 0.34087127 -1.5034064 0.30915257 -0.51339954 -0.94613737 -0.30633467 
		-0.51339942 -0.94613737 0.30915257 -0.089908488 0.032462161 -0.30633467 -0.089908488 
		0.032462161 0.30915257 0.78262544 -0.54763591 -0.30633467 0.78262544 -0.54763591;
createNode polySplitRing -n "polySplitRing10";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6:7]" "e[10:11]" "e[16]" "e[19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.86943823099136353;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing11";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[19]" "e[25]" "e[27]" "e[29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.76350051164627075;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing12";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[19]" "e[37]" "e[39]" "e[41]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.63944923877716064;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing13";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[19]" "e[49]" "e[51]" "e[53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.63295352458953857;
	setAttr ".dr" no;
	setAttr ".re" 19;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "e[10:11]" "e[19]" "e[61]" "e[63]" "e[65]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.45852974057197571;
	setAttr ".re" 19;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 12 "e[8:9]" "e[12:13]" "e[28]" "e[31]" "e[40]" "e[43]" "e[52]" "e[55]" "e[64]" "e[67]" "e[76]" "e[79]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.83332580327987671;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing16";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[83]" "e[85]" "e[87]" "e[89]" "e[91]" "e[93]" "e[95]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.80474483966827393;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing17";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[111]" "e[113]" "e[115]" "e[117]" "e[119]" "e[121]" "e[123]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.73321074247360229;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing18";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[139]" "e[141]" "e[143]" "e[145]" "e[147]" "e[149]" "e[151]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.60542607307434082;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing19";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[167]" "e[169]" "e[171]" "e[173]" "e[175]" "e[177]" "e[179]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.66371661424636841;
	setAttr ".dr" no;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing20";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[4:5]" "e[15]" "e[17]" "e[22]" "e[26]" "e[34]" "e[38]" "e[46]" "e[50]" "e[58]" "e[62]" "e[70]" "e[74]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.78179186582565308;
	setAttr ".dr" no;
	setAttr ".re" 17;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing21";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 13 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[195]" "e[197]" "e[199]" "e[201]" "e[203]" "e[205]" "e[207]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.43260639905929565;
	setAttr ".re" 9;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing22";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[6:7]" "e[16]" "e[20:21]" "e[23]" "e[94]" "e[98]" "e[122]" "e[126]" "e[150]" "e[154]" "e[178]" "e[182]" "e[206]" "e[210]" "e[234]" "e[238]" "e[262]" "e[266]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.1169579029083252;
	setAttr ".re" 126;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[0:3]" -type "float3" 0 -0.52035725 0.17308518  0 -0.52035725 
		0.17308518  0 -0.49766073 0.1621846  0 -0.49766073 0.16218461 ;
	setAttr ".tk[6:9]" -type "float3" 0 0.0044139489 0.011034872  0 0.0044139489 
		0.011034872  0 -0.5165354 0.1675391  0 -0.5165354 0.1675391 ;
	setAttr ".tk[13:14]" -type "float3" 0 0 0.0044139484  0 0 0.0044139484 ;
	setAttr ".tk[19:20]" -type "float3" 0 0 -0.011034871  0 0 -0.011034871 ;
	setAttr ".tk[31:32]" -type "float3" 0 0 -0.0022069744  0 0 -0.0022069744 ;
	setAttr ".tk[37:38]" -type "float3" 0 0 -0.0044139489  0 0 -0.0044139489 ;
	setAttr ".tk[49:50]" -type "float3" 0 -0.51338953 0.16664664  0 -0.51338953 
		0.16664664 ;
	setAttr ".tk[63:64]" -type "float3" 0 -0.5103184 0.1657754  0 -0.5103184 
		0.1657754 ;
	setAttr ".tk[77:78]" -type "float3" 0 -0.50694138 0.16481742  0 -0.50694138 
		0.16481741 ;
	setAttr ".tk[91:92]" -type "float3" 0 -0.50327951 0.16377857  0 -0.50327951 
		0.16377857 ;
	setAttr ".tk[105:106]" -type "float3" 0 -0.50139004 0.16324256  0 -0.50139004 
		0.16324256 ;
	setAttr ".tk[112:113]" -type "float3" 0 0.0044139489 0.013241847  0 0.0044139489 
		0.013241847 ;
	setAttr ".tk[117:122]" -type "float3" 0 0 -0.011034871  0 0 -4.6566129e-010  
		0 -0.51966578 0.16842712  0 -0.51966578 0.16842712  0 0 -4.6566129e-010  0 0 -0.011034871 ;
	setAttr ".tk[133:134]" -type "float3" 0 -0.4992741 0.16264229  0 -0.4992741 
		0.16264229 ;
createNode polySplitRing -n "polySplitRing23";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[20:21]" "e[23]" "e[94]" "e[122]" "e[150]" "e[178]" "e[206]" "e[234]" "e[262]" "e[276:277]" "e[279]" "e[281]" "e[283]" "e[285]" "e[287]" "e[301]" "e[309]" "e[313]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.55542975664138794;
	setAttr ".dr" no;
	setAttr ".re" 309;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0:3]" -type "float3" 0 0.0026607367 0.0053214733  0 0.0026607367 
		0.0053214733  0 0 0.011973316  0 0 0.011973316 ;
	setAttr ".tk[13:14]" -type "float3" 0 -0.032647926 0.00099247321  0 -0.032647926 
		0.00099247321 ;
	setAttr ".tk[25:26]" -type "float3" 0 0 -0.0085639618  0 0 -0.0085639618 ;
	setAttr ".tk[31:32]" -type "float3" 0 0 -0.0048936922  0 0 -0.0048936922 ;
	setAttr ".tk[37:38]" -type "float3" 0 0.0048936927 -0.0012234231  0 0.0048936927 
		-0.0012234231 ;
	setAttr ".tk[119:120]" -type "float3" 0 0.0013303683 0.0053214733  0 0.0013303683 
		0.0053214733 ;
	setAttr ".tk[145:146]" -type "float3" 0 0 0.0079822103  0 0 0.0079822103 ;
	setAttr ".tk[155:156]" -type "float3" 0 0 0.0013303683  0 0 0.0013303683 ;
createNode polySplitRing -n "polySplitRing24";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[10:11]" "e[19]" "e[73]" "e[75]" "e[77]" "e[84]" "e[107]" "e[112]" "e[135]" "e[140]" "e[163]" "e[168]" "e[191]" "e[196]" "e[219]" "e[224]" "e[247]" "e[252]" "e[275]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.89368557929992676;
	setAttr ".dr" no;
	setAttr ".re" 77;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak8";
	setAttr ".uopa" yes;
	setAttr -s 24 ".tk";
	setAttr ".tk[4:7]" -type "float3" 0 0.76918149 0.0016945008  0 0.76918149 
		0.0016945008  0 0.81553292 1.3038516e-008  0 0.81553292 1.3038516e-008 ;
	setAttr ".tk[10:11]" -type "float3" 0 0.87614614 1.4901161e-008  0 0.87614614 
		1.4901161e-008 ;
	setAttr ".tk[40:43]" -type "float3" 0 0 0.0016945008  0 0 0.0016945008  
		0 0.86544967 0  0 0.86544967 0 ;
	setAttr ".tk[56:57]" -type "float3" 0 0.84762228 0  0 0.84762228 0 ;
	setAttr ".tk[70:71]" -type "float3" 0 0.82622933 0  0 0.82622933 0 ;
	setAttr ".tk[84:85]" -type "float3" 0 0.80483639 0  0 0.80483639 0 ;
	setAttr ".tk[98:99]" -type "float3" 0 0.79057449 0  0 0.79057449 0 ;
	setAttr ".tk[112:113]" -type "float3" 0 0.88434011 1.4901161e-008  0 0.88434011 
		1.4901161e-008 ;
	setAttr ".tk[126:127]" -type "float3" 0 0.77987796 0  0 0.77987796 0 ;
	setAttr ".tk[178:179]" -type "float3" 0 0 -0.0054937848  0 0 -0.0054937848 ;
createNode polySplitRing -n "polySplitRing25";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[373]" "e[375]" "e[377]" "e[381]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.8797486424446106;
	setAttr ".dr" no;
	setAttr ".re" 75;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing26";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[397]" "e[399]" "e[401]" "e[403]" "e[405]" "e[407]" "e[411]" "e[413]" "e[415]" "e[419]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.85824710130691528;
	setAttr ".dr" no;
	setAttr ".re" 75;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing27";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[437]" "e[439]" "e[441]" "e[443]" "e[445]" "e[447]" "e[451]" "e[453]" "e[455]" "e[459]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.88463234901428223;
	setAttr ".dr" no;
	setAttr ".re" 77;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing28";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[479]" "e[481]" "e[483]" "e[485]" "e[487]" "e[489]" "e[493]" "e[495]" "e[497]" "e[501]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.86640310287475586;
	setAttr ".dr" no;
	setAttr ".re" 77;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing29";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[397]" "e[399]" "e[401]" "e[403]" "e[405]" "e[407]" "e[411]" "e[413]" "e[415]" "e[419]" "e[436]" "e[449]" "e[457]" "e[461]" "e[463]" "e[465]" "e[467]" "e[469]" "e[471]" "e[473]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47761046886444092;
	setAttr ".re" 473;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing30";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[359]" "e[361]" "e[363]" "e[365]" "e[367]" "e[369]" "e[373]" "e[375]" "e[377]" "e[381]" "e[396]" "e[409]" "e[417]" "e[421]" "e[423]" "e[425]" "e[427]" "e[429]" "e[431]" "e[433]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46588531136512756;
	setAttr ".re" 433;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing31";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[84]" "e[112]" "e[140]" "e[168]" "e[196]" "e[224]" "e[252]" "e[356:357]" "e[371]" "e[379]" "e[383]" "e[385]" "e[387]" "e[389]" "e[391]" "e[393]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.33132514357566833;
	setAttr ".re" 356;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing32";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[519]" "e[521]" "e[523]" "e[525]" "e[527]" "e[529]" "e[533]" "e[535]" "e[537]" "e[541]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.74607646465301514;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak9";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[180:181]" -type "float3" 0 0 0.098427348  0 0 0.098427348 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.098427348 ;
	setAttr ".tk[219:220]" -type "float3" 0 0 0.098427348  0 0 0.098427348 ;
	setAttr ".tk[239:241]" -type "float3" 0 0 0.098427348  0 0 0.098427348  0 
		0 0.098427348 ;
	setAttr ".tk[260:261]" -type "float3" 0 0 0.11754123  0 0 0.11754123 ;
	setAttr ".tk[280:281]" -type "float3" 0 0 0.098427348  0 0 0.098427348 ;
	setAttr ".tk[300:301]" -type "float3" 0 0 0.098427348  0 0 0.098427348 ;
	setAttr ".tk[320:321]" -type "float3" 0 0 0.098427348  0 0 0.098427348 ;
createNode polySplitRing -n "polySplitRing33";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[519]" "e[521]" "e[523]" "e[525]" "e[527]" "e[529]" "e[533]" "e[535]" "e[537]" "e[541]" "e[676:677]" "e[679]" "e[693]" "e[701]" "e[705]" "e[707]" "e[709]" "e[711]" "e[713]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.13557028770446777;
	setAttr ".re" 676;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing34";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 20 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[681]" "e[683]" "e[685]" "e[687]" "e[689]" "e[691]" "e[695]" "e[697]" "e[699]" "e[703]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.82669848203659058;
	setAttr ".dr" no;
	setAttr ".re" 275;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing35";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 18 "e[10:11]" "e[19]" "e[84]" "e[112]" "e[140]" "e[168]" "e[196]" "e[224]" "e[252]" "e[636:637]" "e[651]" "e[659]" "e[663]" "e[665]" "e[667]" "e[669]" "e[671]" "e[673]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.40833204984664917;
	setAttr ".re" 637;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak10";
	setAttr ".uopa" yes;
	setAttr -s 22 ".tk";
	setAttr ".tk[180:181]" -type "float3" 0 0 0.041840557  0 0 0.041840557 ;
	setAttr ".tk[200]" -type "float3" 0 0 0.040555581 ;
	setAttr ".tk[219:220]" -type "float3" 0 0 0.041840557  0 0 0.040555581 ;
	setAttr ".tk[239:241]" -type "float3" 0 0 0.040555581  0 0 0.040555581  0 
		0 0.040555581 ;
	setAttr ".tk[260:261]" -type "float3" 0 -0.0033859354 0.020127203  0 -0.0033859354 
		0.020127203 ;
	setAttr ".tk[280:281]" -type "float3" 0 0 0.040555581  0 0 0.040555581 ;
	setAttr ".tk[300:301]" -type "float3" 0 0 0.041840557  0 0 0.041840557 ;
	setAttr ".tk[320:321]" -type "float3" 0 0 0.041840557  0 0 0.041840557 ;
	setAttr ".tk[341:342]" -type "float3" 0 -0.0022801096 -0.064328238  0 -0.0022801096 
		-0.064328238 ;
	setAttr ".tk[361:362]" -type "float3" 0 -0.0022801096 -0.064328238  0 -0.0022801096 
		-0.064328238 ;
	setAttr ".tk[381:382]" -type "float3" 0 0 -0.072038978  0 0 -0.072038978 ;
createNode polySplitRing -n "polySplitRing36";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 41 "e[8:9]" "e[31]" "e[43]" "e[55]" "e[67]" "e[79]" "e[251]" "e[253]" "e[255]" "e[257]" "e[259]" "e[261]" "e[263]" "e[286]" "e[290]" "e[332]" "e[336]" "e[360]" "e[395]" "e[398]" "e[434]" "e[438]" "e[474]" "e[480]" "e[515]" "e[520]" "e[555]" "e[560]" "e[595]" "e[600]" "e[635]" "e[640]" "e[675]" "e[678]" "e[682]" "e[718]" "e[722]" "e[758]" "e[762]" "e[798]" "e[834]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.90639591217041016;
	setAttr ".dr" no;
	setAttr ".re" 675;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing37";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[636:637]" "e[651]" "e[659]" "e[663]" "e[665]" "e[667]" "e[669]" "e[671]" "e[673]" "e[797]" "e[799]" "e[801]" "e[803]" "e[805]" "e[807]" "e[811]" "e[813]" "e[815]" "e[819]" "e[912]" "e[919]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.58155530691146851;
	setAttr ".dr" no;
	setAttr ".re" 636;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak11";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[4:5]" -type "float3" 0 0.09849903 0  0 0.09849903 0 ;
	setAttr ".tk[98:99]" -type "float3" 0 0.09849903 0  0 0.09849903 0 ;
	setAttr ".tk[126:127]" -type "float3" 0 0.09849903 0  0 0.09849903 0 ;
	setAttr ".tk[322:323]" -type "float3" 0 0.09849903 0  0 0.09849903 0 ;
	setAttr ".tk[400:402]" -type "float3" 0 0.050705444 0  0 0.09849903 0  0 0.09849903 
		0 ;
	setAttr ".tk[417:419]" -type "float3" 0 0.09849903 0  0 0.09849903 0  0 0.050705444 
		0 ;
	setAttr ".tk[458:461]" -type "float3" 0 0.050705444 0  0 0.09849903 0  0 0.09849903 
		0  0 0.050705444 0 ;
createNode polySplitRing -n "polySplitRing38";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 22 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[761]" "e[763]" "e[765]" "e[767]" "e[769]" "e[771]" "e[775]" "e[777]" "e[779]" "e[783]" "e[858]" "e[890]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.0841197669506073;
	setAttr ".re" 779;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak12";
	setAttr ".uopa" yes;
	setAttr -s 44 ".tk";
	setAttr ".tk[4:5]" -type "float3" 0 -0.0020613414 0  0 -0.0020613414 0 ;
	setAttr ".tk[10:11]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[42:43]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[56:57]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[70:71]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[84:85]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[98:99]" -type "float3" 0 -0.0020613414 0  0 -0.0020613414 0 ;
	setAttr ".tk[112:113]" -type "float3" 0 0.091658399 0  0 0.091658399 0 ;
	setAttr ".tk[126:127]" -type "float3" 0 -0.0020613414 0  0 -0.0020613414 0 ;
	setAttr ".tk[228:230]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[249:251]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[269:271]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[290:291]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728 ;
	setAttr ".tk[350:352]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[370:372]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[390:392]" -type "float3" 0 0 -0.01806728  0 0 -0.01806728  0 
		0 -0.01806728 ;
	setAttr ".tk[400]" -type "float3" 0 0.08125633 0.00082471105 ;
	setAttr ".tk[419]" -type "float3" 0 0.08125633 0.00082471105 ;
	setAttr ".tk[458:461]" -type "float3" 0 0.08125633 0.00082471105  0 -0.0020613414 
		0  0 -0.0020613414 0  0 0.08125633 0.00082471105 ;
createNode polySplitRing -n "polySplitRing39";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 21 "e[681]" "e[683]" "e[685]" "e[687]" "e[689]" "e[691]" "e[695]" "e[697]" "e[699]" "e[703]" "e[756:757]" "e[759]" "e[773]" "e[781]" "e[785]" "e[787]" "e[789]" "e[791]" "e[793]" "e[856]" "e[892]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.53059780597686768;
	setAttr ".dr" no;
	setAttr ".re" 699;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak13";
	setAttr ".uopa" yes;
	setAttr -s 46 ".tk";
	setAttr ".tk[189:192]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738  
		0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[208:211]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738  
		0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[228:231]" -type "float3" 0 0 -0.071704708  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[249:252]" -type "float3" 0 0 -0.071704708  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[269:272]" -type "float3" 0 0 -0.071704738  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[289:292]" -type "float3" 0 0 -0.071704738  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[309:312]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738  
		0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[330:331]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[350:353]" -type "float3" 0 0 -0.071704708  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[370:373]" -type "float3" 0 0 -0.071704708  0 0 -0.071704708  
		0 0 -0.071704708  0 0 -0.071704738 ;
	setAttr ".tk[390:392]" -type "float3" 0 0 2.9802322e-008  0 0 2.9802322e-008  
		0 0 2.9802322e-008 ;
	setAttr ".tk[409:410]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[473:474]" -type "float3" 0 0 -0.071704738  0 0 -0.071704738 ;
	setAttr ".tk[486]" -type "float3" 0 0 2.9802322e-008 ;
createNode polySplitRing -n "polySplitRing40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 48 "e[15]" "e[17]" "e[22]" "e[34]" "e[46]" "e[58]" "e[70]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[304]" "e[312]" "e[318]" "e[350]" "e[374]" "e[382]" "e[412]" "e[420]" "e[452]" "e[460]" "e[494]" "e[502]" "e[534]" "e[542]" "e[574]" "e[582]" "e[614]" "e[622]" "e[654]" "e[662]" "e[696]" "e[704]" "e[736]" "e[744]" "e[776]" "e[784]" "e[812]" "e[820]" "e[940]" "e[948]" "e[970]" "e[1006]" "e[1014]" "e[1050]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.78962177038192749;
	setAttr ".dr" no;
	setAttr ".re" 622;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak14";
	setAttr ".uopa" yes;
	setAttr -s 45 ".tk";
	setAttr ".tk[189:192]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356  0 
		0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[208:211]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356  0 
		0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[228:231]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356  0 
		0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[249:252]" -type "float3" 0 0 -1.0225723  0 0.043646362 -1.0225723  
		0 0.043646362 -1.0225723  0 0 -1.0225723 ;
	setAttr ".tk[269:272]" -type "float3" 0 0 -1.0225723  0 -0.024940776 -1.0225723  
		0 -0.024940776 -1.0225723  0 0 -1.0225723 ;
	setAttr ".tk[289:292]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356  0 
		0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[309:312]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356  0 
		0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[330:331]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[350:353]" -type "float3" 0 0 -0.78875226  0 0 -0.78875226  0 
		0 -0.78875226  0 0 -0.78875226 ;
	setAttr ".tk[370:373]" -type "float3" 0 0 -0.78875226  0 0 -0.78875226  0 
		0 -0.78875226  0 0 -0.78875226 ;
	setAttr ".tk[409:410]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[473:474]" -type "float3" 0 0 -0.98204356  0 0 -0.98204356 ;
	setAttr ".tk[506:508]" -type "float3" 0 0 -0.78875226  0 0 -0.78875226  0 
		0 -0.78875226 ;
createNode displayLayer -n "layer13";
	setAttr ".do" 13;
createNode displayLayer -n "layer14";
	setAttr ".do" 14;
createNode polyCube -n "polyCube3";
	setAttr ".cuv" 4;
createNode polySplitRing -n "polySplitRing41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[4:5]" "e[8:9]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.77362322807312012;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing42";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[13]" "e[15]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.73640304803848267;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing43";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[21]" "e[23]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.73395681381225586;
	setAttr ".dr" no;
	setAttr ".re" 4;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing44";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[29]" "e[31]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.46328365802764893;
	setAttr ".re" 4;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing45";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[4:5]" "e[37]" "e[39]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.2222411185503006;
	setAttr ".re" 4;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing46";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8:9]" "e[12]" "e[17]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.53030651807785034;
	setAttr ".dr" no;
	setAttr ".re" 12;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[37]" "e[39]" "e[44]" "e[49]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.70401030778884888;
	setAttr ".dr" no;
	setAttr ".re" 39;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak15";
	setAttr ".uopa" yes;
	setAttr -s 18 ".tk";
	setAttr ".tk[0:1]" -type "float3" -0.022600105 -0.11974847 0.19066969  
		-0.022600105 -0.11974847 0.19066969 ;
	setAttr ".tk[6:8]" -type "float3" 0.00061240233 0.0020788983 -0.011355913  
		0.00061240233 0.0020788983 -0.011355913  -0.0022973779 -0.039092503 -0.12351492 ;
	setAttr ".tk[11:12]" -type "float3" -0.0022973779 -0.039092503 -0.12351492  
		0.0051624319 0.017524702 -0.095728152 ;
	setAttr ".tk[15:16]" -type "float3" 0.0051624319 0.017524702 -0.095728152  
		0.002007612 0.0068151643 -0.037227608 ;
	setAttr ".tk[19:20]" -type "float3" 0.002007612 0.0068151643 -0.037227608  
		-0.0037284226 -0.01265673 0.069137 ;
	setAttr ".tk[23:28]" -type "float3" -0.0037284226 -0.01265673 0.069137  
		-0.022600105 -0.11974847 0.19066969  0.00061240233 0.0020788983 -0.011355913  0.00061240233 
		0.0020788983 -0.011355913  -0.022600105 -0.11974847 0.19066969  -0.0010676051 -0.0036241568 
		0.019796843 ;
	setAttr ".tk[31]" -type "float3" -0.0010676051 -0.0036241568 0.019796843 ;
createNode polySplitRing -n "polySplitRing48";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[21]" "e[23]" "e[28]" "e[33]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.461698979139328;
	setAttr ".re" 23;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak16";
	setAttr ".uopa" yes;
	setAttr -s 10 ".tk";
	setAttr ".tk[6:7]" -type "float3" 0.0012248044 0.0041577956 -0.022711826  
		0.0012248044 0.0041577956 -0.022711826 ;
	setAttr ".tk[17:18]" -type "float3" -0.00023383129 -0.0028819283 -0.0067485264  
		-0.00023383129 -0.0028819283 -0.0067485264 ;
	setAttr ".tk[21:22]" -type "float3" -0.001684106 -0.0057169665 0.031228738  
		-0.001684106 -0.0057169665 0.031228738 ;
	setAttr ".tk[25:26]" -type "float3" 0.0012248044 0.0041577956 -0.022711826  
		0.0012248044 0.0041577956 -0.022711826 ;
	setAttr ".tk[32:33]" -type "float3" -0.0030620114 -0.01039449 0.056779552  
		-0.0030620114 -0.01039449 0.056779552 ;
createNode polySplitRing -n "polySplitRing49";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28]" "e[33]" "e[68:69]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.84881997108459473;
	setAttr ".dr" no;
	setAttr ".re" 68;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing50";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[13]" "e[15]" "e[20]" "e[25]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.55744314193725586;
	setAttr ".dr" no;
	setAttr ".re" 15;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak17";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[9:10]" -type "float3" -0.0093325693 -0.082045726 -0.094294719  
		-0.0093325693 -0.082045726 -0.094294719 ;
	setAttr ".tk[36:37]" -type "float3" 0.0022064487 -0.011999249 -0.14436986  
		0.0022064487 -0.011999249 -0.14436986 ;
	setAttr ".tk[40:41]" -type "float3" 0.0088798301 0.030144023 -0.16466075  
		0.0088798301 0.030144023 -0.16466075 ;
createNode polySplitRing -n "polySplitRing51";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[12]" "e[17]" "e[53]" "e[55]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.70082336664199829;
	setAttr ".dr" no;
	setAttr ".re" 55;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak18";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[44:45]" -type "float3"  -0.00081058976 -0.0027516773 
		0.01503095 -0.00081058976 -0.0027516773 0.01503095;
createNode polySplitRing -n "polySplitRing52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[53]" "e[55]" "e[95]" "e[97]";
	setAttr ".ix" -type "matrix" 0.23587012992562509 0.005757717265107291 0.0068345946925564213 0
		 -0.034244012782419134 0.90852341996349884 0.41642831672015951 0 0.0064510524613275218 0.16663153566042269 -0.36301023888011946 0
		 0 0.16875805622278323 -1.8797560572892209 1;
	setAttr ".wt" 0.65856480598449707;
	setAttr ".dr" no;
	setAttr ".re" 55;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing53";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[890]" "e[964:965]" "e[967]" "e[971]" "e[973]" "e[975]" "e[977]" "e[979]" "e[981]" "e[989]" "e[1003]" "e[1074]" "e[1106]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.50165450572967529;
	setAttr ".dr" no;
	setAttr ".re" 964;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak19";
	setAttr ".uopa" yes;
	setAttr -s 32 ".tk";
	setAttr ".tk[6:7]" -type "float3" 0 0.13351566 0.010013675  0 0.13351566 
		0.010013675 ;
	setAttr ".tk[189:192]" -type "float3" 0 0.15688089 0.060082059  0 0.15688089 
		0.036716819  0 0.15688089 0.036716819  0 0.15688089 0.060082059 ;
	setAttr ".tk[208]" -type "float3" 0 0 -0.013351571 ;
	setAttr ".tk[211]" -type "float3" 0 0 -0.013351571 ;
	setAttr ".tk[309:312]" -type "float3" 0 0.15688089 0.036716819  0 0 -0.013351571  
		0 0 -0.013351571  0 0.15688089 0.036716819 ;
	setAttr ".tk[329:332]" -type "float3" 0 0.13351566 0.010013675  0 0.15688089 
		0.060082059  0 0.15688089 0.060082059  0 0.13351566 0.010013675 ;
	setAttr ".tk[391:392]" -type "float3" 0 -0.0066078049 -0.030836428  0 -0.0066078049 
		-0.030836428 ;
	setAttr ".tk[408:411]" -type "float3" 0 0.13351566 0.010013675  0 0.15688089 
		0.060082059  0 0.15688089 0.060082059  0 0.13351566 0.010013675 ;
	setAttr ".tk[472:475]" -type "float3" 0 0.13351566 0.010013675  0 0.15688089 
		0.060082059  0 0.15688089 0.060082059  0 0.13351566 0.010013675 ;
	setAttr ".tk[484:485]" -type "float3" 0 -0.0066078049 -0.030836428  0 -0.0066078049 
		-0.030836428 ;
	setAttr ".tk[528]" -type "float3" 0 0 0.010013675 ;
	setAttr ".tk[565:566]" -type "float3" 0 0 0.010013675  0 0.13351566 0.010013675 ;
	setAttr ".tk[575]" -type "float3" 0 0.13351566 0.010013675 ;
createNode polySplitRing -n "polySplitRing54";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[890]" "e[1106]" "e[1148:1149]" "e[1151]" "e[1157]" "e[1159]" "e[1161]" "e[1163]" "e[1165]" "e[1167]" "e[1175]" "e[1189]" "e[1191]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.47485959529876709;
	setAttr ".re" 1148;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing55";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[890]" "e[1106]" "e[1196:1197]" "e[1199]" "e[1205]" "e[1207]" "e[1209]" "e[1211]" "e[1213]" "e[1215]" "e[1223]" "e[1237]" "e[1239]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.25997999310493469;
	setAttr ".re" 1196;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak20";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk";
	setAttr ".tk[37:38]" -type "float3" 0 0 -0.011013009  0 0 -0.011013009 ;
	setAttr ".tk[576:577]" -type "float3" 0 0 -0.011013009  0 0 -0.011013009 ;
	setAttr ".tk[600:601]" -type "float3" 0 0 -0.059470229  0 0 -0.059470229 ;
createNode polySplitRing -n "polySplitRing56";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 23 "e[73]" "e[75]" "e[77]" "e[107]" "e[135]" "e[163]" "e[191]" "e[219]" "e[247]" "e[275]" "e[890]" "e[1106]" "e[1244:1245]" "e[1247]" "e[1253]" "e[1255]" "e[1257]" "e[1259]" "e[1261]" "e[1263]" "e[1271]" "e[1285]" "e[1287]";
	setAttr ".ix" -type "matrix" 0.50788056347503285 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.68457788228988647;
	setAttr ".dr" no;
	setAttr ".re" 1244;
	setAttr ".sma" 0;
	setAttr ".p[0]"  0 0 1;
	setAttr ".uem" no;
	setAttr ".fq" yes;
select -ne :time1;
	setAttr ".o" 1;
select -ne :renderPartition;
	setAttr -s 3 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 3 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
select -ne :lightList1;
select -ne :defaultTextureList1;
select -ne :initialShadingGroup;
	setAttr -s 12 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
connectAttr "layer1.di" "nurbsPlane1.do";
connectAttr "makeNurbPlane1.os" "nurbsPlaneShape1.cr";
connectAttr "revolve1.os" "revolvedSurfaceShape1.cr";
connectAttr "revolve2.os" "revolvedSurfaceShape2.cr";
connectAttr "layer5.di" "revolvedSurface3.do";
connectAttr "revolve3.os" "revolvedSurfaceShape3.cr";
connectAttr "nurbsTessellate1.op" "nurbsToPolyShape1.i";
connectAttr "revolve4.os" "revolvedSurfaceShape4.cr";
connectAttr "layer8.di" "revolvedSurface5.do";
connectAttr "revolve5.os" "revolvedSurfaceShape5.cr";
connectAttr "nurbsTessellate2.op" "nurbsToPolyShape2.i";
connectAttr "layer12.di" "pCube1.do";
connectAttr "polySplitRing8.out" "pCubeShape1.i";
connectAttr "layer11.di" "revolvedSurface6.do";
connectAttr "revolve6.os" "revolvedSurfaceShape6.cr";
connectAttr "polySplitRing56.out" "pCubeShape2.i";
connectAttr "layer14.di" "pCubeShape2.do";
connectAttr "polySplitRing52.out" "pCubeShape3.i";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[0].llnk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.lnk[0].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[1].llnk";
connectAttr ":initialParticleSE.msg" "lightLinker1.lnk[1].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.lnk[2].llnk";
connectAttr "lambert2SG.msg" "lightLinker1.lnk[2].olnk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[0].sllk";
connectAttr ":initialShadingGroup.msg" "lightLinker1.slnk[0].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[1].sllk";
connectAttr ":initialParticleSE.msg" "lightLinker1.slnk[1].solk";
connectAttr ":defaultLightSet.msg" "lightLinker1.slnk[2].sllk";
connectAttr "lambert2SG.msg" "lightLinker1.slnk[2].solk";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "file1.oc" "lambert2.c";
connectAttr "lambert2.oc" "lambert2SG.ss";
connectAttr "nurbsPlaneShape1.iog" "lambert2SG.dsm" -na;
connectAttr "lambert2SG.msg" "materialInfo1.sg";
connectAttr "lambert2.msg" "materialInfo1.m";
connectAttr "file1.msg" "materialInfo1.t" -na;
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "layerManager.dli[1]" "layer1.id";
connectAttr "layerManager.dli[3]" "layer2.id";
connectAttr "curveShape1.ws" "revolve1.ic";
connectAttr "curveShape2.ws" "revolve2.ic";
connectAttr "layerManager.dli[5]" "layer3.id";
connectAttr "layerManager.dli[6]" "layer4.id";
connectAttr "curveShape3.ws" "revolve3.ic";
connectAttr "layerManager.dli[7]" "layer5.id";
connectAttr "revolvedSurfaceShape3.ws" "nurbsTessellate1.is";
connectAttr "layerManager.dli[8]" "layer6.id";
connectAttr "curveShape4.ws" "revolve4.ic";
connectAttr "layerManager.dli[9]" "layer7.id";
connectAttr "curveShape5.ws" "revolve5.ic";
connectAttr "layerManager.dli[10]" "layer8.id";
connectAttr "revolvedSurfaceShape1.ws" "nurbsTessellate2.is";
connectAttr "layerManager.dli[11]" "layer9.id";
connectAttr "layerManager.dli[12]" "layer10.id";
connectAttr "polyTweak1.out" "polySplitRing1.ip";
connectAttr "pCubeShape1.wm" "polySplitRing1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySplitRing1.out" "polySplitRing2.ip";
connectAttr "pCubeShape1.wm" "polySplitRing2.mp";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "pCubeShape1.wm" "polySplitRing3.mp";
connectAttr "polySplitRing2.out" "polyTweak2.ip";
connectAttr "polySplitRing3.out" "polySplitRing4.ip";
connectAttr "pCubeShape1.wm" "polySplitRing4.mp";
connectAttr "polySplitRing4.out" "polySplitRing5.ip";
connectAttr "pCubeShape1.wm" "polySplitRing5.mp";
connectAttr "polyTweak3.out" "polySplitRing6.ip";
connectAttr "pCubeShape1.wm" "polySplitRing6.mp";
connectAttr "polySplitRing5.out" "polyTweak3.ip";
connectAttr "polyTweak4.out" "polySplitRing7.ip";
connectAttr "pCubeShape1.wm" "polySplitRing7.mp";
connectAttr "polySplitRing6.out" "polyTweak4.ip";
connectAttr "polySplitRing7.out" "polySplitRing8.ip";
connectAttr "pCubeShape1.wm" "polySplitRing8.mp";
connectAttr "layerManager.dli[13]" "layer11.id";
connectAttr "curveShape7.ws" "revolve6.ic";
connectAttr "layerManager.dli[14]" "layer12.id";
connectAttr "polyTweak5.out" "polySplitRing9.ip";
connectAttr "pCubeShape2.wm" "polySplitRing9.mp";
connectAttr "polyCube2.out" "polyTweak5.ip";
connectAttr "polySplitRing9.out" "polySplitRing10.ip";
connectAttr "pCubeShape2.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "polySplitRing11.ip";
connectAttr "pCubeShape2.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polySplitRing12.ip";
connectAttr "pCubeShape2.wm" "polySplitRing12.mp";
connectAttr "polySplitRing12.out" "polySplitRing13.ip";
connectAttr "pCubeShape2.wm" "polySplitRing13.mp";
connectAttr "polySplitRing13.out" "polySplitRing14.ip";
connectAttr "pCubeShape2.wm" "polySplitRing14.mp";
connectAttr "polySplitRing14.out" "polySplitRing15.ip";
connectAttr "pCubeShape2.wm" "polySplitRing15.mp";
connectAttr "polySplitRing15.out" "polySplitRing16.ip";
connectAttr "pCubeShape2.wm" "polySplitRing16.mp";
connectAttr "polySplitRing16.out" "polySplitRing17.ip";
connectAttr "pCubeShape2.wm" "polySplitRing17.mp";
connectAttr "polySplitRing17.out" "polySplitRing18.ip";
connectAttr "pCubeShape2.wm" "polySplitRing18.mp";
connectAttr "polySplitRing18.out" "polySplitRing19.ip";
connectAttr "pCubeShape2.wm" "polySplitRing19.mp";
connectAttr "polySplitRing19.out" "polySplitRing20.ip";
connectAttr "pCubeShape2.wm" "polySplitRing20.mp";
connectAttr "polySplitRing20.out" "polySplitRing21.ip";
connectAttr "pCubeShape2.wm" "polySplitRing21.mp";
connectAttr "polyTweak6.out" "polySplitRing22.ip";
connectAttr "pCubeShape2.wm" "polySplitRing22.mp";
connectAttr "polySplitRing21.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySplitRing23.ip";
connectAttr "pCubeShape2.wm" "polySplitRing23.mp";
connectAttr "polySplitRing22.out" "polyTweak7.ip";
connectAttr "polyTweak8.out" "polySplitRing24.ip";
connectAttr "pCubeShape2.wm" "polySplitRing24.mp";
connectAttr "polySplitRing23.out" "polyTweak8.ip";
connectAttr "polySplitRing24.out" "polySplitRing25.ip";
connectAttr "pCubeShape2.wm" "polySplitRing25.mp";
connectAttr "polySplitRing25.out" "polySplitRing26.ip";
connectAttr "pCubeShape2.wm" "polySplitRing26.mp";
connectAttr "polySplitRing26.out" "polySplitRing27.ip";
connectAttr "pCubeShape2.wm" "polySplitRing27.mp";
connectAttr "polySplitRing27.out" "polySplitRing28.ip";
connectAttr "pCubeShape2.wm" "polySplitRing28.mp";
connectAttr "polySplitRing28.out" "polySplitRing29.ip";
connectAttr "pCubeShape2.wm" "polySplitRing29.mp";
connectAttr "polySplitRing29.out" "polySplitRing30.ip";
connectAttr "pCubeShape2.wm" "polySplitRing30.mp";
connectAttr "polySplitRing30.out" "polySplitRing31.ip";
connectAttr "pCubeShape2.wm" "polySplitRing31.mp";
connectAttr "polyTweak9.out" "polySplitRing32.ip";
connectAttr "pCubeShape2.wm" "polySplitRing32.mp";
connectAttr "polySplitRing31.out" "polyTweak9.ip";
connectAttr "polySplitRing32.out" "polySplitRing33.ip";
connectAttr "pCubeShape2.wm" "polySplitRing33.mp";
connectAttr "polySplitRing33.out" "polySplitRing34.ip";
connectAttr "pCubeShape2.wm" "polySplitRing34.mp";
connectAttr "polyTweak10.out" "polySplitRing35.ip";
connectAttr "pCubeShape2.wm" "polySplitRing35.mp";
connectAttr "polySplitRing34.out" "polyTweak10.ip";
connectAttr "polySplitRing35.out" "polySplitRing36.ip";
connectAttr "pCubeShape2.wm" "polySplitRing36.mp";
connectAttr "polyTweak11.out" "polySplitRing37.ip";
connectAttr "pCubeShape2.wm" "polySplitRing37.mp";
connectAttr "polySplitRing36.out" "polyTweak11.ip";
connectAttr "polyTweak12.out" "polySplitRing38.ip";
connectAttr "pCubeShape2.wm" "polySplitRing38.mp";
connectAttr "polySplitRing37.out" "polyTweak12.ip";
connectAttr "polyTweak13.out" "polySplitRing39.ip";
connectAttr "pCubeShape2.wm" "polySplitRing39.mp";
connectAttr "polySplitRing38.out" "polyTweak13.ip";
connectAttr "polyTweak14.out" "polySplitRing40.ip";
connectAttr "pCubeShape2.wm" "polySplitRing40.mp";
connectAttr "polySplitRing39.out" "polyTweak14.ip";
connectAttr "layerManager.dli[15]" "layer13.id";
connectAttr "layerManager.dli[16]" "layer14.id";
connectAttr "polyCube3.out" "polySplitRing41.ip";
connectAttr "pCubeShape3.wm" "polySplitRing41.mp";
connectAttr "polySplitRing41.out" "polySplitRing42.ip";
connectAttr "pCubeShape3.wm" "polySplitRing42.mp";
connectAttr "polySplitRing42.out" "polySplitRing43.ip";
connectAttr "pCubeShape3.wm" "polySplitRing43.mp";
connectAttr "polySplitRing43.out" "polySplitRing44.ip";
connectAttr "pCubeShape3.wm" "polySplitRing44.mp";
connectAttr "polySplitRing44.out" "polySplitRing45.ip";
connectAttr "pCubeShape3.wm" "polySplitRing45.mp";
connectAttr "polySplitRing45.out" "polySplitRing46.ip";
connectAttr "pCubeShape3.wm" "polySplitRing46.mp";
connectAttr "polyTweak15.out" "polySplitRing47.ip";
connectAttr "pCubeShape3.wm" "polySplitRing47.mp";
connectAttr "polySplitRing46.out" "polyTweak15.ip";
connectAttr "polyTweak16.out" "polySplitRing48.ip";
connectAttr "pCubeShape3.wm" "polySplitRing48.mp";
connectAttr "polySplitRing47.out" "polyTweak16.ip";
connectAttr "polySplitRing48.out" "polySplitRing49.ip";
connectAttr "pCubeShape3.wm" "polySplitRing49.mp";
connectAttr "polyTweak17.out" "polySplitRing50.ip";
connectAttr "pCubeShape3.wm" "polySplitRing50.mp";
connectAttr "polySplitRing49.out" "polyTweak17.ip";
connectAttr "polyTweak18.out" "polySplitRing51.ip";
connectAttr "pCubeShape3.wm" "polySplitRing51.mp";
connectAttr "polySplitRing50.out" "polyTweak18.ip";
connectAttr "polySplitRing51.out" "polySplitRing52.ip";
connectAttr "pCubeShape3.wm" "polySplitRing52.mp";
connectAttr "polyTweak19.out" "polySplitRing53.ip";
connectAttr "pCubeShape2.wm" "polySplitRing53.mp";
connectAttr "polySplitRing40.out" "polyTweak19.ip";
connectAttr "polySplitRing53.out" "polySplitRing54.ip";
connectAttr "pCubeShape2.wm" "polySplitRing54.mp";
connectAttr "polyTweak20.out" "polySplitRing55.ip";
connectAttr "pCubeShape2.wm" "polySplitRing55.mp";
connectAttr "polySplitRing54.out" "polyTweak20.ip";
connectAttr "polySplitRing55.out" "polySplitRing56.ip";
connectAttr "pCubeShape2.wm" "polySplitRing56.mp";
connectAttr "lambert2SG.pa" ":renderPartition.st" -na;
connectAttr "lambert2.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "lightLinker1.msg" ":lightList1.ln" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "planarTrimmedSurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsToPolyShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "nurbsToPolyShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "revolvedSurfaceShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
// End of scottsgun.ma
