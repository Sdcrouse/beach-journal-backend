class Api::V1::BeachesController < ApplicationController
  def index
    beaches = Beach.all
    render json: beaches, status: :ok
  end

  def show
    beach = Beach.find_by_id(params[:id])

    if beach
      render json: beach, status: :ok
    else
      render plain: "We could not find this beach. Please try again.", status: :not_found
    end
  end
end
