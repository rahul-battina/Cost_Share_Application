class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|

      t.string :uname
      t.integer :gno
      t.string :email
      t.string :phno
    end
  end
end
