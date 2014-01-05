* Название мода: Мод Сессионной статистики Exel + сообщения после боя.  *
* Версия мода:   0.8.9.1                                                *
* Автор:  jeroohn  (основано на моде STLite, и некоторых идеях Delux).  *
*************************************************************************

Описание: Мод добавляет в список сервисных сообщений различную статистику за сессию. А так же позволяет изменить внешний вид сообщений после боя.
          Имеется файл настроек для простейшей настройки внешнего вида мода. Имеется возможность хранить статистику от одного до нескольких дней.
     из особенностей:
        * учет командных боев в статистике
        * возможность организации показа статистики по видам боев
        * возможность организовать показ статистики в несколько окон
        * подсчет чистого дохода за бой в послебоевых сообщениях


Установка:
    - Устанавливать вместо статистики от делюкса в "res_mods/x.x.x/scripts/client/mods/" (из папки "mods" удалить файлы sessionstatistic.pyc, sessionstatistic.cfg , SessionStatCache.xml)
    - Копируем содержимое архива в "res_mods/x.x.x/scripts/client/mods/", (где x.x.x - текущая версия игры)

Настройка:
    Файлы exel.cfg , colors.json , sysMsg.json  отвечают за настройку мода. Редактировать их рекомендуется текстовым редактором Notepad++.
          exel.cfg      - файл настройки окна статистики за сессию
          colors.json   - файл настроки цветовых макросов
          sysMsg.json   - файл настройки сообщений после боя

    Стандартный конфиг статистики:
    {
        "saveStats": true,          // Сохранять ли статистику после перезапуска клиента? true - да, false - нет.
        "SaveStatDayCount": 1,      // сколько дней хранить. При "SaveStatDayCount": 365, будет хранить один год =)
        "UTCoffset": 0,             // Во сколько (относительно мирового UTC времени) сбрасывать статистику (т.е. при SaveStatDayCount 1, UTCoffset 0, статистика будет сброшена на следующий день в 4.00 МСК)
        "forcedReset": false,       // Сбрасывать ли статистику принудительно при запущенном клиенте если наступило время сброса? true - да, false - нет. 

        "hideMessageType": [  ],    // Скрывать сообщения выбранного типа. Список возможных типов ниже.
        "hideMessageList": [ "Вы не меняли пароль", "Боекомплект", "Ремонт", "Снаряжение" ],      // Список ключевых слов для поиска и блокирования системных сообщений.
        "showPopUpMessage": true,   // Показывать ли всплывающие сообщения? true - да, false - нет.
        "overrideSysMsg": true,     // Перезаписывать ли системные сообщения. Если стоит true то шаблоны сообщений берутся из sysMsg.json (сообщения про победы, поражения, автопополнение БК и.т.д)  true - да, false - нет.
        
	"HTMLReplacements": {       // Содержит шаблоны для подстановки в MessageLines т.е. Если в какой либо строке MessageLines встретится макрос {{BattleResultIcon-1.png}} то он будет заменен на <img src='img://gui/maps/icons/library/BattleResultIcon-1.png' width='16' height='16' align='baseline' vspace='-4'>
		"BattleResultIcon-1.png": "<img src='img://gui/maps/icons/library/BattleResultIcon-1.png' width='16' height='16' align='baseline' vspace='-4'>",
		"XpIcon-1.png": "<img src='img://gui/maps/icons/library/XpIcon-1.png' width='16' height='16' align='baseline' vspace='-4'>",
		"avgExp40x32.png": "<img src='img://gui/maps/icons/library/dossier/avgExp40x32.png' width='20' height='16' align='baseline' vspace='-4'>",
	},

	"MessagesLines": {	    // Секция в которой хранится HTML код строки сообщения статистики, строк может быть определено сколько угодно
		"TotalBattles": "<font color='#DDDDDD'>Побед / Боев:</font><tab><tab><b>{{winsCountTotal}} / {{battlesCountTotal}}</b><tab>( <font color='{{c:winsRateTotal}}'><b>{{winsRateTotal}}</b></font> )\n",
		"......
		"......
	},

    "StatisticMessages": {
        "SummaryMessage": {		// Окно общей статистики
            "isDynamic": false,		// Статическое
            "type": "typeColor",	// Цвет фона окна статистики. Может быть: grey, lightGrey, red, green, yellow, и typeColor (динамический по %побед, задается в colors.json)
            "icon": "../maps/icons/library/PersonalAchievementsIcon-1.png",
	// Общая статистика (главное окно).  Формируется из макросов назначенных в "MessagesLines"
            "message": "{{Performance}}{{TotalStatsHeader}}{{TotalBattles}}{{Prc/Shots}}{{Exp}}{{multiExp}}{{DmgDlt}}{{Frags}}{{Spotted}}{{delimiter}}{{finances}}{{delimiter}}{{CreditsBattle}}{{TotalCost}}{{pureBattle}}{{AccCredits}}",
            "showMore": {
                "command": "SessionStatistic",		// Указывает что это наше сообщение, а не ВГшное =) должно быть всегда так.
                "enabled": "battlesCountTotal",		// Показывать или нет кнопку может быть true false или любой макрос статистики например battlesCountTotal если battlesCountTotal больше нуля кнопка показвается если равно нулю то нет.
                "param": "DetailMessage"		// Указывает какое сообщение показвать при щелчке по кнопке в данном случае будет показано сообщение определенное в разделе DetailMessage
            }
        },
        "DetailMessage": {		// Окно расширенной статистики (по типам боев)
            "isDynamic": true,		// Динамическое
            "type": "green",		// Цвет фона окна статистики. Может быть: grey, lightGrey, red, green, yellow
            "icon": "../maps/icons/library/PersonalAchievementsIcon-1.png",
	// Статистика для каждого вида боев. Формируется из макросов назначенных в "MessagesLines"
            "DynamicRandom": "{{Header}}{{RandomStatsHeader}}{{FragsRandom}}{{DamageRandom}}{{SpottedRandom}}{{VehicleTierRandom}}{{delimiter}}",
            "DynamicCompany": "{{CompanyStatsHeader}}{{FragsCompany}}{{DamageCompany}}{{SpottedCompany}}{{VehicleTierCompany}}{{delimiter}}",
            "DynamicClan": "{{ClanStatsHeader}}{{ClanBattles}}{{FragsClan}}{{VehicleTierClan}}{{delimiter}}",
            "DynamicTeam7x7": "{{Team7x7StatsHeader}}{{Team7x7Battles}}{{DamageTeam7x7}}{{FragsTeam7x7}}{{VehicleTierTeam7x7}}{{delimiter}}",
            "showMore": {
                "command": "SessionStatistic",		// Указывает что это наше сообщение, а не ВГшное =) должно быть всегда так.
                "enabled": true,			// Показывать или нет кнопку может быть true false или любой макрос статистики например battlesCountTotal если battlesCountTotal больше нуля кнопка показвается если равно нулю то нет.
                "param": "SummaryMessage"		// Указывает какое сообщение показвать при щелчке по кнопке в данном случае будет показано сообщение определенное в разделе SummaryMessage
            }
        }
    }
			// если сыгран лишь один случайный бой -  будет показаны только секция "DynamicRandom"
			// если сыгран случайный и клановый бой то будут показаны секции "DynamicRandom" и "DynamicClan" и.т.д


    Формат сообщения (тег "format"):
        Формат - это обычная HTML-строка с возможностью вставки т.н макросов. Каждый макрос имеет такой вид: {{название макроса}}.
        Вместо этих макросов в конечном итоге подставится какое-либо значение статистики.
        Макросы значений статистики:

        Макросы цвета:
            При наличии в файле "colors.json" секции с именем макроса значений (winsCount, winsRate, credits и т.д.)
            могут использоваться макросы цвета формата {{c:winsCount}}, {{c:winsRate}}, {{c:credits}} и т.д.
            Количество блоков типа { "value": 50,  "color": "#CC0000" } не ограничено, при этом "color" - это цвет для
            значение параметра < значения "value".
            Например, в стандартном конфиге выше, чтобы установить динамический цвет для "winsRate" мы прописываем в секции
            "format" следующий HTML-код: <font color='{{c:winsRate}}'>{{winsRate}}</font>
        
-----------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------

	Конфиг сообщений после боя:

{
    	"RepairSysMessage": {			// Сообщение о ремонте
            "type": "yellow",			// Фон
            "icon": "CreditsIcon"		// Иконка
        },
	"PurchaseForCreditsSysMessage": {	// Покупка за серебро
            "type": "yellow",			// Фон
            "icon": "CreditsIcon"		// Иконка
        },
	"PurchaseForGoldSysMessage": {		// покупка за золото
            "type": "yellow",			// Фон
            "icon": "GoldIcon"			// Иконка
        },
	"battleDefeatResult": {			// Сообщение о поражении
            "type": "red",			// Фон
		"message":"{{result}}{{arenaName}}{{vehicle}}{{xp}}{{xpPenalty}}{{credits}}{{pure}}{{creditsContributionIn}}{{creditsContributionOut}}{{achieves}}", // Выводимое сообщение формируется из макросов назначенных в "brf"
            "icon": "BattleResultIcon"		// Иконка
        },
	"battleDrawGameResult": {
            "type": "yellow",
		"message":"{{result}}{{arenaName}}{{vehicle}}{{xp}}{{xpPenalty}}{{credits}}{{pure}}{{creditsContributionIn}}{{creditsContributionOut}}{{achieves}}",  // Выводимое сообщение формируется из макросов назначенных в "brf"
            "icon": "BattleResultIcon"		// Иконка
        },
	"battleVictoryResult": {
            "type": "green",
		"message":"{{result}}{{arenaName}}{{vehicle}}{{xp}}{{xpPenalty}}{{credits}}{{pure}}{{creditsContributionIn}}{{creditsContributionOut}}{{achieves}}",  // Выводимое сообщение формируется из макросов назначенных в "brf"
            "icon": "BattleResultIcon"		// Иконка
        },
	"messages":{
		"amf":{
			"autoRepairError":"autoRepairError",
			"autoLoadError":"autoLoadError",
			"autoEquipError":"autoEquipError",
			"autoRepairSuccess":"<font color='#00FF00'>Ремонт {{vehicle}} потрачено {{credits}}</font>",
			"autoLoadSuccess":"<font color='#00FF00'>БК {{vehicle}} потрачено {{credits}}</font>",
			"autoEquipSuccess":"<font color='#00FF00'>Снаряжение {{vehicle}} потрачено {{credits}}</font>",
			"autoRepairSkipped":"autoRepairSkipped",
			"autoLoadSkipped":"autoLoadSkipped",
			"autoEquipSkipped":"autoEquipSkipped",
			"autoRepairDisabledOption":"autoRepairDisabledOption",
			"autoLoadDisabledOption":"autoLoadDisabledOption",
			"autoEquipDisabledOption":"autoEquipDisabledOption",
			"autoRepairErrorNoWallet":"autoLoadErrorNoWallet",
			"autoEquipErrorNoWallet":"autoEquipErrorNoWallet"
			"RepairCost":"Ремонт: {{RepairCost}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n",
			"AmmoCost":"Боекомплект: {{AmmoCost}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n",
			"EquipCost":"Снаряжение: {{EquipCost}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n"},
			},
		"brf":{
			"isWin":"<font color='#60FF00' size='14'>Победа!</font>\n",
			"isDraw":"<font color='#FE7903' size='14'>Ничья</font>\n",
			"isDefeat":"<font color='#FE0E00' size='14'>Поражение</font>\n",
			"xp":"Опыт:{{dailyXPFactor}}<tab>{{xp}} <img src='img://gui/maps/icons/library/XpIcon-1.png' width='15' height='15' align='baseline' vspace='-4'>\n",
			"vehicle":"Танк:<tab><font color='#FFBC33' size='13'><b>{{vehicle}}</b></font>\n",
			"credits":"Кредитов:<tab>{{credits}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n",
			"purecredits":"        <font color='#FFBC33'><b>Итого:</b></font><tab><font color='{{c:purecredits}}'><b>{{purecredits}}</b></font> <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n",
			"tmenXP":"Опыт экипажу:<tab>{{tmenXP}} <img src='img://gui/maps/icons/library/XpIcon-1.png' width='15' height='15' align='baseline' vspace='-4'>\n",
			"arenaName":"Бой: {{arenaName}}<tab>{{createdAt}}\n",
			"achieves":"Достижения: {{achieves}}",
			"xpPenalty":"Штраф за урон союзнику {{xpPenalty}} <img src='img://gui/maps/icons/library/XpIcon-1.png' width='16' height='16' align='baseline' vspace='-4'>",
			"dailyXPFactor":"(<font color='#60FF00'>x{{dailyXPFactor}}</font>)",
			"creditsContributionIn":"Компенсация союзников {{creditsContributionIn}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n",
			"creditsContributionOut":"Штраф союзникам {{creditsContributionOut}} <img src='img://gui/maps/icons/library/CreditsIconBig-1.png' width='8' height='8' align='baseline' vspace='-2'>\n"
			}
	}
}



