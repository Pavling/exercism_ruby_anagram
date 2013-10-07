class Anagram


  def initialize(input)
    @input = input
    @normalized_input = normalize(input)
  end

  def match(potential_anagrams)
    potential_anagrams.select{|element| element != @input && normalize(element) == @normalized_input}
  end

  private
  def normalize(input)
    input.split('').sort
  end
end