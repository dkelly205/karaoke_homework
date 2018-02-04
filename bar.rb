class Bar

  attr_reader :till, :drinks

  def initialize(till)
    @till = till
    @drinks = []
  end

  def drinks_count
    return @drinks.count()
  end

  def add_drink(drink)
    @drinks << drink
  end

  def drink_sold(drink)
    @drinks.delete(drink)
  end

  def add_money_to_till(drink, guest)
    if guest.pay_drink_tab
    @till += guest.drink_tab_total
  end
  end
end
