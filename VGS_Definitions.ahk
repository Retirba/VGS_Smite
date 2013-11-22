;Class listen is used by speech recognition to determine inputs are valid
;Class Listen is an array of voice commands
Class Listen {
	Static 1 := "Attack Left", 2 := "Attack Mid", 3 := "Attack Right", 4 := "Attack", 5 := "Attack Giant", 6 := "Attack Fury", 7 := "Attack Minotaur", 		
	Static 8 := "Enemy Left", 9 := "Enemy Mid", 10 := "Enemy Right", 11 := "Enemy Base", 12 := "Enemy Behind", 		
	Static 13 := "Enemy Giant", 14 := "Enemy Fury", 15 := "Enemy Jungle", 16 := "Enemy Minotaur", 17 := "Enemy Spotted", 		
	Static 18 := "Careful Left", 19 := "Careful Mid", 20 := "Careful Right", 21 := "Return Base", 22 := "Careful", 		
	Static 23 := "Defend Left", 24 := "Defend Mid", 25 := "Defend Right", 26 := "Defend", 27 := "Defend Giant", 28 := "Defend Fury", 29 := "Defend Minotaur", 		
	Static 30 := "Awesome", 31 := "Greatest", 32 := "Joke", 33 := "Laugh", 34 := "You Rock", 35 := "Taunt", 36 := "Woohoo", 		
	Static 37 := "Missing Left", 38 := "Missing Mid", 39 := "Missing Right", 40 := "Missing", 		
	Static 41 := "Gank Left", 42 := "Gank Mid", 43 := "Gank Right", 44 := "Gank", 		
	Static 45 := "Help Left", 46 := "Help Mid", 47 := "Help Right", 48 := "Help", 		
	Static 49 := "Incoming Left", 50 := "Incoming Mid", 51 := "Incoming Right", 52 := "Incoming", 		
	Static 53 := "Retreat Left", 54 := "Retreat Mid", 55 := "Retreat Right", 56 := "Retreat", 		
	Static 57 := "Ill Attack", 58 := "Ill Defend", 59 := "Ill Gank", 60 := "Back", 61 := "Jungle Buff", 62 := "On It", 63 := "Falling Back", 		
	Static 64 := "Ill Attack Left", 65 := "Ill Attack Mid", 66 := "Ill Attack Right", 67 := "Ill Attack", 68 := "Ill Attack Giant", 69 := "Ill Attack Fury", 70 := "Ill Attack Minotaur", 		
	Static 71 := "Ill Defend Left", 72 := "Ill Defend Mid", 73 := "Ill Defend Right", 74 := "Ill Defend", 75 := "Ill Defend Giant", 76 := "Ill Defend Fury", 77 := "Ill Defend Minotaur", 		
	Static 78 := "Ill Gank Left", 79 := "Ill Gank Mid", 80 := "Ill Gank Right", 81 := "Ill Gank", 		
	Static 82 := "Returning Left", 83 := "Returning Mid", 84 := "Returning Right", 85 := "Returning base", 		
	Static 86 := "Enemy Returned Left", 87 := "Enemy Returned Mid", 88 := "Enemy Returned Right", 89 := "Enemy Returned", 		
	Static 90 := "General", 91 := "Position", 92 := "Okay", 93 := "B R B", 94 := "Complete", 95 := "A F K", 96 := "Out Of Mana", 97 := "No", 98 := "Sorry", 99 := "Thanks", 100 := "Wait", 101 := "Cancel", 102 := "Yes", 		
	Static 103 := "Bye", 104 := "Good Game", 105 := "Hi", 106 := "Good Luck", 107 := "Nice Job", 108 := "Oops", 109 := "Quiet", 110 := "No Problem", 111 := "Curses", 112 := "Too bad", 113 := "Youre Welcome", 		
	Static 114 := "Ambush Here", 115 := "Behind Us", 116 := "Chase Enemy", 117 := "Ultimate Down", 118 := "On My Way", 119 := "Follow", 120 := "Group Up", 121 := "Going Jungle", 122 := "Ultimate Up", 123 := "Stay Here", 124 := "Trap"
}
Listen.Remove("__Class")

