class BooksController < ApplicationController

  def index
    @book_list = Book.all

    respond_to do |format|
      format.html
      format.text

      format.csv do
        render plain: Book.generate_csv(@book_list)
      end
    end
  end

end
