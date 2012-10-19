task :default => :test
desc "Realiza los tests"
task :test do
	sh "ruby -Ilib test/tc_rps.rb"
end

desc "Ejecuta un nombre de test especifico"
task :t, :test_name do |t, args|
	test_name = args[:test_name] || 'test_play'
	sh "ruby -w -Ilib test/tc_rps.rb --name #{test_name}"
end
