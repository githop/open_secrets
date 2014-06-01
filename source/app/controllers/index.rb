get '/' do
  logged_in?
  CID = 'N00007360'
  @cand_sum = OpenSecrets::Candidate.new(api)
  @cand_sum = @cand_sum.summary({ cid:CID}) 
  erb :index
end

def logged_in?
  redirect '/sessions/new' unless !session[:id].nil?
end
