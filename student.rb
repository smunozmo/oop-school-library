require_relative './person'

class Student < Person
  attr_reader :parent_permission

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

  attr_reader :classroom

  def classroom=(classroom)
    @classroom = classroom
    classroom.students.push(self) unless classroom.students.include?(self)
  end

  def play_hooky
    "¯\(ツ)/¯"
  end
end
