module Prime
  class PrimeGenerator
    def gen(number)
      prime = []
      n = 2
      while prime.length < number
        if is_prime?(n)
          prime << n
        end
        n += 1
      end
      prime
    end

    def is_prime?(number)
      number = number.floor
      return false if number <= 1
      max = Math.sqrt(number)
      (2..max).none?{|k| 0 == number % k}
    end
  end
end
