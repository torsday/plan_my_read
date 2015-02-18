class WelcomeController < ApplicationController

  def index
    @books = Book.all
    @book_lists = BookList.all
    @users = User.all
  end

end
