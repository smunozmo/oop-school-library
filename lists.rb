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
  
    def rental(people)
      print "\nID of person: ".yellow
      id = gets.chomp.to_i
      people.each_with_index do |_e, idx|
        next unless id == people[idx].id
  
        person = people[idx].rentals
        puts "\nRentals:".yellow
        puts "\n"
        person.each_with_index do |_e, index|
          puts "Date: #{person[index].date}, Book: '#{person[index].book.title}' by #{person[index].book.author}".green
        end
      end
    end
  
  end