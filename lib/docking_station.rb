class DockingStation

attr_accessor :bikes_docked
attr_reader :bike

  def initialize
    @bikes_docked = []
  end

  def release_bike

  end

  def dock_bike(bike)
    @bikes_docked.push(bike)
  end

end
