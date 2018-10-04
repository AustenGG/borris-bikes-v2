require 'docking_station'
require 'bike'

describe DockingStation do
  
 describe 'dock' do
    it 'raises an error when full' do
      subject.capacity.times { subject.dock Bike.new }
      expect { subject.dock Bike.new }.to raise_error 'Docking station full'

    end
 end
end

