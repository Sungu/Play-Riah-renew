class CreateApplicants < ActiveRecord::Migration
  def change
    create_table :applicants do |t|
      t.references :post, index: true, foreign_key: true
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