Список доступных макросов (для каждого вида боев: Total-общий, Random-рандом, Company-ГК, Clan- роты, Team7x7-командные)

-------количество боев--------
battlesCountTotal
battlesCountRandom
battlesCountCompany
battlesCountClan
battlesCountTeam7x7

------кол-во побед--------------

winsCountTotal
winsCountRandom
winsCountCompany
winsCountClan
winsCountTeam7x7

-------процент побед----------

winsRateTotal
winsRateRandom
winsRateCompany
winsRateClan
winsRateTeam7x7

-----кол-во выстрелов--------

shotsCountTotal
shotsCountRandom
shotsCountCompany
shotsCountClan
shotsCountTeam7x7

------кол во попаданий-------

hitsCountTotal
hitsCountRandom
hitsCountCompany
hitsCountClan
hitsCountTeam7x7

-------процент попаданий---

hitsRateTotal
hitsRateRandom
hitsRateCompany
hitsRateClan
hitsRateTeam7x7

-------очки защиты базы------

droppedCapturePointsTotal
droppedCapturePointsRandom
droppedCapturePointsCompany
droppedCapturePointsClan
droppedCapturePointsTeam7x7

-----очки защиты средн-----

avgDroppedCaptureTotal
avgDroppedCaptureRandom
avgDroppedCaptureCompany
avgDroppedCaptureClan
avgDroppedCaptureTeam7x7

