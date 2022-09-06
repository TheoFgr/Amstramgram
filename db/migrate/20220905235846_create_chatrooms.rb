class CreateChatrooms < ActiveRecord::Migration[6.1]
  def change
    create_table :chatrooms do |t|
      t.string :name
      t.string :current_user

      t.timestamps
    end
  end
end
