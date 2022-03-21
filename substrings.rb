dictionary = ["below", "down", "go", "going", "horn", "how", "howdy", "it", "i", "low",
"own", "part", "partner", "sit"]

def substrings(string, dictionary)
    substring = Hash.new(0)
    text = string.downcase.split

    text.each do |userText|
        dictionary.each do |word|
            substring[word] += 1 if userText.include?(word)
        end
    end

    return substring

end

puts substrings("Below", dictionary)
puts substrings("Howdy partner, sit down! How's it going", dictionary)