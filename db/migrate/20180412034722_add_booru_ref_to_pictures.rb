class AddBooruRefToPictures < ActiveRecord::Migration[5.1]
  def change
    add_reference :pictures, :booru, foreign_key: true
  end
end
