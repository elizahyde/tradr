class AddCashToUsers < ActiveRecord::Migration
  def change
    add_column :users, :cash, :float

  end
end
