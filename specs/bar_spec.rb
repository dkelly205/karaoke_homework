require('minitest/rg')
require('minitest/autorun')
require_relative('../bar.rb')
require_relative('../drink.rb')



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
    drink = Drink.new("beer", 2.99, 1)
    @bar.add_money(drink)
    drink2 = Drink.new("beer", 2.99, 1)
    @bar.add_money(drink2)
    assert_equal(5.98, @bar.till)
  end




end
