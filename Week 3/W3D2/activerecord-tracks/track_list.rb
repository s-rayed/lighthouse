require 'active_record'

class TrackList < ActiveRecord::Base
	has_many :tracks

end