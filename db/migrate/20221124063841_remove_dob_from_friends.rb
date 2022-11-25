class RemoveDobFromFriends < ActiveRecord::Migration[7.0]
  def change
    remove_column :friends, :dob, :date
  end
end
