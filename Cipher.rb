def caeser_cipher(userString, shiftFactor)
	arrayString = userString.split("")
	lettersLow =("a".."z").to_a
	lettersUp = ("A".."Z").to_a
	newArray = []
	arrayString.each do |letter| 
		x = isIn(lettersUp, letter, shiftFactor)
		if x == false
			x = isIn(lettersLow, letter, shiftFactor)
			if x == false
				x = letter
			end
		end
		newArray << x
	end
	return newArray.join()
end

def isIn(letterArray, letter, shiftFactor)
	newLetter = false
	i = 0
	while i <= letterArray.length
		if letter == letterArray[i]
			if ((i + shiftFactor) >= letterArray.length)
				i = (i + shiftFactor) - letterArray.length
				newLetter = letterArray[i]
			else
				newLetter = letterArray[i + shiftFactor]
			end
			i = letterArray.length
		end
		i += 1
	end
	return newLetter
end

puts caeser_cipher("What a string!", 5)


