class CreateConcertUserComments < ActiveRecord::Migration[5.1]
  def change
    create_table :concer_user_comments do |t|
      t.string :comments
      t.integer :user_id
      t.integer :concert_id
    end
  end
end