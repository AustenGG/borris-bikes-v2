# As a person,
# So that I can use a bike,
# I'd like a docking station to release a bike.

# As a person,
# So that I can use a good bike,
# I'd like to see if a bike is workings


# Objects | Messages

# Person |
# DockingStation | release_bike
# Bike | is_working?

# Diagram
# Person -->  DockingStation --> release_bike --> Bike

# bike <-- working? --> true/false

# Error code:
# NameError: uninitialized constant DockingStation
# from (irb):1
# from /Users/username/.rvm/rubies/ruby-2.2.2/bin/irb:11:in '<main>'
require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    @capacity = DEFAULT_CAPACITY
  end

  def dock(bike)
    fail 'Docking station full' if full?
    bikes << bike
  end

  def release_bike
    fail 'No bikes available' if empty?
    if @broken == true 
      fail 'Broken bike'
    else
    bikes.pop
    end
  end

  private

  attr_reader :bikes

  def full?
    bikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end
end