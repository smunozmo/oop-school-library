require_relative '../classroom'

describe 'Classroom class' do
  context 'Creating a new classroom' do
    it 'Should create a new classroom with label' do
      classroom = Classroom.new 'Spanish'
      expect(classroom.label).to eq 'Spanish'
    end

    it 'Should not be an empty label' do
      classroom = Classroom.new 'Spanish'
      expect(classroom.label).not_to eq ''
    end

    it 'Should return student' do
        classroom = Classroom.new 'Spanish'
        classroom.add_student('Mock Student')
        expect(classroom.students).to eq ['Mock Student']
    end
  end
end
