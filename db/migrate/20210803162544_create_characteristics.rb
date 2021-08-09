class CreateCharacteristics < ActiveRecord::Migration[6.1]
  def change
    create_table :characteristics do |t|
      t.string :water_temperature
      t.string :bait
      t.string :rod
      
      t.timestamps
    end
  end
end
