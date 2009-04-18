class AcceptanceTestGenerator < RubiGen::Base

#  default_options :author => nil

  attr_reader :resource
  attr_reader :func

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?  || args.length < 2
    @resource = args.shift
    @func = args.shift
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory "test/acceptance/#{@resource}"

      # Create stubs
      m.template  "acceptance_test.rb.erb", "test/acceptance/#{@resource}/#{@func}_test.rb"
      # m.template_copy_each ["template.rb", "template2.rb"]
      # m.template_copy_each ["template.rb", "template2.rb"], "some/path"
      # m.file           "file", "some_file_copied"
      # m.file_copy_each ["path/to/file", "path/to/file2"]
      # m.file_copy_each ["path/to/file", "path/to/file2"], "some/path"
    end
  end

  protected
    def banner
      <<-EOS
Creates a scrobbler2 acceptance test

USAGE: #{$0} #{spec.name} resource func
EOS
    end

    def add_options!(opts)
      # opts.separator ''
      # opts.separator 'Options:'
      # For each option below, place the default
      # at the top of the file next to "default_options"
      # opts.on("-a", "--author=\"Your Name\"", String,
      #         "Some comment about this option",
      #         "Default: none") { |options[:author]| }
      # opts.on("-v", "--version", "Show the #{File.basename($0)} version number and quit.")
    end

    def extract_options
      # for each option, extract it into a local variable (and create an "attr_reader :author" at the top)
      # Templates can access these value via the attr_reader-generated methods, but not the
      # raw instance variable value.
      # @author = options[:author]
    end
end
