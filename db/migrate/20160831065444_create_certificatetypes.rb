class CreateCertificatetypes < ActiveRecord::Migration
  def change
    create_table :certificatetypes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
