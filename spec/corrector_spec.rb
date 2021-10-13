require_relative '../corrector'

describe 'Corrector class' do
  context 'Runing Corrector' do
    it 'Should trim a long name' do
      corrector = Corrector.new
      name = corrector.correct_name('Joe4567890long')
      expect(name).to eq 'Joe4567890'
    end

    it 'Should capitalize first character' do
      corrector = Corrector.new
      name = corrector.correct_name('joe')
      expect(name).to eq 'Joe'
    end

    it 'Should not change name if correct' do
      corrector = Corrector.new
      name = corrector.correct_name('Joe')
      expect(name).to eq 'Joe'
    end
  end
end
