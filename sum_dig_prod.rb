
#sum_dig_prod(16, 28) ➞ 6
# 16 + 28 = 44
# 4 * 4 =  16
# 1 * 6 = 6

#sum_dig_prod(0) ➞ 0
##sum_dig_prod(1,2,3,4,5,6) ➞ 2


def sum_dig_prod(*arr)
	if arr.length == 1
		if arr[0] < 10
			return arr[0]
		else
			sum = 1
			txt = (arr[0].to_s).split('')
			txt.each do |num|
				sum	 *= num.to_i
			end
			sum_dig_prod(sum)
		end
	else
		add = 0
		arr.each do |num|
			add += num
		end
		if add < 10
			return add
		else
			
			sum_dig_prod(add)
		end

	end		
end

p sum_dig_prod(1,2,3,4,5,6)