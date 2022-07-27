class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|

      t.integer :us1
      t.integer :us2
      t.float :total
    end
  end
end
