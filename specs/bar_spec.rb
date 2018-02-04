require('minitest/rg')
require('minitest/autorun')
require_relative('../bar.rb')



class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(0)
  end

  def test_bar_till_amount
    assert_equal(0, @bar.till)
  end



end
