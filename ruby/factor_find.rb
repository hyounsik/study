( 2..100 ).each do |candidate|
	sqrt = Math.sqrt candidate
	factor_found = (2..sqrt).any? {|i| candidate % i == 0}
	
	if factor_found then
	 print "#{candidate}는 합성수 \n"
  else
		print "#{candidate}는 소수 \n"
	end
end
