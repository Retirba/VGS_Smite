VGS_Smite
=========

How about some REAL voice commands in Smite?

Created by: Chris (git/reddit user: retirba)
I wrote all of the scripts aside from "Speech Recognition.ahk," which is the speech recognition library.

This was created with AutoHotKey (http://www.autohotkey.com/) with the help of a speech recognition library which was rewritten by "Sean" on the AutoHotKey forums ( http://www.autohotkey.com/board/topic/24490-voice-recognition-com/ ). The voice library can be also be found on github ( https://gist.github.com/Uberi/6263822 ), however, it's already included in the zip file.

WARNING: I take no responsibility if for any reason you're banned for using this script or autohotkey. I have been using it ever since Smite was released, and haven't had any issues however.

REQUIREMENTS: This script requires that you've installed AutoHotKey and both .NET Framework 4 or higher & Microsoft Windows SDK. 
	This is required for the voice recognition to work. I've listed below the links that I followed for the download/install.
	.Net Framework 4.5.1: http://www.microsoft.com/en-us/download/details.aspx?id=40772
	Microsoft Windows SDK: http://www.microsoft.com/en-us/download/details.aspx?id=8279
	
BEFORE YOU BEGIN:
	Please take a look at the VGS_Config.ahk file. Here, you'll be able to reassign the kebindings for starting voice communication, pausing voice communication, and closing the script. 
	Note: "^" stands for "CTRL." For example, "^t" = "CTRL+T". "!" can be used for "ALT"
	In addition, I've included a nifty function for leveling your ult (if it can be leveld) before using it simply by pressing 4 (ult keybinding). I didn't originally come up with this function, but I honestly can't remember where I found it.

NOTES:
	Not all voice commands are the same as the in game voice ouput. I've included a list below for reference. If for any reason you'd like to modify them, please take a look at VGS_Definitions.ahk.

Voice Command					In Game Audio Output			      	Keypress Output
Attack Left			  		Attack left lane!					        VA1
Attack Mid				  	Attack middle lane!				      	VA2
Attack Right					Attack right lane!				      	VA3
Attack						    Attack!					              		VAA
Attack Giant					Attack Fire Giant!				      	VAF
Attack Fury				  	Attack the Gold Fury!			    		VAG
Attack Minotaur				Attack the Minotaur!				    	VAM
Enemy Left					  Enemies in left lane!				    	VB1
Enemy Mid			    		Enemies in middle lane!			  		VB2
Enemy Right			  		Enemies in right lane!			  		VB3
Enemy Base			  		Enemies have returned to base.		VBB
Enemy Behind					Enemies behind us!					      VBE
Enemy Giant			  		Enemies at the Fire Giant!				VBF
Enemy Fury			  		Enemies at the Gold Fury!			  	VBG
Enemy Jungle					Enemies in the jungle!			   		VBJ
Enemy Minotaur				Enemies at our Minotaur!		  		VBM
Enemy Spotted					Enemy spotted!					        	VBS
Careful Left					Be careful left!"				        	VC1
Careful Mid			  		Be careful middle!			        	VC2
Careful Right					Be careful right!			        		VC3
Return Base			  		Return to Base!				         		VCB
Careful					    	Be careful!				            		VCC
Defend Left			  		Defend left lane!			        		VD1
Defend Mid			  		Defend middle lane!			        	VD2
Defend Right					Defend right lane!			      		VD3
Defend					    	Defend!						              	VDD
Defend Giant					Defend the Fire Giant!	  				VDF
Defend Fury				  	Defend the Gold Fury!		    			VDG
Defend Minotaur				Defend the Minotaur!		    			VDM
Awesome					    	Awesome!					              	VEA
Greatest			     		I'm the Greatest!			          	VEG
Joke					      	<plays god's joke>				      	VEJ
Laugh					      	<plays god's laugh>					      VEL
You Rock			    		You Rock!						              VER
Taunt				      		<plays god's taunt>					      VET
Woohoo				    		Woohoo!							              VEW
Missing Left					Enemy missing left!					      VF1
Missing Mid			  		Enemy missing middle!					    VF2
Missing Right					Enemy missing right!					    VF3
Missing					    	Enemy missing!						        VFF
Gank Left				    	Gank left lane!						        VG1
Gank Mid				    	Gank middle lane!					        VG2
Gank Right			  		Gank right lane!					        VG3
Gank						      Gank!							                VGG
Help Left				    	Help left lane!						        VH1
Help Mid				    	Help middle lane!					        VH2
Help Right			  		Help right lane!			        		VH3
Help					        Help!						                	VHH
Incoming Left					Enemies incoming left!			  		VI1
Incoming Mid					Enemies incoming middle!		  		VI2
Incoming Right				Enemies incoming right!			  		VI3
Incoming				    	Enemies incoming!				        	VII
Retreat Left					Retreat left lane!			      		VR1
Retreat Mid			  		Retreat middle lane!			    		VR2
Retreat Right					Retreat right lane!				      	VR3
Retreat					    	Retreat!				              		VRR
I'll Attack			  		Attack					              		VSA
I'll Defend			  		Defend					              		VSD
I'll Gank				     	Gank						                	VSG
Back				      		Returned					              	VST
Jungle Buff				  	I'm going for Jungle Buff.				VSB
On It				        	I'm on it!					            	VSO
Falling Back					Falling Back!					          	VSR
I'll Attack Left			I'll Attack left lane!		  			VSA1
I'll Attack Mid				I'll Attack middle lane!	  			VSA2
I'll Attack Right			I'll Attack right lane!		  			VSA3
I'll Attack				  	I'll Attack!					          	VSAA
I'll Attack Giant			I'll Attack Fire Giant!			  		VSAF
I'll Attack Fury			I'll Attack the Gold Fury!				VSAG
I'll Attack Minotaur	I'll Attack the Minotaur!		    	VSAM
I'll Defend Left			I'll Defend left lane!			  		VSD1
I'll Defend Mid				I'll Defend middle lane!		  		VSD2
I'll Defend Right			I'll Defend right lane!				  	VSD3
I'll Defend					  I'll Defend!					          	VSDD
I'll Defend Giant			I'll Defend the Fire Giant!				VSDF
I'll Defend Fury			I'll Defend the Gold Fury!				VSDG
I'll Defend Minotaur	I'll Defend the Minotaur!		    	VSDM
I'll Gank Left				I'll Gank left lane!				    	VSG1
I'll Gank Mid					I'll Gank middle lane!			  		VSG2
I'll Gank Right				I'll Gank right lane!				    	VSG3
I'll Gank					    I'll Gank!						            VSGG
Returning Left				I'm returning left lane!		  		VST1
Returning Mid					I'm returning middle lane!				VST2
Returning Right				I'm returning right lane!			    VST3
Returning base				I'm returning to base!				  	VSTB
Enemy Returned Left		Enemies have returned left!		  	VT1
Enemy Returned Mid		Enemies have returned middle!			VT2
Enemy Returned Right	Enemies have returned right!			VT3
Enemy Returned				Enemies have returned!					  VTT
General					    	General							              VVG
Position					    Position						              VVV
Okay						      Ok!						                    VVA
B R B						      Be right back!					        	VVB
Complete					    Completed!					            	VVC
A F K						      Stepping away for a moment.				VVK
Out Of Mana					  Out of Mana!					          	VVM
No						        No!						                  	VVN
Sorry						      Sorry!					              		VVS
Thanks						    Thanks!						              	VVT
Wait						      Wait!							                VVW
Cancel						    Cancel That!						          VVX
Yes						        Yes!							                VVY
Bye						        Bye!							                VVGB
Good Game					    Good game!						            VVGG
Hi						        Hi!							                  VVGH
Good Luck					    Good luck!						            VVGL
Nice Job					    Nice job!						              VVGN
Oops						      Oops!							                VVGO
Quiet						      Quiet!							              VVGQ
No Problem					  No Problem!						            VVGR
Curses						    Curses!							              VVGS
Too bad						    That’s too bad!						        VVGT
Youre Welcome					You're welcome!						        VVGW
Ambush Here					  Set up an ambush here!					  VVVA
Behind Us					    Behind us!					            	VVVB
Chase Enemy					  Chase the enemy!		           		VVVC
Ultimate Down					Ultimate is down!		           		VVVD
On My Way					    On my way!					            	VVVE
Follow						    Follow me!				            		VVVF
Group Up					    Group up!					              	VVVG
Going Jungle					Going into the jungle!					  VVVJ
Ultimate Up					  Ultimate is ready!					      VVVR
Stay Here					    Stay here!					            	VVVS
Trap						      It’s a trap!				            	VVVT
