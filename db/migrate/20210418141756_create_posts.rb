class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :title
      t.string :message
      t.string :username
      t.string :profilesrc
      t.string :image

      t.timestamps
    end
  end
end
