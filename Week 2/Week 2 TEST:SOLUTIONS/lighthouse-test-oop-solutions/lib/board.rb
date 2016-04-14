require 'pry'

class Board

  MAX_X = 9

  # Types of Ship
  BATTLESHIP = 'B'
  DESTROYER  = 'D'
  CRUISER    = 'C'
  EMPTY      = '~'

  class OffBoardError < StandardError
  end

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

  class << self
    def play(coordinates)
      new_array = coordinates.split('')
      y = coordinates[0].to_sym
      x = coordinates[1..(coordinates.length)].to_i - 1
      # check if off board to be raised
      if (y > "G".to_sym || x < 1 || x > MAX_X + 1)
        raise OffBoardError.new("Play #{coordinates} off board")
      end
      # respond with grid play
      case GRID[y][x - 1]
      when "B"
        Battleship.new
      when "C"
        Cruiser.new
      when "D"
        Destroyer.new
      else
        nil
      end
    end
  end

end
