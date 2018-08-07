require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")

class PersonTest < MiniTest::Test

  def setup
    @person1 = Person.new("Dave", 22)
    @person2 = Person.new("Carly", 30)
  end

def test_person_name
  assert_equal("Dave", @person1.name)
end

def test_person_age
  assert_equal(30 , @person2.age)
end

end
