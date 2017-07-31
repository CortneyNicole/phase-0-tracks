require 'sqlite3'
require 'faker'


#create database
pw_db = SQLite3::Database.new("passwords-organizer.db")

#create a create command in SQL
create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS pw_organizer(
  id INTEGER PRIMARY KEY,
  domain_name VARCHAR(255),
  password VARCHAR(255)
  )
SQL

#create the password table
pw_db.execute(create_table_cmd)

#add new password and website pair to data base
def create_pw_site(domain_name, password)
  pw_db.execute("INSERT INTO pw_organizer(domain_name, password) VALUES (?, ?)", [domain_name, password])
end

#update password
def update_pw(db, domain_name, password)
  pw_db.execute("UPDATE pw_organizer SET password=#{password} WHERE domain_name='#{domain_name}'")
end

#delete password
def delete_pw_site(pw_db)
  puts "which website abd password would you like to delete"
  name = gets.chomp
  if current(pw_db, domain_name)
    pw_db.execute("DELETE FROM pw_organizer WHERE domain_name='#{domain_name}'")
    return_all(pw_db)
  else
    puts "#{domain_name} is not in the organizer"
  end
end

#add website pw pair
def add_pw_site(pw_db, domain_name, password)
  pw_db.execute("INSERT INTO pw_organizer (domain_name, password) VALUES (?, ?)", [domain_name, password])
  puts return_website(pw_db, domain_name)

end

#create 10 new pairs
10.times do
  add_pw_site(pw_db, Faker::Internet.domain_name, Faker::Internet.password)
end



