require('minitest/rg')
require('minitest/autorun')
require_relative('../room.rb')

class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("shenanigans", 5.00, 150, 500.00 )
  end

  def test_room_name
    assert_equal("shenanigans", @room.name)
  end

  def test_room_entry_fee
    assert_equal(5.00, @room.entry_fee)
  end

  def test_room_guest_limit
    assert_equal(150, @room.guest_limit)
  end

  def test_room_funds
    assert_equal(500.00, @room.funds)
  end


end
