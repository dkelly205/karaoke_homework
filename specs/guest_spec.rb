require('minitest/rg')
require('minitest/autorun')
require_relative('../guest.rb')
require_relative('../room.rb')
require_relative('../song.rb')
require_relative('../drink.rb')




class GuestTest < MiniTest::Test

  def setup
    @guest = Guest.new("Frankie Boyle", "Wonderwall", 100)
  end

  def test_guest_name
    assert_equal("Frankie Boyle", @guest.name)
  end

  def test_guest_fav_song
    assert_equal("Wonderwall", @guest.fav_song)
  end

  def test_guest_wallet_count
    assert_equal(100 , @guest.wallet)
  end

  def test_enter_room
    room = Room.new("shenanigans", 5.00, 150)
    @guest.enter_room(room)
    assert_equal(1, room.guest_count)
  end

  def test_leave_room
    room = Room.new("shenanigans", 5.00, 150)
    @guest.enter_room(room)
    @guest.enter_room(room)
    @guest.enter_room(room)
    @guest.leave_room(room)
    assert_equal(2, room.guest_count)
  end

  def test_pay_entry_fee
    room = Room.new("shenanigans", 5.00, 150)
    @guest.pay_entry_fee(room)
    @guest.pay_entry_fee(room)
    assert_equal(90, @guest.wallet)
    assert_equal(10, room.entry_till)
  end

  def test_guest_cannot_enter_if_guest_limit_exceeded
    room = Room.new("shenanigans", 5.00, 1)
    @guest.enter_room(room)
    @guest.enter_room(room)
    @guest.enter_room(room)
    assert_equal(1, room.guest_count)
  end

  def test_add_song_to_playlist
    song = Song.new("Wonderwall", "Oasis")
    room = Room.new("shenanigans", 5.00, 150)
    @guest.add_song(song, room)
    assert_equal(1, room.playlist_count)
  end

  def test_if_fav_song_is_on
    song = Song.new("Wonderwall", "Oasis")
    assert_equal("Whoo, I love Oasis", @guest.fav_song_on(song))
  end

  def test_guest_can_order_drink
    drink = Drink.new("beer", 2.99, 1)
    @guest.order_drink(drink)
    assert_equal(1, @guest.drinks_tab_count)
  end

  def test_drink_tab_total
    drink = Drink.new("beer", 2.99, 1)
    @guest.order_drink(drink)
    drink2 = Drink.new("vodka", 4.00, 1)
    @guest.order_drink(drink2)
    assert_equal(6.99, @guest.drink_tab_total)
  end

  def test_pay_drink_tab
    drink = Drink.new("beer", 3.00, 1)
    @guest.order_drink(drink)
    drink2 = Drink.new("vodka", 4.00, 1)
    @guest.order_drink(drink2)
    @guest.drink_tab_total
    @guest.pay_drink_tab
    assert_equal(93, @guest.wallet)
  end




end
