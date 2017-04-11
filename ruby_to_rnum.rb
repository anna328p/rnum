#!/usr/bin/ruby
require 'base_x'

abort "Incorrect number of arguments.\nUsage: #{File.basename __FILE__} <infile>" if ARGV.size != 1
abort "The file #{ARGV[0]} does not exist." if not File.exist? ARGV[0]

begin
    program = File.read ARGV[0]
rescue SystemCallError
    abort "File #{ARGV[0]} cannot be read."
end

Base10 = BaseX.new("0123456789")
puts Base10.encode program
