class CreateFollows < ActiveRecord::Migration[6.1]
  def change
    create_table :follows do |t|
      t.belongs_to :follower, null: false, foreign_key: true
      t.belongs_to :followee, null: false, foreign_key: trueUser

      t.timestamps
    end
  end
end
