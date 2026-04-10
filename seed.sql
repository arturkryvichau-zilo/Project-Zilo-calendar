-- ════════════════════════════════════════════════════════════════
-- Zilo Calendar — seed data (30 clients + vehicles)
-- Run in: Supabase Dashboard → SQL Editor → New query
-- ════════════════════════════════════════════════════════════════

-- Insert clients and immediately capture their UUIDs for vehicles
with ins_clients as (
  insert into clients (name, phone) values
    ('Jan Kowalski',          '+48 512 345 678'),
    ('Anna Wiśniewska',       '+48 501 234 567'),
    ('Piotr Wójcik',          '+48 691 456 789'),
    ('Katarzyna Kowalczyk',   '+48 723 567 890'),
    ('Marek Kamiński',        '+48 534 678 901'),
    ('Agnieszka Lewandowska', '+48 601 789 012'),
    ('Tomasz Zieliński',      '+48 512 890 123'),
    ('Barbara Szymańska',     '+48 697 901 234'),
    ('Krzysztof Woźniak',     '+48 732 012 345'),
    ('Maria Dąbrowska',       '+48 881 123 456'),
    ('Michał Kozłowski',      '+48 502 234 567'),
    ('Joanna Jankowska',      '+48 515 345 678'),
    ('Andrzej Mazur',         '+48 694 456 789'),
    ('Monika Kwiatkowska',    '+48 728 567 890'),
    ('Paweł Krawczyk',        '+48 531 678 901'),
    ('Magdalena Piotrowska',  '+48 604 789 012'),
    ('Grzegorz Grabowski',    '+48 512 890 234'),
    ('Ewa Nowakowska',        '+48 695 901 234'),
    ('Łukasz Pawłowski',      '+48 731 012 456'),
    ('Małgorzata Michalska',  '+48 880 123 567'),
    ('Marcin Adamczyk',       '+48 501 234 789'),
    ('Kamil Wierzbicki',      '+48 516 345 890'),
    ('Rafał Jabłoński',       '+48 693 456 901'),
    ('Bartosz Zając',         '+48 725 567 012'),
    ('Dawid Szulc',           '+48 532 678 123'),
    ('Szymon Wysocki',        '+48 602 789 234'),
    ('Wojciech Rutkowski',    '+48 513 890 345'),
    ('Natalia Ostrowska',     '+48 698 901 456'),
    ('Robert Kaczmarek',      '+48 729 012 567'),
    ('Iwona Bąk',             '+48 883 123 678')
  returning id, phone
)
insert into vehicles (client_id, make, model, plate, vin)
select c.id,
       v.make, v.model, v.plate, v.vin
from ins_clients c
join (values
  ('+48 512 345 678', 'Volkswagen',    'Golf',      'WA1234B', 'WVWZZZ1KZ4W123456'),
  ('+48 501 234 567', 'BMW',           'Seria 3',   'KR5678C', 'WBA3A4G51FNS12345'),
  ('+48 691 456 789', 'Mercedes-Benz', 'C-Klasa',   'GD9012D', 'WDD2040022F123456'),
  ('+48 723 567 890', 'Audi',          'A4',        'PO3456E', 'WAUZZZ8K4DA123456'),
  ('+48 534 678 901', 'Toyota',        'Corolla',   'WR7890F', 'SB1ZS3JE20E123456'),
  ('+48 601 789 012', 'Ford',          'Focus',     'WA2345G', 'WF0EXXGCDEJ123456'),
  ('+48 512 890 123', 'Opel',          'Astra',     'KR6789H', 'W0L000051T0123456'),
  ('+48 697 901 234', 'Škoda',         'Octavia',   'GD1234I', 'TMBEG41Z7G2123456'),
  ('+48 732 012 345', 'Renault',       'Megane',    'LU5678J', 'VF1BMDYB4EF123456'),
  ('+48 881 123 456', 'Fiat',          'Tipo',      'WA9012K', 'ZFA35600006123456'),
  ('+48 502 234 567', 'Hyundai',       'Tucson',    'KA3456L', 'KMHJ341AAGU123456'),
  ('+48 515 345 678', 'Kia',           'Sportage',  'WR7890M', 'U5YPB814ADL123456'),
  ('+48 694 456 789', 'Peugeot',       '308',       'PO2345N', 'VF30E9HZ8HS123456'),
  ('+48 728 567 890', 'SEAT',          'Leon',      'GD6789O', 'VSSZZZ5FZ4R123456'),
  ('+48 531 678 901', 'Mazda',         '3',         'WA1234P', 'JMZBK12Z021123456'),
  ('+48 604 789 012', 'Volkswagen',    'Passat',    'KR5678Q', 'WVWZZZ3CZ6E123456'),
  ('+48 512 890 234', 'BMW',           'Seria 5',   'WR9012R', 'WBA5A4C51DD123456'),
  ('+48 512 890 234', 'Jeep',          'Wrangler',  'WR8899S', '1C4HJWFG8GL123456'),
  ('+48 695 901 234', 'Mercedes-Benz', 'E-Klasa',   'LU3456S', 'WDD2120112A123456'),
  ('+48 731 012 456', 'Audi',          'A6',        'WA7890T', 'WAUZZZ4G4FN123456'),
  ('+48 880 123 567', 'Toyota',        'RAV4',      'KA2345U', 'JTMRFREV1LJ123456'),
  ('+48 501 234 789', 'Ford',          'Kuga',      'PO6789V', 'WF0EXXTTGEF123456'),
  ('+48 516 345 890', 'Opel',          'Insignia',  'GD1234W', 'W0L0TGF4AB0123456'),
  ('+48 693 456 901', 'Škoda',         'Kodiaq',    'WR5678X', 'TMBJJ9NS5H2123456'),
  ('+48 725 567 012', 'Renault',       'Kadjar',    'WA9012Y', 'VF1RFE00056123456'),
  ('+48 532 678 123', 'Fiat',          '500',       'KR3456Z', 'ZFA3120000J123456'),
  ('+48 602 789 234', 'Hyundai',       'i30',       'LU7890A', 'TMAD381AAGJ123456'),
  ('+48 513 890 345', 'Volkswagen',    'Tiguan',    'WA2345B', 'WVGZZZ5NZFW123456'),
  ('+48 698 901 456', 'BMW',           'X5',        'GD6789C', '5UXKR0C50F0123456'),
  ('+48 729 012 567', 'Audi',          'Q5',        'PO1234D', 'WAUZZZ8R4FA123456'),
  ('+48 883 123 678', 'Toyota',        'Yaris',     'WR5678E', 'SB1KP3JE40E123456')
) as v(phone, make, model, plate, vin) on c.phone = v.phone;
