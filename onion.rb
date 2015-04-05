# secret: 42f9276f7e17c1179dfe37eb04ce639a343b961c

Linguistics.use(:en)

class Onion
  ROOT = File.dirname(__FILE__)

  class << self
    def generate
      Result.new
    end
  end

  module DSL
    def gender
      %w(man woman).sample
    end

    Dir["#{ROOT}/dicts/*.txt"].each do |path|
      define_method File.basename(path, '.txt') do
        File.readlines(path).sample.strip.downcase
      end
    end
  end

  class Result
    include DSL

    attr_accessor :sentence, :search

    def initialize
      @sentence, @search = eval("[" + File.readlines("#{ROOT}/sentence.txt").sample.strip + "]")
      @search = @sentence.split(' ')[@search] if @search.is_a? Fixnum
    end

    def thumb
      @thumb ||= JSON.parse(search_result)['data'].select { |r| r['nsfw'] == false }.sample['link'].gsub(/\.jpg$/, 's.jpg')

      rescue NoMethodError
        '/img/logo.png'
    end

    def search_result
      @sr ||= RestClient.get "https://api.imgur.com/3/gallery/search", authorization: 'Client-ID b0ce66b47061f82', params: {q: "title: #{search} ext: jpg"}
    end
  end
end
