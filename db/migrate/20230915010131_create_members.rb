class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.string :name, not_null: false
      t.integer: age, not_null: false
      t.timestamps
    end
  end
end
