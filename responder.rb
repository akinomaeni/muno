class Responder
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def response(input)
    ''
  end
end

class WhatResponder < Responder
  def response(input)
    "#{input}ってなに？"
  end
end

class RandomResponder < Responder

  def initialize(name)
    super
    @responses = %w(今日寒いね チョコ食べたい きのう10円ひろった)
  end

  def response(input)
    @responses.sample
  end
end
