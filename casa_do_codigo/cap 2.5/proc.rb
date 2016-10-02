logger = proc { |x| puts "#{Time.now} -- #{x}" }

logger.call("Teste!")
puts "#############################"
[1,2,3].each(&logger)
