require("spec_helper")

describe(Project) do
  it("tells you what employees are in the division") do
    employee = Employee.create({:name => "Employee 1"})
    project1 = Project.create({:name => "Project 1", :employee_id => employee.id})
    project2 = Project.create({:name => "Project 2", :employee_id => employee.id})
    expect(employee.projects()).to(eq([project1, project2]))
  end
end
