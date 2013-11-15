class Library
  def initialize
    @books = []
    @available_books=[]
    @borrowed_books=[]
  end

  def books 
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}"
    end
  end

  def borrowed_books
    @borrowed_books
  end

  def available_books
    @available_books
  end

  def add_book(book)
    @books << book 
    @available_books << book
  end

  def check_out(user, book) 

  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
  end

  def borrowed_books

  end

  def name
    @name
  end

  def borrowed_books_count

  end

  def borrowed_books_list
  end
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
  end
    def title
    @title
  end

  def author
    @author
  end
end
