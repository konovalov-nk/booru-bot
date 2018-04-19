# frozen_string_literal: true

class CreatePictures < ActiveRecord::Migration[5.1]
  def change
    create_table :pictures do |t|
      t.integer :booru_idx
      t.string :file_url
      t.string :hash
      t.string :image
      t.string :rating
      t.string :source
      t.text :tags
      t.integer :change
      t.integer :width
      t.integer :height

      t.timestamps
    end
  end
end
