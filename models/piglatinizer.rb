class PigLatinizer

  def piglatinize(word)
    if self.is_vowel?(word)
      word.concat('way')
    else
      word.concat(word.slice!(/^[^aeiouAEIOU]*/i || "")) + 'ay'
    end
  end

  def to_pig_latin(text)
    phrase.split.collect {|word| piglatinize(word)}.join(' ')
  end

  def is_vowel?(word)
    vowels = 'aeiouAEIOU'
    vowels.include?(word[0])
  end

end 