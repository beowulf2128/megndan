class PersonsController < ApplicationController
  def index
    @persons = Person.all
  end

  def edit
    @person = Person.find params[:id]
  end

  def update
    @person = Person.find params[:id]
    @person.update_attributes params[:person]
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.new(Person.safe_params(params))
    @person.save!
    redirect_to @person
  end
end
