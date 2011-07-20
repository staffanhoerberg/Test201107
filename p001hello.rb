# testsqlite.rb

require "sqlite3"
database = SQLite3::Database.new( "new.database" )

database.execute( "create table sample_table (id INTEGER PRIMARY KEY, sample_text TEXT, sample_number NUMERIC);")

#database.execute( "insert into sample_table (sample_text, sample_number) values ("Sample Text1", 123);")
#database.execute( "insert into sample_table (sample_text, sample_number) values ("Sample text2", 456);")

database.execute( "insert into sample_table (sample_text,sample_number) values ('Sample Text1', 123)")
database.execute( "insert into sample_table (sample_text,sample_number) values ('Sample Text2', 456)")

rows = database.execute( "select * from sample_table" )

p rows


