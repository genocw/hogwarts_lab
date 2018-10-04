require_relative("../db/sql_runner.rb")

class House

attr_accessor(:name, :logo)
attr_reader(:id)

  def initialize(options)
    @id   = options["id"].to_i
    @name = options["name"]
    @logo = options["logo"]
  end

  def save()
    sql = "
      INSERT INTO houses (name, logo)
      VALUES ($1, $2)
      RETURNING id;
    "
    values = [@name, @logo]
    results = SqlRunner.run(sql, values)
    @id = results[0]["id"].to_i
  end

  def self.all()
    sql = "SELECT * FROM houses;"
    house_array = SqlRunner.run(sql)
    return house_array.map { |house| House.new(house)  }
  end

  def self.find(id)
    sql = "SELECT * FROM houses
    WHERE id = $1;"
    values = [id]
    result = SqlRunner.run(sql, values)
    return House.new(result[0])

  end


end
