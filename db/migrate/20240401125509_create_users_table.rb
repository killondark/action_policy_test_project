class CreateUsersTable < ActiveRecord::Migration[7.1]
  def up
    create_table :users do |t|
      t.string :name, null: false
      t.boolean :is_admin, default: false

      t.timestamps null: false
    end
  end

  def down
    drop_table :users
  end
end
