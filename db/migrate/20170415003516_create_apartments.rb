class CreateApartments < ActiveRecord::Migration[5.0]
  def change
    create_table :apartments do |t|
      t.integer :floor_id
      t.string :external_id

      t.timestamps
    end
  end
end
