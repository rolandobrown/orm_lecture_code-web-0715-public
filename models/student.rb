class Student
  attr_reader :id, :name, :super_power
  def self.new_from_row(row)
    new(row["id"], row["name"], row["super_power"])
  end

  def initialize(id, name, super_power)
    @id = id
    @name = name
    @super_power = super_power
  end
end
