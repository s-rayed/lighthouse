class Board

  attr_accessor :coordinate

  def initialize
    @coordinate = nil
  end

  MAX_X = 9

  # Types of Ship
  BATTLESHIP = 'B'
  DESTROYER  = 'D'
  CRUISER    = 'C'
  EMPTY      = '~'

  # The grid below represents the game grid. It's a hash of arrays of strings. Don't let the weird syntax confuse you. It's just a fancy way of defining an array of strings. Each row is actual an array of strings. Each spot is either empty (~) or has a ship: Battleship (B), Destroyer(D), or Cruiser(C).
  GRID = {
    #     0 1 2 3 4 5 6 7 8 9
    A: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    B: %w{~ ~ ~ C ~ ~ ~ B ~ ~},
    C: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    D: %w{~ ~ ~ ~ ~ ~ ~ B ~ ~},
    E: %w{~ ~ C C ~ ~ ~ ~ ~ ~},
    F: %w{~ ~ ~ ~ ~ D D D D ~},
    G: %w{~ ~ ~ ~ ~ ~ ~ ~ ~ ~}
  }

    class OffBoardError < StandardError
    end


    # def self.play(coordinate)
    # # A8
    # search = coordinate.split('')
    # if (search[1].to_i - 1) >= 10 || (search[0]).match(/(h-z)/)
    #   raise OffBoardError, 'Play H9 off board'
    # else
    #   case GRID[search[0].to_sym][search[1].to_i - 1]
    #     when BATTLESHIP
    #       return Battleship.new
    #     when CRUISER
    #       return Cruiser.new
    #     when DESTROYER
    #       return Destroyer.new
    #     else
    #       return nil
    #     end
    #   end
    # end

    # Faisal take up

    class << self 
      def play(coordinates)
        y = coordinates[0].to_sym
        x = coordinates[1..coordinates.length - 1].to_i

        if (y > "G".to_sym || x < 1 || x > MAX_X + 1)
          raise OffBoardError.new("Play #{coordinates} off board")
        end
        result = GRID[y][x - 1]
        case result
        when "B"
          Battleship.new
        when "D"
          Destroyer.new
        when "C"
          Cruiser.new
        else
          nil
        end
      end
    end






end


