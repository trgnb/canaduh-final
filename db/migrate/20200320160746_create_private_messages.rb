class CreatePrivateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :private_messages do |t|
      t.text :body
      t.references :conversation, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :read, default: false

      t.timestamps
    end
  end
end
