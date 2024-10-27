INSERT INTO Pet (pet_name, owner_name, species, gender, birth_date, death_date) 
VALUES 
    ('Hammy', 'Diane', 'hamster', 'M', '2010-10-30', NULL),
    ('He', 'Harold', 'cat', 'M', '2019-05-01', NULL),
    ('Lo', 'Harold', 'cat', 'M', '2019-05-01', NULL),
    ('We', 'Harold', 'cat', 'F', '2019-05-01', NULL),
    ('En', 'Harold', 'cat', 'F', '2019-05-01', NULL),
    ('No', 'Harold', 'cat', 'F', '2019-05-01', NULL);

INSERT INTO PetEvent (pet_name, event_date, event_type, remarks) 
VALUES 
    ('Fluffy', '2020-10-15', 'vet', 'antibiotics'),
    ('Hammy', '2020-10-15', 'vet', 'antibiotics'),
    ('Puffball', '2020-09-01', 'death', NULL),
    ('Claws', '1997-08-03', 'injury', 'broke rib');

UPDATE PetEvent 
SET remarks = '5 kittens, 3 female, 2 male'
WHERE pet_name = 'Fluffy' 
  AND event_type = 'litter';

UPDATE PetEvent 
SET pet_name = 'Claws' 
WHERE event_date = '1997-08-03';

DELETE FROM PetEvent 
WHERE pet_name = 'Buffy';

DELETE FROM Pet 
WHERE pet_name = 'Buffy';

UPDATE Pet 
SET death_date = '2020-09-01' 
WHERE pet_name = 'Puffball';
