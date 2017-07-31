require 'sqlite3'
require 'faker'


#create database
db = SQLite3::Database.new("passwords-organizer.db")
db.results_as_hash = true

#create a create command in SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pw-organizer(
  id INTEGER PRIMARY KEY,
  website VARCHAR(255),
  password VARCHAR(255)
  )
SQL

#create the phonebook table
db.execute(create_table_cmd)

# def
# end