require 'spec_helper'

describe Numerical::Decoder do
  before do
    @decoder = Numerical::Decoder.new
  end

  describe ".decode" do
    it "should handle basic numbers" do
      @decoder.decode("zero").should == 0
      @decoder.decode("one").should == 1
      @decoder.decode("two").should == 2
      @decoder.decode("three").should == 3
      @decoder.decode("four").should == 4
      @decoder.decode("five").should == 5
      @decoder.decode("six").should == 6
      @decoder.decode("seven").should == 7
      @decoder.decode("eight").should == 8
      @decoder.decode("nine").should == 9
      @decoder.decode("ten").should == 10
      @decoder.decode("eleven").should == 11
      @decoder.decode("twelve").should == 12
      @decoder.decode("thirteen").should == 13
      @decoder.decode("fourteen").should == 14
      @decoder.decode("fifteen").should == 15
      @decoder.decode("sixteen").should == 16
      @decoder.decode("seventeen").should == 17
      @decoder.decode("eighteen").should == 18
      @decoder.decode("nineteen").should == 19
      @decoder.decode("twenty").should == 20
      @decoder.decode("thirty").should == 30
      @decoder.decode("forty").should == 40
      @decoder.decode("fifty").should == 50
      @decoder.decode("sixty").should == 60
      @decoder.decode("seventy").should == 70
      @decoder.decode("eighty").should == 80
      @decoder.decode("ninety").should == 90
    end

    it "should handle complicated numbers" do
      @decoder.decode("twenty one").should == 21
      @decoder.decode("thirty two").should == 32
      @decoder.decode("forty three").should == 43
      @decoder.decode("fifty four").should == 54
      @decoder.decode("sixty five").should == 65
      @decoder.decode("seventy six").should == 76
      @decoder.decode("eighty seven").should == 87
      @decoder.decode("ninety eight").should == 98
    end

    it "should handle large numbers" do
      @decoder.decode("one thousand").should == 1 * 1000 ** 1
      @decoder.decode("two million").should == 2 * 1000 ** 2
      @decoder.decode("three billion").should == 3 * 1000 ** 3
      @decoder.decode("four trillion").should == 4 * 1000 ** 4
      @decoder.decode("five quadrillion").should == 5 * 1000 ** 5
      @decoder.decode("six quintillion").should == 6 * 1000 ** 6
      @decoder.decode("seven sextillion").should == 7 * 1000 ** 7
      @decoder.decode("eight septillion").should == 8 * 1000 ** 8
      @decoder.decode("nine octillion").should == 9 * 1000 ** 9
      @decoder.decode("ten nonillion").should == 10 * 1000 ** 10
      @decoder.decode("eleven decillion").should == 11 * 1000 ** 11
      @decoder.decode("twelve undecillion").should == 12 * 1000 ** 12
      @decoder.decode("thirteen duodecillion").should == 13 * 1000 ** 13
      @decoder.decode("fourteen tredecillion").should == 14 * 1000 ** 14
      @decoder.decode("fifteen quattuordecillion").should == 15 * 1000 ** 15
      @decoder.decode("sixteen quindecillion").should == 16 * 1000 ** 16
      @decoder.decode("seventeen sexdecillion").should == 17 * 1000 ** 17
      @decoder.decode("eighteen septendecillion").should == 18 * 1000 ** 18
      @decoder.decode("nineteen octodecillion").should == 19 * 1000 ** 19
      @decoder.decode("twenty novemdecillion").should == 20 * 1000 ** 20
      @decoder.decode("twenty one vigintillion").should == 21 * 1000 ** 21
    end

    it "should handle hundreds" do
      @decoder.decode("one hundred").should == 100
      @decoder.decode("two hundred thousand").should == 200_000
      @decoder.decode("three hundred million").should == 300_000_000
      @decoder.decode("four hundred billion").should == 400_000_000_000
      @decoder.decode("five hundred trillion").should == 500_000_000_000_000
      @decoder.decode("six hundred quadrillion").should == 600_000_000_000_000_000
    end

    it "should handle complicated large numbers" do
      @decoder.decode("one thousand three hundred five").should == 1305
      @decoder.decode("thirty two million five hundred thousand").should == 32500000
      @decoder.decode("five hundred fifty three vigintillion nine hundred twenty novemdecillion twenty five").should == 553920 * 1000 ** 20 + 25
    end

    it "should return nil for invalid numbers" do
      @decoder.decode('one zillion').should == nil
      @decoder.decode('twenty gazillion three hundred thousand').should == nil
      @decoder.decode('foobar').should == nil
    end

    it "should allow some words" do
      @decoder.decode("one thousand and twenty three").should == 1023
    end

    it "should allow hyphens" do
      @decoder.decode("twenty-one").should == 21
      @decoder.decode("forty-two").should == 42
    end

    it "should support numeric characters" do
      @decoder.decode("23").should == 23
      @decoder.decode("1 hundred").should == 100
      @decoder.decode("2 hundred thousand").should == 200_000
      @decoder.decode("3 hundred million").should == 300_000_000
      @decoder.decode("4 hundred billion").should == 400_000_000_000
      @decoder.decode("5 hundred trillion").should == 500_000_000_000_000
      @decoder.decode("600 quadrillion").should == 600_000_000_000_000_000
      @decoder.decode("1,000,000").should == 1_000_000
    end

    it "should allow commas" do
      @decoder.decode("five thousand, three hundred, twenty one").should == 5321
      @decoder.decode("nine thousand, fifty three").should == 9053
    end
  end
end