class Guest

  attr_reader :name, :fav_song, :wallet

  def initialize(name, fav_song, wallet)
    @name = name
    @fav_song = fav_song
    @wallet = wallet
    @drink_tab = []
  end

  def enter_room(room)
    if room.guest_count < room.guest_limit
      room.number_of_guests += 1
    end
  end

  def leave_room(room)
    room.number_of_guests -= 1
  end

  def pay_entry_fee(room)
    @wallet -= room.entry_fee
  end





end
