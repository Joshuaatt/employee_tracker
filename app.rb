require("sinatra/activerecord")
require("sinatra")
require("sinatra/reloader")
also_reload("lib/**/*.rb")
require("./lib/employee")
require("./lib/division")


get("/") do
  @divisions = Division.all()
  erb(:index)
end

post('/division') do
  name = params.fetch('name')
  @division = Division.new({:name => name})
  @division.save()
  erb(:success)
end

get("/division/:id") do
  @division = Division.find(params.fetch("id").to_i())
  erb(:division)
end

post("/employee") do
  name = params.fetch("name")
  division_id = params.fetch("division_id").to_i()
  employee = Employee.new({:name => name, :division_id => division_id})
  employee.save()
  @division = Division.find(division_id)
  erb(:division)
end
