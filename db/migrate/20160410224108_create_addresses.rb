class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :surname
      t.string :city
      t.string :zip_code
      t.string :street
      t.string :email
      t.belongs_to :order, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
