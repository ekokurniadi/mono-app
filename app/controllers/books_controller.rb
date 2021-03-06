class BooksController < ApplicationController
#index =>GET
    def index
        @books = Book.all
    end

#show =>GET
    def show
      @book = Book.find(params[:id])
    end

#new =>POST
    def new
        @book = Book.new
    end

#create =>POST
    def create
        @book = Book.new(resource_params)
        if @book.save
          redirect_to books_path, notice: "Berhasil menambah data buku"
        else
          render :new
        end
      end

#edit =>GET
    def edit
        @book = Book.find(params[:id])
    end

#update => Patch/Put
    def update
      @book = Book.find(params[:id])
      @book.update(resource_params)
      render plain: 'Berhasil mengubah data buku'
    end

#destroy => DELETE
    def destroy
      book = Book.find(params[:id])
     if book.destroy
      redirect_to books_path, notice: "Berhasil menghapus data buku"
      else
      redirect_to books_path, notice: "Gagal menghapus data buku"
     end
    end

    def active
      @books = Book.where(status: 1)
      render 'index'
    end

    def toggle
      @book = Book.find(params[:id])
      @book.status = !@book.status
      @book.save
      redirect_to books_path, notice: "Berhasil menonaktifkan buku"
    end

    private

    def resource_params
      params.require(:book).permit(:title, :page, :description)
    end




end
