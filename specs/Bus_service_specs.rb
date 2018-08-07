require("minitest/autorun")
require("minitest/rg")
require_relative("../Bus_service.rb")
require_relative("../person.rb")
class BusServiceTest < MiniTest::Test

def setup()
  @bus_service = BusService.new("22","Ocean Terminal")
end

  def test_route_number
assert_equal("22",@bus_service.route)

  end

  def test_destination
    assert_equal("Ocean Terminal", @bus_service.destination)
  end

def test_drive
  assert_equal("Brum Brum",@bus_service.drive)
end

def test_passengers
 assert_equal([],@bus_service.passengers)
end

def test_passengers_returns_nil
  assert_equal(0, @bus_service.passengers.count)
end

def test_add_passenger
  current_passenger_count = @bus_service.passengers.count
  @bus_service.add_passenger(@person1)
  assert_equal(current_passenger_count +1 , @bus_service.passengers.count)
end

def test_remove_passenger
  @bus_service.add_passenger(@person1)
  current_passenger_count = @bus_service.passengers.count
  @bus_service.remove_passenger(@person1)
  assert_equal(current_passenger_count -1, @bus_service.passengers.count)
end

def test_empty_bus
  @bus_service.add_passenger(@person1)
  @bus_service.add_passenger(@person2)
  @bus_service.empty_bus
  assert_equal([], @bus_service.passengers)
end

end
