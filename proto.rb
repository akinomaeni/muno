$LOAD_PATH << '.'
require 'unmo'


def prompt(unmo)
  "#{unmo.name}:#{unmo.responder_name}> "
end

puts 'Unmo System prototype : proto'
proto = Unmo.new('proto')

loop do
  print('> ')
  input = gets
  input.chomp!
  break if input.empty?

  response = proto.dialogue(input)
  puts prompt(proto) + response
end
