class BooksController < ApplicationController
#index =>GET
    def index
        @books = Book.all
    end
#show =>GET
    def show
    end
#new =>POST
    def new
        @book = Book.new
    end
#create =>POST
    def create
        book = Book.new(resource_params)
        book.save
        render plain: 'Berhasil menyimpan data buku'
    end
    
    private

    def resource_params
        params.require(:book).permit(:title, :page, :description)
    end
#edit =>GET
    def edit
    end
#update => Patch/Put
    def update
    end
#destroy => DELETE
    def destroy
    end
end