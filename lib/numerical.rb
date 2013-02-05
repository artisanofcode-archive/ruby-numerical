require "numerical/constants"
require "numerical/decoder"
require "numerical/encoder"

module Numerical
  def self.encode(value)
    Numerical::Encoder.new.encode(value)
  end

  def self.decode(value)
    Numerical::Decoder.new.decode(value)
  end
end