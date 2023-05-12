require 'pry'

class String

  def sentence?
    self.end_with?("!", ".", "?")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    end_of_sentence = self.split
    number_of_sentences = []
    end_of_sentence.each do |word|
      if word.end_with?(".", "?", "!")
        number_of_sentences << word
      end
    end

    number_of_sentences.count

  end
end