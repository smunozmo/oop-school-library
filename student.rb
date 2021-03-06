require_relative './person'

class Student < Person
  def initialize(age, name, permission, classroom: nil)
    super(age, name, parent_permission: true)
    @parent_permission = case permission
                         when 'y', 'Y'
                           true
                         else
                           false
                         end
    @classroom = classroom
  end

  attr_reader :classroom, :parent_permission

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
