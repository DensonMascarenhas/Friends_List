class AddInfoToFriends < ActiveRecord::Migration[7.0]
  def change
    add_column :friends, :location, :string
    add_column :friends, :dob, :date
    add_column :friends, :contact, :integer
  end
end
