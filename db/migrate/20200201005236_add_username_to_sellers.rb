class AddUsernameToSellers < ActiveRecord::Migration[6.0]
  def change
    add_column :sellers, :username, :string
  end
end
