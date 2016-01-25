# titleize the words that is passed as an input the module helper method

module HelperMethods

  def self.titleize(input)
    output_arr = input.split
    output = output_arr.map do |word|
      if (word == "in" || word == "the" || word == "of" || word == "and" || word == "or" || word == "from")
        next;
      else
        word.capitalize.concat(" ")
      end
    end
    #puts output.join
    return output.join
  end

end

#HelperMethods.titleize("in the world and from the works of others or from you")
