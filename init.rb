require_relative 'hotel'
require_relative 'room'
require_relative 'party'
require_relative 'guest'

# Get number of rooms as an argument in input
if ARGV.length < 1
  puts "Please enter number of rooms in the hotel.Hotel "
  exit
end

# total number of rooms 
total_rooms = ARGV[0].to_i

# Initialize the hotel with total rooms passed.
hotel = Hotel.new(total_rooms)

# Initialize Party and assign a Party Name along with Guest Details
party_1 = Party.new("Gadde Family", [Guest.new("Yaswanth", party_1), Guest.new("Nikhil", party_1)])
party_2 = Party.new("Vinnakota Family", [Guest.new("Bunny", party_2)])

# Check room availabilty and assign parties a room.
if hotel.avail_room
  room1 = hotel.avail_room
  room1.allocate_party(party_1)
end

if hotel.avail_room
  room2 = hotel.avail_room
  room2.allocate_party(party_2)
end

# Print the Hotel Details
puts " Total Rooms in Hotel : #{total_rooms}"
puts "No Rooms are Available " if hotel.no_rooms?
puts "Rooms with parties: #{hotel.get_rooms_with_parties.size}"
puts "Parties without rooms: #{hotel.get_parties_without_rooms.size}"

# List all rooms with their assigned party names
hotel.get_partyDetails_from_rooms
