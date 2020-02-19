require './lib/docking_station.rb'
puts docking_station = DockingStation.new(50)
puts docking_station.capacity
50.times {
  bike = Bike.new
  docking_station.dock(bike)
}
puts docking_station.release_bike
puts bike = Bike.new
puts docking_station.dock(bike)
