class ChangeScaleInPrice < ActiveRecord::Migration[5.1]
  def change
    change_column :snacks, :price, :decimal, :precision => 2
  end
end
