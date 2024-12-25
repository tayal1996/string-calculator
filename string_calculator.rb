class StringCalculator
    def self.add(numbers)
        num1, num2 = numbers.split(',').map(&:to_i)
        num1+num2
    end
end
