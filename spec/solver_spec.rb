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

    it 'Should resturn erros' do
      solver = Solver.new
      result = solver.factorial(-5)
      expect(result).to eq 'Math Error'
    end
  end

  context 'Running reverse method' do
    it 'Should return "olleh"' do
      solver = Solver.new
      reverse = solver.reverse('hello')
      expect(reverse).to eq 'olleh'
    end

    it 'Should not return "hello"' do
      solver = Solver.new
      reverse = solver.reverse('hello')
      expect(reverse).not_to eq 'hello'
    end
  end

  context 'Running fizzbuzz method' do
    it 'Should return fizz' do
      solver = Solver.new
      fizzbuzz = solver.fizzbuzz(3)
      expect(fizzbuzz).to eq 'fizz'
    end

    it 'Should return buzz' do
      solver = Solver.new
      fizzbuzz = solver.fizzbuzz(5)
      expect(fizzbuzz).to eq 'buzz'
    end

    it 'Should return fizzbuzz' do
      solver = Solver.new
      fizzbuzz = solver.fizzbuzz(15)
      expect(fizzbuzz).to eq 'fizzbuzz'
    end
  end
end
