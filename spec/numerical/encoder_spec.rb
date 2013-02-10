require 'spec_helper'

describe Numerical::Encoder do
  before do
    @encoder = Numerical::Encoder.new
  end

  describe ".encode" do
    it "should handle basic numbers" do
      @encoder.encode(0).should == "zero"
      @encoder.encode(1).should == "one"
      @encoder.encode(2).should == "two"
      @encoder.encode(3).should == "three"
      @encoder.encode(4).should == "four"
      @encoder.encode(5).should == "five"
      @encoder.encode(6).should == "six"
      @encoder.encode(7).should == "seven"
      @encoder.encode(8).should == "eight"
      @encoder.encode(9).should == "nine"
      @encoder.encode(10).should == "ten"
      @encoder.encode(11).should == "eleven"
      @encoder.encode(12).should == "twelve"
      @encoder.encode(13).should == "thirteen"
      @encoder.encode(14).should == "fourteen"
      @encoder.encode(15).should == "fifteen"
      @encoder.encode(16).should == "sixteen"
      @encoder.encode(17).should == "seventeen"
      @encoder.encode(18).should == "eighteen"
      @encoder.encode(19).should == "nineteen"
      @encoder.encode(20).should == "twenty"
      @encoder.encode(30).should == "thirty"
      @encoder.encode(40).should == "forty"
      @encoder.encode(50).should == "fifty"
      @encoder.encode(60).should == "sixty"
      @encoder.encode(70).should == "seventy"
      @encoder.encode(80).should == "eighty"
      @encoder.encode(90).should == "ninety"
    end

    it "should handle complicated numbers" do
      @encoder.encode(21).should == "twenty-one"
      @encoder.encode(32).should == "thirty-two"
      @encoder.encode(43).should == "forty-three"
      @encoder.encode(54).should == "fifty-four"
      @encoder.encode(65).should == "sixty-five"
      @encoder.encode(76).should == "seventy-six"
      @encoder.encode(87).should == "eighty-seven"
      @encoder.encode(98).should == "ninety-eight"
    end

    it "should handle large numbers" do
      @encoder.encode(1 * 1000 ** 1).should == "one thousand"
      @encoder.encode(2 * 1000 ** 2).should == "two million"
      @encoder.encode(3 * 1000 ** 3).should == "three billion"
      @encoder.encode(4 * 1000 ** 4).should == "four trillion"
      @encoder.encode(5 * 1000 ** 5).should == "five quadrillion"
      @encoder.encode(6 * 1000 ** 6).should == "six quintillion"
      @encoder.encode(7 * 1000 ** 7).should == "seven sextillion"
      @encoder.encode(8 * 1000 ** 8).should == "eight septillion"
      @encoder.encode(9 * 1000 ** 9).should == "nine octillion"
      @encoder.encode(10 * 1000 ** 10).should == "ten nonillion"
      @encoder.encode(11 * 1000 ** 11).should == "eleven decillion"
      @encoder.encode(12 * 1000 ** 12).should == "twelve undecillion"
      @encoder.encode(13 * 1000 ** 13).should == "thirteen duodecillion"
      @encoder.encode(14 * 1000 ** 14).should == "fourteen tredecillion"
      @encoder.encode(15 * 1000 ** 15).should == "fifteen quattuordecillion"
      @encoder.encode(16 * 1000 ** 16).should == "sixteen quindecillion"
      @encoder.encode(17 * 1000 ** 17).should == "seventeen sexdecillion"
      @encoder.encode(18 * 1000 ** 18).should == "eighteen septendecillion"
      @encoder.encode(19 * 1000 ** 19).should == "nineteen octodecillion"
      @encoder.encode(20 * 1000 ** 20).should == "twenty novemdecillion"
      @encoder.encode(21 * 1000 ** 21).should == "twenty-one vigintillion"
    end

    it "should handle hundreds" do
      @encoder.encode(100).should == "one hundred"
      @encoder.encode(200_000).should == "two hundred thousand"
      @encoder.encode(300_000_000).should == "three hundred million"
      @encoder.encode(400_000_000_000).should == "four hundred billion"
      @encoder.encode(500_000_000_000_000).should == "five hundred trillion"
      @encoder.encode(600_000_000_000_000_000).should == "six hundred quadrillion"
    end

    it "should handle complicated large numbers" do
      @encoder.encode(1305).should == "one thousand, three hundred and five"
      @encoder.encode(32500000).should == "thirty-two million, five hundred thousand"
      @encoder.encode(553920 * 1000 ** 20 + 25).should == "five hundred and fifty-three vigintillion, nine hundred and twenty novemdecillion, twenty-five"
    end
  end
end