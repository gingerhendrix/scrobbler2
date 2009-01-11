
desc "Run all examples"
Spec::Rake::SpecTask.new('test:unit') do |t|
  t.spec_files = FileList['test/unit/*_spec.rb']
end

desc "Run functional tests"
Spec::Rake::SpecTask.new('test:acceptance') do |t|
  t.spec_files = FileList['test/acceptance/**/*_test.rb'].exclude('test/acceptance/auth/auth_test.rb')
end
