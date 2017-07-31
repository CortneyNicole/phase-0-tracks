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

def create_login(db, domain_name, password)
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

def view_logins(db)
  all_logins = db.execute("SELECT * FROM organizer")
  p all_logins
end

def add_login(db)
  puts "Enter domain"
  new_domain = gets.chomp
  puts "Enter password"
  new_pw = gets.chomp
  create_login(db, new_domain, new_pw)
end

def action(db)
  correct_action = false
  until correct_action
    puts "What action would you like to perform (add/delete/update/view)?"
    action = gets.chomp
    if action == "add"
      correct_action = true
      add_login(db)
    elsif action == "update"
      correct_action = true
      update_password(db, domain_name, new_pw)
    elsif action == "delete"
      correct_action = true
      delete_login(db)
    elsif action == "view"
      correct_action = true
      view_logins(db)
    else
      puts "That action does not exist please type 'add', 'delete', 'update'"
    end
  end
end

def run_organizer(db)
  puts "Welcome to the password organizer"
  answer = false
  until answer
    puts "Would you like to view, add, update, or delete you passwords?"
    input = gets.chomp
    if input == "yes"
      answer = true
      action(db)
      true
    elsif input == "no"
      answer = true
      puts "Have a good day!"
      true
    else
      false
    end
  end
end

# passwords = db.execute("SELECT * FROM organizer")
# passwords.each do |pw|
#   puts "domain name:#{pw[1]} password:#{pw[2]}"
# end

#driver code
run_organizer(db)
