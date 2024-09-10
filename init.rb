require_relative 'hotel'
require_relative 'room'
require_relative 'party'
require_relative 'guest'

# Initialize the hotel through the user action
puts "Please enter the number of rooms for the hotel:"
number_of_rooms = gets.chomp.to_i
hotel = Hotel.new(number_of_rooms)

loop do
  puts "\n--- Hotel Functionlity  ---"
  
  puts "1. List all rooms"
  puts "2. Add a new room"
  puts "3. Remove a room"
  puts "4. Check-in a party"
  puts "5. Check-out a party"
  puts "6. Exit"
  print "Please select an option (1-6): "
  choice = gets.chomp.to_i

  case choice
  when 1
    hotel.list_rooms

  when 2
    hotel.add_room

  when 3
    puts "Enter the room number to remove:"
    room_number = gets.chomp.to_i
    hotel.remove_room(room_number)


  when 4
    puts "Party is checked-in with  Guest:"
    
    ##hotel.get_partyDetails_from_rooms(party)

  when 5
    puts "Enter the room number to check out:"
    room_number = gets.chomp.to_i
    puts "Room #{room_number} number is checked out:"
 

  when 6
    puts "Exiting the Hotel Application."
    break

  else
    puts "Invalid selection. Please choose a valid selection."
  end

end


# Initialize Party and assign a Party Name along with Guest Details
#party_1 = Party.new("Gadde Family", [Guest.new("Yaswanth", party_1), Guest.new("Nikhil", party_1)])
#party_2 = Party.new("Vinnakota Family", [Guest.new("Bunny", party_2)])

# Check room availabilty and assign parties a room.

=begin
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

=end
