#before refactor

def confirmation_requested
  self.state = :confirmation_requested
end

def confirmed
  self.state = :confirmed
end

def delivered
  self.state = :delivered
end

def received
  self.state = :received
end

#after refactor
[:confirmation_requested, :confirmed, :delivered, :received].each do |method|
  define_method method do
    self.state = method
  end
end
