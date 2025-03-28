# Физическая модель

---

Таблица `artists`:

| Назание     | Описание         | Тип данных     | Ограничение   |
|-------------|------------------|----------------|---------------|
| `artist_id` | Идентификатор    | `INTEGER`      | `PRIMARY KEY` |
| `name`      | НИмя             | `VARCHAR(255)` | `NOT NULL`    |
| `genre`     | Жанр             | `VARCHAR(255)` | `FOREIGN KEY` |

Таблица `genres`:

| Назание   | Описание             | Тип данных     | Ограничение   |
|-----------|----------------------|----------------|---------------|
| `name`    | Название жанра       | `VARCHAR(255)` | `PRIMARY KEY` |
| `country` | Страна происхождения | `VARCHAR(255)` | `NOT NULL`    |
| `date`    | Дата создания        | `DATE`         | `NOT NULL`    |

Таблица `artworks`:

| Назание        | Описание       | Тип данных     | Ограничение   |
|----------------|----------------|----------------|---------------|
| `artwork_id`   | Идентификатор  | `INTEGER`      | `PRIMARY KEY` |
| `name`         | Название       | `VARCHAR(255)` | `NOT NULL`    |
| `year`         | Год выхода     | `INTEGER`      | `NOT NULL`    |
| `artist_id`    | Автор          | `INTEGER`      | `FOREIGN KEY` |
| `genre`        | Жанр           | `VARCHAR(255)` | `FOREIGN KEY` |
| `material_id`  | Материал       | `INTEGER`      | `FOREIGN KEY` |
| `museum_id`    | Музей          | `INTEGER`      | `FOREIGN KEY` |



Таблица `materials`:

| Назание       | Описание       | Тип данных     | Ограничение   |
|---------------|----------------|----------------|---------------|
| `material_id` | Идентификатор  | `INTEGER`      | `PRIMARY KEY` |
| `name`        | Название       | `VARCHAR(255)` | `NOT NULL`    |

Таблица `museums`:

| Назание     | Описание              | Тип данных     | Ограничение   |
|-------------|-----------------------|----------------|---------------|
| `museum_id` | Идентификатор         | `INTEGER`      | `PRIMARY KEY` |
| `name`      | Название музея        | `VARCHAR(255)` | `NOT NULL`    |
| `city`      | Город                 | `VARCHAR(255)` | `NOT NULL`    |

Таблица `exhibitions`:

| Назание         | Описание               | Тип данных      | Ограничение   |
|-----------------|------------------------|-----------------|---------------|
| `exhibition_id` | Идентификатор          | `INTEGER`       | `PRIMARY KEY` |
| `name`          | Название               | `VARCHAR(255)`  | `FOREIGN KEY` |
| `start_date`    | Начало выставки        | `DATE`          | `NOT NULL`    |
| `end_date`      | Конец выставки         | `DATE`          | `NOT NULL`    |
| `museum_id`     | Музей                  | `INTEGER`       | `FOREIGN KEY` |


Таблица `artworks_versions`:

| Назание        | Описание                     | Тип данных     | Ограничение   |
|----------------|------------------------------|----------------|---------------|
| `version_id`   | Идентификатор                | `INTEGER`      | `PRIMARY KEY` |
| `name`         | Название                     | `VARCHAR(255)` | `NOT NULL`    |
| `year`         | Год выхода                   | `INTEGER`      | `NOT NULL`    |
| `artist_id`    | Автор                        | `INTEGER`      | `FOREIGN KEY` |
| `genre`        | Жанр                         | `VARCHAR(255)` | `FOREIGN KEY` |
| `material_id`  | Материал                     | `INTEGER`      | `FOREIGN KEY` |
| `museum_status`| Статус(выставлен ли в музее) | `BOOLEAN `     | `NOT NULL`    |
