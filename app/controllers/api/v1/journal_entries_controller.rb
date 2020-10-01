class Api::V1::JournalEntriesController < ApplicationController
  def create
    puts params
    render json: params
  end
end
