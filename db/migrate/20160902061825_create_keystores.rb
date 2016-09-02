class CreateKeystores < ActiveRecord::Migration
  def change
    create_table :keystores do |t|
      t.string :name
      t.text :description
      t.references :publickey, index: true
      t.references :privatekey, index: true
      t.references :csr, index: true
      t.references :certificate, index: true

      t.timestamps null: false
    end
  end
end
