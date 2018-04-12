class CreateBoorus < ActiveRecord::Migration[5.1]
  def change
    create_table :boorus do |t|
      t.string :name
      t.string :url
      t.string :api_url

      t.timestamps
    end
  end
end
