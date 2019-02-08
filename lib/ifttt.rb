require 'net/http'
require 'uri'
require 'json'

module IFTTT
    class Profile
        def initialize(key)
            @key=key
        end
        def get(event)
            return Net::HTTP.get(URI("https://maker.ifttt.com/trigger/#{event}/with/key/#{@key}"))
        end
        def post(event,array=[])
            hash=Hash.new
            if array!=nil 
                for i in 0...array.size
                    hash["value#{i+1}"]=array[i]
                end
            end
            uri = URI("https://maker.ifttt.com/trigger/#{event}/with/key/#{@key}")
            req = Net::HTTP::Post.new(uri, 'Content-Type' => 'application/json')
            req.body = hash.to_json
            puts hash.to_json
            res = Net::HTTP.start(uri.hostname, uri.port, :use_ssl => uri.scheme == 'https') do |http|
                http.request(req)
            end
        end
    end
end