require_relative 'bike'

class DockingStation

attr_accessor :bikes_docked
attr_reader :bike

  def initialize
    @bikes_docked = []
  end

  def release_bike
    if @bikes_docked.length > 0
      @bikes_docked.pop(0)
      Bike.new
    else
      fail "No bikes available."
    end
  end

  def dock_bike(bike)
    @bikes_docked.push(bike)
  end

end
