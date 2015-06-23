class Word < ActiveRecord::Base
  # Remember to create a migration!
  def self.canonical(word)
	  # implementa el formato canonical
		word.downcase.chars.sort.join
	end
end
