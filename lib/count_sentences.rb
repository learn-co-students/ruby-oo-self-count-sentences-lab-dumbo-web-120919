require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      return true
    else 
      return false
    end
  end

  def question?
    if self.end_with?("?")
      return true
    else 
      return false
    end
  end

  def exclamation?
    if self.end_with?("!")
      return true
    else 
      return false
    end
  end

  def count_sentences
    sentences = self.split(/[.||!||?]/)
    sentences.delete_if { |w| w.length < 2 }
    return sentences.length
  end
end