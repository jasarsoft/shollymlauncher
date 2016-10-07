#cs

	  Name:			Shollym Standalone Multi-Patch 2014 Switcher
	  Version:		1.2.0.0
	  Developer:	Edin Jašareviæ
	  Size:			-
	  Language:		English
	  Date:			5.August.2014
	  Description:	-
#ce



#Region		INCLUDES
#include <ButtonConstants.au3>
#include <ComboConstants.au3>
#include <GUIConstantsEx.au3>
#include <ProgressConstants.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#include <MsgBoxConstants.au3>
#include <FileConstants.au3>
#include <TrayConstants.au3>
#include <Sound.au3>
#include <Constants.au3>
#EndRegion

#Region		Opt
Opt ("TrayAutoPause", 0)
Opt ("TrayMenuMode", 1)
#EndRegion


#Region 		Loading....
; Loading settings...
;Testing settings.ini
$sMessage = ""
SplashTextOn("Switcher loading...", $sMessage, 300, 38, -1, -1, 1, "System")
$Test1 = FileExists ("Bin\Settings.ini")
If $Test1 = 0 Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find settings.ini file, Switcher isn't installed properly!")
   Exit
Else
   $sMessage = $sMessage & "Loading settings..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; testing winmm.dll
$sMessage = ""
$Test2 = FileExists ("Bin\winmm.dll")
If $Test2 = 0 Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find winmm.dll file, Switcher isn't installed properly!")
   Exit
Else
   $sMessage = $sMessage & "Loading settings..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; testing winmm_x64.dll
$sMessage = ""
$Test3 = FileExists ("Bin\winmm_x64.dll")
If $Test3 = 0 Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find winmm_x64.dll file, Switcher isn't installed properly!")
   Exit
Else
   $sMessage = $sMessage & "Loading settings..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; testing background music
$sMessage = ""
$Test4 = FileExists ("Media\Background.mp3")
If $Test4 = 0 Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find Background.mp3 file, Switcher isn't installed properly!")
   Exit
Else
   $sMessage = $sMessage & "Loading settings..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
;Loading languages...
$sMessage = ""
$Test5 = FileExists ("Lang\English.ini")
If $Test5 = 0 Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find english.ini file, Switcher isn't installed properly!")
Else
   $sMessage = $sMessage & "Loading languages..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; Loading media images...
$sMessage = ""
$Test1 = FileExists ("Media\shollym2014.jpg")
$Test2 = FileExists ("Media\classic2014.jpg")
$Test3 = FileExists ("Media\national2014.jpg")
If ($Test1 = 0) or ($Test2 = 0) or ($Test3 = 0) Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find image file, Switcher isn't installed properly!")
Else
   $sMessage = $sMessage & "Loading images..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; Loading icons
$sMessage = ""
$Test1 = FileExists ("Pack\Classic\Icons\icon.ico")
$Test2 = FileExists ("Pack\Club\Icons\icon.ico")
$Test3 = FileExists ("Pack\NT\Icons\icon.ico")
$Test4 = FileExists ("Media\icon.ico")

If ($Test1 = 0) or ($Test2 = 0) or ($Test3 = 0) or ($Test4 = 0)Then
   ;MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find icons files, Switcher isn't installed properly!")
Else
   $sMessage = $sMessage & "Loading icons..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; LOading Option files
$sMessage = ""
; Option file of Classic version
$Test1 = FileExists ("Pack\Classic\OptFile\Normal\KONAMI-WIN32PES6OPT")
$Test2 = FileExists ("Pack\Classic\OptFile\Shollym1\KONAMI-WIN32PES6OPT")
$Test3 = FileExists ("Pack\Classic\OptFile\Shollym1\KONAMI-WIN32PES6OPT")
; Option file of Club version
$Test4 = FileExists ("Pack\Club\OptFile\Normal\KONAMI-WIN32PES6OPT")
$Test5 = FileExists ("Pack\Club\OptFile\Shollym1\KONAMI-WIN32PES6OPT")
$Test6 = FileExists ("Pack\Club\OptFile\Shollym2\KONAMI-WIN32PES6OPT")
$Test7 = FileExists ("Pack\Club\OptFile\Shollym3\KONAMI-WIN32PES6OPT")
$Test8 = FileExists ("Pack\Club\OptFile\Shollym4\KONAMI-WIN32PES6OPT")
$Test9 = FileExists ("Pack\Club\OptFile\Shollym5\KONAMI-WIN32PES6OPT")
$Test10 = FileExists ("Pack\Club\OptFile\xxFutsalOF\KONAMI-WIN32PES6OPT")
; Option file of National version
$Test11 = FileExists ("Pack\NT\OptFile\Normal\KONAMI-WIN32PES6OPT")
$Test12 = FileExists ("Pack\NT\OptFile\Shollym1\KONAMI-WIN32PES6OPT")
$Test13 = FileExists ("Pack\NT\OptFile\Shollym2\KONAMI-WIN32PES6OPT")

If ($Test1 = 0) or ($Test2 = 0) or ($Test3 = 0) or ($Test4 = 0) or ($Test5 = 0) or ($Test6 = 0) or ($Test7 = 0) or ($Test8 = 0) or ($Test9 = 0) or ($Test10 = 0) or ($Test11 = 0) or ($Test12 = 0) or ($Test13 = 0) Then
   ;MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find icons files, Switcher isn't installed properly!")
   ;Exit
Else
   $sMessage = $sMessage & "Loading option files..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
; loading packs...
$sMessage = ""
$Test1 = FileExists ("Pack\Classic\Main")
$Test2 = FileExists ("Pack\Club\Main")
$Test3 = FileExists ("Pack\NT\Main")
If ($Test1 = 0) or ($Test2 = 0) or ($Test3 = 0) Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Can't find pack files, Switcher isn't installed properly!")
Else
   $sMessage = $sMessage & "Loading packs..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
;loading properly installed
$sMessage = ""
$Test1 = FileExists ("..\Switcher")
$Test2 = FileExists ("..\dat")
$Test3 = FileExists ("..\kitserver")
$Test4 = FileExists ("..\Help")
$Test5 = FileExists ("..\Icons")
If ($Test1 = 0) or ($Test2 = 0) or ($Test3 = 0) or ($Test4 = 0) or ($Test5 = 0) Then
   MsgBox ($MB_OK, "Switcher: Error loading...", "Switcher isn't installed properly!")
Else
   $sMessage = $sMessage & "Testing properly installed..."
   ControlSetText("Switcher loading...", "", "Static1", $sMessage)
   Sleep(250)
EndIf
SplashOff ()
#EndRegion


#Region ### START Koda GUI section ### Form=C:\14 Archive\Project\Application\Shollym patch 2014 Launcer\Form2.kxf
#EndRegion ### END Koda GUI section ###



