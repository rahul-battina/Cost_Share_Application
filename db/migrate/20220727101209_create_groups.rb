class CreateGroups < ActiveRecord::Migration
  def change
    create_table :groups do |t|
      t.integer :gno
    end
  end
end
