class CaesarCipher

  def caesar_cipher(string, shift)
    result = ""

    string.each_char do |char|
      shift.times {char.next!} if /[a-zA-Z]/.match(char)
      result += char[-1]
    end

    result
  end
end

