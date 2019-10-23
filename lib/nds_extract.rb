
require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  k = 0
  while k < nds.size do
    director = nds[k]
    result[director[:name]] = gross_for_director(director)
    k += 1
  end
  result
end

def gross_for_director(director_data)
  k = 0
  total = 0
  while k < director_data[:movies].length do
  total += director_data[:movies][k][:worldwide_gross]
  k += 1
  end
total
end