
describe "PagedResult", :shared => true do
  
  it "should have page" do
    @it.should have_key("page")
  end
  
  it "should have perPage" do
    @it.should have_key("perPage")
  end
  
  it "should have totalPages" do
    @it.should have_key("totalPages")
  end

end
