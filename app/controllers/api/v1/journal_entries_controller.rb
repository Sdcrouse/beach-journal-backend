class Api::V1::JournalEntriesController < ApplicationController
  def create
    journal_entry = JournalEntry.new(journal_entry_params)

    if journal_entry.save
      render json: JournalEntrySerializer.new(journal_entry), status: :created
    end
  end

  def destroy
    journal_entry = JournalEntry.find_by_id(params[:id])

    if journal_entry && journal_entry.destroy
      render json: {}, status: :ok
    end
  end

  private

    def journal_entry_params
      params.require(:journal_entry).permit(:beach_id, :date, :title, :topics, :entry_text)
    end
end
