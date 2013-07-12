# Before refactor
def get_point
  if order_more_than_five_items
    point = 1
  else
    point = 0
  end
end

def order_more_than_five_items
  @order_items > 5
end

# After refactor
def get_point
  if @order_items > 5
    point = 1
  else
    point = 0
  end
end
