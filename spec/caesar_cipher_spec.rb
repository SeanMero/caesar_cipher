require_relative "../caesar_cipher"

describe "caesar_cipher" do
  it "when given a string of letters" do
    expect(caesar_cipher("caesar", 2)).to eql("ecguct")
  end

  context "when a cipher shifts past z" do
    it "wraps back around to a" do
      expect(caesar_cipher("zebra", 2)).to eql("bgdtc")
    end
  end

  it "matches case with the original string" do
    expect(caesar_cipher("Caesar", 2)).to eql("Ecguct")
  end
end
