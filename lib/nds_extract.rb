require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  director_index = 0
  result = {}
  while director_index < nds.length do
    cc =nds[director_index]
    director_name =nds[director_index][:name]
  result[director_name] = gross_for_director(cc)
  director_index += 1
  end
  result 

end

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
 total = 0
 index = 0
while index < director_data[:movies].length do
    total += director_data [:movies][index][:worldwide_gross]
  index += 1
end
total
end
