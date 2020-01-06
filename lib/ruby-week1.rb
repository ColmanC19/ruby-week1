class Word
  attr_accessor :word1, :word2
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

	def anagram_finder
		word_one = @word1.downcase.gsub(/[^a-z0-9]/i, '')
		word_two = @word2.downcase.gsub(/[^a-z0-9]/i, '')
		if ((word_one.length) != (word_two.length))
			return "These cannot be an anagram as their lengths do not match"
		elsif (!contains_vowels(word_one) || !contains_vowels(word_two))
			return "This is not a real word, please use a word containing a vowel"
		elsif (word_one.chars.sort.join == (word_two.chars.sort.join))
			return "This is an anagram"
		else (word_one.chars.sort.join != (word_two.chars.sort.join))
			return "This is an antigram"
		end
	end
  
  def contains_vowels(word)
    vowels = word.scan(/[aeiou]/)
    if vowels.count() >= 1
      return true
    else
      return false
    end
  end
end
