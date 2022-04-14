class CreatePublications < ActiveRecord::Migration[6.1]
  def change
    create_table :publications do |t|
      t.string :picture
      t.string :content
      t.integer :number_of_like

      t.timestamps
    end
  end
end
