require 'spec_helper'
require './lib/prime_generator'

describe Prime::PrimeGenerator do
  describe '#gen' do
    it "can generate 10 prime numbers" do
      expect(Prime::PrimeGenerator.new.gen(10)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]
    end
  end

  describe "#is_prime?" do
    it "return true if prime" do
      expect(Prime::PrimeGenerator.new.is_prime?(11)).to eq true
    end
    it "return false if composite" do
      expect(Prime::PrimeGenerator.new.is_prime?(12)).to eq false
    end
  end
end
