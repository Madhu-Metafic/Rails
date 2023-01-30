class AuthorsController < ApplicationController
    def index
        @Authors = Author.all 
        render json: @Authors
    end 

    def show
        @Author = Author.find(params[:id])
        render json: @Author
    end 

    def create
        @Author = Author.create(
            name: params[:name],
            book: params[:book]
        )
        render json: @Author
    end 

    def update
        @Author = Author.find(params[:id])
        @Author.update(
            name: params[:name],
            book: params[:book]
        )
        render json: @Author
    end 

    def destroy
        @Authors = Author.all 
        @Author = Author.find(params[:id])
        @Author.destroy
        render json: @Authors
    end 
end
