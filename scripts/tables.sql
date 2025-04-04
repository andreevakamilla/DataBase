INSERT INTO Genres (name, country, date) VALUES
    ('Сюги', 'Япония', '1700-01-01'),
    ('Синга', 'Япония', '1600-01-01'),
    ('Укиё-э', 'Япония', '1700-01-01'),
    ('Нихонга', 'Япония', '1700-01-01'),
    ('Суми-э', 'Япония', '1400-01-01'),
    ('Канга', 'Япония', '1100-01-01'),
    ('Сёсёка', 'Япония', '1100-01-01'),
    ('Токугава', 'Япония', '1600-01-01'),
    ('Шакэс', 'Япония', '800-01-01'),
    ('Ёкайга', 'Япония', '1800-01-01'),
    ('Современное искусство', 'Япония', '2000-01-01');


insert into Artists (artist_id, name, genre) values
    (1, 'Кацусика Хокусай', 'Укиё-э'),
    (2, 'Китагава Утамаро', 'Укиё-э'),
    (3, 'Кано Эйтоку', 'Синга'),
    (4, 'Хасэгава Тохаку', 'Укиё-э'),
    (5, 'Такаси Мураками', 'Современное искусство'),
    (6, 'Ясумаса Моримура', 'Современное искусство'),
    (7, 'Ёситомо Нара', 'Современное искусство'),
    (8, 'Яёи Кусама', 'Современное искусство'),
    (9, 'Иваса Матабэй', 'Укиё-э'),
    (10, 'Икэнага Ясунари', 'Укиё-э'),
    (11, 'Тихо Аосима', 'Укиё-э'),
    (12, 'Утагава Хиросигэ', 'Укиё-э'),
    (13, 'Огата Корин', 'Укиё-э'),
    (14, 'Эрина Мацуи', 'Современное искусство'),
    (15, 'Хидеёси', 'Синга'),
    (16, 'Сакаи Ходжю', 'Сюги'),
    (17, 'Таканобу', 'Сюги'),
    (18, 'Кано Хогай', 'Сюги'),
    (19, 'Теруходзи Сеи', 'Сюги'),
    (20, 'Огата Корин', 'Укиё-э'),
    (21, 'Мацуока Осэки', 'Укиё-э'),
    (22, 'Кавабата Кэнсэй', 'Сюги'),
    (23, 'Масаока Шики', 'Укиё-э'),
    (24, 'Такиёси', 'Сюги'),
    (25, 'Тосиката', 'Сюги'),
    (26, 'Хонкаку', 'Укиё-э'),
    (27, 'Ёсииса', 'Синга'),
    (28, 'Кано Эйтё', 'Укиё-э'),
    (29, 'Харуто', 'Сюги'),
    (30, 'Масаока Хоку', 'Укиё-э'),
    (31, 'Хирака Вэсэн', 'Сюги'),
    (32, 'Мураками Сигэнари', 'Укиё-э'),
    (33, 'Тэнъю', 'Укиё-э'),
    (34, 'Мацуда Кикуйэй', 'Синга'),
    (35, 'Исида Геккэй', 'Синга');


