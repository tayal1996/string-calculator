class StringCalculator
    def self.add(numbers)
        delimiter = ","
        if numbers.start_with?("//")
            diff_delimiter = numbers.split("\n").first.split("//").last
            numbers = numbers.gsub(diff_delimiter, delimiter)
        end
        numbers = numbers.gsub("\n", delimiter)
        nums = numbers.split(delimiter).map(&:to_i)
        nums.sum
    end
end
