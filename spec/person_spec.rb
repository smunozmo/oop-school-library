require_relative '../person'

describe 'Person class' do
  context 'Creating a new person' do
    it 'Should create a new person with a name' do
      person = Person.new 18, 'Bob'
      expect(person.name).to eq 'Bob'
    end

    it 'Should return true when using can_use_services?' do
      person = Person.new 18, 'Bob'
      expect(person.can_use_services?).to be true
    end

    it 'Should return true when using can_use_services?' do
      person = Person.new 16, 'Bob', parent_permission: false
      expect(person.can_use_services?).not_to be true
    end
  end
end
