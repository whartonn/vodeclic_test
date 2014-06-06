class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.references :compagny, index: true

      t.timestamps
    end
  end
end
