require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../person' )

class TestPerson < MiniTest::Test

  def setup
    @person1 = Person.new("Laura", 33)
    @person2 = Person.new("Rob", 23)
  end

  def test_person_has_name
    expected = "Laura"
    actual = @person1.name
    assert_equal(expected, actual)
  end

  def test_person_has_age
    expected = 23
    actual = @person2.age
    assert_equal(expected, actual)
  end 





end
