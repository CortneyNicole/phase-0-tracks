require 'sqlite3'
require 'faker'


#create database
db = SQLite3::Database.new("passwords-organizer.db")

#create a create command in SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pw_organizer(
  id INTEGER PRIMARY KEY,
  website VARCHAR(255),
  password VARCHAR(255)
  )
SQL

#create the phonebook table
db.execute(create_table_cmd)

def add_pw_site(website, password)
  db.execute("INSERT INTO pw_organizer(website, password) VALUES (?, ?)", [website, password])
end