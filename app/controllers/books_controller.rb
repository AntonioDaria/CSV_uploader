class BooksController < ApplicationController
  def index
    @books = Book.all
  end

  def import
    Book.import(params[:file])
    redirect_to root_url, notice: "Products imported."
  end
end
