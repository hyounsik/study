"cat".instance_eval do
  puts "Upper case = #{upcase}"
  puts "Length is #{length}"
end

"cat".instance_eval('puts "Upper case = #{upcase},  Length is #{length}"')

class MyClass
end

MyClass.class_eval do   # act as class definition
  def instance_method
    puts "In an instance method"
  end
end

MyClass.instance_eval do # act as singleton class 
  def class_method 
    puts "In a class method"
  end
end

MyClass.class_method
