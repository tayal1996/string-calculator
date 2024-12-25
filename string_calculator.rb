class StringCalculator
    def self.add(numbers)
        delimiter = ","
        numbers = numbers.gsub("\n", delimiter)
        nums = numbers.split(delimiter).map(&:to_i)
        nums.sum
    end
end
