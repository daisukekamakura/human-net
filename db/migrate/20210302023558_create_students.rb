class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.string :name, null: false
      t.text :memo, null: false
      t.integer :user_id, null:false, foreign_key:true
      t.timestamps
    end
  end
end
