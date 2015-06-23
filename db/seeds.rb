# Este archivo sirve para correr código que te permita 
# rellenar tu base de datos con información. 

def canonical(word)
  # implementa el formato canonical
	word.downcase.chars.sort.join
end

def are_anagrams?(word1, word2)
  canonical(word1) == canonical(word2)
end

File.open('words.txt').each do |line|
  n_line = line.gsub("\n","")
  can = canonical(n_line)
  word = Word.new(word: n_line, cannonical: can)
  word.save
end