require("minitest/autorun")
require("minitest/rg")
require_relative("../students.rb")

class TestStudent < MiniTest::Test

  def setup()
    @student1 = Student.new({
      "first_name"  =>  "Harry",
      "last_name"   =>  "Potter",
      "house"       =>  "Gryffindor",
      "age"         =>  "14"
      })
  end

  def test_has_first_name()
    assert_equal("Harry", @student1.first_name)
  end

  def test_has_last_name()
    assert_equal("Potter", @student1.last_name)
  end

  def test_has_house()
    assert_equal("Gryffindor", @student1.house)
  end

  def test_has_age()
    assert_equal(14, @student1.age)
  end



end
