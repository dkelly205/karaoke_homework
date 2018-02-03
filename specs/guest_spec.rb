require('minitest/rg')
require('minitest/autorun')
require_relative('../guest.rb')



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
  
end
