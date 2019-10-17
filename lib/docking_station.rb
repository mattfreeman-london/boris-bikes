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
      raise "No bikes available."
    end
  end

  def dock_bike(bike)
    return fail "Station already full." unless @bikes_docked.length < 1
    @bikes_docked.push(bike)
  end

end
