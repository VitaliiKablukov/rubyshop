class CreateItems < ActiveRecord::Migration[7.0]
  def change
    create_table :items do |t|
      t.string :Name
      t.string :Description
      t.string :price

      t.timestamps
    end
  end
end
