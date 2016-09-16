class CreateSettings < ActiveRecord::Migration
  def change
    create_table :settings do |t|
      t.string :name
      t.text :description
      t.string :value

      t.timestamps null: false
    end
  end
end