------очки захвата базы------

capturePointsTotal
capturePointsRandom
capturePointsCompany
capturePointsClan
capturePointsTeam7x7

-----очков захвата средн-----

avgCapturePointsTotal
avgCapturePointsRandom
avgCapturePointsCompany
avgCapturePointsClan
avgCapturePointsTeam7x7 

------уровень техники(сред)-

avgVehicleTierTotal
avgVehicleTierRandom
avgVehicleTierCompany
avgVehicleTierClan
avgVehicleTierTeam7x7

------урон получен------------

damageReceivedTotal
damageReceivedRandom
damageReceivedCompany
damageReceivedClan
damageReceivedTeam7x7

------урон получ средн-------

avgDmgReceivedTotal
avgDmgReceivedRandom
avgDmgReceivedCompany
avgDmgReceivedClan
avgDmgReceivedTeam7x7

-----урона сделал--------------

damageDealtTotal
damageDealtRandom
damageDealtCompany
damageDealtClan
damageDealtTeam7x7

-----урона сделал средн----

avgDmgDealtTotal
avgDmgDealtRandom
avgDmgDealtCompany
avgDmgDealtClan
avgDmgDealtTeam7x7

-----фраги--------------------

fragsCountTotal
fragsCountRandom
fragsCountCompany
fragsCountClan
fragsCountTeam7x7

