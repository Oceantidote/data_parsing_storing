# require 'json'

# filepath = 'data/beers.json'

# serialized_beers = File.read(filepath)

# p serialized_beers


# beers = JSON.parse(serialized_beers)

# beers["beers"].each do |beer|
#   p beer["name"]
# end


# new_beers = { beers: [
#   {
#     name:       'Edelweiss',
#     appearance: 'White',
#     origin:     'Austria'
#   },
#   {
#     name:       'Guinness',
#     appearance: 'Stout',
#     origin:     'Ireland'
#   }
# ]}

# new_filepath = 'data/new_beers.json'

# File.open(new_filepath, 'wb') do |file|
#   file.write(JSON.generate(new_beers))
# end



require 'json'
require 'open-uri'

puts "Enter github nickname"

names = []
2.times do
  puts "name please"
  username = gets.chomp
  names << username
end

github_users = []

names.each do |github_name|
  url = "https://api.github.com/users/#{github_name}"
  user_serialized = open(url).read
  user = JSON.parse(user_serialized)
  github_users << user
end

# sorted = github_users.sort_by { |u| u["public_repos"] }
# p sorted

github_users.each {|u| p "#{u["name"]} - #{u["public_repos"]}"}
p github_users

# puts "#{user['name']} - #{user['bio']}"































