class StringCalculator
    def self.add(numbers)
        return 0 if numbers.empty?

        original_input = numbers
        delimiter = ","
        if numbers.start_with?("//")
            diff_delimiter = numbers.split("\n").first.split("//").last
            numbers = numbers.gsub(diff_delimiter, delimiter)
        end
        numbers = numbers.gsub("\n", delimiter)

        nums = numbers.split(delimiter)
        expected_num_count = numbers.count(',') + 1
        raise "invalid input format #{original_input}" unless nums.length == expected_num_count

        nums = nums.map(&:to_i)
        negatives = nums.select {|num| num.negative? }
        raise "negative numbers not allowed #{negatives.join(',')}" unless negatives.empty?

        nums.sum
    end
end
