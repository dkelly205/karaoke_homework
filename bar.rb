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






end
