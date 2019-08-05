class CashRegister
  attr_accessor :total, :discount, :items, :quantity

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @quantity = quantity
    @items << title
    @total += price
    @total
  end

end
