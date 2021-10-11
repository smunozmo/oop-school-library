require './app'

puts 'Welcome to School Library App!'.yellow

# rubocop:disable Metrics/CyclomaticComplexity
def main
  app = App.new

  loop do
    puts
    puts 'Please choose an option by entering a number:'.yellow
    puts '1 - List all books'.green
    puts '2 - List all people'.green
    puts '3 - Create a person'.light_blue
    puts '4 - Create a book'.light_blue
    puts '5 - Create a rental'.light_blue
    puts '6 - List all rentals for a given person id'.blue
    puts '7 - Exit'.red
    puts
    print 'Option: '.yellow
    input = gets.chomp.to_i
    case input
    when 1
      app.list_books
    when 2
      app.list_people
    when 3
      app.create_person
    when 4
      app.create_book
    when 5
      app.create_rental
    when 6
      app.display_rentals_by_id
    when 7
      app.exit_app
    end

    break if input == 7
  end
end
# rubocop:enable Metrics/CyclomaticComplexity

main
