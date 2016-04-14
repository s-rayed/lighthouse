require 'active_record'
require 'pp'
require_relative('./track')
require_relative('./track_list')

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  username: 'faisal',
  database: 'activerecord_tracks'
)


tl_1 = TrackList.create(name: "my playlist")
Track.create(track_list: tl1)



class App

	def run
		while true
			puts ""
			puts "Please enter a command: [q/l/new]"
			case gets.chomp 
			when 'q'
				break
			when 'l'
				pp TrackList.all
			when 'del'
				puts "Enter the track to remove:"
				query = gets.chomp
				t_remove = TrackList.where(name: query)
				TrackList.destroy(t_remove.id)
			when 'search'
				puts "Enter the query to search:"
				query = gets.chomp
				pp TrackList.where("name LIKE '%#{query}%'")
			when 'new'
				puts "Please enter new track list name:"
				list_name = gets.chomp
				pp TrackList.create(name: list_name)
			when 'all_tracks'
				puts "Please enter new track list name:"
				list_name = gets.chomp
				t1 = TrackList.where(name: list_name)
				pp Track.where(track_list: t1)
			end
		end
	end

end

App.new.run