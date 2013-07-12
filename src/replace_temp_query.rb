# Before refactor
def count_discount
  order_price = @quantity * @item_price
  
  if order_price > 200000
    order_price * 0.95
  else
    order_price * 0.98
  end
end

#After refactor
def count_discount  
  if order_price > 200000
    order_price * 0.95
  else
    order_price * 0.98
  end
end

def order_price
  @order_price ||= @quantity * @item_price
end