insert into Artworks (artwork_id, name, year, artist_id, genre, material_id, museum_id) values
    (1, 'Мост Тэммабаси в провинции Сэтцу', 1834, 1, 'Укиё-э', 1, 2),
    (2, 'Большая волна в Канагаве', 1830, 1, 'Укиё-э', 1, 3),
    (3, 'Сакура и снегирь', 1834, 1, 'Укиё-э', 2, 3),
    (4, 'Три знаменитые красавицы', 1793, 2, 'Укиё-э', 2, 1),
    (5, 'Цветы в Эдо', 1800, 2, 'Укиё-э', 1, 5),
    (6, 'Кипарис', 1590, 3, 'Укиё-э', 1, 10),
    (7, 'Природа и наука', 1700, 4, 'Укиё-э', 6, 7),
    (8, 'Волшебный букет', 1700, 5, 'Синга', 7, 8),
    (9, 'Вечерние гонки на Ушироноэ', 1700, 6, 'Укиё-э', 2, 7),
    (10, 'Портрет дамы', 1700, 7, 'Синга', 1, 9),
    (11, 'Завтрак', 1700, 8, 'Укиё-э', 1, 10),
    (12, 'Цветущий вишневый сад', 1700, 9, 'Синга', 2, 10),
    (13, 'Море в Камакура', 1700, 10, 'Укиё-э', 3, 1),
    (14, 'Дети, играющие в воде', 1700, 11, 'Синга', 4, 5),
    (15, 'Лес', 1700, 12, 'Укиё-э', 5, 5),
    (16, 'Гроза', 1700, 13, 'Синга', 6, 4),
    (17, 'Лодка на озере', 1700, 14, 'Укиё-э', 7, 8),
    (18, 'Поле подсолнухов', 1700, 15, 'Синга', 8, 2),
    (19, 'Поцелуй', 1700, 16, 'Укиё-э', 9, 2),
    (20, 'Мост', 1700, 17, 'Синга', 10, 5),
    (21, 'Дракон', 1700, 18, 'Укиё-э', 1, 4),
    (22, 'Священный олень', 1700, 19, 'Синга', 2, 6),
    (23, 'Железная дорога', 1700, 20, 'Укиё-э', 3, 9),
    (24, 'Поход', 1700, 21, 'Синга', 4, 1),
    (25, 'Лошадь', 1700, 22, 'Укиё-э', 5, 3),
    (26, 'Пейзаж', 1700, 23, 'Синга', 6, 3),
    (27, 'Портрет мужчины', 1700, 24, 'Укиё-э', 7, 4),
    (28, 'Вечерняя прогулка', 1700, 25, 'Синга', 8, 7),
    (29, 'Буря', 1700, 26, 'Укиё-э', 9, 9),
    (30, 'Птица', 1700, 27, 'Синга', 10, 10),
    (31, 'Цветок', 1700, 28, 'Укиё-э', 1, 5),
    (32, 'Пруд', 1700, 29, 'Синга', 2, 4),
    (33, 'Река', 1700, 30, 'Укиё-э', 3, 7);


insert into Materials (material_id, name) values
    (1, 'Бумага'),
    (2, 'Шёлк'),
    (3, 'Дерево'),
    (4, 'Бронза'),
    (5, 'Керамика'),
    (6, 'Тушь'),
    (7, 'Акварель'),
    (8, 'Масло'),
    (9, 'Скорлупа улитки'),
    (10, 'Бамбук'),
    (11, 'Сукно'),
    (12, 'Верхняя палочка'),
    (13, 'Песок'),
    (14, 'Золото'),
    (15, 'Серебро');

