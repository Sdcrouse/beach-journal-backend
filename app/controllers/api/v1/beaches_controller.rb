class Api::V1::BeachesController < ApplicationController
  def index
    beaches = Beach.all
    render json: BeachSerializer.new(beaches), status: :ok
  end

  def create
    puts params
    beach = Beach.new(beach_params)
    beach.location = Location.find_or_initialize_by(beach_location_params)

    if beach.save
      render json: BeachSerializer.new(beach), status: :created
    end
  end

  def destroy
    beach = Beach.find_by_id(params[:id])

    if beach && beach.destroy
      render json: BeachSerializer.new(beach), status: :ok
    end
  end

  private

    def beach_params
      params.require(:beach).permit(
        :name, :description, :items_to_bring, :popular_activities,
        attractions_attributes: [:category, :name, :description]
      )
    end

    def beach_location_params
      params[:beach].require(:location).permit(:city, :state, :country)
    end
end
