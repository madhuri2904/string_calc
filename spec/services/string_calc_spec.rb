require 'rails_helper'

RSpec.describe StringCalc do
	describe '#add' do
		it 'returns 0 for an empty string' do
			result = StringCalc.add("")
			expect(result).to eq(0)
			puts "returns 0 for an empty string"
		end

		it 'returns sum for an string' do
			result = StringCalc.add("1")
			expect(result).to eq(1)
			puts "returns 1 for an empty string"
		end

		it 'returns sum for an string' do
			result = StringCalc.add("0,3")
			expect(result).to eq(3)
		end

		it 'returns 6 for an string' do
			result = StringCalc.add("1,3,2")
			expect(result).to eq(6)
		end
	end
end
