class CreateManagers < ActiveRecord::Migration[7.0]
  def change
    create_table :managers do |t|
      t.string :name
      t.string :bio
      t.string :image

      t.timestamps
    end
  end
end
