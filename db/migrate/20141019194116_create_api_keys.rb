class CreateAPIKeys < ActiveRecord::Migration
  def change
    create_table :api_keys do |t|
      t.string :access_token
      t.string :role
      t.integer :user_id

      t.timestamps
    end
  end
end
