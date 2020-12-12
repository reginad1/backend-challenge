class CreateFriendships < ActiveRecord::Migration[6.0]
  def change
    create_table :friendships do |t|
      t.timestamps

      t.belongs_to :user, foreign_key: true
      t.belongs_to :friend
      t.integer :status
    end
  end
end
