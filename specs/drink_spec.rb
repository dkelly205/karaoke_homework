require('minitest/rg')
require('minitest/autorun')
require_relative('../drink.rb')



class DrinkTest < MiniTest::Test

  def setup
    @drink = Drink.new("beer", 2.99, 1)
  end

  def test_drink_name
    assert_equal("beer", @drink.name)
  end

  def test_drink_price
    assert_equal(2.99, @drink.price)
  end

  def test_drink_quantity
    assert_equal(1, @drink.quantity)
  end

end
