class Party
  attr_accessor :name, :guests, :room

  def initialize(name, guests = [])
    @name = name
    @guests = guests
    @room = nil
  end

  def assign_room(room)
    @room = room
  end

  def room_assigned?
    !@room.nil?
  end
end
