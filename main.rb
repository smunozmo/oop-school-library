require_relative './book'
require_relative './classroom'
require_relative './corrector'
require_relative './person'
require_relative './rental'
require_relative './student'
require_relative './teacher'
require_relative './colorize'

class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def run
    puts "\nPlease choose an option by entering a number:\n".yellow
    puts '1 - List all books'.green
    puts '2 - List all people'.green
    puts '3 - Create a person'.light_blue
    puts '4 - Create a book'.light_blue
    puts '5 - Create a rental'.light_blue
    puts '6 - List all rentals for a given person id'.blue
    puts "7 - Exit\n".red
    entry = gets.chomp
    select(entry.to_i)
  end

  def list_books
    @books.each_with_index do |_e, idx|
      puts "\nTitle: '#{@books[idx].title}', Author #{@books[idx].author}".green
    end
    run
  end

  def list_people
    @people.each_with_index do |_e, idx|
      puts "\n[#{@people[idx].class}] ".yellow + "Name: '#{@people[idx].name}', ID: #{@people[idx].id}, Age: #{@people[idx].age}".green
    end
    run
  end

  def create_student
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '.yellow
    parent_permission = gets.chomp
    @people << Student.new(age, name, parent_permission)
    print "\nSuccess!\n".green
  end

  def create_teacher
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Specialization: '.yellow
    specialization = gets.chomp
    @people << Teacher.new(age, name, specialization)
    print "\nSuccess!\n".green
  end

  def create_book
    print "\nTitle: ".yellow
    title = gets.chomp
    print 'Author: '.yellow
    author = gets.chomp
    @books << Book.new(title, author)
    print "\nSuccess!\n".green
    run
  end

  def create_person
    print "\nDo you want to create a student (1) or a  teacher (2)? [Input the number]: ".yellow
    person = gets.chomp
    case person
    when '1'
      create_student
    when '2'
      create_teacher
    end
    run
  end

  # rubocop:disable Metrics/CyclomaticComplexity
  def select(arg)
    case arg
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
      create_book
    when 5
      create_rental
    when 6
      display_rentals_by_id
    when 7
      exit_app
    end
  end
  # rubocop:enable Metrics/CyclomaticComplexity

  def exit_app
    speed = 0.2
    print "\nThank ".pink
    sleep(speed)
    print 'you '.pink
    sleep(speed)
    print 'for '.pink
    sleep(speed)
    print 'using '.pink
    sleep(speed)
    print 'this '.pink
    sleep(speed)
    print "app!\n".pink
    exit(true)
  end
end

def main
  puts "\nWelcome to School Library App!".yellow
  app = App.new
  app.run
end

main
