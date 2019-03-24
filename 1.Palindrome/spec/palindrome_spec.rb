require '../spec_helper'

class Palindrome
  # Time Complexity (TM)

  class << self
    def is_palindrome?(string)
      string == reverse(string) # TM = O(1) (1)
    end

    def reverse(string)
      length = string.length # TM = O(1) (2)
      word = '' # TM = O(1) (3)
      length.times do |i| # TM = O(n) (4)
        word += string[-i-1] # TM = O(1) (5)
      end
      word # TM = O(1) (6)
    end

    # SUM_TM = (1) + (2) + (3) + (4) + (5) + (6) = 5 + O(n)
    # => Time Complexity (TM) = O(n)
  end
end

RSpec.describe Palindrome do
  it 'is palindrome true' do
    string = 'abcba'
    expect(Palindrome.is_palindrome?(string)).to eq true
  end

  it 'is palindrom false' do
    string = 'abcabc'
    expect(Palindrome.is_palindrome?(string)).to eq false
  end
end
