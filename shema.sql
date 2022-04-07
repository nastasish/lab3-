CREATE TABLE chair (
    id SERIAL PRIMARY KEY,
    chair_name varchar UNIQUE NOT NULL,
    dean varchar NOT NULL
);

CREATE TABLE student_group (
    id SERIAL PRIMARY KEY,
    numb varchar UNIQUE NOT NULL,
    chair varchar NOT NULL,
    FOREIGN KEY(chair) REFERENCES chair(chair_name)
);

CREATE TABLE student (
    id SERIAL PRIMARY KEY,
    full_name varchar NOT NULL,
    passport varchar(10) NOT NULL,
    group_numb varchar NOT NULL,
    FOREIGN KEY(group_numb) REFERENCES student_group(numb)
);

INSERT INTO chair (chair_name, dean) VALUES
    ('ПТТиУ', 'СиСС'),
    ('МКиИТ', 'ИТ');

INSERT INTO student_group (numb, chair) VALUES
    ('АБВ1234', 'ПТТиУ'),
    ('ГДЕ5678', 'ПТТиУ'),
    ('ВБА4321', 'МКиИТ'),
    ('ЕДГ8765', 'МКиИТ');

INSERT INTO student (full_name, passport, group_numb) VALUES
    ('Смирнов Дмитрий Александрович', '6940596854', 'АБВ1234'),
    ('Шишкин Антон Тимурович', '6940586328', 'АБВ1234'),
    ('Сергеева Елизавета Марковна', '5748596843', 'АБВ1234'),
    ('Исаев Максим Матвеевич', '1948573905', 'АБВ1234'),
    ('Герасимов Андрей Дмитриевич', '2948375860', 'АБВ1234'),

    ('Барсуков Артур Львович', '8347631970', 'ГДЕ5678'),
    ('Кузнецова Таисия Егоровна', '1244418643', 'ГДЕ5678'),
    ('Сахарова Мирослава Тимофеевна', '5733480646', 'ГДЕ5678'),
    ('Абрамов Яков Артёмович', '8229455221', 'ГДЕ5678'),
    ('Васильев Артём Русланович', '5312316228', 'ГДЕ5678'),

    ('Прохоров Тимофей Давидович', '3264502914', 'ВБА4321'),
    ('Белова Вероника Егоровна', '5366573252', 'ВБА4321'),
    ('Волков Платон Глебович', '2232988338', 'ВБА4321'),
    ('Мартынов Иван Матвеевич', '8685278885', 'ВБА4321'),
    ('Уваров Иван Львович', '4826745323', 'ВБА4321'),

    ('Яковлев Андрей Дмитриевич', '9238745512', 'ЕДГ8765'),
    ('Кожевникова Дарья Глебовна', '1429528537', 'ЕДГ8765'),
    ('Воробьева Мария Михайловна', '1918963670', 'ЕДГ8765'),
    ('Романов Иван Макарович', '9246645737', 'ЕДГ8765'),
    ('Михайлова Ксения Максимовна', '8744827523', 'ЕДГ8765');

SELECT * FROM chair;
SELECT * FROM student_group;
SELECT * FROM student;