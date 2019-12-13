require ('rspec')
require ('ruby-week1')

describe('#ruby-week1') do
  it('will check that one string is equal another') do
    expect(solve.annagram_finder("a")).to(eq("a"))
  end
end
