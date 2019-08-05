class CashRegister
  attr_accessor :total, :discount, :items

  def initialize(employee_discount=0)
    @total = 0
    @discount = employee_discount
    @items = []
  end

  def add_item(title, price, quantity=1)
    @items << title
    charge_total = quantity * price
    @total += charge_total
  end

  def apply_discount
    if @discount > 0
      @total = @total * (100 - @discount)
    else
      
    end
  end

end
