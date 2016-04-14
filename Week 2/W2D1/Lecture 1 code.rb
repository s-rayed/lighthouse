class Box


    attr_accessor :height :width, :depth # can also do the following 2 instead of this.
    # attr_reader :height, :width, :depth
    # attr_writer :height :width, :depth

    def initialize(height, width, depth)
      @height = height
      @width = width
      @depth = depth                        ## the only ones that need to match are the height in the line 9 @height = height and the height in the initialize 

    end

    def height=(h)
        @height = h
    end


    def volume

        height * width * depth

    end

    def can_fit(box)

      volume / box.volume

    end

end

box1 = Box.new(10,15,20)
box2 = Box.new(2,2,2)
puts "Box1 can fit inside box 2 #{box1.can_fit(box2)} times"


# box = Box.new(10, 15, 20)
#   puts box.height
#   puts box.height = 30 ## the reason we dont do box.height(30) is because ruby doesnt think its an instance that accepts parameters.
#   puts box.height