class CreateIncidents < ActiveRecord::Migration[5.0]
  def change
    create_table :incidents do |t|
      t.string :date
      t.string :state
      t.string :city
      t.string :address
      t.integer :numKilled
      t.integer :numInjured
      t.string :uid
      t.timestamps
    end
  end
end
