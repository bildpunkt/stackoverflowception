#!/usr/bin/env ruby
begin
  puts aylamao # add your breaking code here
rescue Exception => e
  exp =   e.message.to_s.dup.force_encoding("ASCII-8BIT").gsub(/./) { sprintf("%%%02X", $&.unpack("C")[0]) }
  link = "http://stackoverflow.com/search?q=[ruby]" + exp

  if RbConfig::CONFIG['host_os'] =~ /mswin|mingw|cygwin/
    system "start #{link}"
  elsif RbConfig::CONFIG['host_os'] =~ /darwin/
    system "open #{link}"
  elsif RbConfig::CONFIG['host_os'] =~ /linux|bsd/
    system "xdg-open #{link}"
  end
end
