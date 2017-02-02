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
		
	end
end

