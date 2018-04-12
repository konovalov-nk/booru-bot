class CreateTagPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_pictures do |t|
      t.references :user_tag, foreign_key: true
      t.references :picture, foreign_key: true
      t.integer :is_seen

      t.timestamps
    end
  end
end
