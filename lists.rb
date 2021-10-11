class Lists
  def list_books
    @books.each_with_index do |_e, idx|
      print "\nTitle: '#{@books[idx].title}', Author #{@books[idx].author}".green
    end
    print "\n"
    run
  end
end