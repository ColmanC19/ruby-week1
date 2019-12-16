class Word
  def vowel_finder(word)
    vowels = word.scan(/[aeiou]/)
    puts vowels
    if vowels.count() >= 1
      return true
    else
      return false

    end

  end

	def anagram_finder(word1, word2)
		word_one = word1.downcase
		word_two = word2.downcase
    puts !(word_one.include?(/[aeiou]/))
		if (word_one.length != word_two.length)
			return false
		elsif (!(word_one.scan(/[aeiou]/)) || !(word_two.scan(/[aeiou]/)))
			return "This is not a real word, please use a word containing a vowel"
		elsif (word_one.chars.sort.join == (word_two.chars.sort.join))
			return true
		else
			return "This is an antigram"
		end

	end
end
