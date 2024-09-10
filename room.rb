class Room
  attr_reader :number, :party

  def initialize(number)
    @number = number
    @party = nil
  end

  def occupied?
    !@party.nil?
  end

  def vacate
    if occupied?
      puts "Room #{number} is now vacant."
      @party.remove_room
      @party = nil
    else
      puts "Room #{number} is  vacant."
    end
  end

  def allocate_party(party)
    if @party.nil?
      @party = party
      party.allocate_room(self) 
    else
      raise "Room is already occupied."
    end
  end

  #  method to get the party name
  def party_name
    @party ? @party.name : "Vacant"
  end
end
