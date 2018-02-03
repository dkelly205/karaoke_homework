class Room

  attr_reader :name, :entry_fee, :guest_limit, :funds, :number_of_guests
  attr_writer :number_of_guests

  def initialize(name, entry_fee, guest_limit, funds)
    @name = name
    @entry_fee = entry_fee
    @guest_limit = guest_limit
    @funds = funds
    @number_of_guests = 0
    @playlist = []
  end

  def guest_count
    return @number_of_guests
  end

  def add_song(song)
    @playlist << song
  end

  def playlist_count
    return @playlist.count
  end

end
