class CreateDonations < ActiveRecord::Migration
  def change
  	create_table :donations do |t|
  		t.belongs_to :senator
  		t.belongs_to :contribution

  		t.timestamps
  	end
  end
end
