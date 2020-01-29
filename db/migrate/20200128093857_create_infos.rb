class CreateInfos < ActiveRecord::Migration[6.0]
  def change
    create_table :infos do |t|
      t.string :fname
      t.string :lname
      t.string :email
      t.integer :age
      t.string :degree
      t.integer :passing_year
      t.string :company
      t.string :website
      t.text :add1
      t.text :add2
      t.string :city
      t.string :state
      t.integer :pincode
      t.string :password
      t.string :user_name

      t.timestamps
    end
  end
end
