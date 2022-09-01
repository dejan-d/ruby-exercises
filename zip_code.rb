#THIS IS THE HASH(DATABASE)

dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisko" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}


#THESE ARE METHODS

#Get city names from the the hash
def get_city_names(city)
  city.keys
end


#Get area code based on given hash and key
def get_area_code(cities, key)
  cities[key]
end


#THIS IS THE PROGRAM

#Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name? (Y/N)" #1
  answer = gets.chomp.downcase #2 Input
  break if answer != "y" 
  
  puts "Which city do you want to lookup the areacode for?" #3
  puts get_city_names(dial_book) 
  
  puts "Enter your selection: " #4
  zip_city = gets.chomp #input
  
  if dial_book.include?(zip_city) #5 If Hash include zip_city input ...
    puts "The area code for #{zip_city} is #{get_area_code(dial_book, zip_city)}" #returns value for zip_city key
  else 
    puts "You entered invalid city name"
  end
end