#Region		Settings
Global $SettingsPatch = IniRead ("Bin\Settings.ini", "General", "Patch", "Enter settings")
Global $SettingsOptionFile = IniRead ("Bin\Settings.ini", "General", "Gameplay", "Enter settings")
Global $SettingsOnline = IniRead ("Bin\Settings.ini", "General", "Online", "Enter settings")
Global $SettingsBackgroundMusic = IniRead ("Bin\Settings.ini", "General", "BackgroundMusic", "Enter settings")
#EndRegion


#Region 	Play Music
$BackgroundMusic =_SoundOpen ("Media\Background.mp3")
If $SettingsBackgroundMusic = "Yes" Then
$BackgroundMusic =_SoundOpen ("Media\Background.mp3")
Local $iExtended = @extended ; Assign because @extended will be set after DllCall.
Local $tText = DllStructCreate("char[128]")
DllCall("Bin\winmm.dll", "short", "mciGetErrorStringA", "str", $iExtended, "ptr", DllStructGetPtr($tText), "int", 128)
_SoundPlay($BackgroundMusic)
EndIf

#EndRegion



#Region		GUI
Local $FormMain = GUICreate("Shollym switcher", 361, 406, 352, 194)
GUISetIcon("Icons\icon.ico", -1)
#EndRegion


#Region		Main pictures
Local $PatchPicture = GUICtrlCreatePic("", 8, 8, 344, 94, BitOR($GUI_SS_DEFAULT_PIC,$SS_CENTERIMAGE,$WS_BORDER))
GUICtrlSetTip (-1, "Logo image of select patch version")

Switch $SettingsPatch
   Case "National Teams (World Cup) Patch 2014"
	  GUICtrlSetImage ($PatchPicture, "Media\national2014.jpg")
	  GUICtrlSetTip (-1, "Shollym National Teams (World Cup) 2014 logo image")
   Case $SettingsPatch = "Shollym Classic Patch 2014"
	  GUICtrlSetImage ($PatchPicture, "Media\classic2014.jpg")
	  GUICtrlSetTip (-1, "Shollym Classic Patch 2014 logo image")
   Case $SettingsPatch = "Shollym Clubs Patch 2014"
	  GUICtrlSetImage ($PatchPicture, "Media\shollym2014.jpg")
	  GUICtrlSetTip (-1, "Shollym Club patch 2014 logo image")
EndSwitch

#EndRegion

#cs
#Region		- Menu -
Local $MenuItemGeneral = GUICtrlCreateMenu("&General")
   Local $MenuItemSubGeneralLanguages = GUICtrlCreateMenu ("&Languages", $MenuItemGeneral, 1)
	  Local $MenuItemSubGeneralLanguagesNew = GUICtrlCreateMenuItem ("&New", $MenuItemSubGeneralLanguages, 2)
	  GUICtrlSetState(-1, $GUI_DISABLE)
	  Local $MenuItemSubGeneralLanguagesSelect = GUICtrlCreateMenu ("&Select", $MenuItemSubGeneralLanguages)
		 Local $MenuItemSebGeneralLanguagesSelectBosnian = GUICtrlCreateMenuItem ("&Bosnian", $MenuItemSubGeneralLanguagesSelect, 1)
		 GUICtrlSetState(-1, $GUI_DISABLE)
		 Local $MenuItemSebGeneralLanguagesSelectEnglish = GUICtrlCreateMenuItem ("&English", $MenuItemSubGeneralLanguagesSelect, 2)
		 GUICtrlSetState(-1, $GUI_CHECKED)
	  Local $MenuItemSubGeneralLanguageEdit = GUICtrlCreateMenuItem ("&Edit", $MenuItemSubGeneralLanguages, 3)
	  GUICtrlSetState(-1, $GUI_DISABLE)
   Local $MenuItemSubGeneralExit = GUICtrlCreateMenuItem ("E&xit", $MenuItemGeneral, 2)



Local $MenuItemKitserver = GUICtrlCreateMenu("&Kitserver")
;Local $MenuItemKitserver =

Local $MenuItem1 = GUICtrlCreateMenu("P&ES")
Local $MenuItemHelp = GUICtrlCreateMenu("&Help")
   Local $MenuItemSubHelpAbout = GUICtrlCreateMenuItem("&About", $MenuItemHelp)
   Local $MenuItemSubHelpLicense = GUICtrlCreateMenuItem("&License", $MenuItemSubHelpAbout)
   Local $MenuItemSubHelpHelp = GUICtrlCreateMenuItem("&Help", $MenuItemHelp)

#EndRegion 	- Menu -
#ce

#Region		Labels
Local $Label1 = GUICtrlCreateLabel("Select patch:", 8, 120, 67, 17)
GUICtrlSetTip (-1, "When you select a patch" & @CR & "Click to save button" & @CR & "Reinstaling kitserver and click to play")
Local $Label2 = GUICtrlCreateLabel("Select option file:", 8, 150, 85, 17)
GUICtrlSetTip (-1, "When you select option file (gameplay)" & @CR & "Click to save button" & @CR & "Reinstalling kitserver and click to play button")
Local $Label4 = GUICtrlCreateLabel("Play online:", 136, 209, 58, 17)
GUICtrlSetTip (-1, "If select 'Yes' then Switcher when click save button automation create backup hosts and copy new hosts for play patch online")

Local $LabelTips = GUICtrlCreateLabel("Switcher loading...", 8, 385, 348, 17)
Global $LabelTipsSetDefaultColor = 0x00CC33
Global $LabelTipsSerErrorColor = 0xFF0000
Global $LabelTipsLoadingSetColor = GUICtrlSetColor ($LabelTips, $LabelTipsSetDefaultColor)
$Random = Ceiling ( Random (1, 8))
Switch $Random
   Case 1
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome in Shollym Patch Switcher...")
   Case 2
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome in Shollym Standalone Multi-Patch 2014 Switcher...")
   Case 3
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "This is Shollym Patch Switcher...")
   Case 4
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome " & @UserName & " in Switcher...")
   Case 5
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "This is Shollym patch Switcher v1.0 Beta...")
   Case 6
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Switcher Version 1.0 Beta...")
   Case 7
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Switcher build 20.07.2014...")
   Case 8
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Switcher loaded...")

EndSwitch
#EndRegion


#Region		ComboBoxs
; Create
Local $ComboPatch = GUICtrlCreateCombo("", 128, 117, 225, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$CBS_SORT))
GUICtrlSetTip (-1, "Choose one of the offered patches")
Local $ComboOptionFile = GUICtrlCreateCombo("", 128, 147, 225, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$CBS_SORT))
GUICtrlSetTip (-1, "Choose one of the offered gameplay")
Local $ComboOnline = GUICtrlCreateCombo("", 208, 206, 129, 25, BitOR($CBS_DROPDOWNLIST,$CBS_AUTOHSCROLL,$CBS_SORT))
GUICtrlSetTip (-1, "Switcher must be running in administrative privileges for this option!" & @CR & "If select 'Yes' then Switcher when click save button automation create backup hosts and copy new hosts for play patch online")
; Data
Local $ComboDataPatch = GUICtrlSetData($ComboPatch, "National Teams (World Cup) Patch 2014|Shollym Clubs Patch 2014|Shollym Classic Patch 2014", $SettingsPatch)
Local $ComboPatchRead = GUICtrlRead ($ComboPatch)
If $ComboPatchRead = "National Teams (World Cup) Patch 2014" or $ComboPatchRead = "Shollym Classic Patch 2014" Then
   Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "Shollym Gameplay 1|Shollym Gameplay 2|Normal Gameplay", $SettingsOptionFile)
