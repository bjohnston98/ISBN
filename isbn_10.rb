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

#thank god this works