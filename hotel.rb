class Hotel
  attr_accessor :rooms

  def initialize(number_of_rooms)
    @rooms = []
    number_of_rooms.times { @rooms << Room.new }
  end

  def no_vacancies?
    @rooms.all? { |room| room.party != nil }
  end

  def available_room
    @rooms.find { |room| room.party.nil? }
  end

  def list_parties_without_rooms
    @rooms.select { |room| room.party.nil? }
  end

  def list_rooms_without_parties
    @rooms.reject { |room| room.party.nil? }
  end

  # Updated method to list rooms with assigned party names
  def list_rooms_with_parties
    @rooms.each_with_index do |room, index|
      if room.party
        party_guests = room.party.guests.map(&:name).join(", ")
       # puts "Room #{index + 1}  Party Name: #{room.party_name} has the following  Guests - #{party_guests}"
        puts "Room #{index + 1}  has #{room.party_name}.  #{room.party_name} have the following  Guests - #{party_guests}"
      else
        puts "Room #{index + 1}: No party assigned"
        end
    end
  end
end
