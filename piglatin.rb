class PiglatinConverter

	def self.convert(word)
		consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
		foundcharacters = ""

		if word.nil?
			return word

		elsif word.start_with?("a" || "e" || "i" || "o" || "u")
			return word
		
		else
		# Finding the first consonants
			word.each_char do |i|
				if consonants.include? i
				foundcharacters += i
				else
					break
				end
			end

				# Removing the found consonants from the original word
			word.slice! foundcharacters
			# Creating the Pig Latin
			finalword = word + foundcharacters + "ay"
			# Putsing the Pig Latin
			return finalword
		end
	end
end

# puts "Please enter your word to convert it to Pig Latin"
# PiglatinConverter.convert(gets.chomp.downcase)