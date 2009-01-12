require File.dirname(__FILE__) + "/spec_helper.rb"

describe "Group" do
  before(:each) do
    @group = Scrobbler2::Group.new "Stubborn Tiny Lights"
    @group.class.stub!(:get).and_return Hash.new
  end
  
  it "should have a default query {:group => 'Stubborn Tiny Lights'}" do
    @group.instance_variable_get(:@query).should == {:group => 'Stubborn Tiny Lights'}
  end
  
  it "members should call get with 'group.getMembers' with query params :group => @group" do
    @group.class.should_receive(:get).with('group.getmembers', {:group => 'Stubborn Tiny Lights'}, {}).and_return Hash.new
    @group.members
  end
  
  it "weekly_artist_chart should call get with 'group.getShouts' with query params :group => @group" do
    @group.class.should_receive(:get).with('group.getweeklyartistchart', {:group => 'Stubborn Tiny Lights'}, {}).and_return Hash.new
    @group.weekly_artist_chart
  end

  it "weekly_album_chart should call get with 'group.getShouts' with query params :group => @group" do
    @group.class.should_receive(:get).with('group.getweeklyalbumchart', {:group => 'Stubborn Tiny Lights'}, {}).and_return Hash.new
    @group.weekly_album_chart
  end
  
  it "weekly_track_chart should call get with 'group.getShouts' with query params :group => @group" do
    @group.class.should_receive(:get).with('group.getweeklytrackchart', {:group => 'Stubborn Tiny Lights'}, {}).and_return Hash.new
    @group.weekly_track_chart
  end
  
  it "weekly_chart_list should call get with 'group.getShouts' with query params :group => @group" do
    @group.class.should_receive(:get).with('group.getweeklychartlist', {:group => 'Stubborn Tiny Lights'}, {}).and_return Hash.new
    @group.weekly_chart_list
  end
  
end
