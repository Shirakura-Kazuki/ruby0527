class CreateStores < ActiveRecord::Migration[7.0]
  def change
    create_table :stores do |t|
      t.string :name
      t.float :rating
      t.string :hours

      t.timestamps
    end
  end
end
