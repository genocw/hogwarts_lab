require_relative("../db/sql_runner.rb")


class Student

  attr_accessor(:first_name, :last_name, :age)
  attr_reader(:id, :house_id)

  def initialize(options)
    @id         = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name  = options["last_name"]
    @house_id   = options["house_id"].to_i
    @age        = options["age"].to_i
  end

  def save
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house_id,
      age
      )
      VALUES
      (
        $1, $2, $3, $4
        )
        RETURNING id;"
      values = [
        @first_name,
        @last_name,
        @house_id,
        @age
        ]
      result = SqlRunner.run(sql, values)
      result_hash = result[0]
      string_id = result_hash["id"]
      id = string_id.to_i
      @id = id
    end

    def self.all()
      sql = "
        SELECT * FROM students
      "
      results = SqlRunner.run(sql)
      return results.map { |student_hash| Student.new(student_hash) }
    end

    def self.find(id)
      sql = "
        SELECT * FROM students
        WHERE id = $1;
      "
      values = [id]
      results = SqlRunner.run(sql, values)
      Student.new(results[0])
    end

    def house
      sql = "SELECT * FROM houses
      WHERE id = $1;"

      result = SqlRunner.run(sql, [@house_id])
      house_hash = result[0]
      house = House.new(house_hash)
      return house
    end

  # def house
  #   house = House.find(@house_id)
  #   return house
  # end

end
