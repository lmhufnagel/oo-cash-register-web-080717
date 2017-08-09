require "pry"
class CashRegister
  attr_accessor :total, :discount, :items, :last_total

  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = Array.new
  end

  def add_item (title, price, quantity = 1)
    @last_total = @total
    quantity.times do
      @items << title
    end
    @total += price * quantity
  end

  def apply_discount
    if @discount > 0
      @total = @total*(1-(@discount/100.0))
      "After the discount, the total comes to $#{@total.to_i}."
    elsif @discount == 0
      "There is no discount to apply."
    end
  end

  def void_last_transaction
    @total = @last_total
  end

  

end
