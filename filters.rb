# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program
require './candidates'

def find(id)
  # Your code Here
  @candidates.detect {|e| e.id == id} 
end

def experienced?(candidate)
  candidate.years_of_experience >= 2
end

def qualified_candidates(candidates)
  # Your code Here
  candidate.select{|e| experienced(e) && e.github_points >= 100 && e.date_applied <= 15 && e.age >= 18 && (e.languages.include?("Python") || e.languages.include?("Ruby"))}
end

# More methods will go below
def ordered_by_qualifications(candidates)
  candidates.sort_by{ |obj1, obj2| (obj1.years_of_experience == obj2.years_of_experience) ? obj1.github_points <=> obj2.github_points : obj1.years_of_experience <=> obj2.years_of_experience }
end