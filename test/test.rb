$:.unshift File.join(File.dirname(__FILE__), *%w[.. lib])

require 'rubygems'
require 'redcloth'

puts RedCloth.new("Zażółć gęślą jaźń").to_html