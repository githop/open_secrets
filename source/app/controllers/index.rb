get '/' do
  logged_in?


  erb :index
end

get '/contrib' do
  cid = 'N00003535'
  cand = OpenSecrets::Candidate.new()
  @cand_sum = cand.contributors({ cid: cid })['response']['contributors']

  erb :'cand/contributors'
end

get '/industry' do
  cid = 'N00003535'
  cand = OpenSecrets::Candidate.new()
  @ind_sum = cand.industries({cid: cid})['response']['industries']
  erb :'cand/industries'
end


def logged_in?
  redirect '/sessions/new' unless !session[:id].nil?
end
