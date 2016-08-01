require 'rails_helper'

RSpec.describe Game, type: :model do

  before(:each) do
    @game = FactoryGirl.build(:game)
  end

  it 'should belong to Manufacturer' do
      expect(@game).to belong_to :manufacturer
  end
end
