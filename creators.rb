class Creators
  def book(books)
    print "\nTitle: ".yellow
    title = gets.chomp
    print 'Author: '.yellow
    author = gets.chomp
    book_obj = Book.new(title, author)
    books.push({ 'title' => book_obj.title, 'author' => book_obj.author })
    print "\nSuccess!\n".green
  end

  def student(people)
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Has parent permission? [Y/N]: '.yellow
    parent_permission = gets.chomp
    people_obj = Student.new(age, name, parent_permission)
    people.push({ 'age' => people_obj.age, 'name' => people_obj.name, 'parent_permission' => people_obj.parent_permission, 'id' => people_obj.id, 'class' => people_obj.class })
    print "\nSuccess!\n".green
  end

  def teacher(people)
    print "\nAge: ".yellow
    age = gets.chomp.to_i
    print 'Name: '.yellow
    name = gets.chomp
    print 'Specialization: '.yellow
    specialization = gets.chomp
    people_obj = Teacher.new(age, name, specialization)
    people.push({ 'age' => people_obj.age, 'name' => people_obj.name, 'specialization' => people_obj.specialization, 'id' => people_obj.id, 'class' => people_obj.class })
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

  def rental(books, people, rentals)
    puts "\nSelect a book from the following list by number: \n".yellow
    books.each_with_index do |e, idx|
      print "#{idx}) ".yellow
      print "Title: '#{e['title']}, Author #{e['author']}\n".green
    end
    book_number = gets.chomp.to_i
    book_list = books[book_number]
    puts "\nSelect a person from the following list by number (not ID): \n".yellow
    people.each_with_index do |e, ix|
      print "#{ix}) ".yellow
      print "[#{e['class']}] Name:'#{e['name']}', ID:#{e['id']}, Age:#{e['age']} \n".green
    end
    person_number = gets.chomp.to_i
    person_list = people[person_number]
    print "\nDate: ".yellow
    date = gets.chomp
    rentals_obj = Rental.new(date, book_list, person_list)
    rentals.push({ 'date' => rentals_obj.date, 'id' => rentals_obj.person['id'], 'title' => rentals_obj.book['title'], 'author' => rentals_obj.book['author'] })
    print "\nSuccess!\n".green
  end
end
