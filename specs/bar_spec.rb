require('minitest/rg')
require('minitest/autorun')
require_relative('../bar.rb')
require_relative('../drink.rb')
require_relative('../guest.rb')



class BarTest < MiniTest::Test

  def setup
    @bar = Bar.new(0)
  end

  def test_bar_till_amount
    assert_equal(0, @bar.till)
  end

  def test_drink_count
    assert_equal(0, @bar.drinks_count)
  end

  def test_add_drink
    drink = Drink.new("beer", 2.99, 1)
    @bar.add_drink(drink)
    assert_equal(1, @bar.drinks_count)
  end

  def test_drinks_sold
    drink = Drink.new("beer", 2.99, 1)
    drink2 = Drink.new("beer", 2.99, 1)
    @bar.add_drink(drink)
    @bar.add_drink(drink2)
    @bar.drink_sold(drink)
    assert_equal(1, @bar.drinks_count)
  end

  def test_add_money
    guest = Guest.new("Frankie Boyle", "Wonderwall", 100)
    drink = Drink.new("beer", 2.99, 1)
    drink2 = Drink.new("beer", 2.99, 1)
    drink3 = Drink.new("beer", 2.99, 1)
    guest.order_drink(drink)
    guest.order_drink(drink2)
    guest.order_drink(drink3)
    guest.pay_drink_tab
    @bar.add_money_to_till(drink, guest)
    assert_equal(8.97, @bar.till)
  end




end
