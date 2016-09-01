class CreateCertificates < ActiveRecord::Migration
  def change
    create_table :certificates do |t|
      t.references :certificatetype, index: true, foreign_key: true
      t.references :key, index: true, foreign_key: true
      t.references :csr, index: true, foreign_key: true
      t.text :content

      t.timestamps null: false
    end
  end
end
