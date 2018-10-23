require( 'minitest/autorun' )
require( 'minitest/rg' )
require_relative( '../bus' )
require_relative( '../person')

class TestBus < MiniTest::Test

  def setup
    @person1 = Person.new("James", 28)
    @person2 = Person.new("Pawel", 21)
    @bus1 = Bus.new(22, "Ocean Terminal")
    @bus2 = Bus.new(5, "Morningside")

  end

  def test_bus_has_route_number
    expected = 22
    actual = @bus1.number
    assert_equal(expected, actual)
  end

  def test_bus_has_destination
    expected = "Ocean Terminal"
    actual = @bus1.destination
    assert_equal(expected, actual)
  end

  def test_bus_can_drive
    expected = "Brum brum"
    actual = @bus2.drive
    assert_equal(expected, actual)
  end

  def test_bus_has_passengers?
    expected = 0
    actual = @bus1.passengers.length
    assert_equal(expected, actual)
  end

  def test_can_count_passengers
    expected = 0
    actual = @bus2.passenger_count
    assert_equal(expected, actual)
  end

  def test_bus_can_pick_up_person
    expected = 1
    @bus1.pick_up(@person1)
    actual = @bus1.passenger_count
    assert_equal(expected, actual)
  end

  def test_bus_can_drop_off_person
    expected = 1
    @bus2.pick_up(@person1)
    @bus2.pick_up(@person2)
    @bus2.drop_off(@person2)
    actual = @bus2.passenger_count
    assert_equal(expected, actual)
  end

  def test_bus_can_be_emptied
    expected = 0
    @bus2.pick_up(@person1)
    @bus2.pick_up(@person2)
    @bus2.empty()
    actual = @bus2.passenger_count
    assert_equal(expected, actual)
  end

end
