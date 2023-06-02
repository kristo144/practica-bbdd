-- Entitats

-- Atributs: num_zona, nom_massa, municipi, limit superior, limit inferior
INSERT INTO Zones VALUES (1, 'Ebre', 'Tudela', NULL, NULL);
INSERT INTO Zones VALUES (2, 'Ebre', 'Tudela', NULL, NULL);
INSERT INTO Zones VALUES (3, 'Ebre', 'Tudela', NULL, NULL);
INSERT INTO Zones VALUES (4, 'Ebre', 'Tudela', NULL, NULL);
INSERT INTO Zones VALUES (5, 'Ebre', 'Tudela', NULL, NULL);
INSERT INTO Zones VALUES (1, 'Ara',  'Broto',  NULL, NULL);
INSERT INTO Zones VALUES (2, 'Ara',  'Broto',  NULL, NULL);
INSERT INTO Zones VALUES (3, 'Ara',  'Broto',  NULL, NULL);
INSERT INTO Zones VALUES (4, 'Ara',  'Broto',  NULL, NULL);
INSERT INTO Zones VALUES (5, 'Ara',  'Broto',  NULL, NULL);

-- Atributs: nom_popular, nom_cientific, long_mitja
INSERT INTO Especies VALUES ('Siluro',      'Silurus glanis',         100.00);
INSERT INTO Especies VALUES ('Lucioperca',  'Sander lucioperca',       60.00);
INSERT INTO Especies VALUES ('Carpa',       'Cyprinus carpio',         75.00);
INSERT INTO Especies VALUES ('Bagra',       'Squalius cephalus',       40.00);
INSERT INTO Especies VALUES ('Madrilla',    'Parachondrostoma miegii', 20.00);
INSERT INTO Especies VALUES ('Llop de riu', 'Barbatula barbatula',     12.00);

-- Atributs: dni, nom
INSERT INTO Persones VALUES ('12345678L', 'Pepito' );
INSERT INTO Persones VALUES ('23456781R', 'Jorge'  );
INSERT INTO Persones VALUES ('34567812Q', 'Mario'  );
INSERT INTO Persones VALUES ('45678123M', 'Daniela');
INSERT INTO Persones VALUES ('56781234S', 'Zaid'   );
INSERT INTO Persones VALUES ('67812345V', 'Roberto');
INSERT INTO Persones VALUES ('78123456Y', 'Miguel' );
INSERT INTO Persones VALUES ('81234567Z', 'Anabel' );

-- Atributs: dni, nss, sou
INSERT INTO Funcionaris VALUES ('12345678L', '000000000', 1500);
INSERT INTO Funcionaris VALUES ('23456781R', '111111111', 1400);
INSERT INTO Funcionaris VALUES ('34567812Q', '222222222', 1600);
INSERT INTO Funcionaris VALUES ('45678123M', '333333333', 1400);
INSERT INTO Funcionaris VALUES ('56781234S', '444444444', 1400);
INSERT INTO Funcionaris VALUES ('81234567Z', '555555555', 1400);

-- Atributs: dni, carrer, ciutat, comunitat
INSERT INTO Pescadors VALUES ('23456781R', 'Calle Alza',         'Tudela',    'Aragon');
INSERT INTO Pescadors VALUES ('45678123M', 'Calle Sorrosal',     'Broto',     'Aragon');
INSERT INTO Pescadors VALUES ('56781234S', 'Calle de Casanova', 'Barcelona', 'Catalunya');
INSERT INTO Pescadors VALUES ('67812345V', 'Calle de Borja',     'Zaragoza',  'Aragon');
INSERT INTO Pescadors VALUES ('78123456Y', 'Avenida de Andorra', 'Tarragona', 'Catalunya');

-- Interrelacions

