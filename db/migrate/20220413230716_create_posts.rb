class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.references :users, null: false, foreign_key: true
      t.references :publications, null: false, foreign_key: true

      t.timestamps
    end
  end
end
