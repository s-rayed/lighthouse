class Player

	MAX_SHOTS = 10
	attr_reader :hits, :misses
	attr_accessor :shots_fired

	def initialize
		@shots_fired = 0
		@hits = []
		@misses = []
	end

	def fire(coordinates)
		if self.shots_fired < MAX_SHOTS
			self.shots_fired += 1
			result = Board.play(coordinates)
			@hits << coordinates unless result.nil?
			@misses << coordinates if result.nil?
			result
		else
			false
		end
	end

end
