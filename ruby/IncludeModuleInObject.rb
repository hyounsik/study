module Humor
  def tickle
    "#{self} says hee, hee!"
  end
end

obj = "Grouchy"
obj.extend Humor #include module in object .. create new singleton class
puts obj.tickle



# use extend in class definition that make singleton class for class

class Grouchy
  extend Humor
end

puts Grouchy.tickle