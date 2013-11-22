#MaxThreadsPerHotkey 2
#SingleInstance force

#Include Speech Recognition.ahk
#Include VGS_Definitions.ahk
#Include VGS_Functions.ahk
#Include VGS_Config.ahk

Hotkey,%StartScript%,StartListening
Hotkey,%PauseScript%,PauseListening
Hotkey,%CloseScript%,StopListening

StartListening:
	s := new CustomSpeech ;create the custom speech recognizer
	s.Recognize(Listen) ;Listen defined in VGS_Definitions

	class CustomSpeech extends SpeechRecognizer
	{
		OnRecognize(Text)
		{
			static cSpeaker := ComObjCreate("SAPI.SpVoice")
			VGS := rCommand(Text)
				BlockInput, On
					Send %VGS%
				BlockInput, Off
		}
	}
return

;Just a nifty command that someone might like
;This levels your ult before using IF it can be leveled
$4::
   Send {F4}{4}
return

PauseListening:
	Pause
return

StopListening:
	ExitApp
return
