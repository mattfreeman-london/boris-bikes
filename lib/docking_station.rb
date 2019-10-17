require_relative 'bike'

class DockingStation

attr_accessor :bikes_docked
attr_reader :bike

  def initialize
    @bikes_docked = []
  end

  def release_bike
    fail 'No bikes available.' if @bikes_docked.empty?
    @bikes_docked.pop
  end

  def dock_bike(bike)
    fail 'Docking station full.' if @bikes_docked.count >= 20
    @bikes_docked << bike
  end

end
