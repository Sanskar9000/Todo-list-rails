class CreateLists < ActiveRecord::Migration[7.0]
  def change
    create_table :lists do |t|
      t.text :title
      t.boolean :completed

      t.timestamps
    end
  end
end