insert into Exhibitions (exhibition_id, name, start_date, end_date, museum_id) values
    (1, 'Экспрессия современности: Япония и искусство 1950-1980', '1950-01-01', '1980-12-31', 1),
    (2, 'Сакура: Искусство и культура в период художников Ёсино-Бунсю', '1800-01-01', '1850-12-31', 2),
    (3, 'Современное искусство Японии: Между традицией и инновацией', '2000-01-01', '2022-12-31', 3),
    (4, 'Кимоно: От истории до современности', '1700-01-01', '2024-12-31', 4),
    (5, 'Самураи и искусство', '1600-01-01', '1620-12-31', 5),
    (6, 'Традиционное японское искусство: Руководство по культуре и наследию', '1900-01-01', '1920-12-31', 6),
    (7, 'Япония на картине: От мультипликации до аниме', '1950-01-01', '2020-12-31', 7),
    (8, 'Искусство японского чая: Традиция и современность', '1500-01-01', '2022-12-31', 8),
    (9, 'Кабуки: Живопись и драма', '1700-01-01', '1750-12-31', 9),
    (10, 'Гейши в искусстве и культуре', '1800-01-01', '1850-12-31', 10),
    (11, 'Искусство Хейан: Прекрасное наследие', '794-01-01', '1185-12-31', 1),
    (12, 'Нэро: Японские сезоны', '1185-01-01', '1333-12-31', 2),
    (13, 'Музыка и художественные традиции Нара', '710-01-01', '794-12-31', 3),
    (14, 'Культура Японии: Эпоха Камакура', '1185-01-01', '1333-12-31', 4),
    (15, 'Средневековый Японский мир', '1333-01-01', '1600-12-31', 5),
    (16, 'Эпоха Эдо: Время мира и творчества', '1600-01-01', '1868-12-31', 6),
    (17, 'Модернизация и искусство Мэйдзи', '1868-01-01', '1912-12-31', 7),
    (18, 'Переход в ХХ век: Япония в глобальном контексте', '1912-01-01', '1945-12-31', 8),
    (19, 'Япония после второй мировой войны', '1945-01-01', '1989-12-31', 9),
    (20, 'Современное искусство Японии: Инновации и эксперименты', '1989-01-01', '2024-12-31', 10),
    (21, 'Мастера саке: Вкус Японии', '1600-01-01', '2024-12-31', 8),
    (22, 'Вечерний традиционный чай: Ритуал и искусство', '1500-01-01', '2024-12-31', 4),
    (23, 'Кимоно: Элегантность и красота', '1700-01-01', '2024-12-31', 2),
    (24, 'Самураи: Легенды прошлого', '1600-01-01', '2024-12-31', 5),
    (25, 'Культурное наследие Окинавы: Мир и традиции', '1600-01-01', '2024-12-31', 6),
    (26, 'Японские сады: Гармония и спокойствие', '1700-01-01', '2024-12-31', 2),
    (27, 'Искусство чайной церемонии: Традиция и духовность', '1500-01-01', '2024-12-31', 8),
    (28, 'Гейши: Красота и талант', '1800-01-01', '2024-12-31', 10),
    (29, 'Самурайские катаны: Искусство и военная традиция', '1600-01-01', '2024-12-31', 5),
    (30, 'Музыкальное наследие Японии: Классика и современность', '1600-01-01', '2024-12-31', 3);


insert into Museums (museum_id, name, city) values
    (1, 'Музей современного искусства Токио', 'Токио'),
    (2, 'Музей искусств Ёсино-Бунсю', 'Киото'),
    (3, 'Национальный музей искусства Японии', 'Токио'),
    (4, 'Музей современного искусства Осака', 'Осака'),
    (5, 'Национальный музей традиционной японской культуры', 'Нагоя'),
    (6, 'Музей чая Саппоро', 'Саппоро'),
    (7, 'Музей кимоно Фукуока', 'Фукуока'),
    (8, 'Национальный музей традиционной японской культуры', 'Нагоя'),
    (9, 'Музей истории архитектуры Нара', 'Нара'),
    (10, 'Музей искусства каллиграфии Каназава', 'Каназава');

