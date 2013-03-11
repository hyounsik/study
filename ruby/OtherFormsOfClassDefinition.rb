#Ruby can define class dynamicallay 
Person = Struct.new(:name, :address, :likes) #define class that contain just data attributes
dave = Person.new('Dave', 'TX')
dave.likes = "Programming Language"
puts dave


class PersonII < Struct.new(:name, :address, :likes)
  def to_s
     "#{self.name} live in #{self.address} and like #{self.likes}"
  end
end

dave = PersonII.new('Dave', 'Texas')
dave.likes = "Ho Ho Ho"
puts dave
puts dave.class


PersonIII = Person
dave = PersonIII.new('Dave', 'Texas')
dave.likes = "Pizza"
puts dave
puts dave.class