-----фраги средн-----------

avgFragsCountTotal
avgFragsCountRandom
avgFragsCountCompany
avgFragsCountClan
avgFragsCountTeam7x7

-----обнаружено-------------

spottedCountTotal
spottedCountRandom
spottedCountCompany
spottedCountClan
spottedCountTeam7x7

-----обнаружено средн----

avgSpottedCountTotal
avgSpottedCountRandom
avgSpottedCountCompany
avgSpottedCountClan
avgSpottedCountTeam7x7

----------смертей-----------

deathsCountTotal
deathsCountRandom
deathsCountCompany
deathsCountClan
deathsCountTeam7x7

-----урон нанесенный с вашей помощью гусление+засвет---------
DamageAssistedTotal
DamageAssistedRandom
DamageAssistedCompany
DamageAssistedClan
DamageAssistedTeam7x7

----то же средн.--------
avgDamageAssistedTotal
avgDamageAssistedRandom
avgDamageAssistedCompany
avgDamageAssistedClan
avgDamageAssistedTeam7x7

-------рейтинги--------
---2х значные---
xeff
xwn6
xwn7
---4х значные---
eff
wn6
wn7

---------опыт------------
XPTotal
XPRandom
XPCompany
XPClan
XPTeam7x7

-----опыт средний----
avgXPTotal
avgXPRandom
avgXPCompany
avgXPClan
avgXPTotalTeam7x7

