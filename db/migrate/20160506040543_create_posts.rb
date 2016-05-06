class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.text :gako
      t.string :img
      t.integer :dday
      t.integer :people
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
