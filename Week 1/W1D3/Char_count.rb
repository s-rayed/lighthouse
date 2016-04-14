def return_indices(string)
  new_hash = Hash.new{0}
  letter_indice = 0

  string.split("").each do |letter|
    letter_indice += 1
      if letter != " "
        if new_hash.has_key?(letter)
          new_hash[letter][0] += 1
          new_hash[letter] << letter_indice
        else
          new_hash[letter] = [1, letter_indice]
        end
      end
    end
    return new_hash
  end

  puts return_indices("lighthouse in the house...")



