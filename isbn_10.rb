def valid_isbn_length?(booknum10)
# passing in string, want a boolean out

	if booknum10.length == 10
		true
	
	else
		false
	end

end


def isbn_remove_spaces(isbn_number) #do some functions!

	isbn_number.delete(' ')  #be consistent

end

def isbn_remove_hyphens(isbn_number)
	
	isbn_number.gsub('-', '')
end


# def isbn_remove_both_hyph_and_dashes  <i want to fix this but dont' 'dare'
# 	isbn_number.gsub((/[-]/,''))
#thank god this works

def check_for_letters_anywhere(letters)
	if letters.match(/[a-z A-Z]/)
		false
	else
		true
	end
end


def check_for_x(x_at_end)
	
	#x_at_end.upcase
	#if x_at_end[-1] =='X' || x_at_end[-1] ==[0..9]
# true
#else
#	false
#end

	if x_at_end[-1].match(/[0-9 x X]/)
		true
	else
		false
	end
end




