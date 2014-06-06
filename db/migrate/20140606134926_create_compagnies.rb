class CreateCompagnies < ActiveRecord::Migration
  def change
    create_table :compagnies do |t|
      t.string :name

      t.timestamps
    end
  end
end
