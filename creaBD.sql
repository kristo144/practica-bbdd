-- Inicialitzacio
DROP DATABASE PermisosBD;

CREATE DATABASE PermisosBD;
USE PermisosBD;

-- Crear taules

-- Entitats

CREATE TABLE Tipus_zona (
	codi_tipus INT UNSIGNED AUTO_INCREMENT,
	desc_tipus varchar(20),

	CONSTRAINT pk_tipus_zona PRIMARY KEY (codi_tipus)
) ENGINE=InnoDB;

CREATE TABLE Zones (
	num_zona INT UNSIGNED,
	nom_massa varchar(30),
	municipi varchar(30),
	tipus int unsigned,
	limit_superior varchar(30),
	limit_inferior varchar(30),

	CONSTRAINT pk_zones PRIMARY KEY (num_zona, nom_massa),
	CONSTRAINT fk_zones_tipus FOREIGN KEY (tipus) REFERENCES Tipus_zona(codi_tipus)
) ENGINE=InnoDB;
-- Restriccio zones han de ser contigues comencant per 1
-- No es crea taula Masses d'aigua, tal i com indica l'enunciat

CREATE TABLE Especies (
	nom_popular varchar(30),
	nom_cientific varchar(30) NOT NULL,
	long_mitja float(5,2),

	CONSTRAINT pk_especies PRIMARY KEY (nom_popular),
	CONSTRAINT especies_nom_cientific_unique UNIQUE (nom_cientific)
) ENGINE=InnoDB;

CREATE TABLE Persones (
	dni char(9),
	nom varchar(20), -- Longitud escollida de forma arbitraria

	CONSTRAINT pk_persones PRIMARY KEY (dni)
) ENGINE=InnoDB;

CREATE TABLE Funcionaris (
	dni char(9),
	nss char(12) NOT NULL,
	sou int UNSIGNED, -- Guardem el sou en centims.

	CONSTRAINT pk_funcionaris PRIMARY KEY (dni),
	CONSTRAINT fk_funcionaris_persones FOREIGN KEY (dni) REFERENCES Persones(dni),
	CONSTRAINT funcionaris_nss_unique UNIQUE (nss)
) ENGINE=InnoDB;

CREATE TABLE Pescadors (
	dni char(9),
	carrer varchar(30), -- Longituds escollides de forma arbitraria
	ciutat varchar(20),
	comunitat varchar(20),

	CONSTRAINT pk_pescadors PRIMARY KEY (dni),
	CONSTRAINT fk_pescadors_persones FOREIGN KEY (dni) REFERENCES Persones(dni)
) ENGINE=InnoDB;
-- Afegir restriccio pesc/func subclasses total

-- Interrelacions

CREATE TABLE Habitats (
	massa_aigua varchar(30),
	num_zona INT UNSIGNED,
	nom_especie varchar(30),
	index_poblacio INT, -- verificar tipo

	CONSTRAINT pk_habitats PRIMARY KEY (massa_aigua, num_zona, nom_especie),
	CONSTRAINT fk_habitats_zones FOREIGN KEY (num_zona, massa_aigua) REFERENCES Zones(num_zona, nom_massa),
	CONSTRAINT fk_habitats_especies FOREIGN KEY (nom_especie) REFERENCES Especies(nom_popular)
) ENGINE=InnoDB; -- Obligatorietats en els dos sentits (controlar les insercions)

CREATE TABLE Assignacions (
	funcionari char(9),
	data_inici date,
	num_zona int UNSIGNED,
	nom_massa varchar(30),
	data_fi date,

	CONSTRAINT pk_assignacions PRIMARY KEY (funcionari, data_inici, num_zona, nom_massa),
	CONSTRAINT fk_assignacions_zones FOREIGN KEY (num_zona, nom_massa) REFERENCES Zones(num_zona, nom_massa),
	CONSTRAINT fk_assignacions_funcionaris FOREIGN KEY (funcionari) REFERENCES Funcionaris(dni)
) ENGINE=InnoDB;

CREATE TABLE Permisos (
	num_zona int UNSIGNED,
	nom_massa varchar(30),
	data_vigencia date,
	num_max int UNSIGNED,

	CONSTRAINT pk_permisos PRIMARY KEY (num_zona, nom_massa, data_vigencia),
	CONSTRAINT fk_permisos_zones FOREIGN KEY (num_zona, nom_massa) REFERENCES Zones(num_zona, nom_massa)
) ENGINE=InnoDB;
-- El numero maxim de permisos a aotrgar en qualsevol data i zona no pot superar les 50 unitats.
-- A la interrelacio permisos nomes intervenen zones de tipus sense mort, normal i esportives

CREATE TABLE Captures (
	num_zona int UNSIGNED,
	nom_massa varchar(30),
	nom_especie varchar(30),
	num_max int UNSIGNED,
	long_min float(5,2),

	CONSTRAINT pk_captures PRIMARY KEY (num_zona, nom_massa, nom_especie),
	CONSTRAINT fk_captures_zones FOREIGN KEY (num_zona, nom_massa) REFERENCES Zones(num_zona, nom_massa),
	CONSTRAINT fk_captures_especies FOREIGN KEY (nom_especie) REFERENCES Especies(nom_popular)
) ENGINE=InnoDB;
-- Garantir que no existeixen captures permeses amb longitud minima per sobre de la longitud mitja de lespecie en estat adult
-- A la interrelacio captures nomes intervenen zones de tipus normal i esportives

CREATE TABLE Multes (
	funcionari char(9),
	infractor char(9),
	data_multa date,
	num_zona int UNSIGNED,
	nom_massa varchar(30),
	motiu varchar(100),
	import int UNSIGNED,

	CONSTRAINT pk_multes PRIMARY KEY (funcionari, infractor, data_multa, num_zona, nom_massa),
	CONSTRAINT fk_multes_funcionaris FOREIGN KEY (funcionari) REFERENCES Funcionaris(dni),
	CONSTRAINT fk_multes_pescadors FOREIGN KEY (infractor) REFERENCES Pescadors(dni),
	CONSTRAINT fk_multes_zones FOREIGN KEY (num_zona, nom_massa) REFERENCES Zones(num_zona, nom_massa)
) ENGINE=InnoDB;
