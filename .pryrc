

Pry.config.editor = "subl --nofork"


Pry.config.hooks.add_hook(:when_started, :set_account) do
  if defined? Current
    require 'randexp'
    Current.account = 1
    puts "Current account set to #{Current.account}"

    def contact_with_email(name = Randgen.first_name, update_source = 'A')
      Contact.create(name: name, service_addresses: [{type: 'email', address: Randgen.email, update_source: update_source, permission_to_send: 'explicit'}])
    end

    puts "Created contact_with_email(name = Randgen.first_name, update_source = 'A') helper method"

    def contact_with_list(name = Randgen.first_name, update_source = 'A')
      contact = Contact.create(name: name, service_addresses: [{type: 'email', address: Randgen.email, update_source: update_source, permission_to_send: 'explicit'}])
      list = List.create! name: Randgen.word
      email = contact.service_addresses.email.first
      email.update_attributes! list_ids: [list.list_id]
      contact
    end

    puts "Created contact_with_list(name = Randgen.first_name, update_source = 'A') helper method"

  end
end

# Prompt with ruby version
Pry.prompt = [proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} > " }, proc { |obj, nest_level| "#{RUBY_VERSION} (#{obj}):#{nest_level} * " }]


def y(obj)
  puts obj.to_yaml
end
