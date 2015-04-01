def gender
  %w(man woman).sample
end

ROOT = File.dirname(__FILE__)

Dir["#{ROOT}/dicts/*.txt"].each do |path|
  define_method File.basename(path, '.txt') do |col=0|
    File.readlines(path).sample.strip.split(' ')[col].downcase
  end
end

def onion_print(text, search=nil)
  puts text[0].upcase + text[1..-1]
end

10.times do
  onion_print(*eval("[" + File.readlines("#{ROOT}/sentence.txt").sample.strip + "]"))
end
