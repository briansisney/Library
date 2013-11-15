class Library
  def initialize
    @books = []
  end

  def books 
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author}, Checked Out By: #{book.borrowed ? book.borrowed.name : "Available"}"
    end
  end

  def borrowed_books
   # list borrowed with  true
  end

  def available_books
   # list borrowed with false
  end

  def add_book(book)
    @books << book 
  end

  def check_out(user, book) 
    if book.borrowed
      puts "this book is already checked out."
    else
      book.borrowed_by(user)
    end
    
  end

  def check_in(book)
  end
end

class Borrower
  def initialize(name)
    @name = name
  end

  def borrowed_books
    # list books with status of name
  end

  def name
    @name
  end

  def borrowed_books_count
    #count list
  end

  def borrowed_books_list

  end
end

class Book
  def initialize(title, author)
    @title = title
    @author = author
    @borrowed = false
  end
    def title
    @title
  end

  def author
    @author
  end
  def borrowed
    @borrowed
  end
  def borrowed_by(user)
    @borrowed = user
  end
  
end