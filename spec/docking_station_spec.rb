require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to :dock_bike }

  it "creates an empty array on spawning" do
    docking_station = DockingStation.new
    expect(docking_station.bikes_docked.length).to eq 0
  end

  it "allows us to show a new bike is docked" do
    docking_station = DockingStation.new
    bike = Bike.new
    docking_station.dock_bike(bike)
    expect(docking_station.bikes_docked.length).to eq 1
  end

  it 'releases working bikes' do
    bike = subject.release_bike
    expect(bike).to be_working
  end

end
