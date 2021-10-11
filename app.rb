require_relative './colorize'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'

class App
  def initialize
    @people = []
    @rentals = []
    @books = []
    @lists = Lists.new
    @creators = Creators.new
  end

  # def list_books
  #   if @books.length.zero?
  #     puts "\nThere are no books created!".green
  #   else
  #     @books.each do |e|
  #       puts "Title: \"#{e.title}\", Author #{e.author}".green
  #     end
  # end

  def list_books
    @lists.books(@books)
  end

  def list_people
    @lists.people(@people)
  end

  def create_book
    @creators.book(@books)
  end

  def create_person
    @creators.people(@people)
  end

  def create_rental
    @creators.rental(@books, @people)
  end

  # def list_people
  #   if @people.length.zero?
  #     puts "\nThere are no people created!".green
  #   else
  #     @people.each do |e|
  #       print "[#{e.class}] ".yellow
  #       puts "Name: #{e.name}, ID: #{e.id}, Age: #{e.age}".green
  #     end
  #   end
  # end

  # def create_student
  #   print "\nAge: ".yellow
  #   age = gets.chomp.to_i
  #   print 'Name: '.yellow
  #   name = gets.chomp
  #   print 'Has parent permission? [Y/N]: '.yellow
  #   parent_permission = gets.chomp
  #   @people << Student.new(age, name, parent_permission)
  #   print "\nSuccess!\n".green
  # end

  # def create_teacher
  #   print "\nAge: ".yellow
  #   age = gets.chomp.to_i
  #   print 'Name: '.yellow
  #   name = gets.chomp
  #   print 'Specialization: '.yellow
  #   specialization = gets.chomp
  #   @people << Teacher.new(age, name, specialization)
  #   print "\nSuccess!\n".green
  # end

  # def create_person
  #   print "\nDo you want to create a student (1) or a  teacher (2)? [Input the number]: ".yellow
  #   person = gets.chomp
  #   case person
  #   when '1'
  #     create_student
  #   when '2'
  #     create_teacher
  #   end
  # end

  # def create_book
  #   print "\nTitle: ".yellow
  #   title = gets.chomp
  #   print 'Author: '.yellow
  #   author = gets.chomp
  #   @books << Book.new(title, author)
  #   print "\nSuccess!\n".green
  #   run
  # end

  # def create_rental
  #   puts "\nSelect a book from the following list by number: \n".yellow
  #   @books.each_with_index do |_e, idx|
  #     print "#{idx}) ".yellow
  #     print "Title: '#{@books[idx].title}', Author #{@books[idx].author}\n".green
  #   end
  #   book = gets.chomp.to_i
  #   book = @books[book]
  #   puts "\nSelect a person from the following list by number (not ID): \n".yellow
  #   @people.each_with_index do |_e, ix|
  #     print "#{ix}) ".yellow
  #     print "[#{@people[ix].class}] Name:'#{@people[ix].name}', ID:#{@people[ix].id}, Age:#{@people[ix].age} \n".green
  #   end
  #   person = gets.chomp.to_i
  #   person = @people[person]
  #   print "\nDate: ".yellow
  #   date = gets.chomp
  #   Rental.new(date, book, person)
  #   print "\nSuccess!\n".green
  # end

  def display_rentals_by_id
    p @rentals
    # print "\nID of person: ".yellow
    # id = gets.chomp.to_i
    # @people.each_with_index do |_e, idx|
    #   next unless id == @people[idx].id

    #   person = @people[idx].rentals
    #   puts "\nRentals:".yellow
    #   puts "\n"
    #   person.each_with_index do |_e, index|
    #     puts "Date: #{person[index].date}, Book: '#{person[index].book.title}' by #{person[index].book.author}".green
    #   end
    # end
  end

  def exit_app
    speed = 0.2
    print 'Thank '.pink
    sleep(speed)
    print 'you '.pink
    sleep(speed)
    print 'for '.pink
    sleep(speed)
    print 'using '.pink
    sleep(speed)
    print 'this '.pink
    sleep(speed)
    puts 'app!'.pink
  end
end

class Lists
  def books(books)
    if books.length.zero?
      puts "\nThere are no books created!".green
    else
      books.each do |e|
        puts "Title: \"#{e.title}\", Author: #{e.author}".green
      end
    end
  end

  def people(people)
    if people.length.zero?
      puts "\nThere are no people created!".green
    else
      people.each do |e|
        print "[#{e.class}] ".yellow
        puts "Name: #{e.name}, ID: #{e.id}, Age: #{e.age}".green
      end
    end
  end
end

class Creators
  def book(books)
    print "\nTitle: ".yellow
    title = gets.chomp
    print 'Author: '.yellow
    author = gets.chomp
    books << Book.new(title, author)
    print "\nSuccess!\n".green
  end

  def create_student(people)
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '.yellow
    parent_permission = gets.chomp
    people << Student.new(age, name, parent_permission)
    print "\nSuccess!\n".green
  end

  def create_teacher(people)
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Specialization: '.yellow
    specialization = gets.chomp
    people << Teacher.new(age, name, specialization)
    print "\nSuccess!\n".green
  end

  def people(people)
    print "\nDo you want to create a student (1) or a  teacher (2)? [Input the number]: ".yellow
    person = gets.chomp
    case person
    when '1'
      create_student(people)
    when '2'
      create_teacher(people)
    end
  end

  def rental(books, people)
    puts "\nSelect a book from the following list by number: \n".yellow
    books.each_with_index do |_e, idx|
      print "#{idx}) ".yellow
      print "Title: '#{books[idx].title}', Author #{books[idx].author}\n".green
    end
    book_number = gets.chomp.to_i
    book_list = books[book_number]
    puts "\nSelect a person from the following list by number (not ID): \n".yellow
    people.each_with_index do |_e, ix|
      print "#{ix}) ".yellow
      print "[#{people[ix].class}] Name:'#{people[ix].name}', ID:#{people[ix].id}, Age:#{people[ix].age} \n".green
    end
    person_number = gets.chomp.to_i
    person_list = people[person_number]
    print "\nDate: ".yellow
    date = gets.chomp
    Rental.new(date, book_list, person_list)
    print "\nSuccess!\n".green
  end
end
