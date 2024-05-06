class CreateReviews < ActiveRecord::Migration[7.0]
  def change
    create_table :reviews do |t|
      t.belongs_to :post
      t.belongs_to :user
      t.integer :rate
      t.string :comment

      t.timestamps
    end
  end
end
