class AdvertisersController < ApplicationController
  before_action :set_advertiser, only: [:show, :update, :destroy]

  def index
    @advertisers = Advertiser.all

    render json: @advertisers
  end

  def show
    render json: @advertiser
  end

  def create
    @advertiser = Advertiser.new(advertiser_params)

    if @advertiser.save
      render json: @advertiser, status: :created, location: @advertiser
    else
      render json: @advertiser.errors, status: :unprocessable_entity
    end
  end

  def update
    @advertiser = Advertiser.find(params[:id])

    if @advertiser.update(advertiser_params)
      head :no_content
    else
      render json: @advertiser.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @advertiser.destroy

    head :no_content
  end

  private

    def set_advertiser
      @advertiser = Advertiser.find(params[:id])
    end

    def advertiser_params
      params.require(:advertiser).permit(:name)
    end
end
