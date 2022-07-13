class BooksController < ApplicationController
  def new
   @books = Book.new
  end

  def create
    @books = Book.new(book_params)
    @books.user_id = current_user.id
    @books.save
    redirect_to books_path
  end

  def index
  end

  def show
  end

  def edit
  end
 private

  def book_params
    params.require(:book).permit(:shop_name, :image, :caption)
  end
end