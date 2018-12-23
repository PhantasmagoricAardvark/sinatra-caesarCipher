
def caesar_cipher(string, shift_factor)
	i = 0
	string_split = string.split("")
	cipher_array = []
	int_array = []

	final_numbers = []
	final_str = []


	while i <= string.length
		if (((string_split[i].to_s).bytes).to_s) == "[]"
			i += 1
		else
			cipher_array.push((((string_split[i].to_s).bytes).to_s).chop.reverse.chop.reverse)
			i += 1
		end
	end

	
	int_array = cipher_array.map(&:to_i)

	i = 0

	while i < int_array.length
		final_numbers.push(shift_generator(int_array[i], shift_factor))

		i += 1
	end

	puts "here is final_numbers: " + final_numbers.to_s

	final_numbers.each do |i|
		final_str.push(i.chr)
	end


	final_str.join("")

end


def shift_generator(num, shift_factor)

	
		if ((num > 96 && num < 123) && shift_factor > 0)
			(shift_factor.abs).times do 
				num += 1
				if num == 123
					num -= 26
				end
			end
			num
		elsif ((num > 64 && num < 91) && shift_factor > 0)
			(shift_factor.abs).times do 
				num += 1
				if num == 91
					num -= 26
				end
			end
			num
		elsif ((num > 96 && num < 123) && shift_factor < 0)
			(shift_factor.abs).times do 
				num -= 1
				if num == 96
					num += 26
				end
			end
			num
		elsif ((num > 64 && num < 91) && shift_factor < 0)
			(shift_factor.abs).times do 
				num -= 1
				if num == 64
					num += 26
				end
			end
			num
		else
			return num
		end

end



