class CreateBandRiders < ActiveRecord::Migration[7.1]
  def change
    create_table :band_riders do |t|
      t.belongs_to :band, null: false, foreign_key: true
      t.string :name
      t.integer :version

      t.timestamps
    end
  end
end
