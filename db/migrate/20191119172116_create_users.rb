class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.string :password_digest
      t.string :email
      t.boolean :isAdmin
      t.text :bio

      t.timestamps
    end
  end
end
