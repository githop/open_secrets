get '/' do
  logged_in?

  @states = Senator.all
  erb :index
end

post '/state' do 
 @senators = Senator.where(state: params[:state])

 @cand = OpenSecrets::Candidate.new()
 @contibution = cand.contributions({cid: senator.cid})['response']['contributors']

 #you need to figure out how to find or create donations for each senator. 
 @senators.each do |senator|
    senator.contributions  
  end
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
