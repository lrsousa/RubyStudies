def search_flights(options={})
    from = options.fetch(:from, 'SAO')
    to = options.fetch(:to, '')
    max_stops = options.fetch(:max_stops, 9999)
    flight_class = options.fetch(:class, :any)

    puts "voos de #{from} para #{to} com no maximo #{max_stops} na #{flight_class} classe."
end


search_flights(:from => 'SAO', :to => "NYC")
search_flights(:from => 'SAO', :to => 'NYC', :max_stops => 3, :class => :first)