----свободный опыт-----
freeXP 

--------опыт Х2,3,5---------
{{multiXPTotal}}
{{multiXPCompany}}
{{multiXPClan}}
{{multiXPTeam7x7}}
{{multiXPRandom}}
 
---он же среднее за бой----
{{avgmultiXPTotal}}
{{avgmultiXPCompany}}
{{avgmultiXPClan}}
{{avgmultiXPTeam7x7}}
{{avgmultiXPRandom}}

-------опыт без учета ПА------
OriginalXPTotal
OriginalXPRandom
OriginalXPCompany
OriginalXPClan
OriginalXPTeam7x7

------ количество пробитий -----
{{PiercedCountTotal}}
{{PiercedCountCompany}}
{{PiercedCountClan}}
{{PiercedCountTeam7x7}}
{{PiercedCountRandom}}

----эффетивных попаданий = количество пробитий / количество выстрелов----
{{effhitsRateTotal}}
{{effhitsRateCompany}}
{{effhitsRateTeam7x7}}
{{effhitsRateClan}}
{{effhitsRateRandom}}

----отношение количества фрагов к количеству сментей (фраги\смерти)
fragsRatioTotal
fragsRatioCompany
fragsRatioClan
fragsRatioTeam7x7
fragsRatioRandom

----отношение нанесенный урон к полученному урону (урон нанес\урон получил)
damageRatioTotal
damageRatioCompany
damageRatioClan
damageRatioTeam7x7
damageRatioRandom

-------------финансовые-----------

gold -  золото
credits - прибыль/расход кредитов в целом по акку

-----количество кредитов заработанных в бою (без учета ремонта и.т.д)
BattleCreditsTotal
BattleCreditsCampany
BattleCreditsClan
BattleCreditsRandom
BattleCreditsTeam7x7

кредитов получено в боях средн.(без учета ремонта и.т.д)
{{avgBattleCreditsTotal}}
{{avgBattleCreditsRandom}}
{{avgBattleCreditsClan}}
{{avgBattleCreditsCompany}}
{{avgBattleCreditsTeam7x7}}
 
Стоимость обслуживания техники ремонт+БК+Снаряжение
ServiceCostTotal
ServiceCostRandom
ServiceCostClan
ServiceCostCompany
ServiceCostTeam7x7

тоже среднее за бой
avgServiceCostTotal
avgServiceCostRandom
avgServiceCostClan
avgServiceCostCompany
avgServiceCostTeam7x7

чистый боевой доход за вычетом снаряжения, БК и ремонта
pureBattleTotal
pureBattleRandom
pureBattleClan
pureBattleCompany
pureBattleTeam7x7

то же средн.
avgpureBattleTotal
avgpureBattleRandom
avgpureBattleClan
avgpureBattleCompany
avgpureBattleTeam7x7


----------- Сообщения после боя ------------
макросы в сообщениях 
{{result}} - макрос заменяется в зависимости от результата боя на текст определеный в строках "isWin", "isDraw", "isDefeat"
{{pure}} - метка. на ее место позже, когда будут доступны данные о ремонте и.т.д., будет вписано то, что определено в строке purecredits
{{vehicle}} - название техники
{{credits}} - заработано(в соообщениях о ремноте - потрачено) денег
{{xp}} - опыт за бой с учетом коэффициентов и всех вычетов
{{dailyXPFactor}} - коэффициент умножения опыта
{{pureСredits}} - доход за бой чистыми
{{tmenXP}} - опыт танкистам
{{arenaName}} - название карты
{{createdAt}} - время, когда был сыгран бой
{{achieves}} - все достижения за бой одной строкой
{{xpPenalty}} -  штраф за урон по союзникам
{{creditsContributionIn}} выплаты вам за урон нанесенный вам союзниками
{{creditsContributionOut}} - штраф с вас за нанесенный союзникам урон 
{{RepairCost}} - затраты на ремонт
{{AmmoCost}} - затраты на пополнение БК
{{EqipmentCost}} - затраты на снаряжение
{{quests}} - награда за выплнение боевых задач
