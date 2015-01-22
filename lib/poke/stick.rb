require 'poke/stick/version'
require 'net/http'

module Poke
  class Stick
    class << self
      def post(uri, io, options)
        request = Net::HTTP::Post.new(uri).tap do |r|
          r.body         = io.read # Danger Will Robinson!  What if Big File?
          r.content_type = options[:mimetype]
        end
        process_request request, options
      end

      def get(uri, options)
        request = Net::HTTP::Get.new(uri)
        process_request request, options
      end

      def process_request(request, options)
        uri = request.uri
        response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
          http.request(request)
        end
        print_response response, options
      end

      def print_response(response, options)
        if options[:verbose]
          puts <<-OUT
#{response.code} #{response.msg}
Content-Type: #{response.content_type}

          OUT
        end
        puts response.body
      end
    end
  end
end
