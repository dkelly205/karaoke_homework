require('minitest/rg')
require('minitest/autorun')
require_relative('../guest.rb')
require_relative('../room.rb')




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
    room = Room.new("shenanigans", 5.00, 150, 500.00 )
    @guest.enter_room(room)
    assert_equal(1, room.guest_count)
  end

  def test_leave_room
    room = Room.new("shenanigans", 5.00, 150, 500.00 )
    @guest.enter_room(room)
    @guest.enter_room(room)
    @guest.enter_room(room)
    @guest.leave_room(room)
    assert_equal(2, room.guest_count)
  end

  def test_pay_entry_fee
    room = Room.new("shenanigans", 5.00, 150, 500.00 )
    @guest.pay_entry_fee(room)
    assert_equal(95, @guest.wallet)
  end



end
