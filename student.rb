require_relative './person'

class Student < Person
  def initialize(age, name, permission, classroom: nil)
    super(age, name, parent_permission: true)
    case permission
    when 'Y'
        @parent_permission = true
    when 'y'
        @parent_permission = true
    when 'N'
        @parent_permission = false
    when 'n'
        @parent_permission = false
    else
        @parent_permission = false
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
