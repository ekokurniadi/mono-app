class HomeController < ApplicationController
    
    # layout 'home_layout' => jika ingin mengeset layout untuk seluruh method
    def index
        # instance variable using @
        @langs = ['ruby','php','java','go','c++']
        @title = 'Hallo this is title'
        @books = Book.all
    end

    def hallo
      id = params[:id]
      book = Book.find_by(id:id)
      if book
        @title = book.title
      else
        @title = 'Book not found'
        end
    render layout: 'home_layout'
    end

    end