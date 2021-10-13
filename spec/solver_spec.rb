require_relative '../solver'

describe 'Solver class' do
  context 'Runing Solver' do
    it 'Should the factorial of 5' do
      solver = Solver.new
      result = solver.factorial(5)
      expect(result).to eq 120
    end

    it 'Should resturn 0' do
        solver = Solver.new
        result = solver.factorial(0)
        expect(result).to eq 0
      end
  end
end