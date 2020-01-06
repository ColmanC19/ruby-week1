require ('rspec')
require ('ruby-week1')

describe('#anagram_finder') do
  it('will check that one letter is equal another') do
    word = Word.new("A", "A")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is equal another') do
    word = Word.new("bye", "Bye")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is equal another') do
    word = Word.new("bye", "bey")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is not equal to a partial match of another word') do
    word = Word.new("bye", "beye")
    expect(word.anagram_finder()).to(eq("These cannot be an anagram as their lengths do not match"))
  end
end

describe('#contains_vowels') do
  it('will check that a word contains a vowel') do
    word = Word.new("ruby", "robe")
    expect(word.contains_vowels(word.word1)).to(eq(true))
  end
end

describe('#contains_vowels') do
  it('will check that a word does NOT contain a vowel') do
    word = Word.new("brr", "drr")
    expect(word.contains_vowels(word.word2)).to(eq(false))
  end
end

describe('#anagram_finder') do
  it('will check that a word is an antigram') do
    word = Word.new("hit", "bye")
    expect(word.anagram_finder()).to(eq("This is an antigram"))
  end
end

describe('#anagram_finder') do
  it('will check that a phrase, or multiple words are an anagram') do
    word = Word.new("ruoby as", "ruby osa")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that a phrase, or multiple words are an anagram') do
    word = Word.new("dog ad", "dag do")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that a word, multiple words or phrase do NOT factor in punctuation') do
    word = Word.new("dog as", "dog. as")
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that two words are neither an anagram nor antigram') do
    word = Word.new("hike", "bell")
    expect(word.anagram_finder()).to(eq("These are neither an anagram nor an antigram, just two words with the same amount of letters in them."))
  end
end
