# This installs two files, app.exe and logo.ico, creates a start menu shortcut, builds an uninstaller, and
# adds uninstall information to the registry for Add/Remove Programs
 
# To get started, put this script into a folder with the two files (app.exe, logo.ico, and license.rtf -
# You'll have to create these yourself) and run makensis on it
 
# If you change the names "app.exe", "logo.ico", or "license.rtf" you should do a search and replace - they
# show up in a few places.
# All the other settings can be tweaked by editing the !defines at the top of this script
!define APPNAME "AoS World of Tanks Modifications"
!define COMPANYNAME "AoS's workshop"
!define DESCRIPTION "A compilation of mods used by Ace of Spades"
# These three must be integers
!define VERSIONMAJOR 0
!define VERSIONMINOR 8
!define VERSIONPATCH 9
!define VERSIONBUILD 6
# These will be displayed by the "Click here for support information" link in "Add/Remove Programs"
# It is possible to use "mailto:" links in here to open the email client
!define HELPURL "http://www.spades.dk/forum/viewtopic.php?f=32&t=1726" # "Support Information" link
!define UPDATEURL "http://www.spades.dk/forum/viewtopic.php?f=32&t=1726" # "Product Updates" link
!define ABOUTURL "http://www.spades.dk/forum/viewtopic.php?f=32&t=1726" # "Publisher" link
# This is the size (in kB) of all the files copied into "Program Files"
!define INSTALLSIZE 10957
 
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
 
InstallDir "C:\Games\World_of_Tanks"
 
# rtf or txt file - remember if it is txt, it must be in the DOS text format (\r\n)
LicenseData "aos-wot-mods-disclaimer.txt"
# This will be in the installer/uninstaller's title bar
Name "${APPNAME}"
Icon "${NSISDIR}\Contrib\Graphics\Icons\modern-install-full.ico"
UninstallIcon "${NSISDIR}\Contrib\Graphics\Icons\modern-uninstall-full.ico"
OutFile "aos-wot-mods-${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}.${VERSIONBUILD}.exe"
 
!include LogicLib.nsh

# Just three pages - license agreement, install location, and installation
Page license
Page directory
Page instfiles
 
!macro VerifyUserIsAdmin
UserInfo::GetAccountType
pop $0
${If} $0 != "admin" ;Require admin rights on NT4+
        messageBox mb_iconstop "Administrator rights required!"
        setErrorLevel 740 ;ERROR_ELEVATION_REQUIRED
        quit
${EndIf}
!macroend
 
Function .onInit
	setShellVarContext all
	!insertmacro VerifyUserIsAdmin
FunctionEnd
 
Section "install"
	# Files for the install directory - to build the installer, these should be in the same directory as the install script (this file)
	SetOutPath $INSTDIR
	
	# Files added here should be removed by the uninstaller (see section "uninstall")
	File aos-wot-mods-disclaimer.txt
    File aos-wot-mods-changelog.txt
	File aos-wot-mods.ico
	
	# Add any other files for the install directory (license files, app data, etc) here
	File "ActiveDossierUploader.exe"
	File /r res_mods
	
	# Uninstaller - See function un.onInit and section "uninstall" for configuration
	WriteUninstaller "$INSTDIR\aos-wot-mods-uninstall.exe"
 
	# Start Menu
	CreateShortCut "$SMSTARTUP\ActiveDossierUploader.lnk" "$INSTDIR\ActiveDossierUploader.exe" "" "" "" SW_SHOWNORMAL "" "http://www.vbaddict.net statistic and replay upload tool"
	 
	# Registry information for add/remove programs
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayName" "${APPNAME} - ${DESCRIPTION}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "UninstallString" "$\"$INSTDIR\aos-wot-mods-uninstall.exe$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "QuietUninstallString" "$\"$INSTDIR\aos-wot-mods-uninstall.exe$\" /S"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "InstallLocation" "$\"$INSTDIR$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayIcon" "$\"$INSTDIR\aos-wot-mods.ico$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "Publisher" "${COMPANYNAME}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "HelpLink" "$\"${HELPURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLUpdateInfo" "$\"${UPDATEURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "URLInfoAbout" "$\"${ABOUTURL}$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayVersion" "${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}.${VERSIONBUILD}"
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMajor" ${VERSIONMAJOR}
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionMinor" ${VERSIONMINOR}
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionPatch" ${VERSIONPATCH}
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "VersionBuild" ${VERSIONBUILD}
	# There is no option for modifying or repairing the install
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoModify" 1
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "NoRepair" 1
	# Set the INSTALLSIZE constant (!defined at the top of this script) so Add/Remove Programs can accurately report the size
	WriteRegDWORD HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "EstimatedSize" ${INSTALLSIZE}
	
	ExecShell "" "$SMSTARTUP\ActiveDossierUploader.lnk"
