require_relative 'hotel'
require_relative 'room'
require_relative 'party'
require_relative 'guest'

# Check if the user provided a number of rooms as an argument
if ARGV.length < 1
  puts "Usage: ruby init.rb <number_of_rooms>"
  exit
end

# Get the number of rooms from the command-line arguments
number_of_rooms = ARGV[0].to_i

# Initialize the hotel with the specified number of rooms
hotel = Hotel.new(number_of_rooms)

# Create parties with guests and names
party1 = Party.new("Smith Family", [Guest.new("Alice", party1), Guest.new("Bob", party1)])
party2 = Party.new("Jones Family", [Guest.new("Charlie", party2)])

# Assign rooms to parties if available
if hotel.available_room
  room1 = hotel.available_room
  room1.assign_party(party1)
end

if hotel.available_room
  room2 = hotel.available_room
  room2.assign_party(party2)
end


# Check hotel status
puts " Total Rooms for this Hotel : #{number_of_rooms}"
puts "No vacancies " if hotel.no_vacancies?

puts "Rooms with parties: #{hotel.list_rooms_without_parties.size}"

puts "Parties without rooms: #{hotel.list_parties_without_rooms.size}"


# List all rooms with their assigned party names
hotel.list_rooms_with_parties


