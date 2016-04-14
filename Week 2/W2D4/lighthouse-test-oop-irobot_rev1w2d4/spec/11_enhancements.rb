# require_relative 'spec_helper'

# describe Robot do
#   before :each do
#     @robot = Robot.new
#     @robot2 = Robot.new
#     @non_robot = []
#   end

#   describe '#heal!' do
#     it "should raise RobotAlreadyDeadError 'Your Robot is dead'" do
#       @robot.wound(100)
#       expect { @robot.heal!(20) }.to raise_error(StandardError)
#     end
#   end

#   describe "#attack!" do
#     it "should raise RobotAlreadyDeadError 'Your not attacking a robot' " do
#       expect { @robot.attack!(@non_robot) }.to raise_error(StandardError)
#     end
#   end
# end