-- Atributs: massa_aigua, num_zona, nom_especie, index_poblacio
INSERT INTO Habitats VALUES ('Ebre', 1, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ebre', 2, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ebre', 3, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ebre', 1, 'Lucioperca',  4000);
INSERT INTO Habitats VALUES ('Ebre', 2, 'Lucioperca',  4000);
INSERT INTO Habitats VALUES ('Ebre', 3, 'Lucioperca',  4000);
INSERT INTO Habitats VALUES ('Ara',  1, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ara',  2, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ara',  3, 'Bagra',       4000);
INSERT INTO Habitats VALUES ('Ara',  1, 'Madrilla',    4000);
INSERT INTO Habitats VALUES ('Ara',  2, 'Madrilla',    4000);
INSERT INTO Habitats VALUES ('Ara',  3, 'Madrilla',    4000);
INSERT INTO Habitats VALUES ('Ara',  1, 'Llop de riu', 4000);
INSERT INTO Habitats VALUES ('Ara',  2, 'Llop de riu', 4000);
INSERT INTO Habitats VALUES ('Ara',  3, 'Llop de riu', 4000);

-- Atributs: funcionari, data_inici, num_zona, nom_massa, data_fi
INSERT INTO Assignacions VALUES ('12345678L', '2022-10-10', 1, 'Ebre', '2023-10-10');
INSERT INTO Assignacions VALUES ('12345678L', '2022-10-10', 2, 'Ebre', '2023-10-10');
INSERT INTO Assignacions VALUES ('12345678L', '2022-10-10', 3, 'Ebre', '2023-10-10');
INSERT INTO Assignacions VALUES ('45678123M', '2022-10-10', 1, 'Ara',  '2023-10-10');
INSERT INTO Assignacions VALUES ('45678123M', '2022-10-10', 2, 'Ara',  '2023-10-10');
INSERT INTO Assignacions VALUES ('45678123M', '2022-10-10', 3, 'Ara',  '2023-10-10');
INSERT INTO Assignacions VALUES ('23456781R', '2022-10-10', 1, 'Ebre', '2023-10-10');
INSERT INTO Assignacions VALUES ('23456781R', '2022-10-10', 2, 'Ebre', '2023-10-10');
INSERT INTO Assignacions VALUES ('34567812Q', '2022-10-10', 1, 'Ebre', '2023-10-10');

-- Atributs: num_zona, nom_massa, data_vigencia, num_max
INSERT INTO Permisos VALUES (2, 'Ara',  '2022-10-11', 3);
INSERT INTO Permisos VALUES (2, 'Ara',  '2022-10-12', 1);
INSERT INTO Permisos VALUES (2, 'Ara',  '2022-10-13', 2);
INSERT INTO Permisos VALUES (2, 'Ebre', '2022-10-11', 5);
INSERT INTO Permisos VALUES (2, 'Ebre', '2022-10-12', 7);
INSERT INTO Permisos VALUES (3, 'Ebre', '2022-10-11', 4);
INSERT INTO Permisos VALUES (3, 'Ebre', '2022-10-12', 4);
INSERT INTO Permisos VALUES (4, 'Ebre', '2022-10-11', 3);
INSERT INTO Permisos VALUES (4, 'Ebre', '2022-10-12', 2);
INSERT INTO Permisos VALUES (4, 'Ebre', '2022-10-13', 2);
INSERT INTO Permisos VALUES (5, 'Ebre', '2022-10-11', 1);
INSERT INTO Permisos VALUES (5, 'Ebre', '2022-10-12', 6);
INSERT INTO Permisos VALUES (5, 'Ebre', '2022-10-13', 6);
INSERT INTO Permisos VALUES (5, 'Ebre', '2022-10-14', 5);

-- Atributs: num_zona, nom_massa, nom_especie, num_max, long_min
INSERT INTO Captures VALUES (2, 'Ebre', 'Siluro', 100, 50.00);
INSERT INTO Captures VALUES (3, 'Ebre', 'Carpa',  100, 15.00);
INSERT INTO Captures VALUES (4, 'Ebre', 'Carpa',  100, 15.00);
INSERT INTO Captures VALUES (4, 'Ebre', 'Siluro', 100, 50.00);
INSERT INTO Captures VALUES (2, 'Ara',  'Carpa',  100, 15.00);
INSERT INTO Captures VALUES (2, 'Ara',  'Siluro', 100, 50.00);
INSERT INTO Captures VALUES (5, 'Ebre', 'Carpa',  100, 35.00);

-- Atributs: funcionari, infractor, data_multa, num_zona, nom_massa, motiu, import
INSERT INTO Multes VALUES ('34567812Q', '23456781R', '2022-10-11', 1, 'Ebre', NULL, 100);
INSERT INTO Multes VALUES ('56781234S', '23456781R', '2022-10-11', 1, 'Ebre', NULL, 100);
INSERT INTO Multes VALUES ('45678123M', '78123456Y', '2022-10-12', 2, 'Ara' , NULL, 100);
INSERT INTO Multes VALUES ('81234567Z', '78123456Y', '2022-10-12', 2, 'Ara' , NULL, 100);

