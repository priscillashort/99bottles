class Bottles

	def verse(verse_num)
		verse_output(verse_num)
	end

	def verses(start_verse, end_verse)
		multiple_verse_output(start_verse, end_verse)
	end

	def song
		multiple_verse_output(99, 0)
	end

	def verse_output(verse_num)
		"#{verse_num == 0 ? 'No more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer on the wall, #{verse_num == 0 ? 'no more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer.
#{verse_num == 0 ? 'Go to the store and buy some more, 99' : 'Take ' + (verse_num == 1 ? 'it' : 'one') + ' down and pass it around, ' + (verse_num == 1 ? 'no more' : (verse_num-1).to_s)} bottle#{verse_num-1 == 1 ? '' : 's'} of beer on the wall.
"
	end

	def multiple_verse_output(start_verse, end_verse)
		return_string = '' 
		current_verse = start_verse

		(start_verse - end_verse + 1).times do
			if (current_verse == end_verse)
				return_string = return_string + "#{verse_output(current_verse)}"
			else
				return_string = return_string + "#{verse_output(current_verse)}
"
			end

			current_verse = current_verse - 1
		end

		return return_string
	end

end