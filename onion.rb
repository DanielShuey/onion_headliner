[:noun, :adj, :verb, :adv, :subject, :collection, :ing].each do |ling|
  define_method ling do |col=0|
    File.readlines("#{ling}.txt").sample.strip.split(' ')[col].downcase
  end
end

10.times do
  puts "Woman/Man arrested for #{ing} #{collection}"
end

# cat in.txt | grep -oh "\w*asdf\w*" | grep -oh "\w*asdf$*" > out.txt

#Woman/Man arrested for glomming wolves
#Woman/Man arrested for gunning christmas
#Woman/Man arrested for rebelling birds
#Woman/Man arrested for precancelling paddleboards
#Woman/Man arrested for cling parachutes
#Woman/Man arrested for entrammelling helicopters
#Woman/Man arrested for conning typewriters
#Woman/Man arrested for brimming ethics
#Woman/Man arrested for dripping bees
#Woman/Man arrested for chitchatting groups
