// 3. IMPORTe todas as definições do seu Módulo de treinamento para eliminar a necessidade de qualificar completamente suas definições
IMPORT $;

// 4. Gere uma saída para as tabelas Persons e Accounts, simplesmente usando o nome da definição no seu arquivo ECL.
Persons := $.File_Persons.File;
OUTPUT(Persons);

Accounts := $.File_Accounts.File;
OUTPUT(Accounts);

// 5. Gere uma contagem de todos os registros nas tabelas Persons e Accounts.
COUNT_PERSONS := COUNT(Persons);
OUTPUT(COUNT_PERSONS);

COUNT_ACCOUNTS := COUNT(Accounts);
OUTPUT(COUNT_ACCOUNTS);

// 6. Gere uma saída para a tabela Persons, limitando o resultado ao ID, Last e First Name.
TBL_Persons := TABLE(Persons,{id, firstname, lastname});
TBL_Persons;

// 7. Gere uma saída para a tabela Acconts, limitando o resultado aos campos ReportDate, HighCredit, e Balance fields.
TBL_Accounts := TABLE(Accounts,{reportdate, highcredit, balance});
TBL_Accounts;

// 8. Gere uma saída para a tabela Pessoas, limitando o resultado ao ID, StreetAddress, City, State e ZipCode, e nomeie
// a aba de resultado no ECL IDE "Address_Info" (Dica: consulte a seção Named OUTPUT neste livro).
TBL_Persons_2 := TABLE(Persons,{id, streetaddress, city, state, zipcode});
OUTPUT(TBL_Persons_2, NAMED('Address_Info'));

// 9. Gere um resultado para a tabela Accounts, limitando o resultado aos campos AccountNumber, LastActivityDate e
// Balance e nomeie a aba de resultado no ECL IDE "Acct_Activity".
TBL_Accounts_2 := TABLE(Accounts,{accountnumber, lastactivitydate, balance});
OUTPUT(TBL_Accounts_2, NAMED('Acct_Activity'));