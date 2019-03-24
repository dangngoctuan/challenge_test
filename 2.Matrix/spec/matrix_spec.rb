require '../spec_helper'

class Matrix
  def rotate(matrix)
    newMatrix = []
    begin
      matrix[0].each_with_index do |m, i|
        matrix.map do |row|
          newMatrix << row[i]
        end
      end
      newMatrix.each_slice(matrix.length).to_a.reverse
    rescue
      nil
    end
  end
end

RSpec.describe Matrix do
  let!(:object) { Matrix.new }

  context 'rotate with matrix' do
    it 'rotate matrix to left 90°' do
      matrix = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [10, 11, 12]]
      result = matrix.transpose.reverse
      expect(object.rotate(matrix)).to eq result
    end
  end

  context 'rotate with out matrix' do
    it 'rotate failed' do
      matrix = []
      expect(object.rotate(matrix)).to eq nil
    end
  end
end
