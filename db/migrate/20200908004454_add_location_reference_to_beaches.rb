class AddLocationReferenceToBeaches < ActiveRecord::Migration[6.0]
  def change
    add_reference :beaches, :location
  end
end
