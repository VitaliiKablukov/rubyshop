class Fixcolumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :userorderdescriptions, :order_id, :userorder_id
  end
end
