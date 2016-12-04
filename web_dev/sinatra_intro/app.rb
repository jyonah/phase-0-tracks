# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  "#{params[:name]} is #{params[:age]} years old."
end

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

# write a GET route that retrieves
# an address

get '/address' do
  thereturn = ""
  thereturn << '751 Page St. Apt 6<br>'
  thereturn << 'San Francisco, CA 94117'
  thereturn
end

get '/great_job' do
  if params[:name]
    "Great Job #{params[:name]}!"
  else
    "Great Job!"
  end
end

get '/:number1/plus/:number2' do
  response = params[:number1].to_i + params[:number2].to_i
  response.to_s
end

get '/search/:name' do
  # students = db.execute('SELECT * FROM students')
  response = db.execute('SELECT * FROM students WHERE name=?', [params[:name]])
  response.to_s
end
