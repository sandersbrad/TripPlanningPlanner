class CreateTripPlans < ActiveRecord::Migration
  def change
    create_table :trip_plans do |t|
      t.string :title, null: false
      t.text :body
      t.string :image_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
