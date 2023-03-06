class CaesarCipher

  def caesar_cipher(string, shift)
    result = ""
    string.each_char do |char|
      if /[a-zA-Z]/.match(char)
        shift.times {char.next!}
      end
      result += char[-1]
    end
    result

  end 

end

