class Lists
  def books(books)
    if books.length.zero?
      puts "\nThere are no books created!".green
    else
      books.each do |e|
        puts "Title: \"#{e['title']}\", Author: #{e['author']}".green
      end
    end
  end

  def people(people)
    if people.length.zero?
      puts "\nThere are no people created!".green
    else
      people.each do |e|
        print "[#{e['class']}] ".yellow
        puts "Name: #{e['name']}, ID: #{e['id']}, Age: #{e['age']}".green
      end
    end
  end

  def rental(rentals)
    print "\nID of person: \n".yellow
    person_id = gets.chomp.to_i
    person_found = false
    person_selected = []
    rentals.each do |e|
      if e['id'].to_i == person_id
        person_found = true
        person_selected.push(e)
      end
    end
    puts
    if person_found == false
      puts 'ID does not exist!'.red
    else
      person_selected.each do |e|
        puts "Date: #{e['date']}, Book \"#{e['title']}\" by #{e['author']}".green
      end
    end
  end
end
