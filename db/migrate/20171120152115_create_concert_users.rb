class CreateConcertUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :concert_users do |t|
      t.string :comment_id
      t.integer :user_id
      t.integer :concert_id
    end
  end
end
