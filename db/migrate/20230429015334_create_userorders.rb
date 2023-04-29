class CreateUserorders < ActiveRecord::Migration[7.0]
  def change
    create_table :userorders do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount

      t.timestamps
    end
  end
end
