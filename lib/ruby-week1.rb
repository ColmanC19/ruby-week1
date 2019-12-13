class Anagram
  def annagram_finder(word_array)
    if word_array.class != Array
      word_array = word_array.split(" ")
    end
    result_array = []
    word_array.each do |word|
      x = 0
      while(x < (word.length / 2).floor)
        if (!(word[x] == word[(word.length - 1 - x)]))
          result = false
          break
        else
          result = true
        end
        x = x + 1
      end
      if result == true
        result_array.push(word)
      end
    end
    return result_array.join(" is an anagram of ")
  end
end
