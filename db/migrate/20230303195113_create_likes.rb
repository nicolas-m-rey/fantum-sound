class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.integer :liker_id
      t.integer :track_id

      t.timestamps
    end
  end
end
