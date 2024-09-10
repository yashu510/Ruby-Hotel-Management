class Hotel
  attr_accessor :rooms

  def initialize(num_of_rooms)
    @rooms = Array.new(num_of_rooms) { |i| Room.new(i + 1) }
    @unassigned_parties = []
  end
  

  def list_rooms
    if @rooms.empty?
      puts "There are no rooms in the hotel."
      return
    end
  
    @rooms.each do |room|
      if room.occupied?
        puts "Room #{room.number}: Occupied  with guests"
      else
        puts "Room #{room.number}: Vacant"
      end
    end
  end
  
  
# Add room
def add_room
  add_room_number = @rooms.size + 1
  new_room = Room.new(add_room_number)
  @rooms << new_room
  puts "Added room #{add_room_number}."
end

# Delete Room.
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
