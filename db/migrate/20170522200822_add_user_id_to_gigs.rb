class AddUserIdToGigs < ActiveRecord::Migration[5.0]
  def change
    add_column :gigs, :user_id, :integer
  end
end
