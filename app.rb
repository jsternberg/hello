require 'sinatra'
require 'optparse'

opts = OptionParser.new do |opts|
  opts.on("-p", "--port PORT", Integer, "set the listen port") do |port|
    set :port, port
  end

  opts.on("-h", "--help", "show this help message") do
    puts opts
    exit
  end
end
opts.parse! ARGV

get '/' do
  'Hello world!'
end
