require 'net/http'

module Poke
  module Stick
    class Client
      attr_reader :uri, :options

      def initialize(uri, options)
        @uri = uri
        @options = options
      end

      def post(io)
        post = Net::HTTP::Post.new(uri).tap do |post|
          post.body             = io.read # Danger Will Robinson!  What if Big File?
          post.content_type     = options[:mimetype]
          post['Authorization'] = options[:authorization] if options[:authorization]
        end
        process_request post
      end

      def get
        get = Net::HTTP::Get.new(uri)
        process_request get
      end

      private

      def process_request(request)
        response = Net::HTTP.start(uri.hostname, uri.port, use_ssl: uri.scheme == 'https') do |http|
          http.request(request)
        end
        print_results response
      end

      def print_results(response)
        if options[:verbose]
          puts <<-OUT
#{response.code} #{response.msg}
Content-Type: #{response.content_type}

          OUT
        end
        puts response.body
      end

      class << self
        def post(uri, io, options)
          new(uri, options).post(io)
        end

        def get(uri, options)
          new(uri, options).get
        end
      end

    end
  end
end
