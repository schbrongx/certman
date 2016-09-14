class CreateKeystores < ActiveRecord::Migration
  def change
    create_table :keystores do |t|
      t.string :name
      t.text :description
      t.references :keypair, index: true
      t.references :csr, index: true
      t.references :certificate, index: true

      t.timestamps null: false
    end
  end
end
