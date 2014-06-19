class CreateSenators < ActiveRecord::Migration
  def change
    create_table :senators do |t|
      t.string :first
      t.string :last
      t.string :party
      t.string :state
      t.string :cid

      t.timestamps
    end
  end
end
