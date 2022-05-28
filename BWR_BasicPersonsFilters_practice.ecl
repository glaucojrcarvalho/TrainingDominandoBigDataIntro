// 3. IMPORTe todas as definições do seu Módulo de treinamento para eliminar a necessidade de qualificar completamente suas definições.
IMPORT $;

Persons := $.File_Persons.File;
Persons;

// 4. Filtre e conte todas as pessoas que moram no estado da Flórida. Sua contagem esperada é 40854.
PERSONS_FL := Persons(state='FL');
PERSONS_FL;
COUNT(PERSONS_FL);

// 5. Filtre e conte todas as pessoas que vivem no estado da Flórida e na cidade de Miami. Sua contagem esperada é
// agora 2438.
PERSONS_FL_MIAMI := Persons(state='FL', city='MIAMI');
PERSONS_FL_MIAMI;
COUNT(PERSONS_FL_MIAMI);

// 6. Filtre e conte todas as pessoas que moram no estado da Flórida, na cidade de Miami, e tenham um código postal
// 33102. Sua contagem esperada é agora 40.
PERSONS_FL_MIAMI_ZIPCODE := Persons(state='FL', city='MIAMI', zipcode='33102');
PERSONS_FL_MIAMI_ZIPCODE;
COUNT(PERSONS_FL_MIAMI_ZIPCODE);

// 7. Filtre e conte todas as pessoas cujo nome começa com a letra 'B'. Use várias condições de filtro nesta consulta. Sua
// contagem esperada é 31193.
PERSONS_FIRSTNAME_B := Persons(firstname >= 'B' AND firstname <'C');
PERSONS_FIRSTNAME_B;

// 8. Filtre e conte todas as pessoas cujo ano de data do arquivo é posterior a 2000. Sua contagem esperada é 687.
PERSONS_ANO_2000 := Persons(filedate[..4] < '2000');
COUNT(PERSONS_ANO_2000);
