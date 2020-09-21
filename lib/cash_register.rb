class CashRegister
attr_accessor :cash_register, :total, :items, :price, :last_transaction, :discount
  
  def initialize(discount = 0)
    @total =  0
    @discount = discount
    @items = []
  end
  
  def add_item(item, price, quantity = 1)
    @price = price
    @last_transaction = (@price * @quantity) + @total
    self.total += price * quantity
    if quantity > 1
      counter = 0
      while counter < quantity
        @items << item
        counter += 1
      end
    else 
      @items << item
    end
   #@last_transaction = (price * quantity) + @total
  end
  
  def apply_discount
    if @discount > 0 
      @take_off = (@price* @discount)/100
      @total -= @take_off
      return "After the discount, the total comes to $#{@total}."
    else
      return "There is no discount to apply."
    end
  end
      
  
  def void_last_transaction
    @total = @total - @last_transaction
  end
  
end
