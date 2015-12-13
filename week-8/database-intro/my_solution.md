![schema diagram](/week-8/database-intro/schema_clueless.tiff)

###What are databases for?

  "[Storing] data in a structred way so that it can be easily serached and accessed in the future" (Bill Hatfield).

###What is a one-to-many relationship?

  A one-to-many relationship is a relationship where unique items can be paired with many items. For example, a list of people associated with the toothbrushes they own. For sake of example, we'll assume all people have single ownership over the toothbrush(es) they use, but those people can also own multiple toothbrushes. In this case, people are the "one" or unique list-item, and the toothbrushes they own are the "many."

###What is a primary key? What is a foreign key? How can you determine which is which?
  A Primary Key is one that is unique for each record. A Foreign Key is one is a key that exists in one table, but points to another table's primary key.

  For example, we might have list of names in one table with primary keys associated with them. In a second table, we might have a list of cars with a column `person_id`. That column would represent foreign keys that point back to the id's listed in the "names" table.

  You can tell something is a primary key if there is no repetition between keys... **Any other methods commenters?**

###How can you select information out of a SQL database? What are some general guidelines for that?

  The simple syntax for selecting information in SQL is `SELECT information FROM table;`. Without diving too deeply into any more syntax, generally speaking, you will be listing SQL commands on each line followed by details for that command. After the full list of commands are finished you place a ";" on the last line and return the results. So it will look something like this:

  `SELECT column1, column2`

  `FROM table`

  `ORDER BY column1 ASC;`

  While you can most certainly list all of those commands on the same line, I think it's a lot easier to split each step up for yourself incase the line of commands becomes incredibly long.