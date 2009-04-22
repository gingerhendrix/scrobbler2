class ResourceGenerator < RubiGen::Base

  default_options :author => nil

  attr_reader :name
  attr_reader :funcs

  def initialize(runtime_args, runtime_options = {})
    super
    usage if args.empty?
    @name = args.shift
    @funcs = args
    extract_options
  end

  def manifest
    record do |m|
      # Ensure appropriate folder(s) exists
      m.directory 'lib/scrobbler2'
      m.directory 'test/unit'
      
      # Create stubs
      m.template "resource.rb.erb", "lib/scrobbler2/#{name}.rb"
      m.template "spec.rb.erb", "test/unit/#{name}_spec.rb"
      
      # Create acceptance tests
      funcs.each do |func|
        m.dependency "acceptance_test", [name, func]
      end
    end
  end

  protected
    def banner
      <<-EOS
Creates a scrobbler2 resource

USAGE: #{$0} #{spec.name} name funcs
EOS
    end

    def add_options!(opts)
    end

    def extract_options
    end
end
