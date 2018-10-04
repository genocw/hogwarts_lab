require_relative("../db/sql_runner.rb")

class Student

  attr_accessor(:first_name, :last_name, :house, :age)
  attr_reader(:id)

  def initialize(options)
    @id         = options["id"].to_i if options["id"]
    @first_name = options["first_name"]
    @last_name  = options["last_name"]
    @house      = options["house"]
    @age        = options["age"].to_i
  end

  def save
    sql = "INSERT INTO students
    (
      first_name,
      last_name,
      house,
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
        @house,
        @age
        ]
      result = SqlRunner.run(sql, values)
      result_hash = result[0]
      string_id = result_hash["id"]
      id = string_id.to_i
      @id = id
    end

end
