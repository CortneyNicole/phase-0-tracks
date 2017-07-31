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

#db.execute("INSERT INTO organizer (domain_name, password) VALUES ('facebook.com', 'rainbow')")

def add_login(db, domain_name, password)
  db.execute("INSERT INTO organizer (domain_name, password) VALUES (?, ?)", [domain_name, password])
end

# 10.times do
#   create_password(db, Faker::Internet.domain_name, Faker::Internet.password)
# end

def update_password(db, domain_name, new_pw)
   db.execute("UPDATE organizer SET password='#{new_pw}'' WHERE domain_name='#{domain_name}'")
end

def delete_login(db)
  puts "What login information would you like to delete?"
  domain_name = gets.chomp
  db.execute("DELETE FROM organizer WHERE domain_name='#{domain_name}'")
  return_all(db)
end



# passwords = db.execute("SELECT * FROM organizer")
# passwords.each do |pw|
#   puts "domain name:#{pw[1]} password:#{pw[2]}"
# end
