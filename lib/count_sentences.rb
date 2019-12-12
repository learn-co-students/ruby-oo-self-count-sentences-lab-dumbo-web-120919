require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    sentence_arr = self.split(/[.!?]/)
    sentence_arr.delete_if do |sentence|
      sentence.empty?
    end
    sentence_arr.length
  end
end