Else
   Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "Normal Gameplay|Futsal OF Gameplay|Shollym Big Gap Gameplay|Shollym Classic Style Joga Bonito Gameplay|Shollym Extra Hard Gameplay|Shollym Smooth Gameplay|Shollym Slower Gameplay", $SettingsOptionFile)
EndIf
Local $ComboDataOnline = GUICtrlSetData ($ComboOnline, "Yes|No", $SettingsOnline)
;GUICtrlSetState ($ComboOnline, $GUI_DISABLE)
#EndRegion


#Region		Bittons
Local $ButtonPlay = GUICtrlCreateButton("P L A Y     P A T C H", 100, 315, 160, 44)
GUICtrlSetTip (-1, "Run Pro Evolution Soccer 6 with currently save settings")
GUICtrlSetState ($ButtonPlay, $GUI_FOCUS)

Local $ButtonSave = GUICtrlCreateButton("Save", 272, 320, 80, 34)
GUICtrlSetTip (-1, "Record the current settings")
Local $ButtonKitserverSetup = GUICtrlCreateButton("Setup", 24, 209, 75, 25)
GUICtrlSetTip (-1, "Run kitserver for install/remove")
Local $ButtonKitserverSettings = GUICtrlCreateButton("Settings", 24, 241, 75, 25)
GUICtrlSetTip (-1, "Run kitserver settings")
Local $ButtonKitserverKeys = GUICtrlCreateButton("Keys", 24, 273, 75, 25)
GUICtrlSetTip (-1, "Run kitserver Key Binder")
Local $ButtonCameraZoom = GUICtrlCreateButton("Camera zoom", 144, 241, 91, 25)
GUICtrlSetTip (-1, "Run Camera zoom setting for PES6 by reddwarf")
Local $ButtonPESSettings = GUICtrlCreateButton("PES Settings", 248, 241, 91, 25)
GUICtrlSetTip (-1, "Run general PES6 settings")
Local $ButtonHelp = GUICtrlCreateButton("Help", 144, 273, 91, 25)
GUICtrlSetTip (-1, "Open help folder")
Local $ButtonMainFolder = GUICtrlCreateButton("Main folder", 248, 273, 91, 25)
GUICtrlSetTip (-1, "Open main folder of installed patch")
Local $ButtonAbout = GUICtrlCreateButton("About", 8, 315, 80, 22)
GUICtrlSetTip (-1, "Information about Switcher")
If $SettingsBackgroundMusic = "Yes" Then
   Local $ButtonMusic = GUICtrlCreateButton("Music Pause", 8, 338, 80, 22)
   GUICtrlSetTip (-1, "When you click on the button background music will pause now" & @CR & "Setting will be saved")
Else
   Local $ButtonMusic = GUICtrlCreateButton("Music Play", 8, 338, 80, 22)
   GUICtrlSetTip (-1, "When you click on the button background music will play now" & @CR & "Setting wil be saved")
EndIf
#EndRegion


#Region		Progess
Local $ProgressBar = GUICtrlCreateProgress(8, 365, 342, 15, $PBS_SMOOTH)
GUICtrlSetColor(-1, 0x00FF00)
#EndRegion


#Region		Gropus
Local $Group1 = GUICtrlCreateGroup("Kitserver options", 8, 185, 105, 121)
Local $Group2 = GUICtrlCreateGroup("Other options", 128, 185, 225, 121)
#EndRegion


Local $ComboPatchRead = ""

#Region		Show
GUISetState(@SW_SHOW)
$OS = @OSBuild
IF ($OS = "WIN_XP") or ($OS = "WIN_XPe") or ($OS = "WIN_2003") Then
   TrayTip	("Warning", "You should have aministratorske and privileges" & @CR & "for normal work Switcher!", 1, $TIP_ICONEXCLAMATION)
Else
   TrayTip	("Warning", "Run Switcher in administrative privilege" & @CR & "for normal working!", 1, $TIP_ICONEXCLAMATION)
EndIf
While 1
	$nMsg = GUIGetMsg()
   Switch $nMsg
	  Case $GUI_EVENT_CLOSE
			Exit
	  Case $ComboPatch
			   $ComboPatchRead = GUICtrlRead($ComboPatch)
			   If $ComboPatchRead = "National Teams (World Cup) Patch 2014" Then
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "")
				  GUICtrlSetImage ($PatchPicture, "Media\national2014.jpg")
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "Shollym Gameplay 1|Shollym Gameplay 2|Normal Gameplay", $SettingsOptionFile)
			   EndIf
			   If $ComboPatchRead = "Shollym Classic Patch 2014" Then
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "")
				  GUICtrlSetImage ($PatchPicture, "Media\classic2014.jpg")
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "Shollym Gameplay 1|Shollym Gameplay 2|Normal Gameplay", $SettingsOptionFile)
			   EndIf
			   If $ComboPatchRead = "Shollym Clubs Patch 2014" Then
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "")
				  GUICtrlSetImage ($PatchPicture, "Media\shollym2014.jpg")
				  Local $ComboDataOptionFile = GUICtrlSetData ($ComboOptionFile, "Normal Gameplay|Shollym Futsal OF Gameplay|Shollym Big Gap Gameplay|Shollym Classic Style Joga Bonito Gameplay|Shollym Extra Hard Gameplay|Shollym Smooth Gameplay|Shollym Slower Gameplay", $SettingsOptionFile)
			   EndIf
			   DeletingLabelTips ()
			   GUICtrlSetData ($LabelTips, "When you select a patch and click to save button...")
			   WritingLabelTips ()
	  Case $ComboOptionFile
			DeletingLabelTips ()
			GUICtrlSetData ($LabelTips, "When you select an option file and click to save button...")
			WritingLabelTips ()
	  Case $ButtonAbout
			About ()
	  Case $ButtonKitserverSettings
			KitserverSettings ()
	  Case $ButtonKitserverSetup
			KitserverSetup ()
	  Case $ButtonKitserverKeys
			KitserverKeys ()
	  Case $ButtonCameraZoom
			CameraZoom ()
	  Case $ButtonPESSettings
			PESSettings ()
	  Case $ButtonHelp
			Help ()
	  Case $ButtonMainFolder
			MainFolder ()
	  Case $ButtonSave
			Save ()
	  Case $ButtonPlay
			Play ()
	  Case $ButtonMusic
			Music ()
		 EndSwitch
	  If $SettingsBackgroundMusic = "Yes" Then
		 If _SoundPos ($BackgroundMusic, 2) = _SoundLength ($BackgroundMusic, 2) Then
			_SoundPlay ($BackgroundMusic)
		 EndIf
	  EndIf

