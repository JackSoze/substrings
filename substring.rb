def substring(string, dictionary)
string = string.downcase
substrings = []
dictionary.each do |word|
  word = word.downcase
  if string.include?(word)
    substrings.push(word)
  end
end
substrings.reduce(Hash.new(0)) do |result, string|
  result[string] +=1
  result
end
end

dictionary = ["below","down","go","going","GOING","lo","ing","going","horn","how","howdy","it","i","low","own","part","partner","sit"]

puts substring("Howdy partner, sit down! How's it going?",dictionary)
