class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end

  def update
    @Book = Book.find(params[:id])
    if @book.update_attributes(book_params)
      redirect_to @book, notice: 'Book has been updated'
    else
      render :edit
    end
  end

  private

  def book_params
    params.require(:book).permit(:name, :author, :published_at)    
  end
end