#Design the blog model --- start by building the comment -- because no pint to start the blog without the building blogs

#File name should be the 

class Comment

  attr_reader :author, :date, :text

  def initialize(author, text)
    @author = author
    @date = Time.now
    @text = text
  end

end

c = Comment.new("Adam", "Hey, this is my first comment!")