class PigLatinizer
  attr_reader :text, :result
  
  def initialize(text)
    @text = text
    process_text
  end
  
  def process_text
    text_array = @text.split(" ")
    latin_array = text_array.map do |word|
      word.index(/[aeiouy]/)
    end
  end
  
end