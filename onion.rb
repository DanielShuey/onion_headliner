[:noun, :adj, :verb, :adv, :subject, :collection, :ing].each do |ling|
  define_method ling do |col=0|
    File.readlines("#{ling}.txt").sample.strip.split(' ')[col].downcase
  end
end

10.times do
  puts "Woman/Man arrested for #{ing} #{collection}"
end

# cat in.txt | grep -oh "\w*asdf\w*" | grep -oh "\w*asdf$*" > out.txt
