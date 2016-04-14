require_relative "Lecture_code_1(Active record example)"

c = Country.new("Fakeland", 1200, :Fakeland, 125126)

c.save

c.name = "Superland" # --> this is changing fakeland to superland

c.save

countries = Country.alll

p countries[0]