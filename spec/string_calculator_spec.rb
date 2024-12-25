require_relative '../string_calculator.rb'

describe StringCalculator do
    describe '#string calculator' do
        context 'check addition' do
            it 'should return addition of two number' do
                expect(StringCalculator.add('1,2')).to eq(3)
            end
        end
    end
end