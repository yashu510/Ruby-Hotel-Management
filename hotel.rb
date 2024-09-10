class Hotel
  attr_accessor :rooms

  def initialize(num_of_rooms)
    @rooms = Array.new(num_of_rooms) { |i| Room.new(i + 1) }
    @unassigned_parties = []
  end
  

  # Check-in a party to the first available room or add to unassigned list
  def check_in(party)
    available_room = @rooms.find { |room| !room.occupied? }

    if avail_room
      avail_room.assign_party(party)
      puts "Checked in party of #{party.size} to room #{avail_room.number}."
    else
      @unassigned_parties << party
      puts "No available rooms. Party of #{party.size} added to the waiting list."
    end
  end

    # Check-out a party from a specific room
    def check_out(room_number)
      room = @rooms.find { |r| r.number == room_number }
  
      if room
        room.vacate
        puts "Party from room #{room_number} is now on the waiting list."
        @unassigned_parties << room.party if room.party
      else
        puts "Room #{room_number} does not exist."
      end
    end

    # List the status of all rooms
  def list_rooms
    @rooms.each do |room|
      if room.occupied?
        party_names = room.party.guests.map(&:name).join(", ")
        puts "Room #{room.number}: Occupied by party with guests: #{party_names}"
      else
        puts "Room #{room.number}: Vacant"
      end
    end
  end
  
# Add a new room to the hotel
def add_room
  new_room_number = @rooms.size + 1
  new_room = Room.new(new_room_number)
  @rooms << new_room
  puts "Added room #{new_room_number}."
end

# Remove a room from the hotel, if it's vacant
def remove_room(room_number)
  room = @rooms.find { |r| r.number == room_number }

  if room.nil?
    puts "Room #{room_number} does not exist."
  elsif room.occupied?
    puts "Cannot remove room #{room_number} because it is currently occupied."
  else
    @rooms.delete(room)
    puts "Removed room #{room_number}."
  end
end

  def no_rooms?
    @rooms.all? { |room| room.party != nil }
  end

  def avail_room
    @rooms.find { |room| room.party.nil? }
  end

  def get_parties_without_rooms
    @rooms.select { |room| room.party.nil? }
  end

  def get_rooms_with_parties
    @rooms.reject { |room| room.party.nil? }
  end

  # Updated method to list rooms with Allocated party names
  def get_partyDetails_from_rooms
    @rooms.each_with_index do |room, index|
      if room.party
        party_guests = room.party.guests.map(&:name).join(", ")
        puts "Room #{index + 1}  Has #{room.party_name}.  #{room.party_name} Has the following Guests - #{party_guests}"
      else
        puts "Room #{index + 1}: is Available"
        end
    end
  end
end
