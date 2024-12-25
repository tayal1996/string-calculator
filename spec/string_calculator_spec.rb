require_relative '../string_calculator.rb'

describe StringCalculator do
    describe "#string calculator addition" do
        context "empty string" do
            it "return 0 for an empty string" do
                expect(StringCalculator.add("")).to eq(0)
            end
        end
        
        context "single number" do
            it "return the number itself for a single number" do
                expect(StringCalculator.add("1")).to eq(1)
            end
        end

        context "comma seperated addition" do
            it "should return addition of two number" do
                expect(StringCalculator.add("1,2")).to eq(3)
            end
            it "should return addition of multiple number" do
                expect(StringCalculator.add("1,2,3,4")).to eq(10)
            end
        end

        context "handles new lines between number" do
            it "should return addition of two number" do
                expect(StringCalculator.add("1\n2")).to eq(3)
            end
            it "should return addition of multiple number" do
                expect(StringCalculator.add("1\n2\n3\n4")).to eq(10)
            end
        end

        context "handles new lines and comma between number" do
            it "should return addition for newline and comma" do
                expect(StringCalculator.add("1\n2,3")).to eq(6)
            end
            it "should return addition of multiple number with newline and comma" do
                expect(StringCalculator.add("1\n2,3\n4")).to eq(10)
            end
        end

        context "supports different delimiters" do
            it "should return addition for different delimiters" do
                expect(StringCalculator.add("//;\n1;2")).to eq(3)
            end
            it "should return addition for different delimiters with comma and newline" do
                expect(StringCalculator.add("//;\n1;2,3\n4")).to eq(10)
            end
        end

        context "raise an expection" do
            it "for invalid input format" do
                expect { StringCalculator.add("1,\n") }.to raise_error("invalid input format 1,\n")
            end
            it "for negative numbers" do
                expect { StringCalculator.add("1,-2,-3") }.to raise_error("negative numbers not allowed -2,-3")
            end
        end
    end
end