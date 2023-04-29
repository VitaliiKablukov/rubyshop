class CreateUserorderdescriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :userorderdescriptions do |t|
      t.references :userorder, null: false, foreign_key: true
      t.references :item, null: false, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
