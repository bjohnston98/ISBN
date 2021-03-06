require 'minitest/autorun'
require_relative 'isbn_10.rb'

class Isbn_function < MiniTest::Test

	#def test_1_array =[]
		
	def test_num_is_10_true
		booknum10 = '1234567890'
		assert_equal(true, valid_isbn_length?(booknum10))
	end

	def test_num_is_9_false
		booknum10 = '123456789'
		assert_equal(false, valid_isbn_length?(booknum10))

	end

	def test_num_is_valid_for_any_length_or_characters
		booknum10 = '1234X67890'
		assert_equal(true, valid_isbn_length?(booknum10))
		#it fails now, because only len bein checked,
		#not my method, changed to True 
	end

	def method_name
		booknum10 = '12-3-45'
		
	end
end

class Removing_spurious_characters < MiniTest::Test

	def test_removing_spaces
		booknum10 = '123 456 7890'
		assert_equal('1234567890', isbn_remove_spaces(booknum10))
		#we were creating this on the fly, test called a new method"removespaces"
		#need code other file
	end

	def test_removing_dashes
		booknum10 = '123-45-678-90'
		assert_equal('1234567890', isbn_remove_hyphens(booknum10))
		
	end

	def test_check_for_letters_anywhere
		booknum10 = '1234a67a90'
		assert_equal(false, check_for_letters_anywhere(booknum10))  #we have to ane a newfunction in othe file

	end

	# def check_for_letters
	# 	booknum = '123n456k7890'
	# 	assert_equal(false, check_for_letters_anywhere(booknum10))
	# end

	def test_true_if_x_musts_be_at_end
		booknum10 = '123456789x'
		assert_equal(true, check_for_x(booknum10)) #call it anything but write this function!!
	end


end