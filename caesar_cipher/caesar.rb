def caesar_cipher(string, shift)
  code_character_array = string.bytes
  final_array = []
  code_character_array.map do |char_code|
    if char_code < 65 || (char_code > 90 && char_code < 97) || char_code > 122 
      final_array.push(char_code)
      next
    end

    coded = char_code + shift
    coded += 26 if coded < 65 && char_code <= 90 || coded < 97 && char_code >= 97
    coded -= 26 if coded > 90 && char_code <= 90 || coded > 122 && char_code >= 97
    final_array.push(coded)
  end
  final_array.pack('C*')
end 

  puts caesar_cipher("What a string!", 5)
  


          



