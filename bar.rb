class Bar

  attr_reader :till, :drinks

  def initialize(till)
    @till = till
    @drinks = []
  end

  def drinks_count
    return @drinks.count()
  end






end
