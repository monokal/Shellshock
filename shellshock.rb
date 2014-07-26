#!/usr/bin/env ruby

begin

  message = Array.new
  colour  = Array.new
  messages = Dir["#{File.expand_path File.dirname(__FILE__)}/messages/*"]

  File.readlines("#{messages.sample}").each do |line|
    message.push(line.chomp)
  end

  colour.push('38;5;160;01','38;5;196;01','38;5;202;01','38;5;208;01','38;5;214;01',
               '38;5;220;01','38;5;226;01','38;5;190;01','38;5;154;01','38;5;118;01',
               '38;5;046;01','38;5;047;01','38;5;048;01','38;5;049;01','38;5;051;01',
               '38;5;039;01','38;5;027;01','38;5;021;01','38;5;021;01','38;5;057;01',
               '38;5;093;01'
  )

  class String
    def colorize(colour_code)
      "\e[#{colour_code}m#{self}\e[0m"
    end
  end

  i = 0
  message.each { |msg|
    puts msg.colorize(colour.at(i))

    if i < colour.length - 1
      i += 1
    elsif i == colour.length - 1
      colour = colour.reverse
      i = 0
    end
  }

rescue
  puts 'Error in shellshock.rb'
  exit(1)
end

exit(0)
