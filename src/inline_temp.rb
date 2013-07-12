#before refactor

def expensive_order
  order_price = order.price
  return (base_price > 500000)
end

#after refactor
def expensive_order
  return (order.price > 500000)
end