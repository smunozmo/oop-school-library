require_relative '../teacher'

describe 'Teacher class' do
  context 'Creating a new teacher' do
    it 'Should create a new teacher with age, name and specialization' do
      teacher = Teacher.new 30, 'Sam', 'Math'
      expect(teacher.age).to eq 30
    end

    it 'Should not be an empty specialization' do
      teacher = Teacher.new 30, 'Sam', 'Math'
      expect(teacher.age).not_to eq ''
    end

    it 'Should return true' do
        teacher = Teacher.new 30, 'Sam', 'Math'
        expect(teacher.can_use_services?).to be true
    end
  end
end
