# this is example of new kind of attr_accessor
class AttrLogger
  def self.attr_logger(name) #define class method
    attr_reader name
    define_method("#{name}=") do |val|   # self is class
      puts "Assigning #{val.inspect} to #{name}" # self is object
      instance_variable_set("@#{name}", val)
    end
  end
end

class Example < AttrLogger
  attr_logger :value
end

ex =Example.new
ex.value = 123
puts "Value is #{ex.value}"
ex.value = "cat"
puts "value is now #{ex.value}"