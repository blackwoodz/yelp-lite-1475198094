class CreateOwnerFeedbacks < ActiveRecord::Migration
  def change
    create_table :owner_feedbacks do |t|
      t.integer :review_id
      t.integer :owner_id
      t.string :response

      t.timestamps

    end
  end
end
