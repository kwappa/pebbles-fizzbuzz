require 'pebbles'

def fizzbuzz value
  Fizzbuzz.solve value
end

def nabeatsu value
  Fizzbuzz.nabeatsu value
end

class Pebbles::Fizzbuzz
  VERSION = '0.1.0'

  def self.solve value
    value = self.validate value

    result = ''
    if value % 3 == 0
      result += 'fizz'
    end
    if value % 5 == 0
      result += 'buzz'
    end
    return result unless result.empty?

    return value.to_s
  end

  def self.nabeatsu value
    value = self.validate value
    result = value.to_s
    if value % 3 == 0 || result.include?('3')
      result = self.aho_nize result
    end

    return result
  end

  def self.validate value
    raise ArgumentError unless value.kind_of? Integer
    raise ArgumentError unless value > 0
    value
  end

  def self.aho_nize str
    return "#{str} :P"
  end
end
