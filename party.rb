class Party
  attr_reader :guests, :has_room

  def initialize(name, guests = [])
    @name = name
    @guests = guests
    @room = nil
  end

  def allocate_room(room)
    @room = room
  end

  def size
    @guests.size
  end

  def assign_room
    @has_room = true
  end

  def remove_room
    @has_room = false
  end

end
