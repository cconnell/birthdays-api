class Api::V1::PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def create
    @person = Person.new(name: params[:name], gift: params[:gift], description: params[:description], email: params[:email] )

    if @person.save
      render :show
    else
      render json: { errors: @person.errors.full_messages }, status: 422
    end
  end
end
