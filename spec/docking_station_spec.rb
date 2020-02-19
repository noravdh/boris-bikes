require 'docking_station'

describe DockingStation do

  it "has a default capacity of 20" do
    expect(subject.capacity).to eq DockingStation::DEFAULT_CAPACITY
    end

    it "allows you to change the capacity" do
      docking_station = DockingStation.new(21)
      expect(docking_station.capacity).to eq 21
      end
  
  describe "#release_bike" do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it 'raises and error when there are no bikes available' do
      expect{ subject.release_bike }.to raise_error 'No bikes available'
    end

    it 'raises an error when you try to release a broken bike' do
      bike = Bike.new
      bike.report_broken
      subject.dock(bike)
      expect{subject.release_bike}.to raise_error 'This bike is broken'
    end
  end


  describe "#dock" do
    it "docks something" do
      bike = Bike.new
      expect(subject.dock(bike)).to eq bike
    end

    it "should take one bike when docking" do
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "raise an error when the dock is full" do
      subject.capacity.times {subject.dock(Bike.new)}
      expect { subject.dock Bike.new}.to raise_error "Docking station full"
    end


    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.bike).to eq bike
    end
  end
end