require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Authorization" do

  it "should authorize" do
    auth = Scrobbler2::Auth.new
    token = auth.token
    puts "Auth Token #{token} \n" 
    token.should_not be_nil
    puts "Now go to #{auth.url} and authorise\n"

    gets #Wait for enter
    
    session = auth.session
    puts "Session: #{session.inspect} \n"
    session.should be_kind_of(Hash)
    session['key'].should_not be_nil
  end 

end
  
