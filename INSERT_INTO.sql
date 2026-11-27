TRUNCATE TABLE public."Teachers", public."Departments" RESTART IDENTITY CASCADE;

INSERT INTO public."Departments" ("Faculty_id", "Department_name", "Is_graduating", "Website", "Phone")
VALUES
    (1, 'Кафедра информатики и программирования', true, 'https://university.ru', '+7 (495) 111-22-33'),
    (1, 'Кафедра высшей математики', false, 'https://university.ru', '+7 (495) 111-22-44'),
    (2, 'Кафедра прикладной экономики', true, NULL, NULL);

INSERT INTO public."Teachers" ("Last_name", "First_name", "Middle_name", "Education", "Experience", "Department_id", "Contact_phone")
VALUES
    ('Иванов', 'Алексей', 'Сергеевич', 'Высшее, МГУ, к.т.н.', 12, 1, '+7 (999) 123-45-67'),
    ('Петрова', 'Елена', 'Викторовна', 'Высшее, МФТИ, д.ф.-м.н.', 20, 2, '+7 (999) 234-56-78'),
    ('Смирнов', 'Дмитрий', NULL, 'Высшее, ВШЭ', 5, 3, '+7 (999) 345-67-89');

SELECT * FROM public."Departments";
