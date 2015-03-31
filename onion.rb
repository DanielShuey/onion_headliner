[:noun, :adj, :verb, :adv, :subject, :collection, :ing].each do |ling|
  define_method ling do |col=0|
    File.readlines("#{ling}.txt").sample.strip.split(' ')[col]
  end
end

10.times do
  puts "Woman/Man arrested for #{ing} #{collection.downcase}"
end
