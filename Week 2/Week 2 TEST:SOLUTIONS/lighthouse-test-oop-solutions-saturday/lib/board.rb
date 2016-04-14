class Board

  class OffBoardError < StandardError
  end

  MAX_X = 9

  # Types of Ship
  BATTLESHIP = 'B'
  DESTROYER  = 'D'
  CRUISER    = 'C'
  EMPTY      = '~'

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
    def play(coordinate)
      # GRID[:A][7]
      row = coordinate[0].to_sym
      column = coordinate[1..2].to_i - 1
      # column = coordinate[1..coordinate.length-1].to_i - 1
      if row <= :G && (0..MAX_X).include?(column)
        result = GRID[row][column]
        case result
        when 'B'
          Battleship.new
        when 'C'
          Cruiser.new
        when 'D'
          Destroyer.new
        else
          nil
        end
      else
        raise OffBoardError.new("Play #{coordinate} off board")
      end
    end
  end

end
