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
    @book = Book.new
    @books = Book.all
    @user = current_user
  end

  def show
    @book = Book.find(params[:id])
  end

  def edit
    @book = Book.find(params[:id])
  end
 private

  def book_params
    params.require(:book).permit(:shop_name, :image, :caption, :title, :body)
  end
end