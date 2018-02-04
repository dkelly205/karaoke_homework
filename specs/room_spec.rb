require('minitest/rg')
require('minitest/autorun')
require_relative('../room.rb')
require_relative('../guest.rb')
require_relative('../song.rb')


class RoomTest < MiniTest::Test

  def setup
    @room = Room.new("shenanigans", 5.00, 150)
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

  def test_room_entry_till_amount
    assert_equal(0, @room.entry_till)
  end

  def test_room_guest_count
    assert_equal(0, @room.guest_count)
  end

  def test_playlist_count
    assert_equal(0, @room.playlist_count)
  end

  def test_play_song_from_playlist
    song = Song.new("Wonderwall", "Oasis")
    song2 = Song.new("Paradise", "Coldplay")
    guest = Guest.new("Kevin Bridges", "Paradise", 100)
    guest.add_song(song, @room)
    guest.add_song(song2, @room)
    assert_equal("Wonderwall", @room.play_song(song))
  end







end
