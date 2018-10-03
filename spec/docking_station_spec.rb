require 'docking_station'
require 'bike'

describe DockingStation do
  
  describe '#dock' do
  it 'raises an error when full' do
  DockingStation::DEFAULT_CAPACITY.times do
    subject.dock Bike.new
  end
  expect { subject.dock Bike.new }.to raise_error 'Docking station full'
  end
  end
end