class Bottles

	def verse(verse_num)
		return <<-VERSE
#{verse_num == 0 ? 'No more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer on the wall, #{verse_num == 0 ? 'no more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer.
#{verse_num == 0 ? 'Go to the store and buy some more, 99' : 'Take ' + (verse_num == 1 ? 'it' : 'one') + ' down and pass it around, ' + (verse_num == 1 ? 'no more' : (verse_num-1).to_s)} bottle#{verse_num-1 == 1 ? '' : 's'} of beer on the wall.
VERSE
	end

	def verses(start_verse, end_verse)
		return <<-VERSES
#{multiple_verse_output(start_verse, end_verse)}
VERSES
	end

	def verse_output(verse_num)
		"#{verse_num == 0 ? 'No more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer on the wall, #{verse_num == 0 ? 'no more' : verse_num} bottle#{verse_num == 1 ? '' : 's'} of beer.\n
		#{verse_num == 0 ? 'Go to the store and buy some more, 99' : 'Take ' + (verse_num == 1 ? 'it' : 'one') + ' down and pass it around, ' + (verse_num == 1 ? 'no more' : (verse_num-1).to_s)} bottle#{verse_num-1 == 1 ? '' : 's'} of beer on the wall."
	end

	def multiple_verse_output(start_verse, end_verse)
		return_string = '' 
		current_verse = start_verse

		(start_verse - end_verse).times do
			return_string = return_string + verse_output(current_verse) + '\n'
			current_verse = current_verse - 1
		end

		return return_string
	end

end