;Inputs is a string of voice commands
;Yes, I know it seems redundant, but the Speech Recognition library requires an array, and since I'm relatively new to autohotkey, I couldn't figure out how to loop through an array. Looping through a string is quite easy however.

Inputs = Attack Left,Attack Mid,Attack Right,Attack,Attack Giant,Attack Fury,Attack Minotaur,Enemy Left,Enemy Mid,Enemy Right,Enemy Base,Enemy Behind,Enemy Giant,Enemy Fury,Enemy Jungle,Enemy Minotaur,Enemy Spotted,Careful Left,Careful Mid,Careful Right,Return Base,Careful,Defend Left,Defend Mid,Defend Right,Defend,Defend Giant,Defend Fury,Defend Minotaur,Awesome,Greatest,Joke,Laugh,You Rock,Taunt,Woohoo,Missing Left,Missing Mid,Missing Right,Missing,Gank Left,Gank Mid,Gank Right,Gank,Help Left,Help Mid,Help Right,Help,Incoming Left,Incoming Mid,Incoming Right,Incoming,Retreat Left,Retreat Mid,Retreat Right,Retreat,I'll Attack,I'll Defend,I'll Gank,Back,Jungle Buff,On It,Falling Back,I'll Attack Left,I'll Attack Mid,I'll Attack Right,I'll Attack,I'll Attack Giant,I'll Attack Fury,I'll Attack Minotaur,I'll Defend Left,I'll Defend Mid,I'll Defend Right,I'll Defend,I'll Defend Giant,I'll Defend Fury,I'll Defend Minotaur,I'll Gank Left,I'll Gank Mid,I'll Gank Right,I'll Gank,Returning Left,Returning Mid,Returning Right,Returning base,Enemy Returned Left,Enemy Returned Mid,Enemy Returned Right,Enemy Returned,General,Position,Okay,B R B,Complete,A F K,Out Of Mana,No,Sorry,Thanks,Wait,Cancel,Yes,Bye,Good Game,Hi,Good Luck,Nice Job,Oops,Quiet,No Problem,Curses,Too bad,You're Welcome,Ambush Here,Behind Us,Chase Enemy,Ultimate Down,On My Way,Follow,Group Up,Going Jungle,Ultimate Up,Stay Here,Trap

;Outputs is a string delimited list of actual key outputs. This string refers to Inputs respectively. Eg. The first value of Inputs is equal to the first value of Outputs.
;Yes, I did first attempt to create and use a singular object for the entire script, but again, I'm new to AutoHotKey, and couldn't figure it out given online examples.
Outputs = VA1,VA2,VA3,VAA,VAF,VAG,VAM,VB1,VB2,VB3,VBB,VBE,VBF,VBG,VBJ,VBM,VBS,VC1,VC2,VC3,VCB,VCC,VD1,VD2,VD3,VDD,VDF,VDG,VDM,VEA,VEG,VEJ,VEL,VER,VET,VEW,VF1,VF2,VF3,VFF,VG1,VG2,VG3,VGG,VH1,VH2,VH3,VHH,VI1,VI2,VI3,VII,VR1,VR2,VR3,VRR,VSA,VSD,VSG,VST,VSB,VSO,VSR,VSA1,VSA2,VSA3,VSAA,VSAF,VSAG,VSAM,VSD1,VSD2,VSD3,VSDD,VSDF,VSDG,VSDM,VSG1,VSG2,VSG3,VSGG,VST1,VST2,VST3,VSTB,VT1,VT2,VT3,VTT,VVG,VVV,VVA,VVB,VVC,VVK,VVM,VVN,VVS,VVT,VVW,VVX,VVY,VVGB,VVGG,VVGH,VVGL,VVGN,VVGO,VVGQ,VVGR,VVGS,VVGT,VVGW,VVVA,VVVB,VVVC,VVVD,VVVE,VVVF,VVVG,VVVJ,VVVR,VVVS,VVVT
