class Api::V1::BeachesController < ApplicationController
  def index
    beaches = Beach.all
    render json: BeachSerializer.new(beaches), status: :ok
  end

  def show # I may not actually need this action, if I return all of the data in the index action.
    beach = Beach.find_by_id(params[:id])

    if beach
      render json: BeachSerializer.new(beach), status: :ok
    else
      render plain: "We could not find this beach. Please try again.", status: :not_found
    end
  end
end
