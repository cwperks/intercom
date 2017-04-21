class CreateFloors < ActiveRecord::Migration[5.0]
  def change
    create_table :floors do |t|
      t.integer :building_id
      t.integer :floor

      t.timestamps
    end
  end
end
