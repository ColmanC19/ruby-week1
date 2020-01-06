require ('rspec')
require ('ruby-week1')

describe('#anagram_finder') do
  it('will check that one letter is equal another') do
    word = Word.new("A", "A")
    # @word1 = "A"
    # @word2= "A"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is equal another') do
    word = Word.new("bye", "Bye")
    # word1 = "bye"
    # word2= "Bye"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is equal another') do
    word = Word.new("bye", "bey")
    # word1 = "bye"
    # word2= "bey"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that one word is not equal to a partial match of another word') do
    word = Word.new("bye", "beye")
    # word1 = "bye"
    # word2= "beye"
    expect(word.anagram_finder()).to(eq("These cannot be an anagram as their lengths do not match"))
  end
end

describe('#contains_vowels') do
  it('will check that a word contains a vowel') do
    word = Word.new("ruby", "robe")
    # word1 = "rubye"
    expect(word.contains_vowels(word.word1)).to(eq(true))
  end
end

describe('#contains_vowels') do
  it('will check that a word does NOT contain a vowel') do
    word = Word.new("brr", "drr")
    # word1 = "rby"
    expect(word.contains_vowels(word.word2)).to(eq(false))
  end
end

describe('#anagram_finder') do
  it('will check that a word is an antigram') do
    word = Word.new("ruby", "qwed")
    # word1 = "ruby"
    # word2= "qwed"
    expect(word.anagram_finder()).to(eq("This is an antigram"))
  end
end

describe('#anagram_finder') do
  it('will check that a phrase, or multiple words are an anagram') do
    word = Word.new("ruoby as", "ruby osa")
    # word1 = "ruoby as"
    # word2= "ruby osa"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that a phrase, or multiple words are an anagram') do
    word = Word.new("dog ad", "dag do")
    # word1 = "dog ad"
    # word2= "dog ad"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end

describe('#anagram_finder') do
  it('will check that a word, multiple words or phrase do NOT factor in punctuation') do
    word = Word.new("dog as", "dog. as")
    # word1 = "dog as"
    # word2= "dog. as"
    expect(word.anagram_finder()).to(eq("This is an anagram"))
  end
end
