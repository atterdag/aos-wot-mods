/**
 * Config was created in XVM Editor v0.66
 * at Wed Oct 30 21:28:13 GMT+0100 2013
 */
{
    "configVersion": "5.0.1",
    "editorVersion": "0.67",
    "definition": {
        "author": "atterdag",
        "date": "12/09/2013",
        "description": "aos's custom settings for XVM",
        "gameVersion": "0.8.9",
        "modMinVersion": "5.0.1-test3",
        "url": "https://dl.dropboxusercontent.com/u/11915528/wot/aos-wot-mods-0.8.9.1.zip"
    },
    "rating": {
        "enableCompanyStatistics": true,
        "enableStatisticsLog": true,
        "enableUserInfoStatistics": true,
        "loadEnemyStatsInFogOfWar": true,
        "showPlayersStatistics": true
    },
    "login": {
        "autologin": false,
        "confirmOldReplays": false,
        "pingServers": {
            "alpha": 80,
            "columnGap": 10,
            "delimiter": ": ",
            "enabled": true,
            "fontStyle": {
                "bold": true,
                "color": {
                    "bad": "0xD64D4D",
                    "good": "0xE5E4E1",
                    "great": "0xFFCC66",
                    "poor": "0x96948F"
                },
                "italic": false,
                "name": "$FieldFont",
                "size": 12
            },
            "maxRows": 4,
            "shadow": {
                "alpha": 70,
                "angle": 0,
                "blur": 4,
                "color": "0x000000",
                "distance": 0,
                "enabled": true,
                "strength": 2
            },
            "threshold": {
                "good": 60,
                "great": 35,
                "poor": 100
            },
            "updateInterval": 10000,
            "x": 15,
            "y": 35
        },
        "skipIntro": true
    },
    "hangar": {
        "hideTutorial": true,
        "pingServers": {
            "alpha": 80,
            "columnGap": 10,
            "delimiter": ": ",
            "enabled": true,
            "fontStyle": {
                "bold": true,
                "color": {
                    "bad": "0xD64D4D",
                    "good": "0xE5E4E1",
                    "great": "0xFFCC66",
                    "poor": "0x96948F"
                },
                "italic": false,
                "name": "$FieldFont",
                "size": 12
            },
            "maxRows": 4,
            "shadow": {
                "alpha": 70,
                "angle": 0,
                "blur": 4,
                "color": "0x000000",
                "distance": 0,
                "enabled": true,
                "strength": 2
            },
            "threshold": {
                "good": 60,
                "great": 35,
                "poor": 100
            },
            "updateInterval": 10000,
            "x": 170,
            "y": 35
        },
        "widgetsEnabled": false,
        "xwnInCompany": true
    },
    "squad": {
        "enabled": true,
        "leftLvlBorder": "",
        "rightLvlBorder": "",
        "romanNumbers": true,
        "showClan": true
    },
    "userInfo": {
        "filterFocused": true,
        "inHangarFilterEnabled": true,
        "showFilters": true,
        "sortColumn": 5,
        "startPage": 1
    },
    "battle": {
        "clanIconsFolder": "clanicons/",
        "clockFormat": "H:N:S",
        "elements": [

        ],
        "highlightVehicleIcon": true,
        "mirroredVehicleIcons": true,
        "removePanelsModeSwitcher": false,
        "showPostmortemTips": true,
        "useStandardMarkers": false
    },
    "battleLoading": {
        "clanIcon": {
            "alpha": 90,
            "h": 16,
            "show": true,
            "w": 16,
            "x": 0,
            "xr": 0,
            "y": 6,
            "yr": 6
        },
        "clockFormat": "H:i:s",
        "formatLeftNick": "{{name}}{{clan}}",
        "formatLeftVehicle": "{{vehicle}}<font face='Lucida Console' size='12'> <font color='{{c:kb}}'>{{kb:3}}</font> <font color='{{c:wn}}'>{{wn}}</font> <font color='{{c:rating}}'>{{rating:3}}</font></font>",
        "formatRightNick": "{{name}}{{clan}}",
        "formatRightVehicle": "<font face='Lucida Console' size='12'><font color='{{c:rating}}'>{{rating:3}}</font> <font color='{{c:wn}}'>{{wn}}</font> <font color='{{c:kb}}'>{{kb:3}}</font> </font>{{vehicle}}",
        "removeSquadIcon": false,
        "showChances": true,
        "showChancesExp": true
    },
    "statisticForm": {
        "clanIcon": {
            "alpha": 90,
            "h": 16,
            "show": true,
            "w": 16,
            "x": 0,
            "xr": 0,
            "y": 6,
            "yr": 6
        },
        "formatLeftNick": "{{nick}}",
        "formatLeftVehicle": "{{vehicle}}<font face='Lucida Console' size='12'> <font color='{{c:kb}}'>{{kb:3}}</font> <font color='{{c:wn}}'>{{wn}}</font> <font color='{{c:rating}}'>{{rating:3}}</font></font>",
        "formatRightNick": "{{nick}}",
        "formatRightVehicle": "<font face='Lucida Console' size='12'><font color='{{c:rating}}'>{{rating:3}}</font> <font color='{{c:wn}}'>{{wn}}</font> <font color='{{c:kb}}'>{{kb:3}}</font> </font>{{vehicle}}",
        "removeSquadIcon": false,
        "showChances": true,
        "showChancesExp": true
    },
    "playersPanel": {
        "alpha": 60,
        "clanIcon": {
            "alpha": 90,
            "h": 16,
            "show": true,
            "w": 16,
            "x": 0,
            "xr": 0,
            "y": 6,
            "yr": 6
        },
        "enemySpottedMarker": {
            "Xoffset": -22,
            "Yoffset": -2,
            "enabled": true,
            "format": {
                "artillery": {
                    "dead": "",
                    "lost": "",
                    "neverSeen": "",
                    "revealed": ""
                },
                "dead": "",
                "lost": "",
                "neverSeen": "<font face=\"$FieldFont\" size=\"24\" color=\"#DDDDDD\">*</font>",
                "revealed": ""
            }
        },
        "iconAlpha": 100,
        "large": {
            "nickFormatLeft": "<font color='{{c:wn}}'>{{nick}}</font> (<font color='{{c:wn}}'>{{wn}}</font> / <font color='{{c:rating}}'>{{rating}}</font>)",
            "nickFormatRight": "<font color='{{c:wn}}'>{{nick}}</font> (<font color='{{c:wn}}'>{{wn}}</font> / <font color='{{c:rating}}'>{{rating}}</font>)",
            "vehicleFormatLeft": "<font color='{{c:teff}}'>{{vehicle}}</font> (<font color='{{c:t-rating}}'>{{t-rating}}</font>)",
            "vehicleFormatRight": "<font color='{{c:teff}}'>{{vehicle}}</font> (<font color='{{c:t-rating}}'>{{t-rating}}</font>)",
            "width": 170
        },
        "medium": {
            "formatLeft": "<font color='{{c:wn}}'>{{nick}}</font> (<font color='{{c:rating}}'>{{rating}}</font>)",
            "formatRight": "<font color='{{c:wn}}'>{{nick}}</font> (<font color='{{c:rating}}'>{{rating}}</font>)",
            "width": 46
        },
        "medium2": {
            "formatLeft": "<font color='{{c:eff}}'>{{vehicle}}</font> (<font color='{{c:t-rating}}'>{{t-rating}}</font>)",
            "formatRight": "<font color='{{c:eff}}'>{{vehicle}}</font> (<font color='{{c:t-rating}}'>{{t-rating}}</font>)",
            "width": 65
        },
        "removeSquadIcon": false
    },
    "fragCorrelation": {
        "hideTeamTextFields": true
    },
    "hotkeys": {
        "minimapZoom": {
            "enabled": false,
            "keyCode": 17,
            "onHold": true
        }
    },
    "hitLog": {
        "visible": true,
        "x": 270,
        "blowupMarker": "<font face='Wingdings'>M</font>",
        "deadMarker": "<font face='Wingdings'>N</font>",
        "defaultHeader": "<font color='#FFFFFF'>{{l10n:Hits}}:</font> <font size='13'>#0</font>",
        "direction": "down",
        "formatHeader": "<font color='#FFFFFF'>{{l10n:Hits}}:</font> <font size='13'>#{{n}}</font> <font color='#FFFFFF'>{{l10n:Total}}: </font><b>{{dmg-total}}</b>  <font color='#FFFFFF'>{{l10n:Last}}:</font> <font color='{{c:dmg-kind}}'><b>{{dmg}}</b> {{dead}}</font>",
        "formatHistory": "<textformat leading='-4' tabstops='[20,50,90,180]'><font size='12'>×{{n-player}}:</font><tab><font color='{{c:dmg-kind}}'>{{dmg}}</font><tab>| {{dmg-player}}<tab>|<font color='{{c:vtype}}'>{{vehicle}} {{dead}}</font><tab><font color='#FFFFFF'>|{{nick}}</font></textformat>",
        "groupHitsByPlayer": true,
        "h": 1000,
        "hpLeft": {
            "enabled": true,
            "format": "<textformat leading='-4' tabstops='[50,90,180]'><font color='{{c:hp-ratio}}'>     {{hp}}</font><tab><font color='#FFFFFF'>/ </font>{{hp-max}}<tab><font color='#FFFFFF'>|</font><font color='{{c:vtype}}'>{{vehicle}}</font><tab><font color='#FFFFFF'>|{{nick}}</font></textformat>",
            "header": "<font color='#FFFFFF'>{{l10n:hpLeftTitle}}</font>"
        },
        "insertOrder": "end",
        "lines": 15,
        "shadow": {
            "color": "0x000000",
            "alpha": 100,
            "angle": 45,
            "distance": 0,
            "size": 5,
            "strength": 150
        },
        "w": 500,
        "y": 5
    },
    "expertPanel": {
        "delay": 15,
        "scale": 150
    },
    "captureBar": {
        "enabled": true,
        "ally": {
            "captureDoneFormat": "<font size='17' color='#FFCC66'>{{l10n:allyBaseCaptured}}</font>",
            "extra": "{{l10n:Capturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b> {{l10n:Timeleft}}: <b><font color='#FFCC66'>{{time}}</font><b>",
            "primaryTitleFormat": "<font size='15' color='#FFFFFF'>{{l10n:allyBaseCapture}} {{extra}}</font>",
            "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",
            "shadow": {
                "alpha": 50,
                "blur": 6,
                "color": "0x000000",
                "strength": 3
            }
        },
        "appendPlus": true,
        "enemy": {
            "captureDoneFormat": "<font size='17' color='#FFCC66'>{{l10n:enemyBaseCaptured}}</font>",
            "extra": "{{l10n:Capturers}}: <b><font color='#FFCC66'>{{tanks}}</font></b> {{l10n:Timeleft}}: <b><font color='#FFCC66'>{{time}}</font><b>",
            "primaryTitleFormat": "<font size='15' color='#FFFFFF'>{{l10n:enemyBaseCapture}} {{extra}}</font>",
            "secondaryTitleFormat": "<font size='15' color='#FFFFFF'>{{points}}</font>",
            "shadow": {
                "alpha": 50,
                "blur": 6,
                "color": "0x000000",
                "strength": 3
            }
        },
        "primaryTitleOffset": 7
    },
    "battleResults": {
        "showChances": true,
        "showChancesExp": true,
        "showExtendedInfo": true,
        "showNetIncome": true,
        "startPage": 1
    },
    "turretMarkers": {
        "highVulnerability": "*",
        "lowVulnerability": "'"
    },
    "texts": {
        "vtype": {
            "HT": "HT",
            "LT": "LT",
            "MT": "MT",
            "SPG": "SPG",
            "TD": "TD"
        }
    },
    "iconset": {
		"battleLoadingAlly": "contour/ally/",
		"battleLoadingEnemy": "contour/enemy/",
		"statisticFormAlly": "contour/ally/",
		"statisticFormEnemy": "contour/enemy/",
		"playersPanelAlly": "contour/ally/",
		"playersPanelEnemy": "contour/enemy/",
		"vehicleMarkerAlly": "contour/ally/",
		"vehicleMarkerEnemy": "contour/enemy/"
    },
    "minimap": {
        "enabled": true,
        "cameraAlpha": 100,
        "circles": {
            "enabled": true,
            "major": [{
                "alpha": 45,
                "color": "0xFFCC66",
                "distance": 445,
                "enabled": true,
                "thickness": 0.75
            }, {
                "alpha": 45,
                "color": "0x96FF00",
                "distance": 50,
                "enabled": true,
                "thickness": 0.75
            }],
            "special": [{
                "su_18": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 500,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gw_mk_vie": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 850,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "t57": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 553,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "renaultbs": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 483,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb25_loyd_carrier": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 509,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su_26": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1218,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "bison_i": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 602,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "wespe": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 989,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m7_priest": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 989,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "lorraine39_l_am": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 983,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb27_sexton": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1051,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb78_sexton_i": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1051,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su_5": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 613,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "sturmpanzer_ii": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 602,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "pz_sfl_ivb": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 989,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m37": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 989,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "amx_ob_am105": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1288,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb26_birch_gun": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1051,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su122a": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1201,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "grille": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 836,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m41": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1294,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "amx_105am": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1288,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "_105_lefh18b2": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1000,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb28_bishop": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 500,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su_8": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1345,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "hummel": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1260,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m44": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1294,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "amx_13f3am": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1381,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb77_fv304": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 500,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "s_51": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1264,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su14_1": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1264,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "g_panther": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1300,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m12": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1413,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "lorraine155_50": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1350,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb29_crusader_5inch": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1327,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "su_14": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1264,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gw_tiger_p": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1333,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m40m43": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1336,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "lorraine155_51": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1368,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb79_fv206": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1405,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "object_212": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1264,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "g_tiger": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1333,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "m53_55": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1291,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "bat_chatillon155_55": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1413,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb30_fv3805": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1354,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "object_261": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1470,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "g_e": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1333,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "t92": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1411,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "bat_chatillon155_58": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1413,
                    "enabled": true,
                    "thickness": 1
                }
            }, {
                "gb31_conqueror_gun": {
                    "alpha": 60,
                    "color": "0xEE4444",
                    "distance": 1007,
                    "enabled": true,
                    "thickness": 1
                }
            }]
        },
        "iconScale": 1,
        "labels": {
            "mapSize": {
                "alpha": 80,
                "css": "font-size:10px; color:#FFCC66;",
                "enabled": true,
                "format": "<b>{{cellsize}}0 m²</b>",
                "height": 30,
                "offsetX": 0,
                "offsetY": 0,
                "shadow": {
                    "alpha": 80,
                    "angle": 0,
                    "blur": 2,
                    "color": "0x000000",
                    "distance": 0,
                    "enabled": true,
                    "strength": 3
                },
                "width": 100
            },
            "nickShrink": 5,
            "units": {
                "alpha": {
                    "ally": 100,
                    "deadally": 50,
                    "deadenemy": 0,
                    "deadsquad": 50,
                    "deadteamkiller": 50,
                    "enemy": 100,
                    "lost": 70,
                    "lostally": 70,
                    "lostsquad": 70,
                    "lostteamkiller": 70,
                    "oneself": 100,
                    "squad": 100,
                    "teamkiller": 100
                },
                "css": {
                    "ally": ".mm_a{font-family:$FieldFont; font-size:8px; color:#C8FFA6;}",
                    "deadally": ".mm_da{font-family:$FieldFont; font-size:8px; color:#6E8C5B;} .mm_dot{font-family:Arial; font-size:17px; color:#004D00;}",
                    "deadenemy": ".mm_de{font-family:$FieldFont; font-size:8px; color:#996763;} .mm_dot{font-family:Arial; font-size:17px; color:#4D0300;}",
                    "deadsquad": ".mm_ds{font-family:$FieldFont; font-size:8px; color:#997C5C;} .mm_dot{font-family:Arial; font-size:17px; color:#663800;}",
                    "deadteamkiller": ".mm_dt{font-family:$FieldFont; font-size:8px; color:#5B898C;} .mm_dot{font-family:Arial; font-size:17px; color:#043A40;}",
                    "enemy": ".mm_e{font-family:$FieldFont; font-size:8px; color:#FCA9A4;}",
                    "lost": ".mm_l{font-family:$FieldFont; font-size:8px; color:#FCA9A4;} .mm_dot{font-family:Arial; font-size:17px; color:#FCA9A4;}",
                    "lostally": ".mm_la{font-family:$FieldFont; font-size:8px; color:#C8FFA6;} .mm_dot{font-family:Arial; font-size:17px; color:#B4E595;}",
                    "lostsquad": ".mm_ls{font-family:$FieldFont; font-size:8px; color:#FFD099;} .mm_dot{font-family:Arial; font-size:17px; color:#E5BB8A;}",
                    "lostteamkiller": ".mm_lt{font-family:$FieldFont; font-size:8px; color:#A6F8FF;} .mm_dot{font-family:Arial; font-size:17px; color:#00D2E5;}",
                    "oneself": ".mm_o{font-family:$FieldFont; font-size:8px; color:#FFFFFF;}",
                    "squad": ".mm_s{font-family:$FieldFont; font-size:8px; color:#FFC099;}",
                    "teamkiller": ".mm_t{font-family:$FieldFont; font-size:8px; color:#A6F8FF;}"
                },
                "format": {
                    "ally": "<span class='mm_a'>{{vehicle}}</span>",
                    "deadally": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_da'></span>",
                    "deadenemy": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_de'></span>",
                    "deadsquad": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_ds'><i>{{short-nick}}</i></span>",
                    "deadteamkiller": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_dt'></span>",
                    "enemy": "<span class='mm_e'>{{vehicle}}</span>",
                    "lost": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_l'><i>{{vehicle}}</i></span>",
                    "lostally": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_la'><i>{{vehicle}}</i></span>",
                    "lostsquad": "<textformat leading='-4'><span class='mm_dot'>{{vehicle-class}}</span><span class='mm_ls'><i>{{short-nick}}</i>\n   {{vehicle}}</span><textformat>",
                    "lostteamkiller": "<span class='mm_dot'>{{vehicle-class}}</span><span class='mm_lt'><i>{{vehicle}}</i></span>",
                    "oneself": "",
                    "squad": "<textformat leading='-2'><span class='mm_s'><i>{{short-nick}}</i>\n{{vehicle}}</span><textformat>",
                    "teamkiller": "<span class='mm_t'>{{vehicle}}</span>"
                },
                "lostEnemyEnabled": true,
                "offset": {
                    "ally": {
                        "x": 3,
                        "y": -1
                    },
                    "deadally": {
                        "x": -5,
                        "y": -11
                    },
                    "deadenemy": {
                        "x": -5,
                        "y": -11
                    },
                    "deadsquad": {
                        "x": -5,
                        "y": -11
                    },
                    "deadteamkiller": {
                        "x": -5,
                        "y": -11
                    },
                    "enemy": {
                        "x": 3,
                        "y": -1
                    },
                    "lost": {
                        "x": -5,
                        "y": -11
                    },
                    "lostally": {
                        "x": -5,
                        "y": -11
                    },
                    "lostsquad": {
                        "x": -5,
                        "y": -11
                    },
                    "lostteamkiller": {
                        "x": -5,
                        "y": -11
                    },
                    "oneself": {
                        "x": 0,
                        "y": 0
                    },
                    "squad": {
                        "x": 3,
                        "y": -2
                    },
                    "teamkiller": {
                        "x": 3,
                        "y": -1
                    }
                },
                "revealedEnabled": true,
                "shadow": {
                    "ally": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "deadally": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 3
                    },
                    "deadenemy": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 3
                    },
                    "deadsquad": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 3
                    },
                    "deadteamkiller": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 3
                    },
                    "enemy": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "lost": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 6,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "lostally": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 6,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "lostsquad": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 6,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "lostteamkiller": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 6,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "oneself": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "squad": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    },
                    "teamkiller": {
                        "alpha": 80,
                        "angle": 45,
                        "blur": 3,
                        "color": "0x000000",
                        "distance": 0,
                        "enabled": true,
                        "strength": 4
                    }
                }
            },
            "vehicleclassmacro": {
                "heavy": "•",
                "light": "•",
                "medium": "•",
                "spg": "▪",
                "superh": "•",
                "td": "•"
            }
        },
        "lines": {
            "camera": [{
                "alpha": 30,
                "color": "0xF50800",
                "enabled": true,
                "from": 50,
                "inmeters": true,
                "thickness": 1.3,
                "to": 80
            }, {
                "alpha": 35,
                "color": "0xF50800",
                "enabled": true,
                "from": 120,
                "inmeters": true,
                "thickness": 1.2,
                "to": 180
            }, {
                "alpha": 40,
                "color": "0xF50800",
                "enabled": true,
                "from": 220,
                "inmeters": true,
                "thickness": 1.1,
                "to": 280
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 320,
                "inmeters": true,
                "thickness": 1,
                "to": 380
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 420,
                "inmeters": true,
                "thickness": 0.9,
                "to": 480
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 520,
                "inmeters": true,
                "thickness": 0.8,
                "to": 580
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 620,
                "inmeters": true,
                "thickness": 0.75,
                "to": 680
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 720,
                "inmeters": true,
                "thickness": 0.75,
                "to": 780
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 820,
                "inmeters": true,
                "thickness": 0.75,
                "to": 880
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 920,
                "inmeters": true,
                "thickness": 0.75,
                "to": 980
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1020,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1080
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1120,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1180
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1220,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1280
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1320,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1380
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1420,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1480
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1520,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1580
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1620,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1680
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1720,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1780
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1820,
                "inmeters": true,
                "thickness": 0.75,
                "to": 1880
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1920,
                "inmeters": true,
                "thickness": 0.75,
                "to": 2000
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 99,
                "inmeters": true,
                "thickness": 2.2,
                "to": 100
            }, {
                "alpha": 40,
                "color": "0xF50800",
                "enabled": true,
                "from": 199,
                "inmeters": true,
                "thickness": 2.1,
                "to": 200
            }, {
                "alpha": 35,
                "color": "0xF50800",
                "enabled": true,
                "from": 299,
                "inmeters": true,
                "thickness": 2,
                "to": 300
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 399,
                "inmeters": true,
                "thickness": 1.9,
                "to": 400
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 499,
                "inmeters": true,
                "thickness": 1.8,
                "to": 500
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 599,
                "inmeters": true,
                "thickness": 1.7,
                "to": 600
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 699,
                "inmeters": true,
                "thickness": 1.6,
                "to": 700
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 799,
                "inmeters": true,
                "thickness": 1.6,
                "to": 800
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 899,
                "inmeters": true,
                "thickness": 1.6,
                "to": 900
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 999,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1000
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1099,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1100
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1199,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1200
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1299,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1300
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1399,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1400
            }, {
                "alpha": 45,
                "color": "0xF50800",
                "enabled": true,
                "from": 1499,
                "inmeters": true,
                "thickness": 1.6,
                "to": 1500
            }],
            "enabled": true,
            "traverseAngle": [{
                "alpha": 35,
                "color": "0xFFCC66",
                "enabled": true,
                "from": 20,
                "inmeters": false,
                "thickness": 0.4,
                "to": 300
            }],
            "vehicle": [{
                "alpha": 35,
                "color": 16764006,
                "enabled": true,
                "from": 20,
                "inmeters": false,
                "thickness": 0.4,
                "to": 300
            }]
        },
        "mapBackgroundImageAlpha": 90,
        "selfIconAlpha": 100,
        "square": {
            "color": "0xFFFFFF",
            "alpha": 40,
            "artilleryEnabled": true,
            "enabled": true,
            "thickness": 0.7
        },
        "zoom": {
            "centered": true,
            "pixelsBack": 160
        }
    },
    "markers": {
        "ally": {
            "alive": {
                "normal": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": true,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 100,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "{{vehicle}}{{turret}}",
                        "name": "Vehicle Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -36
                    }, {
                        "alpha": 100,
                        "color": "0xFCFCFC",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{hp}} / {{hp-max}}",
                        "name": "Current Health",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                },
                "extended": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": true,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 100,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "<font color='{{c:wn}}'>{{nick}}</font>",
                        "name": "Player Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -36
                    }, {
                        "alpha": 100,
                        "color": "0xFCFCFC",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{hp-ratio}}\u0025",
                        "name": "Health Ratio",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }, {
                        "alpha": 100,
                        "color": "{{c:rating}}",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{rating}}",
                        "name": "Rating",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -46
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                }
            },
            "dead": {
                "normal": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": false,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [

                    ],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                },
                "extended": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": false,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 80,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "<font color='{{c:wn}}'>{{nick}}</font>",
                        "name": "Player Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -34
                    }, {
                        "alpha": 80,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "{{vehicle}}",
                        "name": "Vehicle Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                }
            }
        },
        "enemy": {
            "alive": {
                "normal": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": true,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 100,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "{{vehicle}}{{turret}}",
                        "name": "Vehicle Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -36
                    }, {
                        "alpha": 100,
                        "color": "0xFCFCFC",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{hp}} / {{hp-max}}",
                        "name": "Current Health",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                },
                "extended": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": true,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 100,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "<font color='{{c:wn}}'>{{nick}}</font>",
                        "name": "Player Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -36
                    }, {
                        "alpha": 100,
                        "color": "0xFCFCFC",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{hp-ratio}}\u0025",
                        "name": "Health Ratio",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }, {
                        "alpha": 100,
                        "color": "{{c:rating}}",
                        "font": {
                            "align": "center",
                            "bold": true,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 11
                        },
                        "format": "{{rating}}",
                        "name": "Rating",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 4,
                            "strength": 150
                        },
                        "visible": true,
                        "x": 0,
                        "y": -46
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                }
            },
            "dead": {
                "normal": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": false,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [

                    ],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                },
                "extended": {
                    "actionMarker": {
                        "alpha": 100,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "clanIcon": {
                        "alpha": 100,
                        "h": 16,
                        "visible": false,
                        "w": 16,
                        "x": 0,
                        "y": -67
                    },
                    "contourIcon": {
                        "alpha": 100,
                        "amount": 0,
                        "color": null,
                        "visible": false,
                        "x": 6,
                        "y": -65
                    },
                    "damageText": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextPlayer": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "damageTextSquadman": {
                        "alpha": 100,
                        "blowupMessage": "{{l10n:blownUp}}",
                        "color": null,
                        "damageMessage": "{{dmg}}",
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 18
                        },
                        "maxRange": 40,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "speed": 2,
                        "visible": true,
                        "x": 0,
                        "y": -67
                    },
                    "healthBar": {
                        "alpha": 100,
                        "border": {
                            "alpha": 30,
                            "color": "0x000000",
                            "size": 1
                        },
                        "color": null,
                        "damage": {
                            "alpha": 80,
                            "color": null,
                            "fade": 1
                        },
                        "fill": {
                            "alpha": 30
                        },
                        "height": 12,
                        "lcolor": null,
                        "visible": false,
                        "width": 80,
                        "x": -41,
                        "y": -33
                    },
                    "levelIcon": {
                        "alpha": 100,
                        "visible": false,
                        "x": 0,
                        "y": -21
                    },
                    "textFields": [{
                        "alpha": 80,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "<font color='{{c:wn}}'>{{nick}}</font>",
                        "name": "Player Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -34
                    }, {
                        "alpha": 80,
                        "color": null,
                        "font": {
                            "align": "center",
                            "bold": false,
                            "italic": false,
                            "name": "$FieldFont",
                            "size": 13
                        },
                        "format": "{{vehicle}}",
                        "name": "Vehicle Name",
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "visible": true,
                        "x": 0,
                        "y": -20
                    }],
                    "vehicleIcon": {
                        "alpha": 100,
                        "color": null,
                        "maxScale": 100,
                        "scaleX": 0,
                        "scaleY": 16,
                        "shadow": {
                            "alpha": 100,
                            "angle": 90,
                            "color": "0x000000",
                            "distance": 0,
                            "size": 6,
                            "strength": 200
                        },
                        "showSpeaker": false,
                        "visible": true,
                        "x": 0,
                        "y": -16
                    }
                }
            }
        }
    },
    "colors": {
        "system": {
            "ally_alive": "0x96FF00",
            "ally_blowedup": "0x007700",
            "ally_dead": "0x009900",
            "enemy_alive": "0xF50800",
            "enemy_blowedup": "0x5A0401",
            "enemy_dead": "0x840500",
            "squadman_alive": "0xFFB964",
            "squadman_blowedup": "0xA45A00",
            "squadman_dead": "0xCA7000",
            "teamKiller_alive": "0x00EAFF",
            "teamKiller_blowedup": "0x096A75",
            "teamKiller_dead": "0x097783"
        },
        "damage": {
            "ally_ally_blowup": "0x00EAFF",
            "ally_ally_hit": "0x00EAFF",
            "ally_ally_kill": "0x00EAFF",
            "ally_allytk_blowup": "0x00EAFF",
            "ally_allytk_hit": "0x00EAFF",
            "ally_allytk_kill": "0x00EAFF",
            "ally_enemy_blowup": "0xF50800",
            "ally_enemy_hit": "0xF50800",
            "ally_enemy_kill": "0xF50800",
            "ally_enemytk_blowup": "0xF50800",
            "ally_enemytk_hit": "0xF50800",
            "ally_enemytk_kill": "0xF50800",
            "ally_squadman_blowup": "0x00EAFF",
            "ally_squadman_hit": "0x00EAFF",
            "ally_squadman_kill": "0x00EAFF",
            "enemy_ally_blowup": "0x96FF00",
            "enemy_ally_hit": "0x96FF00",
            "enemy_ally_kill": "0x96FF00",
            "enemy_allytk_blowup": "0x96FF00",
            "enemy_allytk_hit": "0x96FF00",
            "enemy_allytk_kill": "0x96FF00",
            "enemy_enemy_blowup": "0xF50800",
            "enemy_enemy_hit": "0xF50800",
            "enemy_enemy_kill": "0xF50800",
            "enemy_enemytk_blowup": "0xF50800",
            "enemy_enemytk_hit": "0xF50800",
            "enemy_enemytk_kill": "0xF50800",
            "enemy_squadman_blowup": "0xFF00FF",
            "enemy_squadman_hit": "0xFF00FF",
            "enemy_squadman_kill": "0xFF00FF",
            "player_ally_blowup": "0xFFDD33",
            "player_ally_hit": "0xFFDD33",
            "player_ally_kill": "0xFFDD33",
            "player_allytk_blowup": "0xFFDD33",
            "player_allytk_hit": "0xFFDD33",
            "player_allytk_kill": "0xFFDD33",
            "player_enemy_blowup": "0xFFDD33",
            "player_enemy_hit": "0xFFDD33",
            "player_enemy_kill": "0xFFDD33",
            "player_enemytk_blowup": "0xFFDD33",
            "player_enemytk_hit": "0xFFDD33",
            "player_enemytk_kill": "0xFFDD33",
            "player_squadman_blowup": "0xFFDD33",
            "player_squadman_hit": "0xFFDD33",
            "player_squadman_kill": "0xFFDD33",
            "squadman_ally_blowup": "0x00EAFF",
            "squadman_ally_hit": "0x00EAFF",
            "squadman_ally_kill": "0x00EAFF",
            "squadman_allytk_blowup": "0x00EAFF",
            "squadman_allytk_hit": "0x00EAFF",
            "squadman_allytk_kill": "0x00EAFF",
            "squadman_enemy_blowup": "0xFFDD33",
            "squadman_enemy_hit": "0xFFDD33",
            "squadman_enemy_kill": "0xFFDD33",
            "squadman_enemytk_blowup": "0xF50800",
            "squadman_enemytk_hit": "0xF50800",
            "squadman_enemytk_kill": "0xF50800",
            "squadman_squadman_blowup": "0x00EAFF",
            "squadman_squadman_hit": "0x00EAFF",
            "squadman_squadman_kill": "0x00EAFF",
            "unknown_ally_blowup": "0x96FF00",
            "unknown_ally_hit": "0x96FF00",
            "unknown_ally_kill": "0x96FF00",
            "unknown_allytk_blowup": "0x96FF00",
            "unknown_allytk_hit": "0x96FF00",
            "unknown_allytk_kill": "0x96FF00",
            "unknown_enemy_blowup": "0xF50800",
            "unknown_enemy_hit": "0xF50800",
            "unknown_enemy_kill": "0xF50800",
            "unknown_enemytk_blowup": "0xF50800",
            "unknown_enemytk_hit": "0xF50800",
            "unknown_enemytk_kill": "0xF50800",
            "unknown_squadman_blowup": "0xFF00FF",
            "unknown_squadman_hit": "0xFF00FF",
            "unknown_squadman_kill": "0xFF00FF"
        },
        "dmg_kind": {
            "attack": "0xFFAA55",
            "fire": "0xFF6655",
            "other": "0xCCCCCC",
            "ramming": "0x998855",
            "world_collision": "0x998855"
        },
        "vtype": {
            "HT": "0xFFACAC",
            "LT": "0xA2FF9A",
            "MT": "0xFFF198",
            "SPG": "0xEFAEFF",
            "TD": "0xA0CFFF",
            "premium": "0xFFCC66",
            "usePremiumColor": false
        },
        "hp": [{
            "value": 201,
            "color": "0xFF0000"
        }, {
            "value": 401,
            "color": "0xDD4444"
        }, {
            "value": 1001,
            "color": "0xFE7903"
        }, {
            "value": 9999,
            "color": "0xFCFCFC"
        }],
        "hp_ratio": [{
            "value": 10,
            "color": "0xFF0000"
        }, {
            "value": 25,
            "color": "0xDD4444"
        }, {
            "value": 50,
            "color": "0xFE7903"
        }, {
            "value": 101,
            "color": "0xFCFCFC"
        }],
        "x": [{
            "value": 17,
            "color": "0xFE0E00"
        }, {
            "value": 34,
            "color": "0xFE7903"
        }, {
            "value": 53,
            "color": "0xF8F400"
        }, {
            "value": 76,
            "color": "0x60FF00"
        }, {
            "value": 93,
            "color": "0x02C9B3"
        }, {
            "value": 999,
            "color": "0xD042F3"
        }],
        "e": [{
            "value": 3,
            "color": "0xFE0E00"
        }, {
            "value": 6,
            "color": "0xFE7903"
        }, {
            "value": 7,
            "color": "0xF8F400"
        }, {
            "value": 8,
            "color": "0x60FF00"
        }, {
            "value": 9,
            "color": "0x02C9B3"
        }, {
            "value": 20,
            "color": "0xD042F3"
        }],
        "rating": [{
            "value": 46,
            "color": "0xFE0E00"
        }, {
            "value": 48,
            "color": "0xFE7903"
        }, {
            "value": 51,
            "color": "0xF8F400"
        }, {
            "value": 54,
            "color": "0x60FF00"
        }, {
            "value": 60,
            "color": "0x02C9B3"
        }, {
            "value": 70,
            "color": "0xD042F3"
        }, {
            "value": 101,
            "color": "0x9900FF"
        }],
        "avglvl": [{
            "value": 2,
            "color": "0xFE0E00"
        }, {
            "value": 3,
            "color": "0xFE7903"
        }, {
            "value": 5,
            "color": "0xF8F400"
        }, {
            "value": 7,
            "color": "0x60FF00"
        }, {
            "value": 9,
            "color": "0x02C9B3"
        }, {
            "value": 11,
            "color": "0xD042F3"
        }],
        "eff": [{
            "value": 630,
            "color": "0xFE0E00"
        }, {
            "value": 860,
            "color": "0xFE7903"
        }, {
            "value": 1140,
            "color": "0xF8F400"
        }, {
            "value": 1460,
            "color": "0x60FF00"
        }, {
            "value": 1735,
            "color": "0x02C9B3"
        }, {
            "value": 9999,
            "color": "0xD042F3"
        }],
        "kb": [{
            "value": 1,
            "color": "0x990000"
        }, {
            "value": 2,
            "color": "0xFE0E00"
        }, {
            "value": 5,
            "color": "0xF8F400"
        }, {
            "value": 10,
            "color": "0x60FF00"
        }, {
            "value": 15,
            "color": "0x00CC00"
        }, {
            "value": 20,
            "color": "0x02C9B3"
        }, {
            "value": 30,
            "color": "0xD042F3"
        }, {
            "value": 100,
            "color": "0x9900FF"
        }],
        "t_battles": [{
            "value": 5,
            "color": "0xFE0E00"
        }, {
            "value": 10,
            "color": "0xFE7903"
        }, {
            "value": 50,
            "color": "0xF8F400"
        }, {
            "value": 100,
            "color": "0x60FF00"
        }, {
            "value": 500,
            "color": "0x00CC00"
        }, {
            "value": 1000,
            "color": "0x02C9B3"
        }, {
            "value": 1800,
            "color": "0xD042F3"
        }, {
            "value": 99999,
            "color": "0x9900FF"
        }],
        "tdb": [{
            "value": 1,
            "color": "0xFCFCFC"
        }, {
            "value": 500,
            "color": "0xFE0E00"
        }, {
            "value": 1000,
            "color": "0xF8F400"
        }, {
            "value": 1500,
            "color": "0x60FF00"
        }, {
            "value": 2000,
            "color": "0x02C9B3"
        }, {
            "value": 2500,
            "color": "0xD042F3"
        }],
        "tdv": [{
            "value": 0.01,
            "color": "0xFCFCFC"
        }, {
            "value": 0.6,
            "color": "0xFE0E00"
        }, {
            "value": 0.8,
            "color": "0xFE7903"
        }, {
            "value": 1,
            "color": "0xF8F400"
        }, {
            "value": 1.3,
            "color": "0x60FF00"
        }, {
            "value": 1.5,
            "color": "0x00CC00"
        }, {
            "value": 2,
            "color": "0x02C9B3"
        }, {
            "value": 2.5,
            "color": "0xD042F3"
        }, {
            "value": 15,
            "color": "0x9900FF"
        }],
        "tfb": [{
            "value": 0.01,
            "color": "0xFCFCFC"
        }, {
            "value": 0.6,
            "color": "0xFE0E00"
        }, {
            "value": 0.8,
            "color": "0xFE7903"
        }, {
            "value": 1,
            "color": "0xF8F400"
        }, {
            "value": 1.3,
            "color": "0x60FF00"
        }, {
            "value": 1.5,
            "color": "0x00CC00"
        }, {
            "value": 2,
            "color": "0x02C9B3"
        }, {
            "value": 2.5,
            "color": "0xD042F3"
        }, {
            "value": 3,
            "color": "0x9900FF"
        }],
        "tsb": [{
            "value": 0.01,
            "color": "0xFCFCFC"
        }, {
            "value": 0.6,
            "color": "0xFE0E00"
        }, {
            "value": 0.8,
            "color": "0xFE7903"
        }, {
            "value": 1,
            "color": "0xF8F400"
        }, {
            "value": 1.3,
            "color": "0x60FF00"
        }, {
            "value": 1.5,
            "color": "0x00CC00"
        }, {
            "value": 2,
            "color": "0x02C9B3"
        }, {
            "value": 2.5,
            "color": "0xD042F3"
        }, {
            "value": 15,
            "color": "0x9900FF"
        }],
        "wn": [{
            "value": 500,
            "color": "0x990000"
        }, {
            "value": 700,
            "color": "0xFE0E00"
        }, {
            "value": 900,
            "color": "0xFE7903"
        }, {
            "value": 1100,
            "color": "0xF8F400"
        }, {
            "value": 1350,
            "color": "0x60FF00"
        }, {
            "value": 1500,
            "color": "0x00CC00"
        }, {
            "value": 1700,
            "color": "0x02C9B3"
        }, {
            "value": 2000,
            "color": "0xD042F3"
        }, {
            "value": 3000,
            "color": "0x9900FF"
        }]
    },
    "alpha": {
        "hp": [{
            "value": 200,
            "alpha": 100
        }, {
            "value": 400,
            "alpha": 80
        }, {
            "value": 1000,
            "alpha": 60
        }, {
            "value": 9999,
            "alpha": 40
        }],
        "hp_ratio": [{
            "value": 10,
            "alpha": 100
        }, {
            "value": 25,
            "alpha": 80
        }, {
            "value": 50,
            "alpha": 60
        }, {
            "value": 101,
            "alpha": 40
        }],
        "x": [{
            "value": 30,
            "alpha": 100
        }, {
            "value": 50,
            "alpha": 80
        }, {
            "value": 70,
            "alpha": 60
        }, {
            "value": 9999,
            "alpha": 40
        }],
        "e": [{
            "value": 5,
            "alpha": 100
        }, {
            "value": 7,
            "alpha": 80
        }, {
            "value": 9,
            "alpha": 60
        }, {
            "value": 20,
            "alpha": 40
        }],
        "rating": [{
            "value": 46,
            "alpha": 100
        }, {
            "value": 48,
            "alpha": 90
        }, {
            "value": 51,
            "alpha": 80
        }, {
            "value": 54,
            "alpha": 70
        }, {
            "value": 60,
            "alpha": 60
        }, {
            "value": 70,
            "alpha": 50
        }, {
            "value": 101,
            "alpha": 40
        }],
        "avglvl": [{
            "value": 11,
            "alpha": 100
        }],
        "eff": [{
            "value": 860,
            "alpha": 100
        }, {
            "value": 1140,
            "alpha": 80
        }, {
            "value": 1460,
            "alpha": 60
        }, {
            "value": 9999,
            "alpha": 40
        }],
        "kb": [{
            "value": 2,
            "alpha": 100
        }, {
            "value": 5,
            "alpha": 90
        }, {
            "value": 9,
            "alpha": 80
        }, {
            "value": 14,
            "alpha": 70
        }, {
            "value": 20,
            "alpha": 60
        }, {
            "value": 999,
            "alpha": 40
        }],
        "t_battles": [{
            "value": 100,
            "alpha": "100"
        }, {
            "value": 250,
            "alpha": "80"
        }, {
            "value": 500,
            "alpha": "70"
        }, {
            "value": 1000,
            "alpha": "60"
        }, {
            "value": 1800,
            "alpha": "50"
        }, {
            "value": 99999,
            "alpha": "40"
        }],
        "tdb": [{
            "value": 1,
            "alpha": "100"
        }, {
            "value": 500,
            "alpha": "80"
        }, {
            "value": 1000,
            "alpha": "60"
        }, {
            "value": 2000,
            "alpha": "40"
        }],
        "tdv": [{
            "value": 0.01,
            "alpha": "100"
        }, {
            "value": 0.6,
            "alpha": "90"
        }, {
            "value": 0.8,
            "alpha": "80"
        }, {
            "value": 1,
            "alpha": "70"
        }, {
            "value": 1.3,
            "alpha": "60"
        }, {
            "value": 2,
            "alpha": "50"
        }, {
            "value": 15,
            "alpha": "40"
        }],
        "tfb": [{
            "value": 0.01,
            "alpha": "100"
        }, {
            "value": 0.6,
            "alpha": "90"
        }, {
            "value": 0.8,
            "alpha": "80"
        }, {
            "value": 1,
            "alpha": "70"
        }, {
            "value": 1.3,
            "alpha": "60"
        }, {
            "value": 2,
            "alpha": "50"
        }, {
            "value": 15,
            "alpha": "40"
        }],
        "tsb": [{
            "value": 0.01,
            "alpha": "100"
        }, {
            "value": 0.6,
            "alpha": "90"
        }, {
            "value": 0.8,
            "alpha": "80"
        }, {
            "value": 1,
            "alpha": "70"
        }, {
            "value": 1.3,
            "alpha": "60"
        }, {
            "value": 2,
            "alpha": "50"
        }, {
            "value": 15,
            "alpha": "40"
        }],
        "wn": [{
            "value": 500,
            "alpha": "100"
        }, {
            "value": 700,
            "alpha": "90"
        }, {
            "value": 900,
            "alpha": "80"
        }, {
            "value": 1100,
            "alpha": "70"
        }, {
            "value": 1350,
            "alpha": "65"
        }, {
            "value": 1500,
            "alpha": "60"
        }, {
            "value": 1700,
            "alpha": "55"
        }, {
            "value": 2000,
            "alpha": "50"
        }, {
            "value": 9999,
            "alpha": "40"
        }]
    },
    "consts": {
        "AVG_BATTLES": 2000,
        "AVG_GWR": 48,
        "AVG_XVMSCALE": 30,
        "MAX_EBN": 200,
        "VM_COEFF_FC": 0.93,
        "VM_COEFF_MM_BASE": 0.8,
        "VM_COEFF_MM_PLAYER": 0.93,
        "VM_COEFF_VMM": 0.88,
        "VM_COEFF_VMM_DEAD": 0.5
    },
    "vehicleNames": {
        "china_Ch01_Type59": {
            "name": null,
            "short": "59"
        },
        "china_Ch01_Type59_Gold": {
            "name": null,
            "short": "59G"
        },
        "china_Ch02_Type62": {
            "name": null,
            "short": "62"
        },
        "china_Ch03_WZ_111": {
            "name": null,
            "short": "111"
        },
        "china_Ch04_T34_1": {
            "name": null,
            "short": "34/1"
        },
        "china_Ch04_T34_1_training": {
            "name": null,
            "short": "34/1"
        },
        "china_Ch05_T34_2": {
            "name": null,
            "short": "34/2"
        },
        "china_Ch06_Renault_NC31": {
            "name": null,
            "short": "31"
        },
        "china_Ch07_Vickers_MkE_Type_BT26": {
            "name": null,
            "short": "BT26"
        },
        "china_Ch08_Type97_Chi_Ha": {
            "name": null,
            "short": "97"
        },
        "china_Ch09_M5": {
            "name": null,
            "short": "M5"
        },
        "china_Ch10_IS2": {
            "name": null,
            "short": "IS2"
        },
        "china_Ch11_110": {
            "name": null,
            "short": "110"
        },
        "china_Ch12_111_1_2_3": {
            "name": null,
            "short": "111/1"
        },
        "china_Ch14_T34_3": {
            "name": null,
            "short": "34/3"
        },
        "china_Ch15_59_16": {
            "name": null,
            "short": "59-16"
        },
        "china_Ch16_WZ_131": {
            "name": null,
            "short": "131"
        },
        "china_Ch17_WZ131_1_WZ132": {
            "name": null,
            "short": "132"
        },
        "china_Ch18_WZ_120": {
            "name": null,
            "short": "120"
        },
        "china_Ch19_121": {
            "name": null,
            "short": "121"
        },
        "china_Ch20_Type58": {
            "name": null,
            "short": "58"
        },
        "china_Ch21_T34": {
            "name": null,
            "short": "t-34"
        },
        "china_Ch22_113": {
            "name": null,
            "short": "113"
        },
        "china_Ch23_112": {
            "name": null,
            "short": "112"
        },
        "china_Ch24_Type64": {
            "name": null,
            "short": "t-64"
        },
        "france_AMX38": {
            "name": null,
            "short": "AMX38"
        },
        "france_AMX40": {
            "name": null,
            "short": "AMX40"
        },
        "france_AMX50_Foch": {
            "name": null,
            "short": "Foch"
        },
        "france_AMX_105AM": {
            "name": null,
            "short": "105AM"
        },
        "france_AMX_12t": {
            "name": null,
            "short": "12t"
        },
        "france_AMX_13F3AM": {
            "name": null,
            "short": "13F3"
        },
        "france_AMX_13_75": {
            "name": null,
            "short": "1375"
        },
        "france_AMX_13_90": {
            "name": null,
            "short": "1390"
        },
        "france_AMX_50Fosh_155": {
            "name": null,
            "short": "Foch155"
        },
        "france_AMX_50_100": {
            "name": null,
            "short": "50100"
        },
        "france_AMX_50_120": {
            "name": null,
            "short": "50120"
        },
        "france_AMX_AC_Mle1946": {
            "name": null,
            "short": "Mle46"
        },
        "france_AMX_AC_Mle1948": {
            "name": null,
            "short": "Mle48"
        },
        "france_AMX_M4_1945": {
            "name": null,
            "short": "AMX1945"
        },
        "france_AMX_Ob_Am105": {
            "name": null,
            "short": "Am105"
        },
        "france_ARL_44": {
            "name": null,
            "short": "ARL"
        },
        "france_ARL_V39": {
            "name": null,
            "short": "V39"
        },
        "france_B1": {
            "name": null,
            "short": "B1"
        },
        "france_BDR_G1B": {
            "name": null,
            "short": "BDR"
        },
        "france_Bat_Chatillon155_55": {
            "name": null,
            "short": "Bat155"
        },
        "france_Bat_Chatillon155_58": {
            "name": null,
            "short": "15558"
        },
        "france_Bat_Chatillon25t": {
            "name": null,
            "short": "Bat"
        },
        "france_D1": {
            "name": null,
            "short": "D1"
        },
        "france_D2": {
            "name": null,
            "short": "D2"
        },
        "france_ELC_AMX": {
            "name": null,
            "short": "ELC"
        },
        "france_F10_AMX_50B": {
            "name": null,
            "short": "50B"
        },
        "france_FCM_36Pak40": {
            "name": null,
            "short": "Fcm36"
        },
        "france_FCM_50t": {
            "name": null,
            "short": "Fcm50"
        },
        "france_Hotchkiss_H35": {
            "name": null,
            "short": "H35"
        },
        "france_Lorraine155_50": {
            "name": null,
            "short": "15550"
        },
        "france_Lorraine155_51": {
            "name": null,
            "short": "15551"
        },
        "france_Lorraine39_L_AM": {
            "name": null,
            "short": "Lor39"
        },
        "france_Lorraine40t": {
            "name": null,
            "short": "Lor40"
        },
        "france_RenaultBS": {
            "name": null,
            "short": "BS"
        },
        "france_RenaultFT": {
            "name": null,
            "short": "FT"
        },
        "france_RenaultFT_AC": {
            "name": null,
            "short": "FTAC"
        },
        "france_RenaultUE57": {
            "name": null,
            "short": "UE57"
        },
        "france_S_35CA": {
            "name": null,
            "short": "S35"
        },
        "france_Somua_Sau_40": {
            "name": null,
            "short": "Somua"
        },
        "france__105_leFH18B2": {
            "name": null,
            "short": "leFH"
        },
        "germany_Auf_Panther": {
            "name": null,
            "short": "APant"
        },
        "germany_B_1bis_captured": {
            "name": null,
            "short": "B1bis"
        },
        "germany_Bison_I": {
            "name": null,
            "short": "Bison"
        },
        "germany_DW_II": {
            "name": null,
            "short": "DWII"
        },
        "germany_DickerMax": {
            "name": null,
            "short": "DMax"
        },
        "germany_E50_Ausf_M": {
            "name": null,
            "short": "50M"
        },
        "germany_E_100": {
            "name": null,
            "short": "100"
        },
        "germany_E_25": {
            "name": null,
            "short": "E25"
        },
        "germany_E_50": {
            "name": null,
            "short": "50"
        },
        "germany_E_75": {
            "name": null,
            "short": "75"
        },
        "germany_Ferdinand": {
            "name": null,
            "short": "Ferd"
        },
        "germany_G20_Marder_II": {
            "name": null,
            "short": "Mard"
        },
        "germany_GW_Mk_VIe": {
            "name": null,
            "short": "Gw6e"
        },
        "germany_GW_Tiger_P": {
            "name": null,
            "short": "GwTP"
        },
        "germany_G_E": {
            "name": null,
            "short": "GwE"
        },
        "germany_G_Panther": {
            "name": null,
            "short": "GwP"
        },
        "germany_G_Tiger": {
            "name": null,
            "short": "GwT"
        },
        "germany_Grille": {
            "name": null,
            "short": "Grill"
        },
        "germany_H39_captured": {
            "name": null,
            "short": "H39"
        },
        "germany_Hetzer": {
            "name": null,
            "short": "Hetz"
        },
        "germany_Hummel": {
            "name": null,
            "short": "Humm"
        },
        "germany_Indien_Panzer": {
            "name": null,
            "short": "IndPz"
        },
        "germany_JagdPanther": {
            "name": null,
            "short": "JagP"
        },
        "germany_JagdPantherII": {
            "name": null,
            "short": "JagP2"
        },
        "germany_JagdPzIV": {
            "name": null,
            "short": "JPz"
        },
        "germany_JagdPz_E100": {
            "name": null,
            "short": "JPz100"
        },
        "germany_JagdTiger": {
            "name": null,
            "short": "JagT"
        },
        "germany_JagdTiger_SdKfz_185": {
            "name": null,
            "short": "JgT88"
        },
        "germany_Leopard1": {
            "name": null,
            "short": "Leo"
        },
        "germany_Lowe": {
            "name": null,
            "short": "Lowe"
        },
        "germany_Ltraktor": {
            "name": null,
            "short": "Ltrak"
        },
        "germany_Maus": {
            "name": null,
            "short": "Maus"
        },
        "germany_Panther_II": {
            "name": null,
            "short": "Pant2"
        },
        "germany_Panther_M10": {
            "name": null,
            "short": "PaM10"
        },
        "germany_PanzerJager_I": {
            "name": null,
            "short": "PzJg"
        },
        "germany_Pro_Ag_A": {
            "name": null,
            "short": "LeoPr"
        },
        "germany_Pz35t": {
            "name": null,
            "short": "Pz35"
        },
        "germany_Pz38_NA": {
            "name": null,
            "short": "Pz38"
        },
        "germany_Pz38t": {
            "name": null,
            "short": "Pz38t"
        },
        "germany_PzI": {
            "name": null,
            "short": "Pz1"
        },
        "germany_PzII": {
            "name": null,
            "short": "Pz2"
        },
        "germany_PzIII": {
            "name": null,
            "short": "Pz3"
        },
        "germany_PzIII_A": {
            "name": null,
            "short": "Pz3A"
        },
        "germany_PzIII_IV": {
            "name": null,
            "short": "Pz3/4"
        },
        "germany_PzIII_training": {
            "name": null,
            "short": "Pz3"
        },
        "germany_PzII_J": {
            "name": null,
            "short": "Pz2J"
        },
        "germany_PzII_Luchs": {
            "name": null,
            "short": "Luchs"
        },
        "germany_PzIV": {
            "name": null,
            "short": "Pz4"
        },
        "germany_PzIV_Hydro": {
            "name": null,
            "short": "Pz4H"
        },
        "germany_PzIV_schmalturm": {
            "name": null,
            "short": "Pz4S"
        },
        "germany_PzI_ausf_C": {
            "name": null,
            "short": "Pz2C"
        },
        "germany_PzV": {
            "name": null,
            "short": "Pant"
        },
        "germany_PzVI": {
            "name": null,
            "short": "Tger"
        },
        "germany_PzVIB_Tiger_II": {
            "name": null,
            "short": "Tger2"
        },
        "germany_PzVIB_Tiger_II_training": {
            "name": null,
            "short": "Tger2"
        },
        "germany_PzVI_Tiger_P": {
            "name": null,
            "short": "TgerP"
        },
        "germany_PzV_PzIV": {
            "name": null,
            "short": "Pz5/4"
        },
        "germany_PzV_PzIV_ausf_Alfa": {
            "name": null,
            "short": "Pz5/4A"
        },
        "germany_PzV_training": {
            "name": null,
            "short": "Pant"
        },
        "germany_Pz_II_AusfG": {
            "name": null,
            "short": "Pz2G"
        },
        "germany_Pz_Sfl_IVb": {
            "name": null,
            "short": "PzS4b"
        },
        "germany_S35_captured": {
            "name": null,
            "short": "S35"
        },
        "germany_StuGIII": {
            "name": null,
            "short": "StuG"
        },
        "germany_Sturmpanzer_II": {
            "name": null,
            "short": "StPz2"
        },
        "germany_T_15": {
            "name": null,
            "short": "T-15"
        },
        "germany_T_25": {
            "name": null,
            "short": "T-25"
        },
        "germany_VK1602": {
            "name": null,
            "short": "1602"
        },
        "germany_VK2001DB": {
            "name": null,
            "short": "2001"
        },
        "germany_VK2801": {
            "name": null,
            "short": "2801"
        },
        "germany_VK3001H": {
            "name": null,
            "short": "3001H"
        },
        "germany_VK3001P": {
            "name": null,
            "short": "3001P"
        },
        "germany_VK3002DB": {
            "name": null,
            "short": "3002D"
        },
        "germany_VK3002DB_V1": {
            "name": null,
            "short": "3002DB"
        },
        "germany_VK3002M": {
            "name": null,
            "short": "3002M"
        },
        "germany_VK3601H": {
            "name": null,
            "short": "3601"
        },
        "germany_VK4502A": {
            "name": null,
            "short": "4502A"
        },
        "germany_VK4502P": {
            "name": null,
            "short": "4502P"
        },
        "germany_VK7201": {
            "name": null,
            "short": "7201"
        },
        "germany_Wespe": {
            "name": null,
            "short": "Wespe"
        },
        "japan_Chi_Nu_Kai": {
            "name": null,
            "short": "ChiNu"
        },
        "uk_GB01_Medium_Mark_I": {
            "name": null,
            "short": "Mk1"
        },
        "uk_GB03_Cruiser_Mk_I": {
            "name": null,
            "short": "Cru1"
        },
        "uk_GB04_Valentine": {
            "name": null,
            "short": "Val1"
        },
        "uk_GB05_Vickers_Medium_Mk_II": {
            "name": null,
            "short": "Mk2"
        },
        "uk_GB06_Vickers_Medium_Mk_III": {
            "name": null,
            "short": "Mk3"
        },
        "uk_GB07_Matilda": {
            "name": null,
            "short": "Matil"
        },
        "uk_GB08_Churchill_I": {
            "name": null,
            "short": "Chur1"
        },
        "uk_GB09_Churchill_VII": {
            "name": null,
            "short": "Chur7"
        },
        "uk_GB10_Black_Prince": {
            "name": null,
            "short": "Princ"
        },
        "uk_GB11_Caernarvon": {
            "name": null,
            "short": "Caern"
        },
        "uk_GB12_Conqueror": {
            "name": null,
            "short": "Conq"
        },
        "uk_GB13_FV215b": {
            "name": null,
            "short": "215b"
        },
        "uk_GB20_Crusader": {
            "name": null,
            "short": "Crus"
        },
        "uk_GB21_Cromwell": {
            "name": null,
            "short": "Cromw"
        },
        "uk_GB22_Comet": {
            "name": null,
            "short": "Comet"
        },
        "uk_GB23_Centurion": {
            "name": null,
            "short": "Cent"
        },
        "uk_GB24_Centurion_Mk3": {
            "name": null,
            "short": "Cent3"
        },
        "uk_GB25_Loyd_Carrier": {
            "name": null,
            "short": "2pdr"
        },
        "uk_GB26_Birch_Gun": {
            "name": null,
            "short": "Birch"
        },
        "uk_GB27_Sexton": {
            "name": null,
            "short": "Sext"
        },
        "uk_GB28_Bishop": {
            "name": null,
            "short": "Bishp"
        },
        "uk_GB29_Crusader_5inch": {
            "name": null,
            "short": "Crus5"
        },
        "uk_GB30_FV3805": {
            "name": null,
            "short": "3805"
        },
        "uk_GB31_Conqueror_Gun": {
            "name": null,
            "short": "ConqG"
        },
        "uk_GB32_Tortoise": {
            "name": null,
            "short": "Tort"
        },
        "uk_GB39_Universal_CarrierQF2": {
            "name": null,
            "short": "QF2"
        },
        "uk_GB40_Gun_Carrier_Churchill": {
            "name": null,
            "short": "GChur"
        },
        "uk_GB42_Valentine_AT": {
            "name": null,
            "short": "ValAT"
        },
        "uk_GB48_FV215b_183": {
            "name": null,
            "short": "183"
        },
        "uk_GB51_Excelsior": {
            "name": null,
            "short": "Excel"
        },
        "uk_GB57_Alecto": {
            "name": null,
            "short": "Alect"
        },
        "uk_GB58_Cruiser_Mk_III": {
            "name": null,
            "short": "Crui3"
        },
        "uk_GB59_Cruiser_Mk_IV": {
            "name": null,
            "short": "Crui4"
        },
        "uk_GB60_Covenanter": {
            "name": null,
            "short": "Coven"
        },
        "uk_GB63_TOG_II": {
            "name": null,
            "short": "TOG"
        },
        "uk_GB68_Matilda_Black_Prince": {
            "name": null,
            "short": "MatilBP"
        },
        "uk_GB69_Cruiser_Mk_II": {
            "name": null,
            "short": "Crui2"
        },
        "uk_GB70_FV4202_105": {
            "name": null,
            "short": "4202"
        },
        "uk_GB71_AT_15A": {
            "name": null,
            "short": "AT15A"
        },
        "uk_GB72_AT15": {
            "name": null,
            "short": "AT15"
        },
        "uk_GB73_AT2": {
            "name": null,
            "short": "AT2"
        },
        "uk_GB74_AT8": {
            "name": null,
            "short": "AT8"
        },
        "uk_GB75_AT7": {
            "name": null,
            "short": "AT7"
        },
        "uk_GB77_FV304": {
            "name": null,
            "short": "FV304"
        },
        "uk_GB78_Sexton_I": {
            "name": null,
            "short": "Sext1"
        },
        "uk_GB79_FV206": {
            "name": null,
            "short": "FV206"
        },
        "unknown": {
            "name": null,
            "short": "?"
        },
        "usa_M103": {
            "name": null,
            "short": "103"
        },
        "usa_M10_Wolverine": {
            "name": null,
            "short": "Wolv"
        },
        "usa_M12": {
            "name": null,
            "short": "M12"
        },
        "usa_M18_Hellcat": {
            "name": null,
            "short": "Hellc"
        },
        "usa_M22_Locust": {
            "name": null,
            "short": "Locus"
        },
        "usa_M24_Chaffee": {
            "name": null,
            "short": "Chaff"
        },
        "usa_M2_lt": {
            "name": null,
            "short": "M2LT"
        },
        "usa_M2_med": {
            "name": null,
            "short": "M2MT"
        },
        "usa_M36_Slagger": {
            "name": null,
            "short": "Jacks"
        },
        "usa_M37": {
            "name": null,
            "short": "M37"
        },
        "usa_M3_Grant": {
            "name": null,
            "short": "M3Lee"
        },
        "usa_M3_Stuart": {
            "name": null,
            "short": "M3Stu"
        },
        "usa_M40M43": {
            "name": null,
            "short": "4043"
        },
        "usa_M41": {
            "name": null,
            "short": "M41"
        },
        "usa_M44": {
            "name": null,
            "short": "M44"
        },
        "usa_M46_Patton": {
            "name": null,
            "short": "Patt"
        },
        "usa_M48A1": {
            "name": null,
            "short": "M48"
        },
        "usa_M4A2E4": {
            "name": null,
            "short": "SheE4"
        },
        "usa_M4A3E8_Sherman": {
            "name": null,
            "short": "SheE8"
        },
        "usa_M4A3E8_Sherman_training": {
            "name": null,
            "short": "SheE8"
        },
        "usa_M4_Sherman": {
            "name": null,
            "short": "Sherm"
        },
        "usa_M53_55": {
            "name": null,
            "short": "5355"
        },
        "usa_M5_Stuart": {
            "name": null,
            "short": "M5Stu"
        },
        "usa_M6": {
            "name": null,
            "short": "M6"
        },
        "usa_M60": {
            "name": null,
            "short": "M60"
        },
        "usa_M6A2E1": {
            "name": null,
            "short": "M6A2E"
        },
        "usa_M7_Priest": {
            "name": null,
            "short": "Pries"
        },
        "usa_M7_med": {
            "name": null,
            "short": "M7"
        },
        "usa_M8A1": {
            "name": null,
            "short": "M8A1"
        },
        "usa_MTLS_1G14": {
            "name": null,
            "short": "MTLS"
        },
        "usa_Pershing": {
            "name": null,
            "short": "Persh"
        },
        "usa_Ram_II": {
            "name": null,
            "short": "Ram2"
        },
        "usa_Sexton_I": {
            "name": null,
            "short": "Sext1usa"
        },
        "usa_Sherman_Jumbo": {
            "name": null,
            "short": "SheJm"
        },
        "usa_T110": {
            "name": null,
            "short": "110E5"
        },
        "usa_T110E3": {
            "name": null,
            "short": "E3"
        },
        "usa_T110E4": {
            "name": null,
            "short": "E4"
        },
        "usa_T14": {
            "name": null,
            "short": "T14"
        },
        "usa_T18": {
            "name": null,
            "short": "T18"
        },
        "usa_T1_Cunningham": {
            "name": null,
            "short": "Cunn"
        },
        "usa_T1_E6": {
            "name": null,
            "short": "T1E6"
        },
        "usa_T1_hvy": {
            "name": null,
            "short": "T1Hv"
        },
        "usa_T20": {
            "name": null,
            "short": "T20"
        },
        "usa_T21": {
            "name": null,
            "short": "T21"
        },
        "usa_T23": {
            "name": null,
            "short": "T23"
        },
        "usa_T25_2": {
            "name": null,
            "short": "25/2"
        },
        "usa_T25_AT": {
            "name": null,
            "short": "25AT"
        },
        "usa_T26_E4_SuperPershing": {
            "name": null,
            "short": "Super"
        },
        "usa_T28": {
            "name": null,
            "short": "T28"
        },
        "usa_T28_Prototype": {
            "name": null,
            "short": "T28Pr"
        },
        "usa_T29": {
            "name": null,
            "short": "T29"
        },
        "usa_T2_lt": {
            "name": null,
            "short": "T2LT"
        },
        "usa_T2_med": {
            "name": null,
            "short": "T2MT"
        },
        "usa_T30": {
            "name": null,
            "short": "T30"
        },
        "usa_T32": {
            "name": null,
            "short": "T32"
        },
        "usa_T34_hvy": {
            "name": null,
            "short": "T34Hv"
        },
        "usa_T40": {
            "name": null,
            "short": "T40"
        },
        "usa_T49": {
            "name": null,
            "short": "T49"
        },
        "usa_T54E1": {
            "name": null,
            "short": "54E1"
        },
        "usa_T57": {
            "name": null,
            "short": "T57"
        },
        "usa_T57_58": {
            "name": null,
            "short": "T57H"
        },
        "usa_T69": {
            "name": null,
            "short": "69"
        },
        "usa_T71": {
            "name": null,
            "short": "71"
        },
        "usa_T82": {
            "name": null,
            "short": "T82"
        },
        "usa_T92": {
            "name": null,
            "short": "T92"
        },
        "usa_T95": {
            "name": null,
            "short": "95"
        },
        "ussr_A43": {
            "name": null,
            "short": "A43"
        },
        "ussr_A44": {
            "name": null,
            "short": "A44"
        },
        "ussr_AT_1": {
            "name": null,
            "short": "AT-1"
        },
        "ussr_A_20": {
            "name": null,
            "short": "A20"
        },
        "ussr_A_32": {
            "name": null,
            "short": "A32"
        },
        "ussr_BT_2": {
            "name": null,
            "short": "BT2"
        },
        "ussr_BT_7": {
            "name": null,
            "short": "BT7"
        },
        "ussr_BT_SV": {
            "name": null,
            "short": "BTSV"
        },
        "ussr_Churchill_LL": {
            "name": null,
            "short": "Chur"
        },
        "ussr_GAZ_74b": {
            "name": null,
            "short": "Su85b"
        },
        "ussr_IS": {
            "name": null,
            "short": "IS"
        },
        "ussr_IS8": {
            "name": null,
            "short": "8"
        },
        "ussr_ISU_152": {
            "name": null,
            "short": "152"
        },
        "ussr_IS_3": {
            "name": null,
            "short": "3"
        },
        "ussr_IS_4": {
            "name": null,
            "short": "4"
        },
        "ussr_IS_7": {
            "name": null,
            "short": "7"
        },
        "ussr_KV": {
            "name": null,
            "short": "KV"
        },
        "ussr_KV1": {
            "name": null,
            "short": "KV1"
        },
        "ussr_KV2": {
            "name": null,
            "short": "KV2"
        },
        "ussr_KV4": {
            "name": null,
            "short": "KV4"
        },
        "ussr_KV_13": {
            "name": null,
            "short": "KV13"
        },
        "ussr_KV_1s": {
            "name": null,
            "short": "KV1S"
        },
        "ussr_KV_220": {
            "name": null,
            "short": "KV220"
        },
        "ussr_KV_220_action": {
            "name": null,
            "short": "KV220A"
        },
        "ussr_KV_3": {
            "name": null,
            "short": "KV3"
        },
        "ussr_KV_5": {
            "name": null,
            "short": "KV5"
        },
        "ussr_LTP": {
            "name": null,
            "short": "LTP"
        },
        "ussr_M3_Stuart_LL": {
            "name": null,
            "short": "StuLL"
        },
        "ussr_MS_1": {
            "name": null,
            "short": "MS"
        },
        "ussr_MT25": {
            "name": null,
            "short": "MT25"
        },
        "ussr_Matilda_II_LL": {
            "name": null,
            "short": "MatLL"
        },
        "ussr_Object252": {
            "name": null,
            "short": "IS6"
        },
        "ussr_Object263": {
            "name": null,
            "short": "263"
        },
        "ussr_Object268": {
            "name": null,
            "short": "268"
        },
        "ussr_Object416": {
            "name": null,
            "short": "o416"
        },
        "ussr_Object_140": {
            "name": null,
            "short": "o140"
        },
        "ussr_Object_212": {
            "name": null,
            "short": "212"
        },
        "ussr_Object_261": {
            "name": null,
            "short": "261"
        },
        "ussr_Object_704": {
            "name": null,
            "short": "704"
        },
        "ussr_Object_907": {
            "name": null,
            "short": "907"
        },
        "ussr_ST_I": {
            "name": null,
            "short": "ST1"
        },
        "ussr_SU100M1": {
            "name": null,
            "short": "100M1"
        },
        "ussr_SU100Y": {
            "name": null,
            "short": "100Y"
        },
        "ussr_SU122A": {
            "name": null,
            "short": "122A"
        },
        "ussr_SU122_44": {
            "name": null,
            "short": "12244"
        },
        "ussr_SU122_54": {
            "name": null,
            "short": "12254"
        },
        "ussr_SU14_1": {
            "name": null,
            "short": "Su141"
        },
        "ussr_SU_100": {
            "name": null,
            "short": "Su100"
        },
        "ussr_SU_101": {
            "name": null,
            "short": "Su101"
        },
        "ussr_SU_14": {
            "name": null,
            "short": "Su142"
        },
        "ussr_SU_152": {
            "name": null,
            "short": "152"
        },
        "ussr_SU_18": {
            "name": null,
            "short": "Su18"
        },
        "ussr_SU_26": {
            "name": null,
            "short": "Su26"
        },
        "ussr_SU_5": {
            "name": null,
            "short": "Su5"
        },
        "ussr_SU_76": {
            "name": null,
            "short": "Su76"
        },
        "ussr_SU_8": {
            "name": null,
            "short": "Su8"
        },
        "ussr_SU_85": {
            "name": null,
            "short": "Su85"
        },
        "ussr_SU_85I": {
            "name": null,
            "short": "Su85i"
        },
        "ussr_S_51": {
            "name": null,
            "short": "S51"
        },
        "ussr_T150": {
            "name": null,
            "short": "T150"
        },
        "ussr_T44_122": {
            "name": null,
            "short": "T44-122"
        },
        "ussr_T44_85": {
            "name": null,
            "short": "T44-85"
        },
        "ussr_T62A": {
            "name": null,
            "short": "62A"
        },
        "ussr_T80": {
            "name": null,
            "short": "T80"
        },
        "ussr_T_127": {
            "name": null,
            "short": "T127"
        },
        "ussr_T_26": {
            "name": null,
            "short": "T26"
        },
        "ussr_T_28": {
            "name": null,
            "short": "T-28"
        },
        "ussr_T_34": {
            "name": null,
            "short": "34"
        },
        "ussr_T_34_85": {
            "name": null,
            "short": "3485"
        },
        "ussr_T_34_85_training": {
            "name": null,
            "short": "3485"
        },
        "ussr_T_43": {
            "name": null,
            "short": "43"
        },
        "ussr_T_44": {
            "name": null,
            "short": "44"
        },
        "ussr_T_46": {
            "name": null,
            "short": "T46"
        },
        "ussr_T_50": {
            "name": null,
            "short": "T50"
        },
        "ussr_T_50_2": {
            "name": null,
            "short": "502"
        },
        "ussr_T_54": {
            "name": null,
            "short": "54"
        },
        "ussr_T_60": {
            "name": null,
            "short": "T60"
        },
        "ussr_T_70": {
            "name": null,
            "short": "T70"
        },
        "ussr_Tetrarch_LL": {
            "name": null,
            "short": "Tetr"
        },
        "ussr_Valentine_LL": {
            "name": null,
            "short": "ValLL"
        }
    },
    "language": "auto",
    "region": "auto"
}