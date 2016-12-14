# This migration comes from notee (originally 20160803154954)
class CreateNoteeComments < ActiveRecord::Migration
  def change
    create_table :notee_comments do |t|
      t.integer :post_id
      t.text :content
      t.string :name
      t.string :email
      t.boolean :is_hidden, null: false, default: false
      t.boolean :is_deleted, null: false, default: false

      t.timestamps
    end
  end
end
