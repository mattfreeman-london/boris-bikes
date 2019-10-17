require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to :release_bike }

  it { is_expected.to respond_to :dock_bike }

  it "creates an empty array on spawning" do
    expect(subject.bikes_docked.length).to eq 0
  end

  it "allows us to show a new bike is docked" do
    bike = Bike.new
    subject.dock_bike(bike)
    expect(subject.bikes_docked.length).to eq 1
  end

  it 'releases working bikes' do
    bike = Bike.new
    subject.dock_bike(bike)
    bike = subject.release_bike
    expect(bike).to be_working
  end

  it "returns no bike error" do
    expect {subject.release_bike}.to raise_error("No bikes available.")
  end

end
