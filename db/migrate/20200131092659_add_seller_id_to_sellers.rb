class AddSellerIdToSellers < ActiveRecord::Migration[6.0]
  def change
    add_column :sellers, :seller_id, :integer
  end
end
