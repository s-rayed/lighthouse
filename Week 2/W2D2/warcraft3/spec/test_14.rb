require_relative 'spec_helper'

describe Barracks do
  
  before :each do
    @barracks = Barracks.new
  end

  it "should start off with 500 lumber resources" do
    expect(@barracks.lumber).to eq(500)
  end

end