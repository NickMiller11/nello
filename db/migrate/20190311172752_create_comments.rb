class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.text :text
      t.integer :card_id, index: true, nil: false
      t.timestamps
    end
  end
end
