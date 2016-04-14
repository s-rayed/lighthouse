# What do symbols look like?
#
# This is the one area where everyone agrees. Most symbols looks like a colon followed by a non-quoted string:
# :myname

# Another way to make a symbol is with a colon followed by a quoted string, which is how you make a symbol whose string representation contains spaces:
# :'Steve was here and now is gone'

# When using quotes in a symbol, you can use either single or doublequotes, as long as the beginning and ending quotes are the same type. Single or double, the string and numeric representations are identical, and the object_id is the same.
#
# Symbols are immutable. Their value remains constant during the entirety of the program. They never appear on the left side of an assignment. You'll never see this:

# :myname = "steve"
# If you were to try that, you'd get the following error message:
#
# *.rb:37: parse error, unexpected '=', expecting $

# Symbols ARE used like this:
#   mystring = :s
# Or this:
#   mystring = :s.to_s
# Or this:
#   myint = :s.to_i

# It's a string. No it's an object. No it's a name.
#
# There are elements of truth in each of the preceding assertions, and yet in my opinion they are not valuable, partially because they depend on a deep knowledge of Ruby to understand their significance. I prefer to answer the question "what are symbols" in a language independent manner:
#
# A Ruby symbol is a thing that has both a number (integer) representation and a string representation.
#
# In its actual Ruby implementation, the symbol does not contain either a string or a number -- the string and number are kept somewhere else. That's not important for understanding how it works, however, so feel free to think of the symbol  as containing the string and number if that's easier to visualize. In your code, you can derive the number representation with the :mysymbol.to_i syntax, and the string representation with the :mysymbol.to_s syntax. In most situations, a symbol yields the string representation even without the to_s conversion.
#
# The string representation of the number is MUCH more important than the number part. As a matter of fact, the number part is seldom used.
#
# Let's explore further using code:
#
# puts :adam
# puts :adam.to_s
# #puts :adam.to_i
# puts :adam.class
#
#
# # Now let's explore some code that proves that the symbol's value cannot be changed at runtime:
#
# adam = "Big Steve"
# adam = "bob"
# puts adam
#
# # Performance optimizations

puts :myvalue.object_id
puts :myvalue.object_id
puts "myvalue".object_id
puts "myvalue".object_id

# What are symbols not?
#
# A Symbol is Not  a String
#
# A Ruby symbol is not a string. Ruby string objects have methods such as capitalize, and center. Ruby symbols have no such methods:
#
# mystring = :adam.capitalize
# puts mystring

# * undefined method `capitalize' for :adam:Symbol (NoMethodError)

# A Symbol is not (Just) a Name
#
# The following illustrates the the use of a symbol as a name:
# attr_reader :length

# A symbol is a way to pass string information, always assuming that:
# The string needn't be changed at runtime.
# The string doesn't need methods of class String.
# Because a symbol can be converted to a string with the .to_s method, you can create a string with the same value as the symbol's string representation, and then you can change that string at will and use all String methods.
