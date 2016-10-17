class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.string :name
      t.text :content
      t.references :certificatetype, index: true, foreign_key: true
      t.references :csr, index: true, foreign_key: true
      t.references :keystore, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
