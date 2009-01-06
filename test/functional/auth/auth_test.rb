require File.dirname(__FILE__) + '/../test_helper.rb'

describe "Authorization" do

  before(:all) do
    Scrobbler2::AuthorizedBase.api_secret = "943696955e27b45d7c91c978bed909d5"
  end
  

  it "should authorize" do
    token = Scrobbler2::AuthorizedBase.token
    puts "Auth Token #{token} \n" 
    token.should_not be_nil
    puts "Now go to #{Scrobbler2::AuthorizedBase.auth_url} and authorise\n"
    gets
    session = Scrobbler2::AuthorizedBase.session
    puts "Session: #{session.inspect} \n"
    session.should be_kind_of(Hash)
    session['key'].should_not be_nil

  end 

end
  
