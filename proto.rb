class Responder
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def response(input)
    return "#{input}ってなに？"
  end
end

class Unmo
  attr_reader :name

  def initialize(name)
    @name = name
    @responder = Responder.new('What')
  end

  def dialogue(input)
    @responder.response(input)
  end

  def responder_name
    @responder.name
  end
end

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
