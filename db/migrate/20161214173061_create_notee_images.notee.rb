# This migration comes from notee (originally 20160605141547)
class CreateNoteeImages < ActiveRecord::Migration
  class NoteeImage < ActiveRecord::Base; end

  def change
    create_table :notee_images do |t|

      t.string :content, null: false, uniqueness: true
      t.boolean :is_deleted, null: false, default: false

      # if you have user_id
      # t.integer :user_id

      t.timestamps null: false
    end

    # create default image
    Notee::Image.skip_callback(:create, :before, :create_authority)
    Notee::Image.create :content => 'default.png'
    Notee::Image.set_callback(:create, :before, :create_authority)
  end

end
