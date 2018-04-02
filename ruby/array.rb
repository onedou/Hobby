#!/usr/bin/env ruby 
# encoding: utf-8

names = ["小林", "林", "高野", "森冈"]

p names

names[0] = "尻野"

p names

p names.size

names.each do |n|
	p n
end

sym  = :foo
sym2 = :"foo"

#p sym
#p sym2

p sym.to_s
p sym2.to_s
p "foo".to_sym

#address = {:name => "高桥", :pinyin=> "gaoqiao", :postal=>"1234567"}
address = {name:"高桥", pinyin:"gaoqiao", :postal => "1234567"}
p address

p address[:name]
p address[:pinyin]
p address[:postal]

address[:tel] = "000-1234-5678"

p address


address.each do |key, value|
	puts "#{key}: #{value}"
end

id = /hi/i =~ "HAHAHAHIHI"
p id