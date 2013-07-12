# before_refactor

def do_something
  if customer_balance > order_price && customer_status == "ACTIVE" && order_date >= Date.yesterday
	customer_can_buy
  end
end

# after_refactor
def do_something
	balance_enough = (customer_balance > order_price)
	is_an_active_customer = (customer_status == "ACTIVE")
	order_not_expired = (order_date >= Date.yesterday)

  if balance_enough && is_an_active_customer && order_not_expired
	customer_can_buy
  end
end