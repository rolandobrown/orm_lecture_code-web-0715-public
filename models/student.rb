class Student
  @@db = SQLite3::Database.new('db/students_store.db')
  @@db.results_as_hash = true

  attr_reader :id, :name, :super_power
  def self.new_from_row(row)
    new(row["id"], row["name"], row["super_power"])
  end

  def self.all
    sql = <<-SQL
      SELECT * FROM students
    SQL
    results = @@db.execute(sql)
    results.map {|row| self.new_from_row(row) }
  end

  def initialize(id, name, super_power)
    @id = id
    @name = name
    @super_power = super_power
  end
end
