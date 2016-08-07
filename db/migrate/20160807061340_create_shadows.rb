class CreateShadows < ActiveRecord::Migration[5.0]
  def change
    create_table :shadows do |t|
      t.decimal :latitude
      t.decimal :longitude
      t.integer :kind

      t.timestamps
    end
  end
end
