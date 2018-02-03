class Room

  attr_reader :name, :entry_fee, :guest_limit, :funds, :number_of_guests
  attr_writer :number_of_guests

  def initialize(name, entry_fee, guest_limit, funds)
    @name = name
    @entry_fee = entry_fee
    @guest_limit = guest_limit
    @funds = funds
    @number_of_guests = 0
  end

  def guest_count
    return @number_of_guests
  end

end
