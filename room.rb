class Room

  attr_reader :name, :entry_fee, :guest_limit, :number_of_guests, :playlist, :entry_till
  attr_writer :number_of_guests, :playlist, :entry_till

  def initialize(name, entry_fee, guest_limit)
    @name = name
    @entry_fee = entry_fee
    @guest_limit = guest_limit
    @entry_till = 0
    @number_of_guests = 0
    @playlist = []
  end

  def guest_count
    return @number_of_guests
  end

  def playlist_count
    return @playlist.count
  end

  def entry_till
    return @entry_till
  end

  def play_song(song)
    # for song in @playlist
    return song.name
    # end
  end

end
