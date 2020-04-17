class CharitiesController < ApplicationController
  def index
    @charities = Charity.all
  end

  def show
    charity_id = params[:id]
  end

  def update
    charity = Charity.find(params[:id])

    charity.update!(
      name: params[:charity][:name],
      mission: params[:charity][:mission],
      short_desc: params[:charity][:short_desc],
      long_desc: params[:charity][:short_desc],
    )
  end

  def delete
    Charity.find(params[:id]).destroy!
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