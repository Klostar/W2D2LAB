require("minitest/autorun")
require("minitest/rg")
require_relative("../person.rb")
require_relative("../bus_stop.rb")

class BusStopTest < MiniTest::Test

  def setup()
    @bus_stop = BusStop.new()
  end
  
  def test_add_person_to_queue
    current_queue_count=@bus_stop.queue.count
    @bus_stop.add_to_queue(@person1)
    assert_equal(current_queue_count +1 , @bus_stop.queue.count)
  end

end
