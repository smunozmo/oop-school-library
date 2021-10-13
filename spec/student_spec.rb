require_relative '../student'

describe 'Student class' do
  context 'Creating a new student' do
    it 'Should create a new student with age, name, permission and classroom' do
      student = Student.new 17, 'Joe', true
      expect(student.age).to eq 17
    end

    it 'Should not be an empty age' do
      student = Student.new 17, 'Joe', true
      expect(student.age).not_to eq ''
    end

    it 'Should return ¯\(ツ)/¯' do
        student = Student.new 17, 'Joe', true
        expect(student.play_hooky).to eq "¯\(ツ)/¯"
    end
  end
end
