class AddImageDataToPhotos < ActiveRecord::Migration[7.0]
  def change
    create_table :photos do |t|
      t.text :image_data
    end
  end
end
