class CreateSellers < ActiveRecord::Migration[6.0]
  def change
    create_table :sellers do |t|
      t.string :email_address
      t.string :name
      t.string :location

      t.timestamps
    end
  end
end
