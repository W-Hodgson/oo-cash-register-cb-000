require "pry"

class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    quantity.times do
      @items << title
    end
    charge_total = quantity * price
    @total += charge_total
  end

  def apply_discount
    if @discount > 0
      percentage_to_charge = 100 - @discount.to_f
      @total = @total.to_f * (100 / (100 - @discount.to_f ))
      binding.pry
    else
      "There is no discount to apply."
    end
  end

end
