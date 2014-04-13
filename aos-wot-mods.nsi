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
!define VERSIONPATCH 11
!define VERSIONBUILD 12
# These will be displayed by the "Click here for support information" link in "Add/Remove Programs"
# It is possible to use "mailto:" links in here to open the email client
!define HELPURL "https://code.google.com/p/aos-wot-mods/w/list" # "Support Information" link
!define UPDATEURL "https://code.google.com/p/aos-wot-mods/wiki/Downloads" # "Product Updates" link
!define ABOUTURL "http://www.spades.dk/forum/viewtopic.php?f=32&t=1726" # "Publisher" link
# This is the size (in kB) of all the files copied into "Program Files"
!define INSTALLSIZE 11506
 
RequestExecutionLevel admin ;Require admin rights on NT6+ (When UAC is turned on)
 
InstallDir "C:\Games\World_of_Tanks"
 
# rtf or txt file - remember if it is txt, it must be in the DOS text format (\r\n)
LicenseData "aos-wot-mods\disclaimer.txt"
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
	File "ActiveDossierUploader.exe"

	# Add any other files for the install directory (license files, app data, etc) here
	File /r aos-wot-mods
	File /r res_mods
	File /r res
	
	# For some reason NSIS won't include res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\modsOOP\spotMessanger\__init__.pyc is not included, so I'll copy it from 
	CopyFiles res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\modsOOP\__init__.pyc res_mods\${VERSIONMAJOR}.${VERSIONMINOR}.${VERSIONPATCH}\scripts\client\modsOOP\spotMessanger\__init__.pyc
	
	# Uninstaller - See function un.onInit and section "uninstall" for configuration
	WriteUninstaller "$INSTDIR\aos-wot-mods-uninstall.exe"
 
	# Start Menu
	CreateShortCut "$SMSTARTUP\ActiveDossierUploader.lnk" "$INSTDIR\ActiveDossierUploader.exe" "" "" "" SW_SHOWNORMAL "" "http://www.vbaddict.net statistic and replay upload tool"
	 
	# Registry information for add/remove programs
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayName" "${APPNAME} - ${DESCRIPTION}"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "UninstallString" "$\"$INSTDIR\aos-wot-mods-uninstall.exe$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "QuietUninstallString" "$\"$INSTDIR\aos-wot-mods-uninstall.exe$\" /S"
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "InstallLocation" "$\"$INSTDIR$\""
	WriteRegStr HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}" "DisplayIcon" "$\"$INSTDIR\aos-wot-mods\aos-wot-mods.ico$\""
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
	Delete $INSTDIR\ActiveDossierUploader.exe
	
	# Generate a list in file_and_directory_list.txt by using generate-file-list.sh, and copy the content into this file below.
    Delete $INSTDIR\res\audio\xvm.fsb
    Delete $INSTDIR\res\audio\xvm.fev
    RMDir $INSTDIR\res\audio
    RMDir $INSTDIR\res
    Delete $INSTDIR\res_mods\xvm\xvm.xc.sample
    Delete $INSTDIR\res_mods\xvm\xvm.xc
    Delete $INSTDIR\res_mods\xvm\res\SixthSense.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\SEA\clan\WIPE!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\SEA\clan\BOT!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\RU\clan\WIPE!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\RU\clan\BOT!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\NA\clan\WIPE!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\NA\clan\BOT!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\EU\clan\WIPE!.png
    Delete $INSTDIR\res_mods\xvm\res\clanicons\EU\clan\BOT!.png
    Delete $INSTDIR\res_mods\xvm\mods\xvm.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-techtree.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-tcarousel.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-squad.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-profile.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-ping.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-loginlayout.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-hangar.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-crew.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-company.swf
    Delete $INSTDIR\res_mods\xvm\mods\xvm-autologin.swf
    Delete $INSTDIR\res_mods\xvm\l10n\zh_TW.xc
    Delete $INSTDIR\res_mods\xvm\l10n\vi.xc
    Delete $INSTDIR\res_mods\xvm\l10n\uk.xc
    Delete $INSTDIR\res_mods\xvm\l10n\tr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sv.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\sk.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ru.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ro.xc
    Delete $INSTDIR\res_mods\xvm\l10n\pt_BR.xc
    Delete $INSTDIR\res_mods\xvm\l10n\pt.xc
    Delete $INSTDIR\res_mods\xvm\l10n\pl.xc
    Delete $INSTDIR\res_mods\xvm\l10n\no.xc
    Delete $INSTDIR\res_mods\xvm\l10n\nl.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ms.xc
    Delete $INSTDIR\res_mods\xvm\l10n\lv.xc
    Delete $INSTDIR\res_mods\xvm\l10n\lt.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ko.xc
    Delete $INSTDIR\res_mods\xvm\l10n\ja.xc
    Delete $INSTDIR\res_mods\xvm\l10n\it.xc
    Delete $INSTDIR\res_mods\xvm\l10n\hu.xc
    Delete $INSTDIR\res_mods\xvm\l10n\fr.xc
    Delete $INSTDIR\res_mods\xvm\l10n\fi.xc
    Delete $INSTDIR\res_mods\xvm\l10n\et.xc
    Delete $INSTDIR\res_mods\xvm\l10n\es.xc
    Delete $INSTDIR\res_mods\xvm\l10n\en.xc
    Delete $INSTDIR\res_mods\xvm\l10n\de.xc
    Delete $INSTDIR\res_mods\xvm\l10n\da.xc
    Delete $INSTDIR\res_mods\xvm\l10n\cs.xc
    Delete $INSTDIR\res_mods\xvm\l10n\bg.xc
    Delete $INSTDIR\res_mods\xvm\l10n\be.xc
    Delete $INSTDIR\res_mods\xvm\doc\readme-ru.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-pl.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-fr.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-en.txt
    Delete $INSTDIR\res_mods\xvm\doc\readme-cz.txt
    Delete $INSTDIR\res_mods\xvm\doc\macros.txt
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-ru.txt
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-fr.txt
    Delete $INSTDIR\res_mods\xvm\doc\ChangeLog-en.txt
    Delete $INSTDIR\res_mods\xvm\configs\configs.url
    Delete $INSTDIR\res_mods\xvm\configs\aos\vehicleNames.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\userInfo.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\turretMarkers.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\texts.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\statisticForm.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\squad.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\rating.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\playersPanel.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapLines.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapLabels.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimapCircles.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\minimap.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersDeadNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersDeadExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersAliveNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markersAliveExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\markers.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\login.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\iconset.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hotkeys.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hitLog.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\hangar.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\elements.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\colors.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\captureBar.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battleResults.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battleLoading.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\battle.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\alpha.xc
    Delete $INSTDIR\res_mods\xvm\configs\aos\@xvm.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\vehicleNames.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\userInfo.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\turretMarkers.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\texts.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\statisticForm.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\squad.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\rating.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\playersPanel.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapLines.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapLabels.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimapCircles.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\minimap.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersDeadNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersDeadExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersAliveNormal.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markersAliveExtended.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\markers.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\login.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\iconset.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hotkeys.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hitLog.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\hangar.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\elements.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\colors.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\captureBar.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battleResults.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battleLoading.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\battle.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\alpha.xc
    Delete $INSTDIR\res_mods\xvm\configs\@Default\@xvm.xc
    Delete $INSTDIR\res_mods\ids_wipe.json
    Delete $INSTDIR\res_mods\ids_bots.json
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\waiting.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\vehicle_customization_cn.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\vehicle_customization.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\ussr_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\ussr_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\usa_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\usa_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\tutorial.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\tooltips.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\tips.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\system_messages.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\settings.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\retrain_crew.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\recaptcha.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\quests.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\profile.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\prebattle.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\nations.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\messenger.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\menu.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\lobby_help.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\kong_captcha.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\japan_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\japan_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\item_types.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\invites.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\ingame_help.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\ingame_gui.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\germany_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\germany_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\gb_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\gb_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\france_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\france_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\faq.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\dialogs.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\development.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\cybersport.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\crew_operations.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\controls.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\china_vehicles.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\china_tankmen.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\chat.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\captcha.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\battle_tutorial.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\battle_results.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\ban_reason.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\artefacts.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\arenas.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\AOGAS.mo
    Delete $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES\achievements.mo
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP\spotMessanger\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP\spotMessanger\SpotMessanger.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP\spotMessanger\config.xml
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SpotMessangerLoader.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\VehicleEliteIcon.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#FE7903.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#FE7803.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#F11503.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#EEFE62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#EEFD62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#EEDC82.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#EEDB82.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#BE62FF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#34D800.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#029615.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier\#029515.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\spotted40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\service40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Line.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\GoldIcon-1-20x16.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\CreditsIconBig-1-20x16.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#FFCC00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#FE7903.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#EE0001.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#EE0000.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#D042F3.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#02C9B3.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\#00EE00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\!Hits.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SafeShot.xml
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\SafeShot.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\MS.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\GunConstraints.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\sysMsg_ru.json
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\sysMsg.json
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\macros.txt
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#FFA462.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#FFA362.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#FF6262.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#fc6060.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#EEFF62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#EEFE62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#BE62FF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#BE61FF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#62FF78.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#62FE78.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#62BEFF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1\#62BDFF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#FFA462.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#FFA362.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#FF6262.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#FC6060.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#EEFF62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#EEFE62.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#BE62FF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#BE61FF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#62FF78.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#62FE78.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#62BEFF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon\#62BDFF.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\wins40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\win.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\TankGrey.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\survival40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\shells.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\Repair.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000011.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000010.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000009.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000008.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000007.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000006.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000005.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000004.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000003.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000002.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks\#000001.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\maxExp40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\invader.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\Image01.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\hits40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\Equipment.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\draw.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\defender.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\damage.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\battles40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\avgExp40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\avgDamage40x32.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#FFCC00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#FE7903.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#FE0E00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#FE0000.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#F8F400.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#EE0001.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#EE0000.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#D042F3.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#60FF00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#02C9B3.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\#00EE00.png
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\expected_tank_values_latest.json
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\exel.cfg
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\colors.json
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\Circle15.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\Circle15.cfg
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\BRR.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\botdetect.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\mods\ATS.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\messenger\gui\scaleform\view\battlechannelview.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\messenger\gui\messengerDispatcher.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\RadialMenu.xml
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\RadialMenu.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\locale\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view\meta\tankcarouselmeta.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view\lobby\hangar\tankcarousel.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\__version__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\xvm.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\vehinfo_tiers.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\vehinfo_stat_top.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\vehinfo_stat_avg.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\vehinfo_short.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\vehinfo.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\test.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\stats.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\pinger.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\logger.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\gameregion.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\dossier.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\constants.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat\appstart.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xpm.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\kwg_waiting_fix\__version__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\kwg_waiting_fix\__init__.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\CameraNode.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\AvatarInputHandler\DynamicCameras\SniperCamera.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\AvatarInputHandler\DynamicCameras\ArcadeCamera.pyc
    Delete $INSTDIR\res_mods\0.8.11\scripts\client\AvatarInputHandler\control_modes.pyc
    Delete $INSTDIR\res_mods\0.8.11\objects\Circle15.visual
    Delete $INSTDIR\res_mods\0.8.11\objects\Circle15.primitives
    Delete $INSTDIR\res_mods\0.8.11\objects\Circle15.model
    Delete $INSTDIR\res_mods\0.8.11\objects\Circle15.dds.orig
    Delete $INSTDIR\res_mods\0.8.11\objects\Circle15.dds
    Delete $INSTDIR\res_mods\0.8.11\gui\ZoomX.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\ServerCross.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\xvm.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\VehicleMarkersManager.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\TeamBasesPanel.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\StatisticForm.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\PlayersPanel.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\Minimap.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\GunConstraints.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\DM\DM_ugn.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\DamagePanel.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_strategic.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_sniper.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_panel_strategic.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_panel_sniper.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_panel_postmortem.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\crosshair_panel_arcade.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\CDPData.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\scaleform\battle.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\messenger.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\maps\ingame\aim\gun_marker_blue.dds
    Delete $INSTDIR\res_mods\0.8.11\gui\maps\ingame\aim\gun_marker.dds
    Delete $INSTDIR\res_mods\0.8.11\gui\gui_sounds.xml
    Delete $INSTDIR\res_mods\0.8.11\gui\flash\TankCarouselFilterControls.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\flash\TankCarousel.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\flash\TankCarousel.cfg
    Delete $INSTDIR\res_mods\0.8.11\gui\flash\battle.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\flash\Application.swf
    Delete $INSTDIR\res_mods\0.8.11\gui\avatar_input_handler.xml
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\SEA\clan
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\SEA
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\RU\clan
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\RU
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\NA\clan
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\NA
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\EU\clan
    RMDir $INSTDIR\res_mods\xvm\res\clanicons\EU
    RMDir $INSTDIR\res_mods\xvm\res\clanicons
    RMDir $INSTDIR\res_mods\xvm\res
    RMDir $INSTDIR\res_mods\xvm\mods
    RMDir $INSTDIR\res_mods\xvm\l10n
    RMDir $INSTDIR\res_mods\xvm\doc
    RMDir $INSTDIR\res_mods\xvm\configs\aos
    RMDir $INSTDIR\res_mods\xvm\configs\@Default
    RMDir $INSTDIR\res_mods\xvm\configs
    RMDir $INSTDIR\res_mods\xvm
    RMDir $INSTDIR\res_mods\0.8.11\text\LC_MESSAGES
    RMDir $INSTDIR\res_mods\0.8.11\text
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP\spotMessanger
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\modsOOP
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat\Tier
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\SessionStat
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon1
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\XpIcon
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons\ranks
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel\icons
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods\exel
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\mods
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\messenger\gui\scaleform\view
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\messenger\gui\scaleform
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\messenger\gui
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\messenger
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\locale
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view\meta
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view\lobby\hangar
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view\lobby
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi\view
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform\daapi
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\scaleform
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\xvmstat
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods\kwg_waiting_fix
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui\mods
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\gui
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\AvatarInputHandler\DynamicCameras
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client\AvatarInputHandler
    RMDir $INSTDIR\res_mods\0.8.11\scripts\client
    RMDir $INSTDIR\res_mods\0.8.11\scripts
    RMDir $INSTDIR\res_mods\0.8.11\objects
    RMDir $INSTDIR\res_mods\0.8.11\gui\scaleform\DM
    RMDir $INSTDIR\res_mods\0.8.11\gui\scaleform
    RMDir $INSTDIR\res_mods\0.8.11\gui\maps\ingame\aim
    RMDir $INSTDIR\res_mods\0.8.11\gui\maps\ingame
    RMDir $INSTDIR\res_mods\0.8.11\gui\maps
    RMDir $INSTDIR\res_mods\0.8.11\gui\flash
    RMDir $INSTDIR\res_mods\0.8.11\gui
    RMDir $INSTDIR\res_mods\0.8.11
    RMDir $INSTDIR\res_mods
    Delete $INSTDIR\aos-wot-mods\zoom-mod-dlja-pricela-x-128\installation.txt
    Delete $INSTDIR\aos-wot-mods\xvm-audio\xvm.fdp
    Delete $INSTDIR\aos-wot-mods\xvm-audio\sounds\vip_01.wav
    Delete $INSTDIR\aos-wot-mods\xvm-audio\readme.txt
    Delete $INSTDIR\aos-wot-mods\xvm\readme-ru.txt
    Delete $INSTDIR\aos-wot-mods\xvm\readme-pl.txt
    Delete $INSTDIR\aos-wot-mods\xvm\readme-fr.txt
    Delete $INSTDIR\aos-wot-mods\xvm\readme-en.txt
    Delete $INSTDIR\aos-wot-mods\xvm\readme-cz.txt
    Delete $INSTDIR\aos-wot-mods\SessionStatistic\sstatpage2.jpg
    Delete $INSTDIR\aos-wot-mods\SessionStatistic\sstatpage1.jpg
    Delete $INSTDIR\aos-wot-mods\SessionStatistic\Macros.txt
    Delete $INSTDIR\aos-wot-mods\SessionStatistic\btlmsg811.jpg
    Delete $INSTDIR\aos-wot-mods\SafeShot\List_of_keyboard_shortcuts.txt
    Delete $INSTDIR\aos-wot-mods\SafeShot\How_can_I_thank_the_author.txt
    Delete $INSTDIR\aos-wot-mods\RadialMenu\ReadMe.txt
    Delete $INSTDIR\aos-wot-mods\J1mB0s_Crosshair_Mod\ReadMe.pdf
    Delete $INSTDIR\aos-wot-mods\J1mB0s_Crosshair_Mod\Changelog.txt
    Delete $INSTDIR\aos-wot-mods\disclaimer.txt
    Delete $INSTDIR\aos-wot-mods\cmsg\readme.txt
    Delete $INSTDIR\aos-wot-mods\Circle15mod\Keys.txt
    Delete $INSTDIR\aos-wot-mods\Circle15mod\Instructions.txt
    Delete $INSTDIR\aos-wot-mods\changelog.txt
    Delete $INSTDIR\aos-wot-mods\camo_fix_S0me0ne\Installation.txt
    Delete $INSTDIR\account.jpg
    Delete $INSTDIR\aos-wot-mods\botdetect_report\wiped
    Delete $INSTDIR\aos-wot-mods\botdetect_report\report_battle.jpg
    Delete $INSTDIR\aos-wot-mods\botdetect_report\botuser.jpg
    Delete $INSTDIR\aos-wot-mods\botdetect_report\botdetect_ReadMe.txt
    Delete $INSTDIR\aos-wot-mods\aos-wot-mods.ico
    Delete $INSTDIR\aos-wot-mods\ADU-install.bat
    RMDir $INSTDIR\aos-wot-mods\zoom-mod-dlja-pricela-x-128
    RMDir $INSTDIR\aos-wot-mods\xvm-audio\sounds
    RMDir $INSTDIR\aos-wot-mods\xvm-audio
    RMDir $INSTDIR\aos-wot-mods\xvm
    RMDir $INSTDIR\aos-wot-mods\SessionStatistic
    RMDir $INSTDIR\aos-wot-mods\SafeShot
    RMDir $INSTDIR\aos-wot-mods\RadialMenu
    RMDir $INSTDIR\aos-wot-mods\J1mB0s_Crosshair_Mod
    RMDir $INSTDIR\aos-wot-mods\cmsg
    RMDir $INSTDIR\aos-wot-mods\Circle15mod
    RMDir $INSTDIR\aos-wot-mods\camo_fix_S0me0ne
    RMDir $INSTDIR\aos-wot-mods\botdetect_report
    RMDir $INSTDIR\aos-wot-mods

	# Always delete uninstaller as the last action
	Delete $INSTDIR\aos-wot-mods-uninstall.exe

	# Remove uninstaller information from the registry
	DeleteRegKey HKLM "Software\Microsoft\Windows\CurrentVersion\Uninstall\${COMPANYNAME} ${APPNAME}"
sectionEnd
