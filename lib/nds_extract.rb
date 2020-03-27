$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  total=0
  counter = 0
  while counter < director_data[:movies].length do
    total += director_data[:movies][counter][:worldwide_gross]
    i += 1
  end
 total
end

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }
def directors_totals(nds)
  result = {}
  director_i = 0
  while director_i < nds.length do
    #binding.pry
    result[nds[director_i][:name]] = gross_for_director(directors_database[director_i])
    director_i += 1
  end
 result
end