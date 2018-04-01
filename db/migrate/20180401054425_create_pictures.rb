class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :idx
      t.string :hash
      t.string :rating
      t.string :image
      t.string :file_url
      t.string :tags
      t.integer :change
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
