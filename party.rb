class Party
  attr_accessor :name, :guests, :room

  def initialize(name, guests = [])
    @name = name
    @guests = guests
    @room = nil
  end

  def allocate_room(room)
    @room = room
  end
end
