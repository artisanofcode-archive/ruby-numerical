require 'spec_helper'

describe Numerical do
  describe ".encode" do
    it "should encode numbers" do
      Numerical.encode(5).should == "five"
      Numerical.encode(98).should == "ninety-eight"
      Numerical.encode(1 * 1000 ** 1).should == "one thousand"
      Numerical.encode(21 * 1000 ** 21).should == "twenty-one vigintillion"
      Numerical.encode(600 * 1000 ** 5).should == "six hundred quadrillion"
      Numerical.encode(1305).should == "one thousand, three hundred and five"
    end
  end

  describe ".decode" do
    it "should decode numbers" do
      Numerical.decode("five").should == 5
      Numerical.decode("ninety eight").should == 98
      Numerical.decode("one thousand").should == 1 * 1000 ** 1
      Numerical.decode("twenty one vigintillion").should == 21 * 1000 ** 21
      Numerical.decode("six hundred quadrillion").should == 600 * 1000 ** 5
      Numerical.decode("one thousand three hundred five").should == 1305
    end
  end

  it "should be able to decode encoded numbers" do
    # check powers of two
    i = 0
    while 2 ** i < 1000 ** 22
      Numerical.decode(Numerical.encode(2 ** i)).should == 2 ** i
      i += 1
    end

    # check powers of three
    i = 0
    while 3 ** i < 1000 ** 22
      Numerical.decode(Numerical.encode(3 ** i)).should == 3 ** i
      i += 1
    end

    # check powers of five
    i = 0
    while 5 ** i < 1000 ** 22
      Numerical.decode(Numerical.encode(5 ** i)).should == 5 ** i
      i += 1
    end

    # check powers of seven
    i = 0
    while 7 ** i < 1000 ** 22
      Numerical.decode(Numerical.encode(7 ** i)).should == 7 ** i
      i += 1
    end
  end
end