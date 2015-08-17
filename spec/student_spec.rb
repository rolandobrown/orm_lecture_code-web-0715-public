describe Student do
  it "creates an instance from a sqlite row" do
    row = {
      "id"=>1,
      "name"=>"George",
      "super_power"=>"perfect pitch",
      0=>1,
      1=>"George",
      2=>"perfect pitch"
    }
    student = Student.new_from_row(row)
    expect(student.id).to eq(1)
    expect(student.name).to eq("George")
    expect(student.super_power).to eq("perfect pitch")
  end

  it "returns all students in the database" do
    # Static finder methods to wrap commonly used
    # SQL queries and return Active Record objects
    students = Student.all
    expect(students.first).to be_a(Student)
    expect(students.first.name).to eq("George")
  end
end

# Student.find(7)
# Student.find_by(:name, "George")
# s = Student.new
# s.save
