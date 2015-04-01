def gender
  %w(man woman).sample
end

ROOT = File.dirname(__FILE__)

Dir["#{ROOT}/dicts/*.txt"].each do |path|
  define_method File.basename(path, '.txt') do |col=0|
    File.readlines(path).sample.strip.split(' ')[col].downcase
  end
end

require 'pry'

def onion_print(text, search=nil)
  puts text[0].upcase + text[1..-1]
end


10.times do
  onion_print(*eval("[" + File.readlines("#{ROOT}/sentence.txt").sample.strip + "]"))
end

#Man arrested for damming butterflies
#North Korea declares war on East Timor
#Senator proclaims ice-cream is too canty
#New bill passes through Congress allowing voting to stet
#Man arrested for disembowelling eagles
#New study reveals antalkalies are drearier than once thought
#Senator proclaims sailing is too corny
#New study reveals amphorae are freakier than once thought
#Woman arrested for whapping phobias
#North Korea declares war on Botswana
#Senator proclaims 'Greek is too classy'
#Proposed bill in Albania legislature would allow philanthropy to have folklore
#New bill passes through Congress allowing villains to zip
#Mozambique woman fights off attacker with saucy weddings
#Proposed bill in Micronesia legislature would allow crime to have detectives
#Proposed bill in Brunei legislature would allow french to have pirates
#Kosovo man arrested after flagging scrapyards so asbestos could be worn
#Holocaust snugging video prompts Chad university student to leave school
#Three Oman men charged with using referees to scrag mistletoe
#Nebraska woman fights off attacker with randy presidents'
