class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.string :title
      t.integer :rating
      t.string :comments
      t.date :date
      t.belongs_to :user, null: false, foreign_key: true
      t.belongs_to :plant, null: false, foreign_key: true
      t.belongs_to :seller, null: false, foreign_key: true

      t.timestamps
    end
  end
end
