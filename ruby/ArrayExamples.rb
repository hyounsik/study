a = 1
b = 2
c = [0,1,2,3,4]
p c[a..b]
c.[]= 2, 4
p c

array = ['a','b','b','d']
array.each do |item|
  p item + " "
end

array.each_with_index do |item, index|
  p [ index, item]
end

array2 = array.map do |item| 
  item.upcase
end
p array2

array2 = array.sort do |x , y|
   y <=> x 
end
p array2

array2 = array.select do |item|
  item == 'B'
end
p array2
