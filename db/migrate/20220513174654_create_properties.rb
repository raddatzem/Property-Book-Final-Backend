class CreateProperties < ActiveRecord::Migration[7.0]
  def change
    create_table :properties do |t|
      t.string :name
      t.string :address
      t.string :notes
      t.string :image
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :manager, null: false, foreign_key: true

      t.timestamps
    end
  end
end
