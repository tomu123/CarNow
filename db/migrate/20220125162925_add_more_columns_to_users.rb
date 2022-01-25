class AddMoreColumnsToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :dni, :string
    add_column :users, :birthdate, :date
    add_column :users, :license_number, :string
  end
end
