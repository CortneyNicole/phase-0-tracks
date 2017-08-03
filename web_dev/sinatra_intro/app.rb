# require gems
require 'sinatra'
require 'shotgun'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
# get '/' do
#   "#{params[:name]} is #{params[:age]} years old."
# end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end

#release 0
#add contact route
get '/contact/:address' do
  address = params[:address]
  "To contact us please send a letter to #{address}.<br> Thankyou!"
end

#great job
get '/' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

#add two numbers
get '/add/:int1/:int2' do
  answer ="#{params[:int1].to_i + params[:int2].to_i}"
  "The answer is #{answer}"
end

#bonus
get '/students/:name' do
  student = db.execute("SELECT * FROM students WHERE name=?", [params[:name]])
  student.to_s
end

#release 1
# Is Sinatra the only web app library in Ruby? What are some others?
# No sinatra is not the only one. Other ones include ruby on rails and volt.

# Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?
#you can also use mongo

# What is meant by the term web stack?
#It refers to the components or technologies, languages, operating sytems, etc used to build a web site