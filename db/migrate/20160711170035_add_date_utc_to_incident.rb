class AddDateUtcToIncident < ActiveRecord::Migration[5.0]
  def change
    add_column :incidents, :date_as_utc, :string
  end
end
