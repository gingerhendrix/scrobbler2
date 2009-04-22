require File.join(File.dirname(__FILE__), "test_generator_helper.rb")


class TestResourceGenerator < Test::Unit::TestCase
  include RubiGen::GeneratorTestHelper

  def setup
    bare_setup
  end

  def teardown
    bare_teardown
  end

  # Some generator-related assertions:
  #   assert_generated_file(name, &block) # block passed the file contents
  #   assert_directory_exists(name)
  #   assert_generated_class(name, &block)
  #   assert_generated_module(name, &block)
  #   assert_generated_test_for(name, &block)
  # The assert_generated_(class|module|test_for) &block is passed the body of the class/module within the file
  #   assert_has_method(body, *methods) # check that the body has a list of methods (methods with parentheses not supported yet)
  #
  # Other helper methods are:
  #   app_root_files - put this in teardown to show files generated by the test method (e.g. p app_root_files)
  #   bare_setup - place this in setup method to create the APP_ROOT folder for each test
  #   bare_teardown - place this in teardown method to destroy the TMP_ROOT or APP_ROOT folder after each test

  def test_generator_without_options
    resource = "resource"
    funcs = ["method1", "method2"]
    run_generator('resource', funcs.unshift(resource), sources)
    assert_generated_file   "lib/scrobbler2/resource.rb" do |file|
      assert file.include?("class Resource < Base")
      assert file.include?("get_resource :method1, :root => \"method1\"")
      assert file.include?("get_resource :method2, :root => \"method2\"")
    end
    
    assert_generated_file   "test/unit/resource_spec.rb" do |file|
       assert file.include?("describe \"Resource\"")
       
       assert file.include?("@resource = Scrobbler2::Resource.new \"...\"")
       assert file.include?("@resource.class.stub!(:get).and_return Hash.new")
       
       assert file.include?("it \"should have a default query {TODO}\" do")
       assert file.include?("@resource.instance_variable_get(:@query).should == {}")
       
       assert file.include?("it \"method1 should call get with 'resource.getmethod1'\" do")
       assert file.include?("@resource.class.should_receive(:get).with('resource.getmethod1', anything(), anything()).and_return Hash.new")
       assert file.include?("@resource.method1")
       
       assert file.include?("it \"method2 should call get with 'resource.getmethod2'\" do")
       assert file.include?("@resource.class.should_receive(:get).with('resource.getmethod2', anything(), anything()).and_return Hash.new")
       assert file.include?("@resource.method2")
    end

    assert_directory_exists("test/acceptance/resource")
    assert_generated_file   "test/acceptance/resource/method1_test.rb"
    assert_generated_file   "test/acceptance/resource/method2_test.rb"
  end

  private
  def sources
    [RubiGen::PathSource.new(:test, File.join(File.dirname(__FILE__),"../..", generator_path))
    ]
  end

  def generator_path
    "generators"
  end
end
