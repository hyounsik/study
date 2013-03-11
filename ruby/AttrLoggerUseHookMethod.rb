module GeneralLogger
  # Instance method to be added to any class that includes us
  def log(msg)
    puts Time.now.strftime("%H:%M: ") + msg
  end
  
  # module containing class methods to be added
  module ClassMethods
    def attr_logger(name) #it will be a class method
      attr_reader name
      define_method("#{name}=") do |val|
        log "Asigning #{val.inspect} to #{name}"
        instance_variable_set("@#{name}", val)
      end
    end
  end
  
  #extend host class with class methods when we're included
  def self.included(host_class)  #hook method that is invoked by ruby
    host_class.extend(ClassMethods)
  end
end


class Example
  include GeneralLogger #include methods and exntend class method
  attr_logger :value
end

ex = Example.new
ex.log("New example created")
ex.value = 123
puts "Value is #{ex.value}"
ex.value = "cat"
puts "Value is now #{ex.value}"



  