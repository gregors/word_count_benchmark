#!/usr/bin/ruby

counts=Hash.new(){0}

STDIN.each_line do |line|
  line.split(' ').each do |word|
    counts[word] += 1
  end
end

counts
  .sort{ |a,b| b[1] <=> a[1] }
  .each do |i|
    puts "#{i[0]} #{i[1]}"
  end
