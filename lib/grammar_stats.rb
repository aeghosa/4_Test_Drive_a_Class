class GrammarStats
  def initialize()
      @true_results = 0
      @false_results = 0
  end

  def check(text) #text is a string
     fail "Not a sentence" if text.empty?
     first_letter = text.chars.first
     if first_letter == first_letter.upcase && [".", "!", "?"].include?(text[-1])
      @true_results += 1
      return true
    else
      @false_results += 1
     return false
    end
  end
   
# Returns true or false depending on whether the text begins with a capital
    # letter and ends with a sentence-ending punctuation mark.

  def percentage_good
  #   # Returns as an integer the percentage of texts checked so far that passed
  #   # the check defined in the `check` method. The number 55 represents 55%.
    total_results = @true_results + @false_results
    percentage = (@true_results/ total_results.to_f * 100).to_i
    return percentage
  end
end