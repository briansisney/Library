class Library
  def initialize
    @books = []
  end

  def books 
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author},  Checked Out: #{book.status}, Checked Out By: #{book.borrower ? book.borrower.name : "Available"}"
    end
  end

  def borrowed_books

  end

  def available_books
   # list borrowed with false
  end

  def add_book(book)
    @books << book 
  end

  def check_out(user, book) 
    if borrowed_books_count > 1
      return "#{user} already has two books checked out"
    end

    if book.status
      return "this book is already checked out."
    else
      book.borrower=(user)
      book.status=true
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
    @borrower = nil
    @status = false
  end
    def title
    @title
  end

  def author
    @author
  end
  def borrower
    @borrower
  end
  def borrower=(user)
    @borrower= user
  end
  def status
    @status
  end
    def status=(value)
    @status=value
  end
  
end