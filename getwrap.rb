require_relative 'lib/gift'
require 'pry'

File.open("present_list.txt") do |gift_file|
  wrapping_paper = 0
  ribbon = 0
  gift_file.each do |line|
    length, width, height = line.chomp.split(/[x]/).map(&:to_i)
    gift = Gift.new(length: length, width: width, height: height)
    wrapping_paper += gift.wrapping_paper_area
    ribbon += gift.ribbon_length
  end
  puts "The elves need #{wrapping_paper} square feet of wrapping paper and #{ribbon} feet of ribbon!"
end

