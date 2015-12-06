require 'rubygems'
require 'bundler/setup'
require 'eventmachine'
require 'em-eventsource'

EM.run do
  source = EventMachine::EventSource.new("api_url_https", {access_token: 'secret_access_token'})
  source.message do |message|
    puts "new message #{message}"
  end
  source.start # Start listeningady_state
  sleep 3
  source.error do |error|
    puts "error #{error}"
  end

end

