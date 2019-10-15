require 'csv'

# TODO - let's read/write data from beers.csv
# filepath    = 'data/beers.csv'
# csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }

#  PARSING

# CSV PARSE WITHOUT OPTIONS

# counter = 0
# CSV.foreach(filepath) do |record|
#   if counter > 0
#     p "#{record[0]} is #{record[1]} and is from #{record[2]}"
#   end
#   counter += 1
#   # Here, row is an array of columns
#   # puts "#{row[0]} | #{row[1]} | #{row[2]}"
# end

# CSV WITH HEADERS

# CSV.foreach(filepath) do |record|
#   p "#{record["Name"]} is #{record["Appearance"]} and is from #{record["Origin"]}"

#   # Here, row is an array of columns
#   # puts "#{row[0]} | #{row[1]} | #{row[2]}"
# end


# STORING

require 'csv'

beers = [["Asahi", "Pale Lager", "Japan"], ["Guinness", "Stout", "Ireland"]]

csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'data/new_beers.csv'

CSV.open(filepath, 'wb', csv_options) do |csv|
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << beer
  end

end











