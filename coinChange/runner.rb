# 거스름돈 1원,7원, 10원
# 가장 적은 동전 수로

def change(amount)
	# ten = amount / 10
	# seven = amount / 7
	# one = amount % 10

	# ten + seven + one
	# totalCount = 0
	# if amount <= 6
	# 	totalCount = amount
	# end

	# if amount > 9
	# 	totalCount = amount / 10
	# end
	# namugi = amount % 10
	# if amount > 6
	# 	totalCount = totalCount + namugi 
		
	# 	totalCount
	# 	#totalCount = namugi / 7 % 10
	# end

	# totalCount
	if amount < 7
		amount
	elsif (6 < amount && amount < 10)
		count = 1 + (amount % 7)
		count
	else
		tencoin = (0..(amount / 10)).to_a
		count = []
		tencoin.each do |i|
			count[i] = coin_count(amount, i)
		end
		# print ("#{tencoin[0]}, #{tencoin[1]}")
		count = count.min	
		count
	end


end

def assert_equals(actual, expected)
	if actual == expected
			print "."
		else
			puts ""
			puts "Fail. expected = #{expected} but actual = #{actual}"
	end
end

def coin_count(amount, i)
	(i) + ((amount - (i * 10)) / 7) + ((amount - (i * 10)) % 7)
end

assert_equals(coin_count(10, 1), 1)
assert_equals(coin_count(20, 1), 5)
assert_equals(coin_count(24, 1), 3)


assert_equals(change(1), [1].length)
assert_equals(change(2), [1, 1].length)
assert_equals(change(3), [1, 1, 1].length)

assert_equals(change(10), [10].length)
assert_equals(change(11), [10, 1].length)
assert_equals(change(8), [7, 1].length)
# assert_equals(change(37), [7, 1].length)


puts change(123123)



puts "\n"