class CreateTracks < ActiveRecord::Migration[7.0]
  def change
    create_table :tracks do |t|
      t.string :title
      t.integer :uploader_id
      t.integer :play_count
      t.string :description

      t.timestamps
    end
  end
end
