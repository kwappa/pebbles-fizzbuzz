require File.join(File.dirname(File.expand_path(__FILE__)), %w(.. lib pebbles fizzbuzz))

describe Fizzbuzz do
  context '.solve with valid value' do
    it 'retunrs string converted value when integer value was given' do
      Fizzbuzz.solve(1).should eql '1'
    end
    it 'returns `fizz` when mutliples of 3 was given' do
      Fizzbuzz.solve(3).should eql 'fizz'
      Fizzbuzz.solve(9).should eql 'fizz'
    end
    it 'returns `buzz` when multiples 5 was given' do
      Fizzbuzz.solve(5).should eql 'buzz'
      Fizzbuzz.solve(25).should eql 'buzz'
    end
    it 'returns `fizzbuzz` when multiples both 3 and 5 was given' do
      Fizzbuzz.solve(15).should eql 'fizzbuzz'
      Fizzbuzz.solve(75).should eql 'fizzbuzz'
    end
  end

  context '.solve with invalid value' do
    it 'raises ArgumentError when string value was given' do
      expect { Fizzbuzz.solve('hoge') }.to raise_error ArgumentError
    end
    it 'raises ArgumentError when value equal or less zan zero was given' do
      expect { Fizzbuzz.solve(-1) }.to raise_error ArgumentError
      expect { Fizzbuzz.solve( 0) }.to raise_error ArgumentError
    end
  end

  context '.nabeatsu with valid value' do
    it 'retunrs string converted value when integer value was given' do
      Fizzbuzz.nabeatsu(1).should eql '1'
    end
    it 'returns string converted value with facemark when multiples of 3 was given' do
      Fizzbuzz.nabeatsu( 3).should eql Fizzbuzz.aho_nize('3')
      Fizzbuzz.nabeatsu(72).should eql Fizzbuzz.aho_nize('72')
    end
    it 'returns string converted value with facemark when include character `3` value was given' do
      Fizzbuzz.nabeatsu(13).should eql Fizzbuzz.aho_nize('13')
      Fizzbuzz.nabeatsu(35).should eql Fizzbuzz.aho_nize('35')
    end
  end
end
