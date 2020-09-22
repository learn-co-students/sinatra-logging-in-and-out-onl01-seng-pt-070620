class CreateUser < ActiveRecord::Migration[5.1]
  def up
    create_table :users do |u|
      u.string :username
      u.string :password
      u.decimal :balance
    end
  end

  def down 
    drop_table :users
  end
end
