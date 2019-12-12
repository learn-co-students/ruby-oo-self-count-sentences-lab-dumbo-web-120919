require 'pry'
require 'pp'

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
   pp self.split(/[.?!]/).reject{|s| s == ""}
    self.split(/[.?!]/).reject{|s| s == ""}.count
  end
end

complex_string = "This, well, is a sentence. This is too!! And so is this, I think? Woo..."

pp complex_string.count_sentences