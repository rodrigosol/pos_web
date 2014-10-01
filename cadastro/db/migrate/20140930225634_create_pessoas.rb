class CreatePessoas < ActiveRecord::Migration
  def change
    create_table :pessoas do |t|
      t.string :nome
      t.integer :idade
      t.string :email
      t.text :msg

      t.timestamps
    end
  end
end
