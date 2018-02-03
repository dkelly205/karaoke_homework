require('minitest/rg')
require('minitest/autorun')
require_relative('../song.rb')



class SongTest < MiniTest::Test

  def setup
    @song = Song.new("Wonderwall", "Oasis")
  end

  def test_song_name
    assert_equal("Wonderwall", @song.name)
  end

  def test_artist_name
    assert_equal("Oasis", @song.artist)
  end


end
