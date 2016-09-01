class CreateCsrtemplates < ActiveRecord::Migration
  def change
    create_table :csrtemplates do |t|
      t.string :name
      t.text :description
      t.string :cn
      t.string :ou
      t.string :o
      t.string :l
      t.string :s
      t.string :c
      t.string :email

      t.timestamps null: false
    end
  end
end
