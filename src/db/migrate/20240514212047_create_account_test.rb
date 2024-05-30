class CreateAccountTest < ActiveRecord::Migration[7.0]
  def change
    create_table :account_test do |t|
      t.boolean :test_completed, default: false
      t.references :account, foreign_key: true
      t.references :test, foreign_key: true

      t.timestamps
    end
  end
end
