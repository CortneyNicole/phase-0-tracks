require 'sqlite3'
require 'faker'

db = SQLite3::Database.new( "pw_organizer.db" )

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS organizer(
    id INTEGER PRIMARY KEY,
    domain_name VARCHAR(255),
    password VARCHAR(255)
  )
SQL

db.execute(create_table_cmd)

