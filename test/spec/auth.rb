require File.dirname(__FILE__) + "/spec_helper.rb"


describe "Auth" do
  before(:each) do
    @auth = Scrobbler2::Auth.new 
    @artist.class.stub!(:get_with_auth).and_return Hash.new
  end
  
  it "token should call get_with_auth with auth.gettoken" do
    @auth.class.should_receive(:get_with_auth).with('auth.gettoken').and_return Hash.new :lfm => {} 
    @auth.token
  end
  
  it "session should call get_with_auth with auth.getsession and token=token" do
    @auth.should_receive(:token).and_return :test_token
    @auth.class.should_receive(:get_with_auth).with('auth.getsession', {:token => :test_token}).and_return Hash.new :lfm => {} 
    @auth.session
  end
  

end
