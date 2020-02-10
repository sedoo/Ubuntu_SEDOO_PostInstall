#!/bin/bash
## IMPORTANT > Ne pas lancer ce script directement, la post-installation se lance avec le script nommé "PostInstall_Ubuntu-20.04LTS_FocalFossa.sh"

CHK_REP=$(zenity --entry --title="$BGN_TITLE" --text "$BGN_TEXT" --entry-text="$BGN_DEF" "$BGN_UNCHECKED" "$BGN_CHECKED")
if [ $? -ne 0 ] ; then
	exit
fi

#Zenity
GUI=$(zenity --list --checklist --height 850 --width 1400 \
	--title="$MSG_ZEN_TITLE" --text="$MSG_ZEN_TEXT" \
	--column="$MSG_ZEN_CHECK" --column="$MSG_ZEN_ACTION" --column="$MSG_ZEN_DESCRIPTION" \
	$(chkDef "TRUE") "$CA_PARTNER" "$CD_PARTNER" \
	$(chkDef "TRUE") "$CA_UPGRADE" "$CD_UPGRADE" \
	$(chkDef "TRUE") "$CA_GNOMESUPPLEMENT" "$CD_GNOMESUPPLEMENT" \
	$(chkDef "TRUE") "$CA_PACKUTILE" "$CD_PACKUTILE" \
	FALSE "$SCT_SESSION" "===========================================================" \
    	$(chkDef "FALSE") "$CA_GNOMEVANILLA" "$CD_GNOMEVANILLA" \
    	$(chkDef "FALSE") "$CA_GNOMECLASSIC" "$CD_GNOMECLASSIC" \
    	$(chkDef "FALSE") "$CA_GNOMEFLASHBACKM" "$CD_GNOMEFLASHBACKM" \
    	$(chkDef "FALSE") "$CA_GNOMEFLASHBACKC" "$CD_GNOMEFLASHBACKC" \
	FALSE "$SCT_BROWSER" "===========================================================" \
    	$(chkDef "FALSE") "$CA_BEAKER" "$CD_BEAKER" \
    	$(chkDef "FALSE") "$CA_BRAVE" "$CD_BRAVE" \
    	$(chkDef "FALSE") "$CA_CHROMIUM" "$CD_CHROMIUM" \
    	$(chkDef "FALSE") "$CA_CLIQZ" "$CD_CLIQZ" \
    	$(chkDef "FALSE") "$CA_DILLO" "$CD_DILLO" \
    	$(chkDef "FALSE") "$CA_EOLIE" "$CD_EOLIE" \
    	$(chkDef "FALSE") "$CA_FALKON" "$CD_FALKON" \
    	$(chkDef "FALSE") "$CA_FIREFOXBETA" "$CD_FIREFOXBETA" \
    	$(chkDef "FALSE") "$CA_FIREFOXDEVELOPER" "$CD_FIREFOXDEVELOPER" \
    	$(chkDef "FALSE") "$CA_FIREFOXESR" "$CD_FIREFOXESR" \
    	$(chkDef "FALSE") "$CA_FIREFOXNIGHTLY" "$CD_FIREFOXNIGHTLY" \
    	$(chkDef "FALSE") "$CA_EPIPHANY" "$CD_EPIPHANY" \
    	$(chkDef "FALSE") "$CA_CHROME" "$CD_CHROME" \
    	$(chkDef "FALSE") "$CA_LYNX" "$CD_LYNX" \
    	$(chkDef "FALSE") "$CA_MIDORI" "$CD_MIDORI" \
    	$(chkDef "FALSE") "$CA_MIN" "$CD_MIN" \
    	$(chkDef "FALSE") "$CA_OPERA" "$CD_OPERA" \
    	$(chkDef "FALSE") "$CA_PALEMOON" "$CD_PALEMOON" \
    	$(chkDef "FALSE") "$CA_SRWAREIRON" "$CD_SRWAREIRON" \
    	$(chkDef "FALSE") "$CA_TORBROWSER" "$CD_TORBROWSER" \
    	$(chkDef "FALSE") "$CA_VIVALDI" "$CD_VIVALDI" \
	FALSE "$SCT_INTERNET" "===========================================================" \
	$(chkDef "FALSE") "$CA_DISCORD" "$CD_DISCORD" \
	$(chkDef "FALSE") "$CA_EMPATHY" "$CD_EMPATHY" \
	$(chkDef "FALSE") "$CA_EVOLUTION" "$CD_EVOLUTION" \
	$(chkDef "FALSE") "$CA_GEARY" "$CD_GEARY" \
	$(chkDef "FALSE") "$CA_HEXCHAT" "$CD_HEXCHAT" \
	$(chkDef "FALSE") "$CA_JITSI" "$CD_JITSI" \
	$(chkDef "FALSE") "$CA_KVIRC" "$CD_KVIRC" \
	$(chkDef "FALSE") "$CA_LINPHONE" "$CD_LINPHONE" \
	$(chkDef "FALSE") "$CA_MAILSPRING" "$CD_MAILSPRING" \
	$(chkDef "FALSE") "$CA_MATTERMOST" "$CD_MATTERMOST" \
	$(chkDef "FALSE") "$CA_MUMBLE" "$CD_MUMBLE" \
	$(chkDef "TRUE") "$CA_PIDGIN" "$CD_PIDGIN" \
	$(chkDef "FALSE") "$CA_POLARI" "$CD_POLARI" \
	$(chkDef "FALSE") "$CA_PSI" "$CD_PSI" \
	$(chkDef "FALSE") "$CA_RING" "$CD_RING" \
	$(chkDef "FALSE") "$CA_RIOT" "$CD_RIOT" \
	$(chkDef "FALSE") "$CA_SIGNAL" "$CD_SIGNAL" \
	$(chkDef "FALSE") "$CA_SKYPE" "$CD_SKYPE" \
	$(chkDef "FALSE") "$CA_SLACK" "$CD_SLACK" \
	$(chkDef "FALSE") "$CA_TEAMS" "$CD_TEAMS" \
	$(chkDef "FALSE") "$CA_TEAMSPEAK" "$CD_TEAMSPEAK" \
	$(chkDef "FALSE") "$CA_TELEGRAM" "$CD_TELEGRAM" \
	$(chkDef "TRUE") "$CA_THUNDERBIRD" "$CD_THUNDERBIRD" \
	$(chkDef "FALSE") "$CA_WEECHAT" "$CD_WEECHAT" \
	$(chkDef "FALSE") "$CA_WHALEBIRD" "$CD_WHALEBIRD" \
	$(chkDef "FALSE") "$CA_WIRE" "$CD_WIRE" \
	$(chkDef "FALSE") "$CA_XCHAT" "$CD_XCHAT" \
	FALSE "$SCT_DOWNLOAD" "===========================================================" \
	$(chkDef "FALSE") "$CA_COZYDRIVE" "$CD_COZYDRIVE" \
	$(chkDef "FALSE") "$CA_DELUGE" "$CD_DELUGE" \
	$(chkDef "FALSE") "$CA_DROPBOX" "$CD_DROPBOX" \
	$(chkDef "FALSE") "$CA_DUKTO" "$CD_DUKTO" \
	$(chkDef "FALSE") "$CA_EISKALTDC" "$CD_EISKALTDC" \
	$(chkDef "FALSE") "$CA_FROSTWIRE" "$CD_FROSTWIRE" \
	$(chkDef "FALSE") "$CA_GYDL" "$CD_GYDL" \
	$(chkDef "FALSE") "$CA_HUBIC" "$CD_HUBIC" \
	$(chkDef "FALSE") "$CA_MEGASYNC" "$CD_MEGASYNC" \
	$(chkDef "FALSE") "$CA_NEXTCLOUD" "$CD_NEXTCLOUD" \
	$(chkDef "FALSE") "$CA_NICOTINE" "$CD_NICOTINE" \
	$(chkDef "FALSE") "$CA_QBITTORRENT" "$CD_QBITTORRENT" \
	$(chkDef "FALSE") "$CA_SUBDOWNLOADER" "$CD_SUBDOWNLOADER" \
	$(chkDef "FALSE") "$CA_SYNCTHING" "$CD_SYNCTHING" \
	$(chkDef "TRUE") "$CA_TRANSMISSION" "$CD_TRANSMISSION" \
	$(chkDef "FALSE") "$CA_UGET" "$CD_UGET" \
	$(chkDef "FALSE") "$CA_VUZE" "$CD_VUZE" \
	$(chkDef "FALSE") "$CA_YTDLND" "$CD_YTDLND" \
	FALSE "$SCT_CONTROLEDISTANCE" "===========================================================" \
	$(chkDef "FALSE") "$CA_ANYDESK" "$CD_ANYDESK" \
	$(chkDef "FALSE") "$CA_CLUSTERSSH" "$CD_CLUSTERSSH" \
	$(chkDef "FALSE") "$CA_DWSERVICE" "$CD_DWSERVICE" \
	$(chkDef "TRUE") "$CA_FILEZILLA" "$CD_FILEZILLA" \
	$(chkDef "FALSE") "$CA_GFTP" "$CD_GFTP" \
	$(chkDef "FALSE") "$CA_OPENSSHSERVER" "$CD_OPENSSHSERVER" \
	$(chkDef "FALSE") "$CA_PUTTY" "$CD_PUTTY" \
    	$(chkDef "TRUE") "$CA_RDESKTOP" "$CD_RDESKTOP" \
	$(chkDef "TRUE") "$CA_REMMINA" "$CD_REMMINA" \
    	$(chkDef "FALSE") "$CA_TEAMVIEWER" "$CD_TEAMVIEWER" \
    	$(chkDef "FALSE") "$CA_WORMHOLE" "$CD_WORMHOLE" \
    	$(chkDef "FALSE") "$CA_X2GO" "$CD_X2GO" \
    	$(chkDef "FALSE") "$CA_X11VNC" "$CD_X11VNC" \
	FALSE "$SCT_OFFICE" "===========================================================" \
	$(chkDef "FALSE") "$CA_CALLIGRA" "$CD_CALLIGRA" \
	$(chkDef "FALSE") "$CA_DRAWIO" "$CD_DRAWIO" \
	$(chkDef "FALSE") "$CA_FRDIC" "$CD_FRDIC" \
	$(chkDef "FALSE") "$CA_FBREADER" "$CD_FBREADER" \
	$(chkDef "FALSE") "$CA_FEEDREADER" "$CD_FEEDREADER" \
	$(chkDef "FALSE") "$CA_FREEMIND" "$CD_FREEMIND" \
	$(chkDef "FALSE") "$CA_FREEOFFICE" "$CD_FREEOFFICE" \
	$(chkDef "FALSE") "$CA_FREEPLANE" "$CD_FREEPLANE" \
	$(chkDef "FALSE") "$CA_GNOMEOFFICE" "$CD_GNOMEOFFICE" \
	$(chkDef "FALSE") "$CA_GRAMPS" "$CD_GRAMPS" \
	$(chkDef "FALSE") "$CA_JOPLIN" "$CD_JOPLIN" \
	$(chkDef "TRUE") "$CA_LIBREOFFICEDEPOT" "$CD_LIBREOFFICEDEPOT" \
	$(chkDef "FALSE") "$CA_LIBREOFFICEFRESH" "$CD_LIBREOFFICEFRESH" \
	$(chkDef "FALSE") "$CA_LIBREOFFICESUP" "$CD_LIBREOFFICESUP" \
	$(chkDef "FALSE") "$CA_OFFICEWEBAPPS" "$CD_OFFICEWEBAPPS" \
	$(chkDef "FALSE") "$CA_MASTERPDFEDITOR" "$CD_MASTERPDFEDITOR" \
	$(chkDef "FALSE") "$CA_MCOMIX" "$CD_MCOMIX" \
	$(chkDef "FALSE") "$CA_NOTESUP" "$CD_NOTESUP" \
	$(chkDef "FALSE") "$CA_ONLYOFFICE" "$CD_ONLYOFFICE" \
	$(chkDef "FALSE") "$CA_OPENOFFICE" "$CD_OPENOFFICE" \
	$(chkDef "FALSE") "$CA_PANDOC" "$CD_PANDOC" \
	$(chkDef "FALSE") "$CA_PDFMOD" "$CD_PDFMOD" \
	$(chkDef "FALSE") "$CA_PDFSAM" "$CD_PDFSAM" \
	$(chkDef "FALSE") "$CA_PDFSHUFFLER" "$CD_PDFSHUFFLER" \
	$(chkDef "TRUE") "$CA_POLICEMST" "$CD_POLICEMST" \
	$(chkDef "FALSE") "$CA_PROJECTLIBRE" "$CD_PROJECTLIBRE" \
	$(chkDef "FALSE") "$CA_SCENARI" "$CD_SCENARI" \
	$(chkDef "FALSE") "$CA_SCRIBUS" "$CD_SCRIBUS" \
	$(chkDef "FALSE") "$CA_SPICEUP" "$CD_SPICEUP" \
	$(chkDef "FALSE") "$CA_UMBRELLO" "$CD_UMBRELLO" \
	$(chkDef "FALSE") "$CA_WPSOFFICE" "$CD_WPSOFFICE" \
	$(chkDef "FALSE") "$CA_XMIND" "$CD_XMIND" \
	$(chkDef "FALSE") "$CA_XOURNAL" "$CD_XOURNAL" \
	$(chkDef "FALSE") "$CA_XPAD" "$CD_XPAD" \
	$(chkDef "FALSE") "$CA_ZEAL" "$CD_ZEAL" \
	$(chkDef "FALSE") "$CA_ZETTLR" "$CD_ZETTLR" \
	$(chkDef "TRUE") "$CA_ZIM" "$CD_ZIM" \
	FALSE "$SCT_LECTUREMULTIMEDIA" "===========================================================" \
	$(chkDef "FALSE") "$CA_AUDACIOUS" "$CD_AUDACIOUS" \
	$(chkDef "FALSE") "$CA_CANTATA" "$CD_CANTATA" \
	$(chkDef "FALSE") "$CA_CLEMENTINE" "$CD_CLEMENTINE" \
	$(chkDef "FALSE") "$CA_DEEZLOADER" "$CD_DEEZLOADER" \
	$(chkDef "FALSE") "$CA_DIGIKAM" "$CD_DIGIKAM" \
	$(chkDef "FALSE") "$CA_FLASH" "$CD_FLASH" \
	$(chkDef "FALSE") "$CA_FONDO" "$CD_FONDO" \
	$(chkDef "TRUE") "$CA_GNOMEMPV" "$CD_GNOMEMPV" \
	$(chkDef "FALSE") "$CA_GNOMEMUSIC" "$CD_GNOMEMUSIC" \
	$(chkDef "FALSE") "$CA_GNOMETWITCH" "$CD_GNOMETWITCH" \
	$(chkDef "FALSE") "$CA_GRADIO" "$CD_GRADIO" \
	$(chkDef "TRUE") "$CA_GTHUMB" "$CD_GTHUMB" \
	$(chkDef "FALSE") "$CA_LOLLYPOP" "$CD_LOLLYPOP" \
	$(chkDef "FALSE") "$CA_MEDIAELCH" "$CD_MEDIAELCH" \
	$(chkDef "FALSE") "$CA_MOLOTOVTV" "$CD_MOLOTOVTV" \
	$(chkDef "FALSE") "$CA_ODIO" "$CD_ODIO" \
	$(chkDef "FALSE") "$CA_PACKCODEC" "$CD_PACKCODEC" \
	$(chkDef "FALSE") "$CA_PAROLE" "$CD_PAROLE" \
	$(chkDef "TRUE") "$CA_PAVUCONTROL" "$CD_PAVUCONTROL" \
	$(chkDef "FALSE") "$CA_QARTE" "$CD_QARTE" \
	$(chkDef "FALSE") "$CA_QMMP" "$CD_QMMP" \
	$(chkDef "FALSE") "$CA_QUODLIBET" "$CD_QUODLIBET" \
	$(chkDef "FALSE") "$CA_RHYTHMBOX" "$CD_RHYTHMBOX" \
	$(chkDef "TRUE") "$CA_SHOTWELL" "$CD_SHOTWELL" \
	$(chkDef "FALSE") "$CA_SMPLAYER" "$CD_SMPLAYER" \
	$(chkDef "FALSE") "$CA_SPOTIFY" "$CD_SPOTIFY" \
	$(chkDef "FALSE") "$CA_TAUON" "$CD_TAUON" \
	$(chkDef "TRUE") "$CA_VLCSTABLE" "$CD_VLCSTABLE" \
    	FALSE "$SCT_GRAPHISMEMODELISATION" "===========================================================" \
	$(chkDef "FALSE") "$CA_BLENDER" "$CD_BLENDER" \
	$(chkDef "FALSE") "$CA_CURA" "$CD_CURA" \
	$(chkDef "FALSE") "$CA_DARKTABLE" "$CD_DARKTABLE" \
	$(chkDef "FALSE") "$CA_FLAMESHOT" "$CD_FLAMESHOT" \
	$(chkDef "FALSE") "$CA_FREECAD" "$CD_FREECAD" \
	$(chkDef "TRUE") "$CA_GIMP" "$CD_GIMP" \
	$(chkDef "FALSE") "$CA_IMCOMPRESSOR" "$CD_IMCOMPRESSOR" \
	$(chkDef "TRUE") "$CA_INKSCAPE" "$CD_INKSCAPE" \
	$(chkDef "FALSE") "$CA_KOLOURPAINT" "$CD_KOLOURPAINT" \
	$(chkDef "FALSE") "$CA_KRITA" "$CD_KRITA" \
	$(chkDef "FALSE") "$CA_LEOCAD" "$CD_LEOCAD" \
	$(chkDef "FALSE") "$CA_LIBRECAD" "$CD_LIBRECAD" \
	$(chkDef "FALSE") "$CA_LILYPOND" "$CD_LILYPOND" \
	$(chkDef "FALSE") "$CA_LUMINANCE" "$CD_LUMINANCE" \
	$(chkDef "FALSE") "$CA_MYPAINT" "$CD_MYPAINT" \
	$(chkDef "FALSE") "$CA_OPENSCAD" "$CD_OPENSCAD" \
	$(chkDef "FALSE") "$CA_OPENTOONZ" "$CD_OPENTOONZ" \
	$(chkDef "FALSE") "$CA_PINTA" "$CD_PINTA" \
	$(chkDef "FALSE") "$CA_PIXELUVO" "$CD_PIXELUVO" \
	$(chkDef "FALSE") "$CA_RAWTHERAPEE" "$CD_RAWTHERAPEE" \
	$(chkDef "FALSE") "$CA_SOLVESPACE" "$CD_SOLVESPACE" \
	$(chkDef "FALSE") "$CA_SWEETHOME" "$CD_SWEETHOME" \
	$(chkDef "FALSE") "$CA_SYNFIG" "$CD_SYNFIG" \
	$(chkDef "FALSE") "$CA_UNITY3DEDITOR" "$CD_UNITY3DEDITOR" \
	$(chkDef "FALSE") "$CA_XNVIEW" "$CD_XNVIEW" \
	$(chkDef "FALSE") "$CA_ZYNADDSUBFX" "$CD_ZYNADDSUBFX" \
	FALSE "$SCT_MONTAGEVIDEO" "===========================================================" \
	$(chkDef "FALSE") "$CA_AVIDEMUX" "$CD_AVIDEMUX" \
	$(chkDef "FALSE") "$CA_CINELERRA" "$CD_CINELERRA" \
	$(chkDef "FALSE") "$CA_FFMPEG" "$CD_FFMPEG" \
	$(chkDef "FALSE") "$CA_FLOWBLADE" "$CD_FLOWBLADE" \
	$(chkDef "TRUE") "$CA_HANDBRAKE" "$CD_HANDBRAKE" \
	$(chkDef "FALSE") "$CA_KAZAM" "$CD_KAZAM" \
	$(chkDef "FALSE") "$CA_KDENLIVE" "$CD_KDENLIVE" \
	$(chkDef "FALSE") "$CA_LIGHTWORKS" "$CD_LIGHTWORKS" \
	$(chkDef "FALSE") "$CA_LIVES" "$CD_LIVES" \
	$(chkDef "FALSE") "$CA_NATRON" "$CD_NATRON" \
	$(chkDef "FALSE") "$CA_OBS" "$CD_OBS" \
	$(chkDef "FALSE") "$CA_OLIVE" "$CD_OLIVE" \
	$(chkDef "FALSE") "$CA_OPENSHOT" "$CD_OPENSHOT" \
	$(chkDef "FALSE") "$CA_PEEK" "$CD_PEEK" \
	$(chkDef "FALSE") "$CA_PITIVI" "$CD_PITIVI" \
    	$(chkDef "FALSE") "$CA_SHOTCUT" "$CD_SHOTCUT" \
	$(chkDef "FALSE") "$CA_SIMPLESCREENRECORDER" "$CD_SIMPLESCREENRECORDER" \
	$(chkDef "FALSE") "$CA_VIDCUTTER" "$CD_VIDCUTTER" \
	$(chkDef "FALSE") "$CA_VOKOSCREEN" "$CD_VOKOSCREEN" \
	$(chkDef "FALSE") "$CA_WINFF" "$CD_WINFF" \
	FALSE "$SCT_TRAITEMENTAUDIO" "===========================================================" \
	$(chkDef "FALSE") "$CA_ARDOUR" "$CD_ARDOUR" \
	$(chkDef "FALSE") "$CA_AUDACITY" "$CD_AUDACITY" \
	$(chkDef "FALSE") "$CA_EASYTAG" "$CD_EASYTAG" \
	$(chkDef "FALSE") "$CA_FLACON" "$CD_FLACON" \
	$(chkDef "FALSE") "$CA_GIADA" "$CD_GIADA" \
	$(chkDef "FALSE") "$CA_GNOMESOUNDRECORDER" "$CD_GNOMESOUNDRECORDER" \
	$(chkDef "FALSE") "$CA_HYDROGEN" "$CD_HYDROGEN" \
	$(chkDef "FALSE") "$CA_LMMS" "$CD_LMMS" \
	$(chkDef "FALSE") "$CA_MHWAVEEDIT" "$CD_MHWAVEEDIT" \
	$(chkDef "FALSE") "$CA_MILKYTRACKER" "$CD_MILKYTRACKER" \
	$(chkDef "FALSE") "$CA_MINUET" "$CD_MINUET" \
	$(chkDef "FALSE") "$CA_MIXXX" "$CD_MIXXX" \
	$(chkDef "FALSE") "$CA_MUSESCORE" "$CD_MUSESCORE" \
	$(chkDef "FALSE") "$CA_MUSICBRAINZ" "$CD_MUSICBRAINZ" \
	$(chkDef "FALSE") "$CA_ROSEGARDEN" "$CD_ROSEGARDEN" \
	$(chkDef "FALSE") "$CA_SOUNDJUICER" "$CD_SOUNDJUICER" \
	FALSE "$SCT_EDUSCIENCE" "===========================================================" \
	$(chkDef "FALSE") "$CA_ALGOBOX" "$CD_ALGOBOX" \
	$(chkDef "FALSE") "$CA_AMC" "$CD_AMC" \
	$(chkDef "FALSE") "$CA_ASTROEDU" "$CD_ASTROEDU" \
	$(chkDef "FALSE") "$CA_AVOGADRO" "$CD_AVOGADRO" \
	$(chkDef "FALSE") "$CA_CELESTIA" "$CD_CELESTIA" \
	$(chkDef "FALSE") "$CA_CONVERTALL" "$CD_CONVERTALL" \
	$(chkDef "FALSE") "$CA_FRITZING" "$CD_FRITZING" \
	$(chkDef "FALSE") "$CA_GANTTPROJECT" "$CD_GANTTPROJECT" \
	$(chkDef "FALSE") "$CA_GCOMPRIS" "$CD_GCOMPRIS" \
	$(chkDef "FALSE") "$CA_GELEMENTAL" "$CD_GELEMENTAL" \
	$(chkDef "FALSE") "$CA_GEOGEBRA" "$CD_GEOGEBRA" \
	$(chkDef "FALSE") "$CA_GNOMEMAPS" "$CD_GNOMEMAPS" \
	$(chkDef "FALSE") "$CA_GOOGLEEARTH" "$CD_GOOGLEEARTH" \
	$(chkDef "FALSE") "$CA_JASP" "$CD_JASP" \
	$(chkDef "FALSE") "$CA_KICAD" "$CD_KICAD" \
	$(chkDef "FALSE") "$CA_LABPLOT" "$CD_LABPLOT" \
	$(chkDef "FALSE") "$CA_MARBLE" "$CD_MARBLE" \
	$(chkDef "FALSE") "$CA_MBLOCK" "$CD_MBLOCK" \
	$(chkDef "FALSE") "$CA_OCTAVE" "$CD_OCTAVE" \
	$(chkDef "FALSE") "$CA_OPENBOARD" "$CD_OPENBOARD" \
	$(chkDef "FALSE") "$CA_OPTGEO" "$CD_OPTGEO" \
	$(chkDef "FALSE") "$CA_PLANNER" "$CD_PLANNER" \
	$(chkDef "FALSE") "$CA_QGIS" "$CD_QGIS" \
	$(chkDef "FALSE") "$CA_SAGEMATH" "$CD_SAGEMATH" \
	$(chkDef "FALSE") "$CA_SCILAB" "$CD_SCILAB" \
	$(chkDef "FALSE") "$CA_SCRATCH" "$CD_SCRATCH" \
	$(chkDef "FALSE") "$CA_SKYCHART" "$CD_SKYCHART" \
	$(chkDef "FALSE") "$CA_STELLARIUM" "$CD_STELLARIUM" \
	$(chkDef "FALSE") "$CA_TOUTENCLIC" "$CD_TOUTENCLIC" \
	$(chkDef "FALSE") "$CA_TUXMATH" "$CD_TUXMATH" \
	$(chkDef "FALSE") "$CA_XCAS" "$CD_XCAS" \
	$(chkDef "FALSE") "$CA_XEPHEM" "$CD_XEPHEM" \
	FALSE "$SCT_VIRTUALISATION_EMULATION" "===========================================================" \
	$(chkDef "FALSE") "$CA_ANBOX" "$CD_ANBOX" \
	$(chkDef "FALSE") "$CA_CITRA" "$CD_CITRA" \
	$(chkDef "FALSE") "$CA_DESMUME" "$CD_DESMUME" \
	$(chkDef "FALSE") "$CA_DOCKER" "$CD_DOCKER" \
	$(chkDef "FALSE") "$CA_DOLPHIN" "$CD_DOLPHIN" \
	$(chkDef "FALSE") "$CA_DOSBOX" "$CD_DOSBOX" \
	$(chkDef "FALSE") "$CA_GENS" "$CD_GENS" \
	$(chkDef "FALSE") "$CA_GNOMEBOXES" "$CD_GNOMEBOXES" \
	$(chkDef "FALSE") "$CA_GNS" "$CD_GNS" \
	$(chkDef "FALSE") "$CA_QEMUKVM" "$CD_QEMUKVM" \
	$(chkDef "FALSE") "$CA_LXC" "$CD_LXC" \
	$(chkDef "FALSE") "$CA_MEDNAFEN" "$CD_MEDNAFEN" \
	$(chkDef "FALSE") "$CA_MGBA" "$CD_MGBA" \
	$(chkDef "FALSE") "$CA_MUPEN64" "$CD_MUPEN64" \
	$(chkDef "FALSE") "$CA_POL" "$CD_POL" \
	$(chkDef "FALSE") "$CA_PPSSPP" "$CD_PPSSPP" \
	$(chkDef "FALSE") "$CA_RETROARCH" "$CD_RETROARCH" \
	$(chkDef "FALSE") "$CA_VBOXDEPOT" "$CD_VBOXDEPOT" \
    	$(chkDef "FALSE") "$CA_VBOXLAST" "$CD_VBOXLAST" \
    	$(chkDef "FALSE") "$CA_VMWARE" "$CD_VMWARE" \
    	$(chkDef "FALSE") "$CA_VMWAREPRO" "$CD_VMWAREPRO" \
    	$(chkDef "FALSE") "$CA_WINE" "$CD_WINE" \
	FALSE "$SCT_UTILITAIRES_GRAPHIQUE" "===========================================================" \
	$(chkDef "FALSE") "$CA_ACTIONA" "$CD_ACTIONA" \
    	$(chkDef "FALSE") "$CA_APPOUTLET" "$CD_APPOUTLET" \
    	$(chkDef "FALSE") "$CA_BRASERO" "$CD_BRASERO" \
    	$(chkDef "FALSE") "$CA_CHEESE" "$CD_CHEESE" \
    	$(chkDef "FALSE") "$CA_DEJADUP" "$CD_DEJADUP" \
    	$(chkDef "FALSE") "$CA_DIODON" "$CD_DIODON" \
    	$(chkDef "FALSE") "$CA_ELECTRUM" "$CD_ELECTRUM" \
    	$(chkDef "FALSE") "$CA_ETCHER" "$CD_ETCHER" \
    	$(chkDef "FALSE") "$CA_ETHEREUMWALLET" "$CD_ETHEREUMWALLET" \
    	$(chkDef "FALSE") "$CA_GITCOLA" "$CD_GITCOLA" \
    	$(chkDef "FALSE") "$CA_GLABELS" "$CD_GLABELS" \
    	$(chkDef "TRUE") "$CA_GNOME_DISK" "$CD_GNOME_DISK" \
    	$(chkDef "FALSE") "$CA_GNOMERECIPES" "$CD_GNOMERECIPES" \
    	$(chkDef "TRUE") "$CA_GPARTED" "$CD_GPARTED" \
    	$(chkDef "FALSE") "$CA_GSHUTDOWN" "$CD_GSHUTDOWN" \
    	$(chkDef "FALSE") "$CA_GSYSLOG" "$CD_GSYSLOG" \
    	$(chkDef "FALSE") "$CA_GSYSMON" "$CD_GSYSMON" \
    	$(chkDef "FALSE") "$CA_HOMEBANK" "$CD_HOMEBANK" \
    	$(chkDef "FALSE") "$CA_MELD" "$CD_MELD" \
    	$(chkDef "FALSE") "$CA_MULTISYSTEM" "$CD_MULTISYSTEM" \
	$(chkDef "FALSE") "$CA_MYTOURBOOK" "$CD_MYTOURBOOK" \
    	$(chkDef "TRUE") "$CA_ARCHIVAGE" "$CD_ARCHIVAGE" \
	$(chkDef "FALSE") "$CA_RECHERCHE" "$CD_RECHERCHE" \
   	$(chkDef "FALSE") "$CA_REDSHIFT" "$CD_REDSHIFT" \
	$(chkDef "FALSE") "$CA_SPEEDCRUNCH" "$CD_SPEEDCRUNCH" \
    	$(chkDef "FALSE") "$CA_SUBLIM_NAUT" "$CD_SUBLIM_NAUT" \
    	$(chkDef "FALSE") "$CA_SUB_EDIT" "$CD_SUB_EDIT" \
    	$(chkDef "TRUE") "$CA_SYNAPTIC" "$CD_SYNAPTIC" \
    	$(chkDef "FALSE") "$CA_TERMINATOR" "$CD_TERMINATOR" \
    	$(chkDef "TRUE") "$CA_TILIX" "$CD_TILIX" \
    	$(chkDef "FALSE") "$CA_TIMESHIFT" "$CD_TIMESHIFT" \
    	$(chkDef "FALSE") "$CA_VARIETY" "$CD_VARIETY" \
	FALSE "$SCT_UTILITAIRES_CLI" "===========================================================" \
	$(chkDef "FALSE") "$CA_ASCIINEMA" "$CD_ASCIINEMA" \
	$(chkDef "FALSE") "$CA_DDRESCUE" "$CD_DDRESCUE" \
	$(chkDef "FALSE") "$CA_FD" "$CD_FD" \
	$(chkDef "TRUE") "$CA_GIT" "$CD_GIT" \
	$(chkDef "TRUE") "$CA_HTOP" "$CD_HTOP" \
	$(chkDef "FALSE") "$CA_GLANCES" "$CD_GLANCES" \
	$(chkDef "FALSE") "$CA_HG" "$CD_HG" \
	$(chkDef "FALSE") "$CA_IMAGEMAGICK" "$CD_IMAGEMAGICK" \
	$(chkDef "FALSE") "$CA_NIX" "$CD_NIX" \
	$(chkDef "FALSE") "$CA_POWERSHELL" "$CD_POWERSHELL" \
	$(chkDef "FALSE") "$CA_RIPGREP" "$CD_RIPGREP" \
	$(chkDef "FALSE") "$CA_RTORRENT" "$CD_RTORRENT" \
	$(chkDef "TRUE") "$CA_SCREEN" "$CD_SCREEN" \
	$(chkDef "FALSE") "$CA_SMARTMONTOOLS" "$CD_SMARTMONTOOLS" \
	$(chkDef "FALSE") "$CA_TESTDISK" "$CD_TESTDISK" \
	$(chkDef "FALSE") "$CA_TLDR" "$CD_TLDR" \
	$(chkDef "FALSE") "$CA_WORDGRINDER" "$CD_WORDGRINDER" \
	FALSE "$SCT_RESEAUSECURITE" "===========================================================" \
	$(chkDef "FALSE") "$CA_ADPFASTBOOT" "$CD_ADPFASTBOOT" \
	$(chkDef "FALSE") "$CA_ANSIBLE" "$CD_ANSIBLE" \
	$(chkDef "FALSE") "$CA_APPARMOR" "$CD_APPARMOR" \
	$(chkDef "FALSE") "$CA_BITWARDEN" "$CD_BITWARDEN" \
	$(chkDef "FALSE") "$CA_BUTTERCUP" "$CD_BUTTERCUP" \
	$(chkDef "FALSE") "$CA_CISCOVPN" "$CD_CISCOVPN" \
	$(chkDef "FALSE") "$CA_CRYPTER" "$CD_CRYPTER" \
	$(chkDef "FALSE") "$CA_CRYPTOMATOR" "$CD_CRYPTOMATOR" \
	$(chkDef "FALSE") "$CA_ENPASS" "$CD_ENPASS" \
	$(chkDef "FALSE") "$CA_FUSIONINVENTORY" "$CD_FUSIONINVENTORY" \
	$(chkDef "FALSE") "$CA_GUFW" "$CD_GUFW" \
	$(chkDef "FALSE") "$CA_HACKINGPACK" "$CD_HACKINGPACK" \
	$(chkDef "FALSE") "$CA_KEEPASS" "$CD_KEEPASS" \
	$(chkDef "TRUE") "$CA_KEEPASSXC" "$CD_KEEPASSXC" \
	$(chkDef "FALSE") "$CA_KEEWEB" "$CD_KEEWEB" \
	$(chkDef "FALSE") "$CA_MYSQLWB" "$CD_MYSQLWB" \
	$(chkDef "FALSE") "$CA_OCSINVENTORY" "$CD_OCSINVENTORY" \
	$(chkDef "FALSE") "$CA_OPENVAS" "$CD_OPENVAS" \
	$(chkDef "FALSE") "$CA_PGADMIN" "$CD_PGADMIN" \
	$(chkDef "FALSE") "$CA_PUPPET" "$CD_PUPPET" \
	$(chkDef "FALSE") "$CA_SERVERLAMP" "$CD_SERVERLAMP" \
	$(chkDef "FALSE") "$CA_SIRIKALI" "$CD_SIRIKALI" \
	$(chkDef "FALSE") "$CA_UPM" "$CD_UPM" \
	$(chkDef "FALSE") "$CA_VERACRYPT" "$CD_VERACRYPT" \
	$(chkDef "FALSE") "$CA_WAKEONLAN" "$CD_WAKEONLAN" \
	$(chkDef "FALSE") "$CA_WIFITE" "$CD_WIFITE" \
	$(chkDef "FALSE") "$CA_WIRESHARK" "$CD_WIRESHARK" \
	FALSE "$SCT_GAMING" "===========================================================" \
	$(chkDef "FALSE") "$CA_0AD" "$CD_0AD" \
	$(chkDef "FALSE") "$CA_ALBION" "$CD_ALBION" \
	$(chkDef "FALSE") "$CA_ALIENARENA" "$CD_ALIENARENA" \
	$(chkDef "FALSE") "$CA_ASSAULTCUBE" "$CD_ASSAULTCUBE" \
	$(chkDef "FALSE") "$CA_WESNOTH" "$CD_WESNOTH" \
	$(chkDef "FALSE") "$CA_BZTAROT" "$CD_BZTAROT" \
	$(chkDef "FALSE") "$CA_DOFUS" "$CD_DOFUS" \
	$(chkDef "FALSE") "$CA_EXTREMETUXRACER" "$CD_EXTREMETUXRACER" \
	$(chkDef "FALSE") "$CA_FLIGHTGEAR" "$CD_FLIGHTGEAR" \
	$(chkDef "FALSE") "$CA_FROZENBUBBLE" "$CD_FROZENBUBBLE" \
	$(chkDef "FALSE") "$CA_GNOMEGAMES" "$CD_GNOMEGAMES" \
	$(chkDef "FALSE") "$CA_KAPMAN" "$CD_KAPMAN" \
	$(chkDef "FALSE") "$CA_LUTRIS" "$CD_LUTRIS" \
	$(chkDef "FALSE") "$CA_MEGAGLEST" "$CD_MEGAGLEST" \
	$(chkDef "FALSE") "$CA_MINDUSTRY" "$CD_MINDUSTRY" \
	$(chkDef "FALSE") "$CA_MINECRAFT" "$CD_MINECRAFT" \
	$(chkDef "FALSE") "$CA_MINETEST" "$CD_MINETEST" \
	$(chkDef "FALSE") "$CA_OPENARENA" "$CD_OPENARENA" \
	$(chkDef "FALSE") "$CA_OPENTTD" "$CD_OPENTTD" \
	$(chkDef "FALSE") "$CA_PINGUS" "$CD_PINGUS" \
	$(chkDef "FALSE") "$CA_POKERTH" "$CD_POKERTH" \
	$(chkDef "FALSE") "$CA_QUAKE" "$CD_QUAKE" \
	$(chkDef "FALSE") "$CA_REDECLIPSE" "$CD_REDECLIPSE" \
	$(chkDef "FALSE") "$CA_RUNESCAPE" "$CD_RUNESCAPE" \
	$(chkDef "FALSE") "$CA_STEAM" "$CD_STEAM" \
	$(chkDef "FALSE") "$CA_SUPERTUX" "$CD_SUPERTUX" \
	$(chkDef "FALSE") "$CA_SUPERTUXKART" "$CD_SUPERTUXKART" \
	$(chkDef "FALSE") "$CA_TEEWORLDS" "$CD_TEEWORLDS" \
	$(chkDef "FALSE") "$CA_TMNF" "$CD_TMNF" \
	$(chkDef "FALSE") "$CA_UT4" "$CD_UT4" \
	$(chkDef "FALSE") "$CA_XBOARD" "$CD_XBOARD" \
	$(chkDef "FALSE") "$CA_XPLANE" "$CD_XPLANE" \
	$(chkDef "FALSE") "$CA_XQF" "$CD_XQF" \
	FALSE "$SCT_DEV" "===========================================================" \
	$(chkDef "FALSE") "$CA_ANDROIDSTUDIO" "$CD_ANDROIDSTUDIO" \
	$(chkDef "FALSE") "$CA_ANJUTA" "$CD_ANJUTA" \
	$(chkDef "FALSE") "$CA_ARDUINOIDE" "$CD_ARDUINOIDE" \
	$(chkDef "FALSE") "$CA_ATOM" "$CD_ATOM" \
	$(chkDef "FALSE") "$CA_BLUEFISH" "$CD_BLUEFISH" \
	$(chkDef "FALSE") "$CA_BLUEGRIFFON" "$CD_BLUEGRIFFON" \
	$(chkDef "FALSE") "$CA_BRACKETS" "$CD_BRACKETS" \
	$(chkDef "FALSE") "$CA_CODEBLOCKS" "$CD_CODEBLOCKS" \
	$(chkDef "FALSE") "$CA_ECLIPSE" "$CD_ECLIPSE" \
	$(chkDef "TRUE") "$CA_EMACS" "$CD_EMACS" \
	$(chkDef "FALSE") "$CA_ERIC" "$CD_ERIC" \
	$(chkDef "FALSE") "$CA_GDEVELOP" "$CD_GDEVELOP" \
	$(chkDef "TRUE") "$CA_GEANY" "$CD_GEANY" \
	$(chkDef "FALSE") "$CA_IDLE" "$CD_IDLE" \
	$(chkDef "FALSE") "$CA_INTELLIJIDEA" "$CD_INTELLIJIDEA" \
	$(chkDef "FALSE") "$CA_IPYTHON" "$CD_IPYTHON" \
	$(chkDef "FALSE") "$CA_JAVA" "$CD_JAVA" \
	$(chkDef "FALSE") "$CA_JUPYTER" "$CD_JUPYTER" \
	$(chkDef "FALSE") "$CA_LATEXFULL" "$CD_LATEXFULL" \
	$(chkDef "FALSE") "$CA_LATEXILA" "$CD_LATEXILA" \
	$(chkDef "FALSE") "$CA_NEOVIM" "$CD_NEOVIM" \
	$(chkDef "FALSE") "$CA_NOTEPADQQ" "$CD_NOTEPADQQ" \
	$(chkDef "FALSE") "$CA_PYCHARM" "$CD_PYCHARM" \
	$(chkDef "FALSE") "$CA_RSTUDIO" "$CD_RSTUDIO" \
	$(chkDef "FALSE") "$CA_SCITE" "$CD_SCITE" \
	$(chkDef "FALSE") "$CA_SPYDER" "$CD_SPYDER" \
	$(chkDef "FALSE") "$CA_SUBLIMETEXT" "$CD_SUBLIMETEXT" \
	$(chkDef "FALSE") "$CA_TEXMAKER" "$CD_TEXMAKER" \
	$(chkDef "FALSE") "$CA_TEXSTUDIO" "$CD_TEXSTUDIO" \
	$(chkDef "FALSE") "$CA_TEXWORKS" "$CD_TEXWORKS" \
	$(chkDef "FALSE") "$CA_VIM" "$CD_VIM" \
	$(chkDef "FALSE") "$CA_VSCODE" "$CD_VSCODE" \
	$(chkDef "FALSE") "$CA_VSCODIUM" "$CD_VSCODIUM" \
	FALSE "$SCT_OPTIMISATION" "===========================================================" \
	$(chkDef "FALSE") "$CA_IMPRIMANTE" "$CD_IMPRIMANTE" \
	$(chkDef "FALSE") "$CA_SECURITECPTE" "$CD_SECURITECPTE" \
	$(chkDef "FALSE") "$CA_BLEACHBIT" "$CD_BLEACHBIT" \
	$(chkDef "TRUE") "$CA_COLORFOLDER" "$CD_COLORFOLDER" \
	$(chkDef "FALSE") "$CA_CONKY" "$CD_CONKY" \
	$(chkDef "TRUE") "$CA_APPORTOFF" "$CD_APPORTOFF" \
	$(chkDef "FALSE") "$CA_EXTINCTIONAUTO" "$CD_EXTINCTIONAUTO" \
	$(chkDef "FALSE") "$CA_FPRINTD" "$CD_FPRINTD" \
	$(chkDef "FALSE") "$CA_SCANNER" "$CD_SCANNER" \
	$(chkDef "FALSE") "$CA_GWE" "$CD_GWE" \
	$(chkDef "FALSE") "$CA_GS_AUGMENTATIONCAPTURE" "$CD_GS_AUGMENTATIONCAPTURE" \
	$(chkDef "FALSE") "$CA_GS_MINIMISATIONFENETRE" "$CD_GS_MINIMISATIONFENETRE" \
	$(chkDef "FALSE") "$CA_GRUBCUSTOMIZER" "$CD_GRUBCUSTOMIZER" \
	$(chkDef "FALSE") "$CA_GRUBDEFAULT" "$CD_GRUBDEFAULT" \
	$(chkDef "FALSE") "$CA_GRUBATTENTE" "$CD_GRUBATTENTE" \
	$(chkDef "FALSE") "$CA_DVDREAD" "$CD_DVDREAD" \
	$(chkDef "FALSE") "$CA_PACKEXTENSION" "$CD_PACKEXTENSION" \
	$(chkDef "TRUE") "$CA_PACKICON" "$CD_PACKICON" \
	$(chkDef "TRUE") "$CA_PACKTHEME" "$CD_PACKTHEME" \
	$(chkDef "FALSE") "$CA_INTEL" "$CD_INTEL" \
	$(chkDef "FALSE") "$CA_NVIDIA_BP" "$CD_NVIDIA_BP" \
	$(chkDef "TRUE") "$CA_OPTIMIS_SWAP" "$CD_OPTIMIS_SWAP" \
	$(chkDef "FALSE") "$CA_PHORONIXTESTSUITE" "$CD_PHORONIXTESTSUITE" \
	$(chkDef "TRUE") "$CA_SNAPREMPLACEMENT" "$CD_SNAPREMPLACEMENT" \
	$(chkDef "FALSE") "$CA_NAUTILUS_EXTRA" "$CD_NAUTILUS_EXTRA" \
	$(chkDef "FALSE") "$CA_SYSFIC" "$CD_SYSFIC" \
	$(chkDef "FALSE") "$CA_TLP" "$CD_TLP" \
	$(chkDef "FALSE") "$CA_TLP_THINKPAD" "$CD_TLP_THINKPAD" \
	$(chkDef "FALSE") "$CA_ZRAM" "$CD_ZRAM" \
	FALSE "$SCT_END" "===========================================================" \
	$(chkDef "TRUE") "$CA_RESTRICT_EXTRA" "$CD_RESTRICT_EXTRA" \
	$(chkDef "TRUE") "$CA_AUTOREMOVE" "$CD_AUTOREMOVE" \
	$(chkDef "TRUE") "$CA_RES_DEP" "$CD_RES_DEP" \
	--separator='| ');
