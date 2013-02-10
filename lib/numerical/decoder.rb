module Numerical
  class Decoder
    NUMBERS = Numerical::Constants::NUMBERS

    SHORT_FORM = Numerical::Constants::SHORT_FORM

    def decode(value)
      result = 0

      current = 0

      value.gsub(/(\d),(\d)/, "\\1\\2").split(/[ \-,]+/).each do |word|
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
          # ...
        else
          return nil
        end
      end

      result += current
    end
  end
end