require File.dirname(__FILE__) + "/spec_helper.rb"

class TestBaseImplementation < Scrobbler2::Base
end

describe "Base" do

  before(:each) do
    HTTParty.stub!(:get)
    Scrobbler2::Base.api_key = "api_key"
    Scrobbler2::Base.api_secret = "api_secret"
  end

  it "should have attribute api key" do
    Scrobbler2::Base.api_key = "blah"
    Scrobbler2::Base.api_key.should == "blah"
  end

  it "should have attribute session_key" do
    Scrobbler2::Base.session_key = "blah"
    Scrobbler2::Base.session_key.should == "blah"
  end
  
  it "should have attribute api secret" do
    Scrobbler2::Base.api_secret = "blah"
    Scrobbler2::Base.api_secret.should == "blah"
  end
  
  describe "has_resource" do
    
    before(:each) do
      TestBaseImplementation.module_eval("has_resource :test_info, :root => :test");
      TestBaseImplementation.stub!(:get).and_return({})
      @test = TestBaseImplementation.new
    end
    
    it "should create a named method" do
      @test.method(:test_info).should_not be_nil
    end
    
    describe "the method" do
      it "the method should call self.get" do
        TestBaseImplementation.should_receive(:get)
        @test.test_info
      end
    
      it "should call get with resource name got from the class name and the method name" do
        TestBaseImplementation.should_receive(:get).with("testbaseimplementation.gettestinfo", an_instance_of(Hash), an_instance_of(Hash))
        @test.test_info
      end
      
      it "should get with query options from @query" do
        @test.instance_variable_set(:@query, {:name => "test"})
        TestBaseImplementation.should_receive(:get).with("testbaseimplementation.gettestinfo", {:name => "test"}, an_instance_of(Hash))
        @test.test_info
      end
      
      it "should return the root element" do
        TestBaseImplementation.should_receive(:get).and_return({:test=>:root_element});
        @test.test_info.should == :root_element              
      end
   end
    
  end
  
  describe "has_resource with options = {:resource_name => resource.method}" do
    before(:each) do
      TestBaseImplementation.module_eval("has_resource :test_info, :root => :test, :resource_name => 'resource.method'");
      TestBaseImplementation.stub!(:get).and_return({})
      @test = TestBaseImplementation.new
    end
  
    it "should call get with resource name got from options" do
      TestBaseImplementation.should_receive(:get).with("resource.method", an_instance_of(Hash), an_instance_of(Hash))
      @test.test_info
    end
  end
  
  describe "sign" do
    it "should return an md5 digest of the 'query_signature'" do
      Scrobbler2::Base.should_receive(:query_signature).with(:query).and_return('query_signature')
      Scrobbler2::Base.sign(:query).should == '4987b19cfbded59cd717b8ffd9f1a6bf'
    end
  end
  
  describe "query_signature" do
    it "should return an unencoded api_signature" do
      query = {:method => "artist.getInfo", :api_key => "api_key", :format => "json"}
      Scrobbler2::Base.query_signature(query).should == "api_keyapi_keyformatjsonmethodartist.getInfoapi_secret"
    end
    
  end
  
  describe "get" do 
    it "should call HTTParty.get" do
      HTTParty.should_receive(:get).with('http://ws.audioscrobbler.com/2.0/', {:query => {:method=>'artist.getInfo', :format=>'json', :api_key => 'api_key'}})
      Scrobbler2::Base.get('artist.getInfo', {})
    end
  end

  
  describe "auth_request", :shared => true do
  
    it "should set the query method" do
      HTTParty.should_receive(http_method) do |url, options|
        options[options_param][:method].should == 'artist.getInfo'
      end
      action
    end
    
    it "should set the api_key" do
      HTTParty.should_receive(http_method) do |url, options|
        options[options_param][:api_key].should == 'api_key'
      end
      action
    end
    
    it "should set the api_sginature" do
      Scrobbler2::Base.should_receive(:sign).with(an_instance_of(Hash)).and_return('signature')
      HTTParty.should_receive(http_method) do |url, options|
        options[options_param][:api_sig].should == 'signature'
      end
      action
    end
    
    it "should set the session_key, if available" do
      Scrobbler2::Base.should_receive(:session_key).at_least(1).and_return("SESSIONKEY");      
      HTTParty.should_receive(http_method) do |url, options|
        options[options_param][:sk].should == 'SESSIONKEY'
      end
      action
    end
    
    it "should not set the session_key, if unavailable" do
      Scrobbler2::Base.should_receive(:session_key).at_least(1).and_return(nil);      
      HTTParty.should_receive(http_method) do |url, options|
        options[options_param].should_not have_key(:sk)
      end
      action
    end
  
  end
  
  
  describe "get_with_auth" do
    it "should call HTTParty.get" do
      HTTParty.should_receive(:get).with('http://ws.audioscrobbler.com/2.0/', an_instance_of(Hash))
      Scrobbler2::Base.get_with_auth('artist.getInfo', {})
    end
    
    def action
      Scrobbler2::Base.get_with_auth('artist.getInfo', {})
    end
    
    def http_method
      :get
    end 
    
    def options_param
      :query
    end
    
    it_should_behave_like "auth_request"
  end
  
  
  describe "post_with_auth" do
    it "should call HTTParty.post" do
      HTTParty.should_receive(:post).with('http://ws.audioscrobbler.com/2.0/', an_instance_of(Hash))
      Scrobbler2::Base.post_with_auth('artist.getInfo', {})
    end

    def action
      Scrobbler2::Base.post_with_auth('artist.getInfo', {})
    end
    
    def http_method
      :post
    end 
    
    def options_param
      :body
    end

    
    it_should_behave_like "auth_request"

  
  end

end


