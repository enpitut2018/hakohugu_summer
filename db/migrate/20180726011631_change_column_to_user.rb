class ChangeColumnToUser < ActiveRecord::Migration[5.1]
  def change
      remove_column :users, :longtitude, :float
      add_column :users, :longitude, :float
  end
end
