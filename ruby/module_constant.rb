class Parent
  Self = self 
  def initialize
    p Self
  end
end

class Child < Parent
  def initialize
    p self.class
    #super
  end
  
end

class Child2 < Parent
end


Child.new
  
Child2.new

module Moral
  
  def Moral.had
    p  self
  end
  
  def had
    p self
  end
  
end


Moral.had