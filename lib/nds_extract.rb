$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

def gross_for_director(director_data)
  total= 0
  counter = 0
  while counter < director_data[:movies].length do
    total += director_data[:movies][counter][:worldwide_gross]
    counter += 1
  end
 total
end

def directors_totals(nds)
  hash = {}
  director_number = 0
  while director_number < nds.length do
    hash[nds[director_number][:name]] = gross_for_director(directors_database[director_number])
    director_number += 1
  end
 hash
end