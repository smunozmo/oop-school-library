
class Creators
    def book(books)
      print "\nTitle: ".yellow
      title = gets.chomp
      print 'Author: '.yellow
      author = gets.chomp
      books << Book.new(title, author)
      print "\nSuccess!\n".green
    end
  
    def student(people)
      print "\nAge: ".yellow
      age = gets.chomp.to_i
      print 'Name: '.yellow
      name = gets.chomp
      print 'Has parent permission? [Y/N]: '.yellow
      parent_permission = gets.chomp
      people << Student.new(age, name, parent_permission)
      print "\nSuccess!\n".green
    end
  
    def teacher(people)
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
        student(people)
      when '2'
        teacher(people)
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
  