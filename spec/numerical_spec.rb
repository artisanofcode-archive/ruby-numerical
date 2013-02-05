require 'spec_helper'

describe Numerical do
  describe ".encode" do
    it "should handle basic numbers" do
      Numerical.encode(0).should == "zero"
      Numerical.encode(1).should == "one"
      Numerical.encode(2).should == "two"
      Numerical.encode(3).should == "three"
      Numerical.encode(4).should == "four"
      Numerical.encode(5).should == "five"
      Numerical.encode(6).should == "six"
      Numerical.encode(7).should == "seven"
      Numerical.encode(8).should == "eight"
      Numerical.encode(9).should == "nine"
      Numerical.encode(10).should == "ten"
      Numerical.encode(11).should == "eleven"
      Numerical.encode(12).should == "twelve"
      Numerical.encode(13).should == "thirteen"
      Numerical.encode(14).should == "fourteen"
      Numerical.encode(15).should == "fifteen"
      Numerical.encode(16).should == "sixteen"
      Numerical.encode(17).should == "seventeen"
      Numerical.encode(18).should == "eighteen"
      Numerical.encode(19).should == "nineteen"
      Numerical.encode(20).should == "twenty"
      Numerical.encode(30).should == "thirty"
      Numerical.encode(40).should == "forty"
      Numerical.encode(50).should == "fifty"
      Numerical.encode(60).should == "sixty"
      Numerical.encode(70).should == "seventy"
      Numerical.encode(80).should == "eighty"
      Numerical.encode(90).should == "ninety"
    end

    it "should handle complicated numbers" do
      Numerical.encode(21).should == "twenty-one"
      Numerical.encode(32).should == "thirty-two"
      Numerical.encode(43).should == "forty-three"
      Numerical.encode(54).should == "fifty-four"
      Numerical.encode(65).should == "sixty-five"
      Numerical.encode(76).should == "seventy-six"
      Numerical.encode(87).should == "eighty-seven"
      Numerical.encode(98).should == "ninety-eight"
    end

    it "should handle large numbers" do
      Numerical.encode(1_000).should == "one thousand"
      Numerical.encode(2_000_000).should == "two million"
      Numerical.encode(3_000_000_000).should == "three billion"
      Numerical.encode(4_000_000_000_000).should == "four trillion"
      Numerical.encode(5_000_000_000_000_000).should == "five quadrillion"
      Numerical.encode(6_000_000_000_000_000_000).should == "six quintillion"
      Numerical.encode(7_000_000_000_000_000_000_000).should == "seven sextillion"
      Numerical.encode(8_000_000_000_000_000_000_000_000).should == "eight septillion"
      Numerical.encode(9_000_000_000_000_000_000_000_000_000).should == "nine octillion"
      Numerical.encode(10_000_000_000_000_000_000_000_000_000_000).should == "ten nonillion"
      Numerical.encode(11_000_000_000_000_000_000_000_000_000_000_000).should == "eleven decillion"
      Numerical.encode(12_000_000_000_000_000_000_000_000_000_000_000_000).should == "twelve undecillion"
      Numerical.encode(13_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "thirteen duodecillion"
      Numerical.encode(14_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "fourteen tredecillion"
      Numerical.encode(15_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "fifteen quattuordecillion"
      Numerical.encode(16_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "sixteen quindecillion"
      Numerical.encode(17_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "seventeen sexdecillion"
      Numerical.encode(18_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "eighteen septendecillion"
      Numerical.encode(19_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "nineteen octodecillion"
      Numerical.encode(20_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "twenty novemdecillion"
      Numerical.encode(21_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000).should == "twenty-one vigintillion"
    end

    it "should handle hundreds" do
      Numerical.encode(100).should == "one hundred"
      Numerical.encode(200_000).should == "two hundred thousand"
      Numerical.encode(300_000_000).should == "three hundred million"
      Numerical.encode(400_000_000_000).should == "four hundred billion"
      Numerical.encode(500_000_000_000_000).should == "five hundred trillion"
      Numerical.encode(600_000_000_000_000_000).should == "six hundred quadrillion"
    end

    it "should handle complicated large numbers" do
      Numerical.encode(1305).should == "one thousand, three hundred and five"
      Numerical.encode(32500000).should == "thirty-two million, five hundred thousand"
      Numerical.encode(553_920_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_025).should == "five hundred and fifty-three vigintillion, nine hundred and twenty novemdecillion, twenty-five"
    end
  end

  describe ".decode" do
    it "should handle basic numbers" do
      Numerical.decode("zero").should == 0
      Numerical.decode("one").should == 1
      Numerical.decode("two").should == 2
      Numerical.decode("three").should == 3
      Numerical.decode("four").should == 4
      Numerical.decode("five").should == 5
      Numerical.decode("six").should == 6
      Numerical.decode("seven").should == 7
      Numerical.decode("eight").should == 8
      Numerical.decode("nine").should == 9
      Numerical.decode("ten").should == 10
      Numerical.decode("eleven").should == 11
      Numerical.decode("twelve").should == 12
      Numerical.decode("thirteen").should == 13
      Numerical.decode("fourteen").should == 14
      Numerical.decode("fifteen").should == 15
      Numerical.decode("sixteen").should == 16
      Numerical.decode("seventeen").should == 17
      Numerical.decode("eighteen").should == 18
      Numerical.decode("nineteen").should == 19
      Numerical.decode("twenty").should == 20
      Numerical.decode("thirty").should == 30
      Numerical.decode("forty").should == 40
      Numerical.decode("fifty").should == 50
      Numerical.decode("sixty").should == 60
      Numerical.decode("seventy").should == 70
      Numerical.decode("eighty").should == 80
      Numerical.decode("ninety").should == 90
    end

    it "should handle complicated numbers" do
      Numerical.decode("twenty one").should == 21
      Numerical.decode("thirty two").should == 32
      Numerical.decode("forty three").should == 43
      Numerical.decode("fifty four").should == 54
      Numerical.decode("sixty five").should == 65
      Numerical.decode("seventy six").should == 76
      Numerical.decode("eighty seven").should == 87
      Numerical.decode("ninety eight").should == 98
    end

    it "should handle large numbers" do
      Numerical.decode("one thousand").should == 1_000
      Numerical.decode("two million").should == 2_000_000
      Numerical.decode("three billion").should == 3_000_000_000
      Numerical.decode("four trillion").should == 4_000_000_000_000
      Numerical.decode("five quadrillion").should == 5_000_000_000_000_000
      Numerical.decode("six quintillion").should == 6_000_000_000_000_000_000
      Numerical.decode("seven sextillion").should == 7_000_000_000_000_000_000_000
      Numerical.decode("eight septillion").should == 8_000_000_000_000_000_000_000_000
      Numerical.decode("nine octillion").should == 9_000_000_000_000_000_000_000_000_000
      Numerical.decode("ten nonillion").should == 10_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("eleven decillion").should == 11_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("twelve undecillion").should == 12_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("thirteen duodecillion").should == 13_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("fourteen tredecillion").should == 14_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("fifteen quattuordecillion").should == 15_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("sixteen quindecillion").should == 16_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("seventeen sexdecillion").should == 17_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("eighteen septendecillion").should == 18_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("nineteen octodecillion").should == 19_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("twenty novemdecillion").should == 20_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
      Numerical.decode("twenty one vigintillion").should == 21_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000
    end

    it "should handle hundreds" do
      Numerical.decode("one hundred").should == 100
      Numerical.decode("two hundred thousand").should == 200_000
      Numerical.decode("three hundred million").should == 300_000_000
      Numerical.decode("four hundred billion").should == 400_000_000_000
      Numerical.decode("five hundred trillion").should == 500_000_000_000_000
      Numerical.decode("six hundred quadrillion").should == 600_000_000_000_000_000
    end

    it "should handle complicated large numbers" do
      Numerical.decode("one thousand three hundred five").should == 1305
      Numerical.decode("thirty two million five hundred thousand").should == 32500000
      Numerical.decode("five hundred fifty three vigintillion nine hundred twenty novemdecillion twenty five").should == 553_920_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_025
    end

    it "should return nil for invalid numbers" do
      Numerical.decode('one zillion').should == nil
      Numerical.decode('twenty gazillion three hundred thousand').should == nil
      Numerical.decode('foobar').should == nil
    end

    it "should allow some words" do
      Numerical.decode("one thousand and twenty three").should == 1023
    end

    it "should allow hyphens" do
      Numerical.decode("twenty-one").should == 21
      Numerical.decode("forty-two").should == 42
    end

    it "should support numeric characters" do
      Numerical.decode("23").should == 23
      Numerical.decode("1 hundred").should == 100
      Numerical.decode("2 hundred thousand").should == 200_000
      Numerical.decode("3 hundred million").should == 300_000_000
      Numerical.decode("4 hundred billion").should == 400_000_000_000
      Numerical.decode("5 hundred trillion").should == 500_000_000_000_000
      Numerical.decode("600 quadrillion").should == 600_000_000_000_000_000
      Numerical.decode("1,000,000").should == 1_000_000
    end

    it "should allow commas" do
      Numerical.decode("five thousand, three hundred, twenty one").should == 5321
      Numerical.decode("nine thousand, fifty three").should == 9053
    end
  end
end