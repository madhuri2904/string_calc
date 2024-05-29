require 'rails_helper'

RSpec.describe StringCalc do
	describe '#add' do
		it 'returns 0 for an empty string' do
			result = StringCalc.add("")
			expect(result).to eq(0)
		end

		it 'returns sum for an string' do
			result = StringCalc.add("1")
			expect(result).to eq(1)
		end

		it 'returns sum for an string' do
			result = StringCalc.add("0,3")
			expect(result).to eq(3)
		end

		it 'returns 6 for an string' do
			result = StringCalc.add("1,3,2")
			expect(result).to eq(6)
		end

		it 'returns 13 for an empty string' do
			result = StringCalc.add("2,4,2,5")
			expect(result).to eq(13)
		end

		it 'returns exception for negative numbers' do
			result = StringCalc.add("-5,3,-1,-2")
			expect(result).to eq("negative numbers not allowed -5, -1, -2")
		end

		it 'returns 19 for an \n string' do
			result = StringCalc.add('2\n4,5\n8')
			expect(result).to eq(19)
		end

		it 'returns sum of number for string' do
			result = StringCalc.add('//;\n2;3;4')
			expect(result).to eq(9)
		end
	end
end
