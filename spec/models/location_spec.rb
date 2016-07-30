require 'rails_helper'

RSpec.describe Location, type: :model do

  before(:each) do
    @location = FactoryGirl.build :location
  end

  # it 'can be created using a factory' do
  #   location = FactoryGirl.build(:location)
  #   expect(location.name).to eq('Pizza Works')
  # end
  #
  it 'has a valid factory' do
    expect(Location.new).to be_valid
  end

  it 'can be instantiated' do
    expect(@location).to be_an_instance_of(Location)
  end

  it 'has a default name of Pizza Works' do
    expect(@location.name).to eq('Pizza Works')
  end

  # it 'can be assigned the name of an arcade' do
  #   location = Location.new
  #   location.name = '16-Bit Bar'
  #   expect(location.name).to eq('16-Bit Bar')
  # end

  # it 'assembles a proper virtual address attribute' do
  #   location = Location.new
  #   location.name = '16-Bit Bar'
  #   location.street = '254 South Fourth Street'
  #   location.city = 'Columbus'
  #   location.state = 'Ohio'
  #   location.zip = '43215'

  #   expect(location.address).to eq('254 South Fourth Street Columbus, Ohio
  #                                   43215')
  # end
end
