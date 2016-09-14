class CreateKeypairs < ActiveRecord::Migration
  def change
    create_table :keypairs do |t|
      t.string :name
      t.text :privatekey
      t.text :publickey

      t.timestamps null: false
    end
  end
end
