# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

# find out quialified candidates from an array of hashes.
# what makes a candidate qualified
  # 1. years of exp. >= 2              =====> is_experienced?
  # 2. age >= 18                       =====> is_old_enough?
  # 3. applied_date < 15 ago           =====> applied_recently?
  # 4. 100+ github points              =====> has_active_github?
  # 5. experience with ruby or python> =====> has_languages?
def find(id)
  raise '@candidates must be an Array' if @candidates.nil?
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    else
      return nil
    end
  end
  #@candidates.map {|x| x[:id].eql?(id)}[0]
end

def is_experienced?(candidate)
  unless candidate.has_key?(:years_of_experience)
    raise ArgumentError, 'candidate must have a :years_of_experience key'
  end
  candidate[:years_of_experience] >= 2
end

def is_old_enough?(candidate)
  candidate[:age] >= 18
end

def applied_recently?(candidate)
  candidate[:date_applied] >= 15.days.ago.to_date # The reason it is >= not <= is because time moves forward. so if it was 20 days ago its a prob. if it was 2 days ago then good. the to_date makes ruby change the value according to todays date. so its essentially calculating that value daily. 
end

def has_active_github?(candidate)
  candidate[:github_points] >= 100 
end

def has_languages?(candidate)
  candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
end

def qualified_candidates(candidates)
  qualified = []
  @candidates.each do |candidate|  ## adding the @ symbol gives it access to every file in your project or something.
    is_qualified = is_experienced?(candidate) &&
                    is_old_enough?(candidate) &&
                    applied_recently?(candidate) &&
                    has_active_github?(candidate) &&
                    has_languages?(candidate)
    if is_qualified
      qualified << candidate
    end
  end
  qualified
end
# More methods will go below
