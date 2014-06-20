class CreateContributions < ActiveRecord::Migration
  def change
  	create_table :contributions do |t|
  		t.string :org_name
  		t.string :total

  		t.timestamps
  	end
  end
end
