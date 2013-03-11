some_class = Class.new do # create class object 
  def self.class_method
    puts "In class method"
  end
  def instance_method
    puts "In instance method"
  end
end

some_class.class_method
obj = some_class.new
obj.instance_method


some_class = Class.new(String) do # extends String class by passing it as parameter
  def vowel_movement
    tr 'aeiou', '*'
  end
end

obj = some_class.new("newo is the time")
puts obj.vowel_movement

puts some_class.name
SomeClass = some_class # Ruby automatically name the class after the constant
puts some_class.name
puts SomeClass.name
SomeClassII = some_class
puts some_class.name
puts SomeClassII.name