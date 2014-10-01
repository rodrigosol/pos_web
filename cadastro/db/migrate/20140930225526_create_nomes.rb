class CreateNomes < ActiveRecord::Migration
  def change
    create_table :nomes do |t|
      t.integer :idade
      t.string :email
      t.text :msg

      t.timestamps
    end
  end
end
