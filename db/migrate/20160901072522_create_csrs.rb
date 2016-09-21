class CreateCsrs < ActiveRecord::Migration
  def change
    create_table :csrs do |t|
      t.string :name
      t.text :content
      t.string :cn
      t.string :ou
      t.string :o
      t.string :l
      t.string :s
      t.string :c
      t.string :email
      t.references :keypair, index: true
      t.references :csrtemplate, index: true

      t.timestamps null: false
    end
  end
end