sectionEnd
 
# Uninstaller
 
function un.onInit
	SetShellVarContext all

	#Verify the uninstaller - last chance to back out
	MessageBox MB_OKCANCEL "Permanantly remove ${APPNAME}?" IDOK next
		Abort
	next:

	!insertmacro VerifyUserIsAdmin
functionEnd
 
section "uninstall"
 
	# Remove Start Menu Start-Up launcher
	Delete "$SMSTARTUP\ActiveDossierUploader.lnk"
 
	# Remove files
	Delete $INSTDIR\aos-wot-mods-disclaimer.txt
    Delete $INSTDIR\aos-wot-mods-changelog.txt
	Delete $INSTDIR\aos-wot-mods.ico
	Delete $INSTDIR\ActiveDossierUploader.exe

	# Generate a list by using "DIR /S /B /A:-D /O:GN res_mods >aos-wot-mods-files.txt". Remember to replace the current directory (e.g. "D:\wot-dev\aos-wot-mods") with "    Delete $INSTDIR\" in the file.
    Delete $INSTDIR\res_mods\0.8.9\gui\avatar_input_handler.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\messenger.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\ServerCross.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\ZoomX.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\flash\Application.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\flash\Application_crashed.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\flash\TankCarousel.cfg
    Delete $INSTDIR\res_mods\0.8.9\gui\flash\TankCarousel.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\flash\TankCarouselFilterControls.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\maps\ingame\aim\gun_marker.dds
    Delete $INSTDIR\res_mods\0.8.9\gui\maps\ingame\aim\gun_marker_blue.dds
    Delete $INSTDIR\res_mods\0.8.9\gui\maps\ingame\aim\gun_marker_blue_ultraSlimWhite.dds
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\battle.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\CDPData.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_panel_arcade.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_panel_postmortem.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_panel_sniper.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_panel_strategic.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_sniper.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\crosshair_strategic.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\DamagePanel.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\GunConstraints.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\GunConstraints.xml
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\Minimap.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\PlayersPanel.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\StatisticForm.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\TeamBasesPanel.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\VehicleMarkersManager.swf
    Delete $INSTDIR\res_mods\0.8.9\gui\scaleform\xvm.swf
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\CameraNode.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\vehicle.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\vehicle_damage.json
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\AvatarInputHandler\control_modes.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\AvatarInputHandler\DynamicCameras\ArcadeCamera.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\AvatarInputHandler\DynamicCameras\SniperCamera.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\AvatarInputHandler\DynamicCameras\StrategicCamera.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xpm.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\__version__.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\appstart.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\constants.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\gameregion.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\logger.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\pinger.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\stats.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\vehinfo.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\vehinfo_short.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\vehinfo_tiers.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\xvm.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\mods\xvmstat\XvmStat.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\Scaleform\daapi\view\lobby\hangar\tankcarousel.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\Scaleform\daapi\view\meta\tankcarouselmeta.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\gui\Scaleform\locale\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\GunConstraints.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStatCache.xml
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStatConfig.cfg
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStatistic.pyc
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#00EE00.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#02C9B3.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#D042F3.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#EE0000.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#FE7903.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\#FFCC00.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\CreditsIconBig-1-20x16.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\GoldIcon-1-20x16.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\service40x32.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\spotted40x32.png
    Delete $INSTDIR\res_mods\0.8.9\scripts\client\mods\SessionStat\VehicleEliteIcon.png
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\achievements.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\AOGAS.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\arenas.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\artefacts.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\ban_reason.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\battle_results.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\battle_tutorial.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\captcha.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\chat.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\china_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\china_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\controls.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\cybersport.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\development.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\dialogs.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\faq.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\france_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\france_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\gb_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\gb_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\germany_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\germany_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\ingame_gui.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\ingame_help.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\invites.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\item_types.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\japan_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\japan_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\kong_captcha.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\lobby_help.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\menu.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\messenger.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\nations.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\prebattle.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\profile.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\quests.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\recaptcha.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\settings.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\system_messages.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\tips.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\tooltips.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\tutorial.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\usa_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\usa_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\ussr_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\ussr_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\vehicle_customization.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\vehicle_customization_cn.mo
    Delete $INSTDIR\res_mods\0.8.9\text\LC_MESSAGES\waiting.mo
    Delete $INSTDIR\res_mods\xvm\xvm.xc
    Delete $INSTDIR\res_mods\xvm\xvm.xc.sample
    Delete $INSTDIR\res_mods\xvm\configs\configs.url
    Delete $INSTDIR\res_mods\xvm\configs\@Default\@xvm.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\alpha.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battle.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battleLoading.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battleResults.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\captureBar.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\colors.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\elements.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hangar.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hitLog.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hotkeys.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\iconset.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\login.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markers.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersAliveExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersAliveNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersDeadExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersDeadNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimap.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapCircles.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapLabels.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapLines.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\playersPanel.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\rating.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\squad.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\statisticForm.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\texts.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\turretMarkers.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\userInfo.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\vehicleNames.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\@xvm.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\alpha.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battle.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battleLoading.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battleResults.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\captureBar.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\colors.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\elements.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hangar.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hitLog.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hotkeys.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\iconset.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\login.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markers.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersAliveExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersAliveNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersDeadExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersDeadNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimap.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapCircles.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapLabels.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapLines.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\playersPanel.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\rating.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\squad.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\statisticForm.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\texts.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\turretMarkers.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\userInfo.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\vehicleNames.xc
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-en.txt
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-fr.txt
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-ru.txt
    Delete $INSTDIR\res_mods\xvm\doc\macros.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-cz.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-en.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-fr.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-pl.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-ru.txt
    Delete $INSTDIR\res_mods\xvm\l10n\be.xc
    Delete $INSTDIR\res_mods\xvm\l10n\bg.xc
    Delete $INSTDIR\res_mods\xvm\l10n\cs.xc
    Delete $INSTDIR\res_mods\xvm\l10n\da.xc
    Delete $INSTDIR\res_mods\xvm\l10n\de.xc
    Delete $INSTDIR\res_mods\xvm\l10n\en.xc
    Delete $INSTDIR\res_mods\xvm\l10n\es.xc
    Delete $INSTDIR\res_mods\xvm\l10n\fi.xc
    Delete $INSTDIR\res_mods\xvm\l10n\fr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\hu.xc
    Delete $INSTDIR\res_mods\xvm\l10n\it.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ja.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ko.xc
    Delete $INSTDIR\res_mods\xvm\l10n\nl.xc
    Delete $INSTDIR\res_mods\xvm\l10n\no.xc
    Delete $INSTDIR\res_mods\xvm\l10n\pl.xc
    Delete $INSTDIR\res_mods\xvm\l10n\pt_BR.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ro.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ru.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sk.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sv.xc
    Delete $INSTDIR\res_mods\xvm\l10n\tr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\uk.xc
    Delete $INSTDIR\res_mods\xvm\l10n\vi.xc
    Delete $INSTDIR\res_mods\xvm\mods\xvm.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-autologin.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-company.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-crew.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-hangar.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-ping.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-profile.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-squad.swf
    Delete $INSTDIR\res_mods\xvm\res\SixthSense.png

	# Generate a list by using "DIR /S /B /AD /O:GN res_mods >aos-wot-mods-directories.txt". Remember to reverse the list, and  replace the current directory (e.g. "D:\wot-dev\aos-wot-mods") with "     RMDir $INSTDIR" in the file.
	# However it should be a fairly static list of directories, thus no need to change it so often between patches. But if any directories are missing from the list below, then they will show up on the smoke test.
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\text\LC_MESSAGES
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\text
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\mods\SessionStat
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\mods
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\locale
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\daapi\view\meta
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\daapi\view\lobby\hangar
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\daapi\view\lobby
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\daapi\view
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform\daapi
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\Scaleform
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\mods\xvmstat
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui\mods
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\gui
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\AvatarInputHandler\DynamicCameras
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\AvatarInputHandler
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui\maps\ingame\aim
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui\maps\ingame
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui\scaleform
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui\maps
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui\flash
    RMDir $INSTDIR\res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\gui
	
    RMDir $INSTDIR\res_mods\xvm\configs\@Default
	RMDir $INSTDIR\res_mods\xvm\configs\aos
    RMDir $INSTDIR\res_mods\xvm\configs
    RMDir $INSTDIR\res_mods\xvm\res
    RMDir $INSTDIR\res_mods\xvm\mods
    RMDir $INSTDIR\res_mods\xvm\l10n
    RMDir $INSTDIR\res_mods\xvm\doc
    RMDir $INSTDIR\res_mods\xvm

	# Always delete uninstaller as the last action
	Delete $INSTDIR\aos-wot-mods-uninstall.exe

	# Remove uninstaller information from the registry
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}"
sectionEnd
