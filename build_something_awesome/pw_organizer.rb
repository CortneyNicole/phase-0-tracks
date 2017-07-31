require 'sqlite3'
require 'faker'


#create database
pw_db = SQLite3::Database.new("passwords-organizer.db")

#create a create command in SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pw_organizer(
  id INTEGER PRIMARY KEY,
  website VARCHAR(255),
  password VARCHAR(255)
  )
SQL

#create the password table
pw_db.execute(create_table_cmd)

#add new password and website pair to data base
def add_pw_site(website, password)
  pw_db.execute("INSERT INTO pw_organizer(website, password) VALUES (?, ?)", [website, password])
end

#update password
def update_pw(db, website, password)
  db.execute("UPDATE pw_organizer SET password=#{password} WHERE website='#{website}'")
end

#delete password
def delete_pw_site(pw_db)
  puts "which website abd password would you like to delete"
  name = gets.chomp
  if current(pw_db, website)
    db.execute("DELETE FROM pw_organizer WHERE website='#{website}'")
    return_all(pw_db)
  else
    puts "#{website} is not in your phonebook"
  end
end

#add website pw pair
def add_pw_site(db, website, password)
  db.execute("INSERT INTO pw_organizer (password, website) VALUES (?, ?)", [password, website])
  puts return_website(pw_db, website)
  run_pw_organizer(pw_db)
end