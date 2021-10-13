require_relative '../rental'

describe 'Rental class' do
  context 'Creating a new rental' do
    it 'Should create a new rental with date, book and person' do
      rental = Rental.new '10 feb 2020', 'Book mock', 'Person Mock'
      expect(rental.date).to eq '10 feb 2020'
    end

    it 'Should not be an empty date' do
      rental = Rental.new '10 feb 2020', 'Book mock', 'Person Mock'
      expect(rental.date).not_to eq ''
    end
  end
end