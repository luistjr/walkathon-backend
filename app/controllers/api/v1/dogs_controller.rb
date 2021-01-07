class Api::V1::DogsController < ApplicationController

    def index
        dogs = Dog.all
        render json: dogs 
    end

    def new
        dog = Dog.new
        render json: dog
    end

    def show
        dog = Dog.find(params[:id])
        render json: dog
    end

    def create
        dog = Dog.create!(dog_params)
        render json: dog
    end

    def destroy
        dog = Dog.find(params[:id])
        dog.destroy!
        render json: {}
    end

    def update
        dog = Dog.find(params[:id])
        dog.update!(dog_params)
        render json: dog
    end


    private
    def dog_params
        params.permit(:name, :breed, :comment, :img_url)
    end
    
end