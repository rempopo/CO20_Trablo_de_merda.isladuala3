//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
#define TAGS(X) tSF_MissionTags = X ;
//
//
// Mission tags
TAGS(["INFANTRY"])

// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"Осень 2020 года. На территории острова Дуалы бушует гражданская война. Пару дней назад боевики напали на колону IDAP, был похищен один сотрудник со служебным транспортом. Чернорусские миротворцы не в состоянии провести операцию по освобождению, поэтому к операции привлекают наш взвод."
END

TOPIC("А. Враждебные силы:")
"Боевики самопровозглашенной ""Свободной Дуалы"" - нерегулярные силы.
<br />Около 2 взводов легкой пехоты.
<br />Наличие станковых пулеметов.
<br />Наличие легкой вооруженной техники.
<br />Наличие 82мм минометов."
END

TOPIC("Б. Дружественные силы:")
"Взвод воздушно-десантной бригады BAI ВС Португалии.
<br />1'1 - 9 чел.
<br />1'2 - 9 чел.
<br />1'6 - 3 чел."
END

TOPIC("II. Задание:")
"1. Освободить заложника.
<br />2. Зачистить вражеский лагерь.
<br />3. Вернуться в лагерь ООН.
<br />"
END

TOPIC("III. Выполнение:")
"Начинаем в лагере ООН.
<br />Нам необходимо освободить сотрудника IDAP, которого боевики удерживают в своем лагере, после чего доставить его в лагерь ООН.
<br />Также необходимо зачистить лагерь, дабы ослабить влияние боевиков в данном регионе.
<br />
<br />На дорогах к лагерю боевиков расположены блокпосты.
<br />В округе замечены вражеские патрули.
<br />
<br />Большая часть рек забросана мусором или имеет большую глубины, старайтесь использовать дороги для пересечений рек."
END

TOPIC("IV. Поддержка:")
"2x M1151 HMMWV (Вооруженные M2).
<br />3x M1151 HMMWV (Невооруженные).
<br />
<br />CCP.
<br />FARP."
END

TOPIC("V. Сигналы:")
"PL NET 50 Mhz
<br />SUP NET 51 Mhz
<br />
<br />1'1 - SR CH 1
<br />1'2 - SR CH 2"
END

TOPIC("VI. Замечания:")
"Будьте аккуратны с огнем, не зацепите заложника.
<br />
<br />Большая часть рек забросана мусором или имеет большую глубину, старайтесь пересекать реку дорогами, дабы не утопить транспорт."
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"Патрули не задействованные в бою используйте в качестве подкреплений или для контратак.
<br />
<br />По застрявшим на месте игрокам, в прямой видимости или после огневого контакта, используйте миномет.
<br />"
END
};

ADD_TOPICS