WEnd
#EndRegion
Exit

#Region		Functions

Func About ()
   GUICtrlSetData ($LabelTips, "Information about Switcher...")
   WritingLabelTips ()
   SpeedProgressBar ()
   MsgBox ($MB_OK & $MB_ICONINFORMATION, "About", "Name:" & @TAB & @TAB & "Shollym Standalone Multi-Patch 2014 Switcher" & @CR & "Version:" & @TAB & @TAB & "1.2" & @CR & "Developer:" & @TAB & "Edin Jašareviæ" & @CR & "Date:" & @TAB & @TAB & "July 2014" & @CR & "e-mail:" & @TAB & @TAB & "edinjasar14@gmail.com" & @CR & "Website:" & @TAB & @TAB & "www.github.com/jasarsoft" & @CR & @CR & "Switcher is the first version of Shollym Standalone Multi-Patch 2014 for easy starting the desired patch. The first version is limited to use solely shollym 2014 until the next version should be universal for the next generation shollym patch. It will include support for languages that will be able to personally edit and continue to use, graphical detail, richer and more beautiful appearance, as well as packaging and editing the same swither components using the most powerful archiver 7-Zip and utilities for the new term repack game (precomp, srep) . Attention will be paid to online gaming, settings, log on to the famous clan groups. It will also be repenting attention informing players about new versions of patches and some more details.")
   TrayTip	("Info", "Switcher starting cetrnaestsoft offical webblog...", 1, $TIP_ICONASTERISK)
   Sleep (1000)
   ShellExecute ("www.cetrnaestsoft.blogspot.com", "", "", "open")
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func Music ()
   If $SettingsBackgroundMusic = "Yes" Then
	  GUICtrlSetData ($LabelTips, "Settings music pause...")
	  WritingLabelTips ()
	  SpeedProgressBar ()
	  _SoundPause ($BackgroundMusic)
	  GUICtrlSetData ($ButtonMusic, "Music Play")
	  DefaultProgressBar ()
	  DeletingLabelTips ()
	  Tips ()
	  IniWrite ("Bin\Settings.ini", "General", "BackgroundMusic", "No")
   Else
	  GUICtrlSetData ($LabelTips, "Settings music play...")
	  WritingLabelTips ()
	  SpeedProgressBar ()
	  _SoundResume ($BackgroundMusic)
	  GUICtrlSetData ($ButtonMusic, "Music Pause")
	  DefaultProgressBar ()
	  DeletingLabelTips ()
	  Tips ()
	  IniWrite ("Bin\Settings.ini", "General", "BackgroundMusic", "Yes")
   EndIf
$SettingsBackgroundMusic = IniRead ("Bin\Settings.ini", "General", "BackgroundMusic", "Enter settings")
EndFunc

