class Hotel
  attr_accessor :rooms

  def initialize(number_of_rooms)
    @rooms = []
    number_of_rooms.times { @rooms << Room.new }
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
