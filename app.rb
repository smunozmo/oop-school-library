require_relative './colorize'
require_relative './student'
require_relative './teacher'
require_relative './book'
require_relative './rental'
require_relative './lists'
require_relative './creators'

class App
  def initialize
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

