class BooksController < ApplicationController
  def new
    @book = Book.new
  end

  def create
    @Book = Book.new(book_params)
    if @Book.save
      redirect_to book_path(book.id)
    else
      redirect_to books_path
    end
  end

  def index
    @books = Book.all
    @book = Book.new
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
  
  def update
  end
  
  def destroy
  end

private
  def book_params
    params.require(:book).permit(:title, :body)
  end

end