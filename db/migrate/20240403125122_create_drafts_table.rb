class CreateDraftsTable < ActiveRecord::Migration[7.1]
  def change
    create_table :drafts do |t|
      t.string :title, null: false
      t.text :body, null: false

      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
