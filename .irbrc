#!/usr/bin/env ruby
require 'irb/completion'
require 'irb/ext/save-history'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:SAVE_HISTORY] = 1000
IRB.conf[:HISTORY_FILE] = "#{ENV['HOME']}/.irb_history"

# Break out of the Bundler jail
# from https://github.com/ConradIrwin/pry-debundle/blob/master/lib/pry-debundle.rb
if defined? Bundler
  Gem.post_reset_hooks.reject! { |hook| hook.source_location.first =~ %r{/bundler/} }
  Gem::Specification.reset
  load 'rubygems/custom_require.rb'
end


if defined? Rails
  begin
    require 'hirb'
    Hirb.enable({:width => 155, :height => 500})
    puts "Enabled Hirb, to disable use Hirb.disable in the console"
  rescue LoadError
    puts "Yo, you forgot to install the hirb gem: '$ gem install hirb'"
  end

end

if defined? Current
  begin

  Current.account = 1
  puts "About to create contact_with_email"

  puts "Current account is set to #{Current.account}"

  rescue Exception => e
     puts e.message 
  end 

end

def y(obj)
  puts obj.to_yaml
end

def reload
  reload!
end




