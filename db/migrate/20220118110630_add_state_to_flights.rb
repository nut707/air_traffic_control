class AddStateToFlights < ActiveRecord::Migration[7.0]
  def change
    add_column :flights, :state, :string
  end
end
