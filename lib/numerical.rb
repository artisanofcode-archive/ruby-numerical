module Numerical
  NUMBERS = {
    "zero"      => 0,
    "one"       => 1,
    "two"       => 2,
    "three"     => 3,
    "four"      => 4,
    "five"      => 5,
    "six"       => 6,
    "seven"     => 7,
    "eight"     => 8,
    "nine"      => 9,
    "ten"       => 10,
    "eleven"    => 11,
    "twelve"    => 12,
    "thirteen"  => 13,
    "fourteen"  => 14,
    "fifteen"   => 15,
    "sixteen"   => 16,
    "seventeen" => 17,
    "eighteen"  => 18,
    "nineteen"  => 19,
    "twenty"    => 20,
    "thirty"    => 30,
    "forty"     => 40,
    "fifty"     => 50,
    "sixty"     => 60,
    "seventy"   => 70,
    "eighty"    => 80,
    "ninety"    => 90,
  }

  REVERSE_NUMBERS = NUMBERS.invert

  SHORT_FORM = {
    "thousand"          => 1_000,
    "million"           => 1_000_000,
    "billion"           => 1_000_000_000,
    "trillion"          => 1_000_000_000_000,
    "quadrillion"       => 1_000_000_000_000_000,
    "quintillion"       => 1_000_000_000_000_000_000,
    "sextillion"        => 1_000_000_000_000_000_000_000,
    "septillion"        => 1_000_000_000_000_000_000_000_000,
    "octillion"         => 1_000_000_000_000_000_000_000_000_000,
    "nonillion"         => 1_000_000_000_000_000_000_000_000_000_000,
    "decillion"         => 1_000_000_000_000_000_000_000_000_000_000_000,
    "undecillion"       => 1_000_000_000_000_000_000_000_000_000_000_000_000,
    "duodecillion"      => 1_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "tredecillion"      => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "quattuordecillion" => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "quindecillion"     => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "sexdecillion"      => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "septendecillion"   => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "octodecillion"     => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "novemdecillion"    => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
    "vigintillion"      => 1_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000_000,
  }

  REVERSE_SHORT_FORM = SHORT_FORM.invert

  def self.encode(number)
    # TODO recursion sucks
    result = ''

    if number < 21
      result << REVERSE_NUMBERS[number]
    elsif number < 100
      result << REVERSE_NUMBERS[(number / 10) * 10]
      if number % 10 != 0
        result << '-' + REVERSE_NUMBERS[number % 10]
      end
    elsif number < 1000
      result << REVERSE_NUMBERS[number / 100] + ' hundred'
      if number % 100 != 0
        result << ' and ' + Numerical.encode(number % 100)
      end
    else
      magnitude = 1000 **  Math.log(number, 1000).floor

      result << Numerical.encode(number / magnitude) + ' ' + REVERSE_SHORT_FORM[magnitude]

      if number % magnitude != 0
        result << ', ' + Numerical.encode(number % magnitude)
      end
    end

    result
  end

  def self.decode(text)
    result = 0

    current = 0

    text.gsub! /(\d),(\d)/, "\\1\\2"

    text.split(/[ \-,]+/).each do |word|
      if /^\d+$/.match word
        current += word.to_i
      elsif NUMBERS.include? word
        current += NUMBERS[word]
      elsif "hundred" == word
        current *= 100
      elsif SHORT_FORM.include? word
        result += current * SHORT_FORM[word]
        current = 0
      elsif "and" == word
        # ignore...
      else
        raise ArgumentError, "Invalid text"
      end
    end

    result += current
  end
end