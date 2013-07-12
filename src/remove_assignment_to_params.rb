#before refactor
def discount(items_price)
  if items_price > 500000
    items_price -= 20000
  end
end 

#after refactor
def discount(items_price)
  result = items_price
  if items_price > 50000
    result -= 20000
  end
end 