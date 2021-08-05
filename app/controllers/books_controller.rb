class BooksController < ApplicationController
  def index
    @book = Book.all
  end
  
  def new
    @book = Book.new
  end
  
  def create
    book = book.new(book_params)
    book.save
    redirect_to books_path(book.id)
  end

  def show
  end

  def edit
  end
  
  
  private
  def book_params
    paramas.require(:book).permit(:title, :body)
  end
  
end
