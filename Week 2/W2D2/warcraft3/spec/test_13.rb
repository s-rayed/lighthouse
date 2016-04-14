require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(0,3)
  end

  describe "#dead?" do
    it "A dead unit should not be able to attack another unit" do
      @unit.dead?
      expect(@unit.attack!(@enemy)).to eq(nil)
    end
  end
end