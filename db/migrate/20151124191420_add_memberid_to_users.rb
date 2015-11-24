class AddMemberidToUsers < ActiveRecord::Migration
  def change
    add_column :users, :memberid, :string
  end
end
