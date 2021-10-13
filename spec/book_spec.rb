require_relative '../book'

describe 'Book class' do
  context 'Creating a new book' do
    it 'Should create a new book with title and author' do
      book = Book.new 'Book title', 'Book author'
      expect(book.title).to eq 'Book title'
    end

    it 'Should not be an empty author' do
      book = Book.new 'Book title', 'Book author'
      expect(book.author).not_to eq ''
    end

    it 'Should not be an empty author' do
      book = Book.new 'Book title', 'Book author'
      expect(book).to be_an_instance_of(Book)
    end
  end
end
