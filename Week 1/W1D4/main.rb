# This is the main entrypoint into the program
# It requires the other files/gems that it needs

require 'pry'
require_relative './candidates'
require_relative './filters'

## Your test code can go here


pp qualified_candidates(@candidates)

# these can be read as if its expecting true its getting (output)
# if its expecting false its getting (output)


# since it sucks to build a million if else statements, its better to create methods -- look up after ==> on each number

