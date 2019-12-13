require ('rspec')
require ('ruby-week1')

describe('#ruby-week1') do
  it('will check that one letter is NOT equal another') do
    new_anagram = Anagram.new()
    expect(new_annagram.anagram_finder("a")).to(eq("b"))
  end
end
describe('#ruby-week1') do
  it('will check that one letter is equal another') do
    new_anagram = Anagram.new()
    expect(new_anagram.anagram_finder("a")).to(eq("a"))
  end
end
describe('#ruby-week1') do
  it('will check that the letters of one word are equal another') do
    new_anagram = Anagram.new()
    expect(new_anagram.anagram_finder("care")).to(eq("race"))
  end
end
