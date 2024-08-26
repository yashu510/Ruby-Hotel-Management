class Room
  attr_accessor :party

  def initialize
    @party = nil
  end

  def assign_party(party)
    if @party.nil?
      @party = party
      party.assign_room(self) # Make sure the party knows which room it's assigned to
    else
      raise "Room already occupied by a party."
    end
  end

  def remove_party
    @party = nil
  end

  # New method to get the party name
  def party_name
    @party ? @party.name : "No party assigned"
  end
end
