class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.integer :user_account_id
      t.string :restricted_area

      t.timestamps
    end
  end
end
