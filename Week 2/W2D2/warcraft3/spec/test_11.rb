require_relative 'spec_helper'



describe Barracks do
  
  before :each do 
    @barracks = Barracks.new
  end


  describe "#damage" do
    it "should take half damage" do
      @barracks.damage(4)
      expect(@barracks.health_points).to eq(498)
    end
  end

end  