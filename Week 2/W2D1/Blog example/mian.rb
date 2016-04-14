require_relative 'Blog'
require_relative 'Post'
require_relative 'Comment'

b = Blog.new
puts b.posts

p = Post.new("Hey my first post", "I would like a bagel", "@adamdahan")

c1 = Comment.new("@bobdylan", "Hey your first post is kind of shady")
c2 = Comment.new("@mickeymouse", "yeah slim shady")

p.comments << c1
p.comments << c2

puts p.title
puts p.author
puts p.text
puts
p.show_comments

b.posts << p
b.show_posts