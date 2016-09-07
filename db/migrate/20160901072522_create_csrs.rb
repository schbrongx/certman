class CreateCsrs < ActiveRecord::Migration
  def change
    create_table :csrs do |t|
      t.string :name
      t.text :content

      t.timestamps null: false
    end
  end
end
