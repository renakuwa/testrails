class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email

      t.timestamps
    end
  end
end
#t.stringのtは変数？
#s.string :address
#s.string :gender
#s.string :password
#s.integer :age
