class CreateAnglers < ActiveRecord::Migration[6.1]
  def change
    create_table :anglers do |t|
      t.string :email
      t.string :password_digest
      t.string :username 
      t.string :uid 
      t.string :provider

      t.timestamps
    end
  end
end
