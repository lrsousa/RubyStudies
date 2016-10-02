def announce_it
    puts "Legen..."
    yield if block_given?
    puts "Dary!"
end

announce_it { puts "Wait for it!" }
announce_it
