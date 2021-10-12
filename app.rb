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
    file_data = File.read("test-data.json")
    file_parse = JSON.parse(file_data)
    p file_parse
    @people = []
    @rentals = []
    @books = []
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
    books_object = {}
    @books.each_with_index do |e, idx| 
      books_object[idx] = {'title' => e.title, 'author' => e.author}
    end
    json_books = books_object.to_json
    File.write('./test-data.json', json_books)
    print "\nData stored suceessfully.".green
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
