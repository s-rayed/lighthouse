require_relative 'spec_helper'

describe SiegeEngine do

  before :each do
    @siege_engine = SiegeEngine.new
    @barracks = Barracks.new
  end

  describe "#new" do
    it "initializes a siege_engine with 50 AP and 400 HP" do
      expect(@siege_engine.attack_power).to eql(50)
      expect(@siege_engine.health_points).to eql(400)
    end
  end

  describe "#attack" do
    it "gives 2 times the damage against a barracks" do
      @siege_engine.attack!(@barracks)
      expect(@barracks.health_points).to eq(400)
    end
  end



end