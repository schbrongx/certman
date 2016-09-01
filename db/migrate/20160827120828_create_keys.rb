class CreateKeys < ActiveRecord::Migration
  def change
    create_table :keys do |t|
      t.references :keytype, index: true, foreign_key: true
      t.references :keypartner, index: true
      t.text :content

      t.timestamps null: false
    end
  end
end