Func KitserverSetup ()
   GUICtrlSetData ($LabelTips, "Runing kitserver setup...")
   WritingLabelTips ()
   SpeedProgressBar ()
   $Test = FileExists ("..\kitserver\setup.exe")
   If $Test = 0 Then
		 TrayTip	("Warning", "Switcher can't search Setup file of kitserver!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  Else
		 TrayTip	("Warning", "Run as Switcher in administrative privilege!", 1, $TIP_ICONEXCLAMATION)
		 Sleep (1000)
		 Run (@ComSpec & " /c " & "setup.exe", "..\kitserver", @SW_HIDE)
   EndIf
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func KitserverSettings ()
   GUICtrlSetData ($LabelTips, "Runing kitserver LOD Mixer Module...")
   WritingLabelTips ()
   SpeedProgressBar ()
   $Test = FileExists ("..\kitserver\lodcfg.exe")
   If $Test = 0 Then
		 TrayTip	("Warning", "Switcher can't search LOD Mixer Module!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
   Else
	  Run (@ComSpec & " /c " & "lodcfg.exe", "..\kitserver", @SW_HIDE)
   EndIf
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func KitserverKeys ()
   GUICtrlSetData ($LabelTips, "Runing kitserver Key Binder...")
   WritingLabelTips ()
   SpeedProgressBar ()
   $Test = FileExists ("..\kitserver\keybind.exe")
   If $Test = 0 Then
		 TrayTip	("Warning", "Switcher can't search Key Binder!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
   Else
	  Run (@ComSpec & " /c " & "keybind.exe", "..\kitserver", @SW_HIDE)
   EndIf
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func CameraZoom ()
   GUICtrlSetData ($LabelTips, "Runing PES6 Zoom...")
   WritingLabelTips ()
   SpeedProgressBar ()
   $Test = FileExists ("..\pes6zoom.exe")
   If $Test = 0 Then
		 TrayTip	("Warning", "Switcher can't search Camera Zoom!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
   Else
	  Run (@ComSpec & " /c " & "pes6zoom.exe", "..\", @SW_HIDE)
   EndIf
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func PESSettings ()
   GUICtrlSetData ($LabelTips, "Run Pro Evolution Soccer 6 Settings...")
   WritingLabelTips ()
   SpeedProgressBar ()
   $Test = FileExists ("..\settings.exe")
   If $Test = 0 Then
		 TrayTip	("Warning", "Switcher can't search settings of PES6!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
   Else
	  Run (@ComSpec & " /c " & "settings.exe", "..\", @SW_HIDE)
   EndIf
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func Help ()
   GUICtrlSetData ($LabelTips, "Opening help folder...")
   WritingLabelTips ()
   SpeedProgressBar ()
   ShellExecute ("Help", "", "..\", "open")
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func MainFolder ()
   GUICtrlSetData ($LabelTips, "Opening main folder...")
   WritingLabelTips ()
   SpeedProgressBar ()
   ShellExecute ("", "", "..\", "open")
   DeletingLabelTips ()
   DefaultProgressBar ()
   Tips ()
EndFunc


Func Play ()
   GUICtrlSetData ($LabelTips, "Starting Pro Evolution Soccer 6 now...")
   WritingLabelTips ()
   SpeedProgressBar ()
   FileExists ("..\PES6.exe")
   Run (@ComSpec & " /c " & "PES6.exe", "..\", @SW_HIDE)
   #cs
   If $Copy1 = 0 Then
			TrayTip	("Warning", "Switcher can't create backup file of hosts!", 3, $TIP_ICONEXCLAMATION)
			Sleep (3000)
	  EndIf
   #ce
   GUIDelete ()
   Exit
EndFunc


Func Save ()
   GUICtrlSetData ($LabelTips, "Saving settings please wait...")
   WritingLabelTips ()
   GUICtrlSetData ($ProgressBar, 5)
   $SaveComboPatch = GUICtrlRead ($ComboPatch)
   $SaveComboOptionFile = GUICtrlRead ($ComboOptionFile)
   $SaveComboOnline = GUICtrlRead ($ComboOnline)
   GUICtrlSetData ($ProgressBar, 10)

   ; Online
   If $SaveComboOnline = "Yes" Then
	  IniWrite ("Bin\Settings.ini", "General", "HostsBackupName", "hosts_backup")
	  $Copy1 = FileCopy (@WindowsDir & "\System32\drivers\etc\hosts", @WindowsDir & "\System32\drivers\etc\hosts_backup", $FC_OVERWRITE)
	  If $Copy1 = 0 Then
			TrayTip	("Warning", "Switcher can't create backup file of hosts!", 1, $TIP_ICONEXCLAMATION)
			Sleep (1000)
	  EndIf
	  $Copy2 = FileCopy ("..\Addon\Online Setup\hosts", @WindowsDir & "\System32\drivers\etc\hosts", $FC_OVERWRITE)
	  If $Copy2 = 0 Then
		 TrayTip ("Warning", "Switcher can't copy hosts file in WinDir 'system32\etc' folder!", 1, $TIP_ICONEXCLAMATION)
		 Sleep (1000)
		 TrayTip ("Warning", "Run launhcer in administrative privileges and tray again.", 1, $TIP_ICONEXCLAMATION)
		 Sleep (1000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 20)
   Else
	  $Copy = FileCopy (@WindowsDir & "\System32\drivers\etc\hosts_backup", @WindowsDir & "\System32\drivers\etc\hosts", $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Switcher can't backup hosts file!", 1, $TIP_ICONEXCLAMATION)
		 Sleep (1000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 20)
   EndIf


   ; Patch
   ;Nation teams
   If $SaveComboPatch = "National Teams (World Cup) Patch 2014" Then
	  $Copy = FileCopy ("Pack\NT\Icons\icon.ico", "..\Icons\icon.ico",  $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy icon file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 25)
	  $Copy = DirCopy ("Pack\NT\Main", "..\", $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy main NT files. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 65)
	  $OpenNumber = IniRead ("Bin\Settings.ini", "General", "OpenNumber", "")
	  If $OpenNumber = 0 Then
		 IniWrite ("Bin\Settings.ini", "General", "OpenNumber", "1")
	  Else
		 $Copy = FileMove ("..\dat\e_sound.afs", "..\dat\club_e_sound.afs")
		 $Copy = FileMove ("..\dat\nt_e_sound.afs", "..\dat\e_sound.afs")
	  EndIf
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy e_sound file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  Switch $SaveComboOptionFile
	  Case $SaveComboOptionFile = "Normal Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_national", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\NT\OptFile\Normal\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Shollym Gameplay 1"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\NT\OptFile\Shollym1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Shollym Gameplay 2"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\NT\OptFile\Shollym2\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 EndSwitch
   GUICtrlSetData ($ProgressBar, 100)
   GUICtrlSetData ($LabelTips, "Saving settings finished...")
   WritingLabelTips ()
   DeletingLabelTips ()
   DefaultProgressBar ()
   GUICtrlSetData ($LabelTips, "Now reinstalling kitserver and click to play patch button...")
   WritingLabelTips ()
   KitserverSetup ()
   EndIf
   ; Classic patch
   If $SaveComboPatch = "Shollym Classic Patch 2014" Then
	  $Copy = FileCopy ("Pack\Classic\Icons\icon.ico", "..\Icons\icon.ico",  $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy icon file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 25)
	  $Copy = DirCopy ("Pack\Classic\Main", "..\", $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy main files of Classic patch version. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 65)
	  $OpenNumber = IniRead ("Bin\Settings.ini", "General", "OpenNumber", "")
	  If $OpenNumber = 0 Then
		 IniWrite ("Bin\Settings.ini", "General", "OpenNumber", "1")
	  Else
		 $Copy = FileMove ("..\dat\e_sound.afs", "..\dat\club_e_sound.afs")
		 $Copy = FileMove ("..\dat\nt_e_sound.afs", "..\dat\e_sound.afs")
	  EndIf
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy e_sound file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  Switch $SaveComboOptionFile
	  Case $SaveComboOptionFile = "Normal Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Normal\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Shollym Gameplay 1"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Shollym Gameplay 2"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym2\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 EndSwitch
   GUICtrlSetData ($ProgressBar, 100)
   GUICtrlSetData ($LabelTips, "Saving settings finished...")
   WritingLabelTips ()
   DeletingLabelTips ()
   DefaultProgressBar ()
   GUICtrlSetData ($LabelTips, "Now reinstalling kitserver and click to play patch button...")
   WritingLabelTips ()
   KitserverSetup ()
   EndIf

   ; Club Version
   If $SaveComboPatch = "Shollym Clubs Patch 2014" Then
	  $Copy = FileCopy ("Pack\Club\Icons\icon.ico", "..\Icons\icon.ico",  $FC_OVERWRITE)
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy icon file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 25)
	  $Copy = DirCopy ("Pack\Club\Main", "..\", $FC_OVERWRITE)
	  If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy main files of Club patch version. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
	  EndIf
	  GUICtrlSetData ($ProgressBar, 65)
	  $Copy = FileMove ("..\dat\e_sound.afs", "..\dat\nt_e_sound.afs")
	  $Copy = FileMove ("..\dat\club_e_sound.afs", "..\dat\e_sound.afs")
	  If $Copy = 0 Then
		 TrayTip	("Warning", "Can't copy e_sound file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
		 Sleep (3000)
	  EndIf
	  Switch $SaveComboOptionFile
	  Case $SaveComboOptionFile = "Normal Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Club\OptFile\Normal\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Futsal OF Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\xxFutsalOF\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Big Gap Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym5\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Classic Style Joga Bonito Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym4\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Extra Hard Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym3\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Smooth Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym2\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
		 Case $SaveComboOptionFile = "Slower Gameplay"
			$Copy = FileCopy (@MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT_backup", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			$Copy = FileCopy ("Pack\Classic\OptFile\Shollym1\KONAMI-WIN32PES6OPT", @MyDocumentsDir & "\KONAMI\Pro Evolution Soccer 6\save\folder1\KONAMI-WIN32PES6OPT", $FC_OVERWRITE)
			If $Copy = 0 Then
			   TrayTip	("Warning", "Can't copy option file. The game may not work properly!", 3, $TIP_ICONEXCLAMATION)
			   Sleep (3000)
			EndIf
			GUICtrlSetData ($ProgressBar, 80)
	  EndSwitch
   GUICtrlSetData ($ProgressBar, 100)
   GUICtrlSetData ($LabelTips, "Saving settings finished...")
   WritingLabelTips ()
   DeletingLabelTips ()
   DefaultProgressBar ()
   GUICtrlSetData ($LabelTips, "Now reinstalling kitserver and click to play patch button...")
   WritingLabelTips ()
   KitserverSetup ()
   EndIf
EndFunc


Func SpeedProgressBar ()
   For $i=0 to 100 step 2
	  GUICtrlSetData ($ProgressBar, $i)
	  Sleep (1)
   Next
EndFunc


Func DefaultProgressBar ()
   Sleep (1000)
   GUICtrlSetData ($ProgressBar, 0)
EndFunc


Func Tips ()
 $Random = Ceiling ( Random (1, 16))
Switch $Random
   Case 1
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome in Shollym Patch Switcher..")
	  WritingLabelTips ()
   Case 2
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome in Shollym Standalone Multi-Patch 2014 Switcher...")
	  WritingLabelTips ()
   Case 3
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "This is Shollym Patch Switcher...")
	  WritingLabelTips ()
   Case 4
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Welcome " & @UserName & " in Switcher...")
	  WritingLabelTips ()
   Case 5
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "This is Shollym patch Switcher v1.0 Beta...")
	  WritingLabelTips ()
   Case 6
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Switcher Version 1.0 Beta...")
	  WritingLabelTips ()
   Case 7
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Switcher build July 2014...")
	  WritingLabelTips ()
   Case 8
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Current Time is " & @HOUR & ":" & @MIN)
	  WritingLabelTips ()
   Case 9
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Current Date is " & @MDAY & "." & @MON)
	  WritingLabelTips ()
   Case 10
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "CPU Architectures is " & CPUArchitectures ())
	  WritingLabelTips ()
   Case 11
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "PC OS version is " & OSVersion ())
	  WritingLabelTips ()
   Case 12
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "PC OS lang is " & LanguageName ())
	  WritingLabelTips ()
   Case 13
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "" & @MDAY & "." & @MON & "  "& @HOUR & ":" & @MIN)
	  WritingLabelTips ()
   Case 14
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Desktop resolution " & @DesktopWidth & "x" & @DesktopHeight )
	  WritingLabelTips ()
   Case 15
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "Monitor refresh rate " & @DesktopRefresh)
	  WritingLabelTips ()
   Case 16
	  $LabelTipsSet = GUICtrlSetData ($LabelTips, "IP Adress " & @IPAddress1)
	  WritingLabelTips ()
EndSwitch

EndFunc


Func WritingLabelTips ()
   $LabelTipsText = GUICtrlRead ($LabelTips)
   $LabelTipsLenght = StringLen ($LabelTipsText)
   For $i = 1 to $LabelTipsLenght
	  $LabelTipsWriting = StringMid ($LabelTipsText, 1, $i)
	  GUICtrlSetData ($LabelTips, $LabelTipsWriting)
	  Sleep (10)
   Next
EndFunc


Func DeletingLabelTips ()
   $LabelTipsText = GUICtrlRead ($LabelTips)
   $LabelTipsLenght = StringLen ($LabelTipsText)
   For $i = $LabelTipsLenght to 0 Step -1
	  $LabelTipsDeleting = StringMid ($LabelTipsText, 1, $i)
	  GUICtrlSetData ($LabelTips, $LabelTipsDeleting)
	  Sleep (10)
   Next
EndFunc


Func CurrentDate ($Long, $Short)
   Local $MounthLong = @MON
   Switch $MounthLong
	  Case "01"
		 $MounthLong = "January"
	  Case "02"
		 $MounthLong = "Februaty"
	  Case "03"
		 $MounthLong = "March"
	  Case "04"
		 $MounthLong = "April"
	  Case "05"
		 $MounthLong = "May"
	  Case "06"
		 $MounthLong = "June"
	  Case "07"
		 $MounthLong = "July"
	  Case "08"
		 $MounthLong = "August"
	  Case "09"
		 $MounthLong = "September"
	  Case "10"
		$MounthLong = "October"
	  Case "11"
		 $MounthLong = "November"
	  Case "12"
		 $MounthLong = "December"
	  EndSwitch

   Local $MounthShort = @MON
   Switch $MounthShort
	  Case "01"
		 $MounthShort = "Jan."
	  Case "02"
		 $MounthShort = "Feb."
	  Case "03"
		 $MounthShort = "Mar."
	  Case "04"
		 $MounthShort = "Apr."
	  Case "05"
		 $MounthShort = "May"
	  Case "06"
		 $MounthShort = "Jun."
	  Case "07"
		 $MounthShort = "Jul."
	  Case "08"
		 $MounthShort = "Aug."
	  Case "09"
		 $MounthShort = "Sept."
	  Case "10"
		 $MounthShort = "Oct."
	  Case "11"
		 $MounthShort = "Nov."
	  Case "12"
		 $MounthShort = "Dec."
	  EndSwitch

   Local $Long = @MDAY & ", " & $MounthLong & " " & @YEAR
   Local $Short = @MDAY & ", " & $MounthDay & " " & @YEAR
EndFunc


Func LanguageName ()
   Local $Language = ""
   Switch @OSLang
	  Case "0004"
		 Return "Chinese - Simplified"
	  Case "0401"
		 Return "Arabic - Saudi Arabia"
	  Case "0402"
		 Return "Bulgarian - Bulgaria"
	  Case "0403"
		 Return "Catalan - Spain"
	  Case "0404"
		 Return "Chinese (Traditional) - Taiwan"
	  Case "0405"
		 Return "Czech - Czech Republic"
	  Case "0406"
		 Return "Danish - Denmark"
	  Case "0407"
		 Return "German - Germany"
	  Case "0408"
		 Return "Greek - Greece"
	  Case "0409"
		 Return "English - United States"
	  Case "040A"
		 Return "Spanish - Spain"
	  Case "040B"
		 Return "Finnish - Finland"
	  Case "040C"
		 Return "French - France"
	  Case "040D"
		 Return "Hebrew - Israel"
	  Case "040E"
		 Return "Hungarian - Hungary"
	  Case "040F"
		 Return "Icelandic - Iceland"
	  Case "0410"
		 Return "Italian - Italy"
	  Case "0411"
		 Return "Japanese - Japan"
	  Case "0412"
		 Return "Korean - Korea"
	  Case "0413"
		 Return "Dutch - Netherlands"
	  Case "0414"
		 Return "Norwegian (Bokmal) - Norway"
	  Case "0415"
		 Return "Polish - Poland"
	  Case "0416"
		 Return "Portuguese - Brazil"
	  Case "0417"
		 Return "Romansh - Switzerland"
	  Case "0418"
		 Return "Romanian - Romania"
	  Case "0419"
		 Return "Russian - Russia"
	  Case "041A"
		 Return "Croatian - Croatia"
	  Case "041B"
		 Return "Slovak - Slovakia"
	  Case "041C"
		 Return "Albanian - Albania"
	  Case "041D"
		 Return "Swedish - Sweden"
	  Case "041E"
		 Return "Thai - Thailand"
	  Case "041F"
		 Return "Turkish - Turkey"
	  Case "0420"
		 Return "Urdu - Pakistan"
	  Case "0421"
		 Return "Indonesian - Indonesia"
	  Case "0422"
		 Return "Ukrainian - Ukraine"
	  Case "0423"
		 Return "Belarusian - Belarus"
	  Case "0424"
		 Return "Slovenian - Slovenia"
	  Case "0425"
		 Return "Estonian - Estonia"
	  Case "0426"
		 Return "Latvian - Latvia"
	  Case "0427"
		 Return "Lithuanian - Lithuanian"
	  Case "0428"
		 Return "Tajik (Cyrillic) - Tajikistan"
	  Case "0429"
		 Return "Persian - Iran"
	  Case "042A"
		 Return "Vietnamese - Vietnam"
	  Case "042B"
		 Return "Armenian - Armenia"
	  Case "042C"
		 Return "Azeri (Latin) - Azerbaijan"
	  Case "042D"
		 Return "Basque - Basque"
	  Case "042E"
		 Return "Upper Sorbian - Germany"
	  Case "042F"
		 Return "Macedonian - Macedonia"
	  Case "0432"
		 Return "Setswana / Tswana - South Africa"
	  Case "0434"
		 Return "isiXhosa - South Africa"
	  Case "0435"
		 Return "isiZulu - South Africa"
	  Case "0436"
		 Return "Afrikaans - South Africa"
	  Case "0437"
		 Return "Georgian - Georgia"
	  Case "0438"
		 Return "Faroese - Faroe Islands"
	  Case "0439"
		 Return "Hindi - India"
	  Case "043A"
		 Return "Maltese - Malta"
	  Case "043B"
		 Return "Sami (Northern) - Norway"
	  Case "043e"
		 Return "Malay - Malaysia"
	  Case "043F"
		 Return "Kazakh - Kazakhstan"
	  Case "0440"
		 Return "Kyrgyz - Kyrgyzstan"
	  Case "0441"
		 Return "Swahili - Kenya"
	  Case "0442"
		 Return "Turkmen - Turkmenistan"
	  Case "0443"
		 Return "Uzbek (Latin) - Uzbekistan"
	  Case "0444"
		 Return "Tatar - Russia"
	  Case "0445"
		 Return "Bangla - Bangladesh"
	  Case "0446"
		 Return "Punjabi - India"
	  Case "0447"
		 Return "Gujarati - India"
	  Case "0448"
		 Return "Oriya - India"
	  Case "0449"
		 Return "Tamil - India"
	  Case "044A"
		 Return "Telugu - India"
	  Case "044B"
		 Return "Kannada - India"
	  Case "044C"
		 Return "Malayalam - India"
	  Case "044D"
		 Return "Assamese - India"
	  Case "044E"
		 Return "Marathi - India"
	  Case "044F"
		 Return "Sanskrit - India"
	  Case "0450"
		 Return "Mongolian (Cyrillic) - Mongolia"
	  Case "0451"
		 Return "Tibetan - China"
	  Case "0452"
		 Return "Welsh - United Kingdom"
	  Case "0453"
		 Return "Khmer - Cambodia"
	  Case "0454"
		 Return "Lao - Lao PDR"
	  Case "0456"
		 Return "Galician - Spain"
	  Case "0457"
		 Return "Konkani - India"
	  Case "045A"
		 Return "Syriac - Syria"
	  Case "045B"
		 Return "Sinhala - Sri Lanka"
	  Case "045C"
		 Return "Cherokee - Cherokee"
	  Case "045D"
		 Return "Inuktitut (Canadian_Syllabics) - Canada"
	  Case "045E"
		 Return "Amharic - Ethiopia"
	  Case "0461"
		 Return "Nepali - Nepal"
	  Case "0462"
		 Return "Frisian - Netherlands"
	  Case "0463"
		 Return "Pashto - Afghanistan"
	  Case "0464"
		 Return "Filipino - Philippines"
	  Case "0465"
		 Return "Divehi - Maldives"
	  Case "0468"
		 Return "Hausa - Nigeria"
	  Case "046A"
		 Return "Yoruba - Nigeria"
	  Case "046B"
		 Return "Quechua - Bolivia"
	  Case "046C"
		 Return "Sesotho sa Leboa - South Africa"
	  Case "046D"
		 Return "Bashkir - Russia"
	  Case "046E"
		 Return "Luxembourgish - Luxembourg"
	  Case "046F"
		 Return "Greenlandic - Greenland"
	  Case "0470"
		 Return "Igbo - Nigeria"
	  Case "0473"
		 Return "Tigrinya - Ethiopia"
	  Case "0475"
		 Return "Hawiian - United States"
	  Case "0478"
		 Return "Yi - China"
	  Case "047A"
		 Return "Mapudungun - Chile"
	  Case "047C"
		 Return "Mohawk - Canada"
	  Case "047E"
		 Return "Breton - France"
	  Case "0480"
		 Return "Uyghur - China"
	  Case "0481"
		 Return "Maori - New Zealand"
	  Case "0482"
		 Return "Occitan - France"
	  Case "0483"
		 Return "Corsican - France"
	  Case "0484"
		 Return "Alsatian - France"
	  Case "0485"
		 Return "Sakha - Russia"
	  Case "0486"
		 Return "K'iche - Guatemala"
	  Case "0487"
		 Return "Kinyarwanda - Rwanda"
	  Case "0488"
		 Return "Wolof - Senegal"
	  Case "048C"
		 Return "Dari - Afghanistan"
	  Case "0491"
		 Return "Scottish Gaelic - United Kingdom"
	  Case "0492"
		 Return "Central Kurdish - Iraq"
	  Case "0801"
		 Return "Arabic - Iraq"
	  Case "0803"
		 Return "Valencian - Valencia"
	  Case "0804"
		 Return "Chinese (Simplified) - China"
	  Case "0807"
		 Return "German - Switzerland"
	  Case "0809"
		 Return "English - United Kingdom"
	  Case "080A"
		 Return "080A"
	  Case "080C"
		 Return "French - Belgium"
	  Case "0810"
		 Return "Italian - Switzerland"
	  Case "0813"
		 Return "Dutch - Belgium"
	  Case "0814"
		 Return "Norwegian (Nynorsk) - Norway"
	  Case "0816"
		 Return "Portuguese - Portugal"
	  Case "081A"
		 Return "Serbian (Latin) - Serbia and Montenegro"
	  Case "081D"
		 Return "Swedish - Finland"
	  Case "0820"
		 Return "Urdu - (reserved)"
	  Case "082C"
		 Return "Azeri (Cyrillic) - Azerbaijan"
	  Case "082E"
		 Return "Lower Sorbian - Germany"
	  Case "0832"
		 Return "Setswana / Tswana - Botswana"
	  Case "083B"
		 Return "Sami (Northern) - Sweden"
	  Case "083C"
		 Return "Irish - Ireland"
	  Case "083E"
		 Return "Malay - Brunei Darassalam"
	  Case "0843"
		 Return "Uzbek (Cyrillic) - Uzbekistan"
	  Case "0845"
		 Return "Bangla - Bangladesh"
	  Case "0846"
		 Return "Punjabi - Pakistan"
	  Case "0849"
		 Return "Tamil - Sri Lanka"
	  Case "0850"
		 Return "Mongolian (Mong) - Mongolia"
	  Case "0859"
		 Return "Sindhi - Pakistan"
	  Case "085D"
		 Return "Inuktitut (Latin) - Canada"
	  Case "085F"
		 Return "Tamazight (Latin) - Algeria"
	  Case "0867"
		 Return "Pular - Senegal"
	  Case "086B"
		 Return "Quechua - Ecuador"
	  Case "0873"
		 Return "Tigrinya - Eritrea"
	  Case "0C01"
		 Return "Arabic - Egypt"
	  Case "0C04"
		 Return "Chinese - Hong Kong SAR"
	  Case "0C07"
		 Return "German - Austria"
	  Case "0C09"
		 Return "English - Australia"
	  Case "0C0A"
		 Return "Spanish - Spain"
	  Case "0C0C"
		 Return "French - Canada"
	  Case "0C1A"
		 Return "Serbian (Cyrillic) - Serbia and Montenegro"
	  Case "0C3B"
		 Return "Sami (Northern) - Finland"
	  Case "0C6B"
		 Return "Quechua - Peru"
	  Case "1001"
		 Return "Arabic - Libya"
	  Case "1004"
		 Return "Chinese - Singapore"
	  Case "1007"
		 Return "German - Luxembourg"
	  Case "1009"
		 Return "English - Canada"
	  Case "100A"
		 Return "Spanish - Guatemala"
	  Case "100C"
		 Return "French - Switzerland"
	  Case "101A"
		 Return "Croatian (Latin) - Bosnia and Herzegovina"
	  Case "103B"
		 Return "Sami (Lule) - Norway"
	  Case "105F"
		 Return "Central Atlas Tamazight (Tifinagh) - Morocco"
	  Case "1401"
		 Return "Arabic - Algeria"
	  Case "1404"
		 Return "Chinese - Macao SAR"
	  Case "1407"
		 Return "German - Liechtenstein"
	  Case "1409"
		 Return "English - New Zealand"
	  Case "140A"
		 Return "Spanish - Costa Rica"
	  Case "140C"
		 Return "French - Luxembourg"
	  Case "141A"
		 Return "Bosnian (Latin) - Bosnia and Herzegovina"
	  Case "143B"
		 Return "Sami (Lule) - Sweden"
	  Case "1801"
		 Return "Arabic - Morocco"
	  Case "1809"
		 Return "English - Ireland"
	  Case "180A"
		 Return "Spanish - Panama"
	  Case "180C"
		 Return "French - Monaco"
	  Case "181A"
		 Return "Serbian (Latin) - Bosnia and Herzegovina"
	  Case "183B"
		 Return "Sami (Southern) - Norway"
	  Case "1C01"
		 Return "Arabic - Tunisia"
	  Case "1c09"
		 Return "English - South Africa"
	  Case "1C0A"
		 Return "Spanish - Dominican Republic"
	  Case "1C1A"
		 Return "Serbian (Cyrillic) - Bosnia and Herzegovina"
	  Case "1C3B"
		 Return "Sami (Southern) - Sweden"
	  Case "2001"
		 Return "Arabic - Oman"
	  Case "2009"
		 Return "English - Jamaica"
	  Case "200A"
		 Return "Spanish - Venezuela"
	  Case "201A"
		 Return "Bosnian (Cyrillic) - Bosnia and Herzegovina"
	  Case "203B"
		 Return "Sami (Skolt) - Finland"
	  Case "2401"
		 Return "Arabic - Yemen"
	  Case "2409"
		 Return "English - Caribbean"
	  Case "240A"
		 Return "Spanish - Colombia"
	  Case "241A"
		 Return "Serbian (Latin) - Serbia"
	  Case "243B"
		 Return "Sami (Inari) - Finland"
	  Case "2801"
		 Return "Arabic - Syria"
	  Case "2809"
		 Return "English - Belize"
	  Case "280A"
		 Return "Spanish - Peru"
	  Case "281A"
		 Return "Serbian (Cyrillic) - Serbia"
	  Case "2C01"
		 Return "Arabic - Jordan"
	  Case "2C09"
		 Return "English - Trinidad and Tobago"
	  Case "2C0A"
		 Return "Spanish - Argentina"
	  Case "2C1A"
		 Return "Serbian (Latin) - Montenegro"
	  Case "3001"
		 Return "Arabic - Lebanon"
	  Case "3009"
		 Return "English - Zimbabwe"
	  Case "300A"
		 Return "Spanish - Ecuador"
	  Case "301A"
		 Return "Serbian (Cyrillic) - Montenegro"
	  Case "3401"
		 Return "Arabic - Kuwait"
	  Case "3409"
		 Return "English - Philippines"
	  Case "340A"
		 Return "Spanish - Chile"
	  Case "3801"
		 Return "Arabic - U.A.E."
	  Case "380A"
		 Return "Spanish - Uruguay"
	  Case "3C01"
		 Return "Arabic - Bahrain"
	  Case "3C0A"
		 Return "Spanish - Paraguay"
	  Case "4001"
		 Return "Arabic - Qatar"
	  Case "4009"
		 Return "English - India"
	  Case "400A"
		 Return "Spanish - Bolivia"
	  Case "4409"
		 Return "English - Malaysia"
	  Case "440A"
		 Return "Spanish - El Salvador"
	  Case "4809"
		 Return "English - Singapore"
	  Case "480A"
		 Return "Spanish - Honduras"
	  Case "4C0A"
		 Return "Spanish - Nicaragua"
	  Case "500A"
		 Return "Spanish - Puerto Rico"
	  Case "540A"
		 Return "Spanish - United States"
	  Case "7C04"
		 Return "Chinese - Traditional"
	  Case Else
            Return "Unknown"
    EndSwitch
EndFunc   ;==>_GetLanguage


Func CPUArchitectures ()
   Local $CPUArch = @CPUArch
   Switch $CPUArch
	  Case "X86"
		 Return "32-Bit (x86)"
	  Case "X64"
		 Return "64-Bit (x64)"
	  Case Else
		 Return "Other"
	  EndSwitch
EndFunc


Func OSVersion ()
   Local $OSVersion = @OSVersion
   Switch $OSVersion
   Case "WIN_81"
	  Return "Windows 8.1"
   Case "WIN_8"
	  Return "Windows 8"
   Case "WIN_7"
	  Return "Windows 7"
   Case "WIN_VISTA"
	  Return "Windows Vista"
   Case "WIN_XP"
	  Return "Windows XP"
   Case "WIN_XPe"
	  Return "Old Windows"
   Case "WIN_2012R2"
	  Return "Windows Server 2012 R2"
   Case "WIN_2012"
	  Return "Windows Server 2012"
   Case "WIN_2008R2"
	  Return "Windows Server 2008 R2"
   Case "WIN_2008"
	  Return "Windows Server 2008"
   Case "WIN_2003"
	  Return "Windows Server 2003"
   Case Else
	  Return "Unknown"
   EndSwitch
EndFunc

#EndRegion





