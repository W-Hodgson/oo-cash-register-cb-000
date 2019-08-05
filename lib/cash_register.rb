require "pry"

class CashRegister
  attr_accessor :total, :discount, :items, :items_with_prices

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
    @items_with_prices = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end
    charge_total = quantity * price
    @total += charge_total
    @items_with_prices
  end

  def apply_discount
    if @discount > 0
      @total = @total.to_f * ((100 - @discount.to_f ) / 100)
      "After the discount, the total comes to $#{@total.to_i}."
    else
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @items.pop
  end

end
