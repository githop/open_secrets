class CreateContributions < ActiveRecord::Migration
  def change
    create_table :contributions do |t|
      t.string :org_name
      t.integer :total
      t.belongs_to :senator

      t.timestamps
    end
  end
end
