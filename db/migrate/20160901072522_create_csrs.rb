class CreateCsrs < ActiveRecord::Migration
  def change
    create_table :csrs do |t|
      t.references :key, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
