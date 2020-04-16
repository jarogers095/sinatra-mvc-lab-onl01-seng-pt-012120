class PigLatinizer
  attr_reader :text, :result
  
  def initialize

  end
  
  def piglatinize(word)
    if word[0].downcase == "y"
      first_vowel = word.index(/[aeiou]/)
    else
      first_vowel = word.index(/[aeiouy]/)
    end
    
    if first_vowel == 0 
      word + "way"
    else
      word.slice!(first_vowel..-1) + word + "ay"
    end
  end
  
  #def split
  #  text_array = @text.split(" ")
  #  
  #  latin_array = text_array.map do |word|
  #end
end