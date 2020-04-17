class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
  end

  def show
    @charity = Charity.find(params[:id])
  end

  def update
    charity = Charity.find(params[:id])

    charity.update!(
      name: params[:charity][:name],
      mission: params[:charity][:mission],
      short_desc: params[:charity][:short_desc],
      long_desc: params[:charity][:short_desc],
    )

    redirect_to action: "show", id: charity.id
  end

  def delete
    Charity.find(params[:id]).destroy!

    redirect_to action: "index"
  end

  def new
    @charity = Charity.new
  end

  def create
    charity = Charity.create!(
      name: params[:charity][:name],
      mission: params[:charity][:mission],
      short_desc: params[:charity][:short_desc],
      long_desc: params[:charity][:short_desc],
    )

    redirect_to action: "show", id: charity.id
  end
end