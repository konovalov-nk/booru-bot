class CreateUserTags < ActiveRecord::Migration[5.1]
  def change
    create_table :user_tags do |t|
      t.references :user, foreign_key: true
      t.int :start_from
      t.string :rating
      t.text :tags

      t.timestamps
    end
  end
end
