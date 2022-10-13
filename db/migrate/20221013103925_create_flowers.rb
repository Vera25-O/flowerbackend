class CreateFlowers < ActiveRecord::Migration[7.0]
  def change
    create_table :flowers do |t|
      t.string :name
      t.string :image
      t.string :description

      t.timestamps
    end
  end
end
