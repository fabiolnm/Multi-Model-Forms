class CreateUserAccounts < ActiveRecord::Migration
  def change
    create_table :user_accounts do |t|
      t.integer :person_id
      t.string :username
      t.string :password

      t.timestamps
    end
  end
end
