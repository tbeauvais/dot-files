

Pry.config.editor = "subl --nofork"


Pry.config.hooks.add_hook(:when_started, :set_account) do
  if defined? Current
    Current.account = 1
    puts "Current account set to #{Current.account}"
  end
end

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]


def y(obj)
  puts obj.to_yaml
end
