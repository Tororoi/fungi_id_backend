class CreateObservations < ActiveRecord::Migration[6.0]
  def change
    create_table :observations do |t|
      t.string :location
      t.string :image_one
      t.string :image_two
      t.string :image_three
      t.string :image_four
      t.string :image_five
      t.string :image_six
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :mushroom, null: false, foreign_key: true

      t.timestamps
    end
  end
end
