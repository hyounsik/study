animal = "dog"
class << animal # singleton class definition. self is singleton class for animal
  def speak
    puts "The #{self} says WOOF!"
  end
end
animal.speak


#class definitions return the value of the last statement
singleton = class << animal
  def lie
    puts "The #{slef} lie down"
  end
  self
end

puts "Singleton class object is #{singleton}"  #singleton print #<Class:#<String:0x1001249f8>> 
puts "It define methods #{singleton.instance_methods - 'cat'.methods }"