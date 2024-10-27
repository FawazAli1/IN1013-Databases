CREATE TABLE Pet (
  pet_name VARCHAR(20),
  owner_name VARCHAR(45),
  species VARCHAR(45),
  gender CHAR(1) CHECK (gender IN ('M', 'F')),
  birth_date DATE,
  death_date DATE,
  PRIMARY KEY (pet_name)
);

CREATE TABLE PetEvent (
  pet_name VARCHAR(20),
  event_date DATE,
  event_type VARCHAR(15),
  remarks VARCHAR(255),
  FOREIGN KEY (pet_name) REFERENCES Pet(pet_name),
  PRIMARY KEY (pet_name, event_date)
);
