#!usr/bin/ruby
def odd? n
  case n % 2
  when 0 then false
  when 1 then true
  else raise "not a number"
  end
end

while num = gets
  unless /\A-?\d+\Z/ =~ num
    $stderr.puts "enter integer."
    next
  end
  num = num.to_i
  if odd? num
    puts "#{num} is odd"
  else
    puts "#{num} is even"
  end
end