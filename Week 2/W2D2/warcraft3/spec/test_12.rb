require_relative 'spec_helper'

describe Unit do

  before :each do
    @unit = Unit.new(0, 3)
  end

  describe "#dead?" do
    it "should die if HP is less than or equal to 0" do
      @unit.dead?
      expect(@unit.health_points).to eq(0)
    end
  end
end

