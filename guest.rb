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
    room.entry_till += room.entry_fee
  end

  def add_song(song, room)
    room.playlist << song
  end

  def fav_song_on(song)
    if song.name == @fav_song
      return "Whoo, I love #{song.artist}"
    end
  end

  def drinks_tab_count
    return @drink_tab.count
  end

  def order_drink(drink)
    @drink_tab << drink
  end

  def drink_tab_total
    sum = 0
    for drink in @drink_tab
       sum += drink.price
    end
    return sum
  end

  def pay_drink_tab
    @wallet -= drink_tab_total()
  end

end
