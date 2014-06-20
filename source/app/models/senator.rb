class Senator < ActiveRecord::Base
  has_many :contributions


  def fetch_donations
   senator = $cand.contributors({ cid: self.cid })['response']['contributors']['contributor']

   senator.each do |contrib| 
     contributions.create(org_name: contrib['org_name'], total: contrib['total'])
   end
  end
end
