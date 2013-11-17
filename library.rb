class Library
  def initialize
    @books = []
  end

  def books
    @books 
  end

  def list_books
    @books.each do |book|
      puts "Title: #{book.title}, Author: #{book.author},  Checked Out: #{book.status ? "Available" : "Not Available"}, Checked Out By: #{book.borrower ? book.borrower.name : "Not Checked Out"}"
    end
  end


  def borrowed_books
    @books.each { |book| puts "Title: #{book.title}, Checked Out by: #{book.borrower.name}" if book.status  }
  end

  def available_books
   @books.each { |book| puts "Titles available: #{book.title}" if !book.status}
  end

  def add_book(book)
    @books << book 
  end

  def check_out(user, book) 
    if user.borrowed_books_count > 1
      puts "#{user.name} already has two books checked out"
      return "#{user.name} already has two books checked out"
    end

    if book.status
      puts "this book is already checked out."
      return "this book is already checked out."
    else
      book.borrower=(user)
      book.status=true
      user.add_borrowed_book(book)
    end 
  end

  def check_in(book)
    unless book.status
      puts "You do not have this book checked out."
      return "You do not have this book checked out."
    else
      user=book.borrower
      user.release_borrowed_book(book)
      book.borrower=(false)
      book.status=false    
    end
  end

end

class Borrower
  def initialize(name)
    @name = name
    @borrowed_books=[]
  end

  def borrowed_books
    @borrowed_books
  end

  def add_borrowed_book (book)
    @borrowed_books << book
  end

  def release_borrowed_book(book)
    @borrowed_books.delete_at(@borrowed_books.index(book))
  end

  def name
    @name
  end

  def borrowed_books_count
    @borrowed_books.count
  end

  def borrowed_books_list
    @borrowed_books.each { |book| puts "#{book.title}"}
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
    @status= value
  end
  
end