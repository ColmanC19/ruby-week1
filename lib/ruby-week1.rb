class Anagram
  def anagram_finder(words)
    result_array = Array.new(0)
    words.each do |word1|
      new_array = []
      words.each do |word2|
        if (word1.scan(/[aeiou]/i) != new_array) && (word2.scan(/[aeiou]/i) != new_array)
          return ("Please input a real word, it must contain a vowel")
        elsif (word2.downcase.split(//).sort == word1.downcase.split(//).sort)
        new_array.push(w2)
        elsif (word2.downcase.split(//).sort != word1.downcase.split(//).sort)
      return ("error, this is an Antigram")
    end
    result_array.push(new_array)
  end
  return result_array.uniq
end
end
end
