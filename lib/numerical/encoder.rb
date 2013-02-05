module Numerical
  class Encoder
    NUMBERS = Numerical::Constants::NUMBERS.invert.freeze

    SHORT_FORM = Numerical::Constants::SHORT_FORM.invert.freeze

    def encode(value)
      case value
      when 0 .. 20
        result = NUMBERS[value]
      when 21 .. 99
        result = NUMBERS[(value / 10) * 10]
        result += '-' + NUMBERS[value % 10] if value % 10 != 0
      when 100 .. 999
        result = NUMBERS[value / 100] + ' hundred'
        result += ' and ' + encode(value % 100) if value % 100 != 0
      else
        magnitude = 1000 ** Math.log(value, 1000).floor
        result = encode(value / magnitude) + ' ' + SHORT_FORM[magnitude]
        result += ', ' + encode(value % magnitude) if value % magnitude != 0
      end

      result
    end
  end
end