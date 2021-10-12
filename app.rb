require_relative './colorize'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './lists'
require_relative './creators'
require 'json'

class App
  def initialize
    books_data = File.read('books.json')
    people_data = File.read('people.json')
    @people = JSON.parse(people_data)
    @rentals = []
    @books = JSON.parse(books_data)
    @lists = Lists.new
    @creators = Creators.new
  end

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

  def display_rentals_by_id
    @lists.rental(@people)
  end

  def save_data
    File.write('books.json', JSON.generate(@books))
    File.write('people.json', JSON.generate(@people))

    print "\nData stored suceessfully.".green
  end

  def load_data
    file_data = File.read("test-data.json")
    @books.each { |e| p e }
  end

  def exit_app
    save_data
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
    puts 'app!'.pink
  end
end
