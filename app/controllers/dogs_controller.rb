class DogsController < ApplicationController
  before_action :get_dog, only: [:show, :edit, :update]

  def index
    @dogs = Dog.all
  end

  def show
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.create(dog_params)
  end

  def edit
  end

  def update
  end

private

  def get_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :breed, :age, :employee_id)
  end

end
