def substrings(string, dictionary)
  final_hash = Hash.new(0)
  dictionary.each do |keys|
    if keys.length > string.length
      next
    end
    for i in 0..(string.length - keys.length)
      snipet = string[i, keys.length]
      final_hash[keys] += 1 if snipet.downcase == keys.downcase
    end
  end
  return final_hash
end

  dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  puts substrings("below", dictionary)

  puts substrings("Howdy partner, sit down! How's it going?", dictionary)

