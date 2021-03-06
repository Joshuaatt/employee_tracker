require("spec_helper")

describe(Division) do
  it("tells you what employees are in the division") do
    division = Division.create({:name => "Division1"})
    employee1 = Employee.create({:name => "employee1", :division_id => division.id})
    employee2 = Employee.create({:name => "employee2", :division_id => division.id})
    expect(division.employees()).to(eq([employee1, employee2]))
  end
end
