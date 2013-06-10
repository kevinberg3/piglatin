require 'test/unit'
require_relative 'piglatin.rb'

class TestPiglatin < Test::Unit::TestCase

	def test_that_words_are_translated_to_piglatin
		assert_equal "ellohay", PiglatinConverter.convert("hello") 
	end

	def test_if_words_beginning_with_vowel_are_not_translated
	  assert_equal "allo", PiglatinConverter.convert("allo")
	end

	def test_if_nil_value_is_entered
		assert_equal nil, PiglatinConverter.convert(nil)
	end

end








# class PiglatinConverter

# 	def self.convert(word)
# 		consonants = ["b","c","d","f","g","h","j","k","l","m","n","p","q","r","s","t","v","w","x","y","z"]
# 		vowels = ["a","e","i","o","u"]
# 		foundcharacters = ""

# 		if vowels.include? word[0,1]
# 			puts word
# 		else
# 		# Finding the first consonants
# 			word.each_char do |i|
# 				if consonants.include? i
# 				foundcharacters += i
# 				else
# 					break
# 				end
# 			end

# 			# Removing the found consonants from the original word
# 			word.slice! foundcharacters

# 			# Creating the Pig Latin
# 			finalword = word + foundcharacters + "ay"


# 			# Putsing the Pig Latin
# 			puts "Your Pig Latin: " + finalword
# 		end
# 	en
# end

# puts "Please enter your word to convert it to Pig Latin"
# PiglatinConverter.convert(gets.chomp.downcase)