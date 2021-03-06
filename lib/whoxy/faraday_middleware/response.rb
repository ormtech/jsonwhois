require 'faraday_middleware'

module Whoxy
  module FaradayMiddleware
    class Response < ::FaradayMiddleware::ParseJson
      define_parser do |body|
        JSON.parse(body, symbolize_names: true) unless body.strip.empty?
      end
    end
  end
end
