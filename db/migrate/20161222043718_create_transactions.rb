class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.string :transaction_no
      t.decimal :amount
      t.integer :transaction_type
      t.references :account, index: true, foreign_key: true
      t.references :atm_machine, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
