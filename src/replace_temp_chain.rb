#before refactor

def find_order
  expectation = order.date_between(start_date, end_date)
  expectation.sort_by("price ASC")
end

#after refactor
def find_order
  order.date_between(start_date, end_date).sort_by("price ASC")
end

