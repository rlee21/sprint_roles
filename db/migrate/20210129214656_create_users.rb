class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :team
      t.boolean :active

      t.timestamps
    end
  end
end
