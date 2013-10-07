class Anagram


  def initialize(input)
    @input = normalize(input)
  end

  def match(potential_anagrams)
    potential_anagrams.select{|element| normalize(element) == @input}
  end

  private
  def normalize(input)
    input.split('').sort
  end
end