expression = ARGV.join(' + ')
total = ARGV.inject(0) do | subtotal, arg | subtotal + arg.to_i end
puts "#{expression} =  #{total}"
