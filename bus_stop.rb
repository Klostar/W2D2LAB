class BusStop

  attr_reader(:bus_stop_name, :queue)

  def initialize()
    @bus_stop_name = "Stop 1"
    @queue = []
  end

  def add_to_queue(person)
    @queue << person
  end

end
