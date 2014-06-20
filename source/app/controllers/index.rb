get '/' do

  @states = Senator.all
  erb :index
end

post '/state' do 
  @senators = Senator.where(state: params[:state])

  #i need to check to see if each senator has donations. if not, then i need to get them 
  #by making an API call. 
  @senators.each do |senator|
    if senator.contributions.empty?
      senator.fetch_donations
    end
  end
  erb :contributions 
end

get '/contributions' do 
  erb :contributions
end

get '/contrib' do
  cid = 'N00003535'
  @cand_sum = $cand.contributors({ cid: cid })['response']['contributors']

  erb :'cand/contributors'
end

get '/industry' do
  cid = 'N00003535'
  @ind_sum = $cand.industries({cid: cid})['response']['industries']
  erb :'cand/industries'
end


def logged_in?
  redirect '/sessions/new' unless !session[:id].nil?
end
