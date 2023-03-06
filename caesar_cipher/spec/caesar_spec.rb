require './caesar.rb'

describe CaesarCipher do
  describe "#caesar_cipher" do
    it 'returns the code for "paraguaio", com index 5' do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("paraguaio", 5)).to eql("ufwflzfnt")
    end
    
    it 'works with upcase' do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("ALEX", 1)).to eql("BMFY")
    end

    it 'works on boundaries' do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("ZAZ", 1)).to eql("ABA")
    end

    it 'works with symbols' do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("alex!", 1)).to eql("bmfy!")
    end

    it 'works with miscellaneous' do
      caesar = CaesarCipher.new
      expect(caesar.caesar_cipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end
  end

end