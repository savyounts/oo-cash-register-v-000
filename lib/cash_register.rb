require 'pry'

class CashRegister
  attr_accessor :total, :discount, :items
  
 
  
  def initialize(discount = nil)
    @discount = discount
    @total = 0 
    @items = []
  end 
  
 
  
  def total
    @total 
  end 
  
  def add_item(title, price, quantity = 1)
    @items << title
    price_increase = price * quantity
    @total = @total + price_increase
    @total 
  end
  
  def apply_discount
    if self.discount != nil 
      discount_percentage = 1 - self.discount.to_f/100
      @total = @total*discount_percentage
      "After the discount, the total comes to $#{@total.to_i}."
    else
     "There is no discount to apply."
    end
  end 
 
  def items
    self.items
  end 
  
  def void_last_transaction
  end 
    
end
