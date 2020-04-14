class CreateMushrooms < ActiveRecord::Migration[6.0]
  def change
    create_table :mushrooms do |t|
      t.string :species
      t.string :genus
      t.string :family
      t.string :order
      t.string :classis
      t.string :phylum
      t.string :common_name
      t.string :description

      t.timestamps
    end
  end
end
