class PigLatinizer
  attr_accessor :text

  def initialize(text = nil)
  end

  def piglatinize(text)
    words = text.split(" ")
    arr_words = []
    words.map do |word|
      if (word =~ /yY/) == 0
        arr_words << (word[1..-1] + 'y' + 'ay')
      elsif word.length == 1 && first_vowel(word) == 0 
        arr_words << (word[0] + 'way')
      elsif first_vowel(word) == 0 
        arr_word << (word + 'way')
      else
        vowel_location = first_vowel(word)
        arr_words << (word[vowel_location..-1] + word[0..vowel_location-1] + 'ay')
      end 
    end
    arr_words.join(" ")
  end

  def first_vowel(word)
    word =~ /[aeouiAEOUI]/
  end
end 