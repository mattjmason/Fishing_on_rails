class CreateAnglers < ActiveRecord::Migration[6.1]
  def change
    create_table :anglers do |t|
      t.string :name

      t.timestamps
    end
  end
end
