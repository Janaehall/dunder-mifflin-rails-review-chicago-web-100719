class DogsController < ApplicationController
  before_action :find_dog, only: [:show, :edit, :update, :destroy]


  def index
    @dogs = Dog.all
  end

  def show
    @owners = @dog.employees
  end

  private

  def find_dog
  @dog = Dog.find(params[:id])
  end

end