insert into Artworks_Version (version_id, name, year, artist_id, genre, material_id, museum_status) values
    (1, 'Мост Тэммабаси в провинции Сэтцу', 1834, 1, 'Укиё-э', 1, TRUE),
    (2, 'Большая волна в Канагаве', 1830, 1, 'Укиё-э', 1, TRUE),
    (3, 'Сакура и снегирь', 1834, 1, 'Укиё-э', 2, TRUE),
    (4, 'Три знаменитые красавицы', 1793, 2, 'Укиё-э', 2, TRUE),
    (5, 'Цветы в Эдо', 1800, 2, 'Укиё-э', 1, TRUE),
    (6, 'Кипарис', 1590, 3, 'Укиё-э', 1, TRUE),
    (7, 'Природа и наука', 1700, 4, 'Укиё-э', 6, TRUE),
    (8, 'Волшебный букет', 1700, 5, 'Синга', 7, TRUE),
    (9, 'Вечерние гонки на Ушироноэ', 1700, 6, 'Укиё-э', 2, TRUE),
    (10, 'Портрет дамы', 1700, 7, 'Синга', 1, TRUE),
    (11, 'Завтрак', 1700, 8, 'Укиё-э', 1, TRUE),
    (12, 'Цветущий вишневый сад', 1700, 9, 'Синга', 2, TRUE),
    (13, 'Море в Камакура', 1700, 10, 'Укиё-э', 3, TRUE),
    (14, 'Дети, играющие в воде', 1700, 11, 'Синга', 4, TRUE),
    (15, 'Лес', 1700, 12, 'Укиё-э', 5, TRUE),
    (16, 'Гроза', 1700, 13, 'Синга', 6, TRUE),
    (17, 'Лодка на озере', 1700, 14, 'Укиё-э', 7, TRUE),
    (18, 'Поле подсолнухов', 1700, 15, 'Синга', 8, TRUE),
    (19, 'Поцелуй', 1700, 16, 'Укиё-э', 9, TRUE),
    (20, 'Мост', 1700, 17, 'Синга', 10, TRUE),
    (21, 'Дракон', 1700, 18, 'Укиё-э', 1, TRUE),
    (22, 'Священный олень', 1700, 19, 'Синга', 2, TRUE),
    (23, 'Железная дорога', 1700, 20, 'Укиё-э', 3, TRUE),
    (24, 'Поход', 1700, 21, 'Синга', 4, TRUE),
    (25, 'Лошадь', 1700, 22, 'Укиё-э', 5, TRUE),
    (26, 'Пейзаж', 1700, 23, 'Синга', 6, TRUE),
    (27, 'Портрет мужчины', 1700, 24, 'Укиё-э', 7, TRUE),
    (28, 'Вечерняя прогулка', 1700, 25, 'Синга', 8, TRUE),
    (29, 'Буря', 1700, 26, 'Укиё-э', 9, TRUE),
    (30, 'Птица', 1700, 27, 'Синга', 10, TRUE),
    (31, 'Цветок', 1700, 28, 'Укиё-э', 1, TRUE),
    (32, 'Пруд', 1700, 29, 'Синга', 2, TRUE),
    (33, 'Река', 1700, 30, 'Укиё-э', 3, TRUE),
    (34, 'Колокольчик в саду', 1860, 3, 'Суги', 11, FALSE),
    (35, 'Поющая соловей', 1750, 18, 'Суги', 12, FALSE),
    (36, 'Весенний порыв', 1820, 21, 'Суги', 13, FALSE),
    (37, 'Закат на полях', 1785, 24, 'Суги', 14, FALSE),
    (38, 'Осенняя листва', 1799, 27, 'Суги', 15, FALSE),
    (39, 'Поцелуй под месяцем', 1812, 30, 'Суги', 16, FALSE),
    (40, 'Пляжные игры', 1865, 33, 'Суги', 17, FALSE),
    (41, 'Летний вечер', 1840, 36, 'Суги', 18, FALSE),
    (42, 'Зимний пейзаж', 1855, 39, 'Суги', 19, FALSE),
    (43, 'Паломничество', 1872, 42, 'Суги', 20, FALSE),
    (44, 'Цветы на алтаре', 1760, 45, 'Суги', 21, FALSE),
    (45, 'Тропический сад', 1838, 48, 'Суги', 22, FALSE),
    (46, 'Синий океан', 1803, 51, 'Суги', 23, FALSE),
    (47, 'Рассвет', 1869, 54, 'Суги', 24, FALSE),
    (48, 'Поцелуй вдоль реки', 1810, 57, 'Суги', 25, FALSE),
    (49, 'Летний звон', 1875, 60, 'Суги', 26, FALSE),
    (50, 'Осенняя радуга', 1782, 63, 'Суги', 27, FALSE),
    (51, 'Весенний ручей', 1825, 66, 'Суги', 28, FALSE);
