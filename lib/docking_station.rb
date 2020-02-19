require_relative 'bike'

class DockingStation
DEFAULT_CAPACITY = 20
attr_reader :bike, :capacity
  def initialize(capacity = DEFAULT_CAPACITY)
    @capacity = capacity
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if empty?
    fail 'This bike is broken' if @bike.broken?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes << bike
    @bike = bike
  end

  private
  def full?
    @bikes.count >= @capacity
  end

  def empty?
    @bikes.empty?
  end
end
