class CreateAccounts < ActiveRecord::Migration
  def change
    create_table :accounts do |t|
      t.string :account_no
      t.decimal :balance
      t.string :account_type
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
