class AddUserIdToTweets < ActiveRecord::Migration
  def up
    remove_column :tweets, :user
    add_column :tweets, :user_id, :integer
  end

  def down
    add_column :tweets, :user, :string
    remove_column :tweets, :user_id
  end
end
