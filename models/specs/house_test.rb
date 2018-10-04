require("minitest/autorun")
require("minitest/rg")
require_relative("../house.rb")

class TestHouse < MiniTest::Test

  def setup

    @house1 = House.new({
      "name" => "Gryffindor",
      "logo" => "https://i.pinimg.com/474x/d1/e8/53/d1e853a51cc4f6b25a9f96914e04b992--the-house-harry-potter-hogwarts.jpg"
      })
  end

  def test_house_has_name
    assert_equal("Gryffindor", @house1.name)
  end

  def test_house_has_logo
    assert_equal("https://i.pinimg.com/474x/d1/e8/53/d1e853a51cc4f6b25a9f96914e04b992--the-house-harry-potter-hogwarts.jpg", @house1.logo)
  end


end
