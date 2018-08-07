 class BusService

attr_reader(:route,:destination,:passengers)

def initialize(route,destination)
  @route = route
  @destination = destination
  @passengers = []
end

def drive
  return "Brum Brum"
end

def add_passenger(person)
  @passengers.push(person)
end

def remove_passenger(person)
  @passengers.delete(person)
end

def empty_bus()
    @passengers = []
end

 end
