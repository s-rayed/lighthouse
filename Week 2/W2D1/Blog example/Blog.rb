class Blog

  attr_accessor :posts

  def initialize
    @posts = []
  end

  def display

  end

  # if we wanted to do a login we would do
  #def login(username, password)
    #does username password combo match to users in database?, if it does allow access, else kick them out to landing page of site
  #end

  def show_posts
    puts "Posts\n"
    puts "=" * 10
    puts "\n"
    @posts.each do |p|
      puts "        #{p.author}\n#{p.date}\n#{p.text}"
      p.comments.each do |c|
          puts "#{c.author}\n#{c.date}\n#{c.text}"
        end
    end



end