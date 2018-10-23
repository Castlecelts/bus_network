require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../bus_stop' )
require_relative( '../person' )

class TestBusStop < MiniTest::Test
  def setup
    @person1 = Person.new("Alex", 100)
    @person2 = Person.new("Rupert", 45)
    @bus_stop1 = BusStop.new("Dalkeith Rd")
  end

  def test_has_name
    expected = "Dalkeith Rd"
    actual = @bus_stop1.name
    assert_equal(expected, actual)
  end

  def test_has_queue
    expected = 0
    actual = @bus_stop1.queue.length
    assert_equal(expected, actual)
  end

  def test_queue_has_a_person
    expected = 1
    @bus_stop1.add_queuer(@person2)
    actual = @bus_stop1.queue.length
    assert_equal(expected, actual)

  end

end
