require("spec_helper")

describe(Employee) do
  it("tells you what division it belongs to") do
    division = Division.create({:name => "Division 1"})
    employee = Employee.create({:name => "Joe", :division_id => division.id})
    expect(employee.division()).to(eq(division))
  end
end
