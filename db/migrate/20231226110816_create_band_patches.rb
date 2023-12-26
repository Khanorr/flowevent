class CreateBandPatches < ActiveRecord::Migration[7.1]
  def change
    create_table :band_patches do |t|
      t.belongs_to :band_rider, null: false, foreign_key: true
      t.integer :channel_number
      t.string :channel_name
      t.string :microphone
      t.boolean :phantom
      t.boolean :provided

      t.timestamps
    end
  end
end
