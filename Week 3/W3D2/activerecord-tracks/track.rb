require 'active_record'

class Track < ActiveRecord::Base
	belongs_to :track_list

end