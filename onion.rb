def gender
  %w(man woman).sample
end

%w(noun adj verb adv subject collection country ing ied ed er).each do |ling|
  define_method ling do |col=0|
    File.readlines("#{ling}.txt").sample.strip.split(' ')[col].downcase
  end
end

10.times do
  sentence = eval(File.readlines("sentence.txt").sample.strip)
  puts sentence[0].upcase + sentence[1..-1]
end

# cat in.txt | grep -oh "\w*asdf\w*" | grep -oh "\w*asdf$" > out.txt

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
