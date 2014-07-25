#!/usr/bin/env ruby

###############################################################################
# Shellshock                                                                  #
###############################################################################
# Adapted from Gists of danielrehn and seanlinsley by Daniel-Middleton.com    #
# to allow any amount of message lines - the rainbow will cycle!              #
# Usage: Add "ruby ~/shellshock.rb" to ".bash_logout" in your home directory. #
###############################################################################

begin

  # Declare vars
  message = Array.new
  colour  = Array.new
  messages = Dir["messages/*"]

  # Array of message lines from a random message
  File.readlines("#{messages.sample}").each do |line|
    message.push(line.chomp)
  end

  # Array of rainbow colours
  colour.push('38;5;160;01','38;5;196;01','38;5;202;01','38;5;208;01','38;5;214;01',
               '38;5;220;01','38;5;226;01','38;5;190;01','38;5;154;01','38;5;118;01',
               '38;5;046;01','38;5;047;01','38;5;048;01','38;5;049;01','38;5;051;01',
               '38;5;039;01','38;5;027;01','38;5;021;01','38;5;021;01','38;5;057;01',
               '38;5;093;01'
  )

  # Method to display colours in Shell
  class String
    def colorize(colour_code)
      "\e[#{colour_code}m#{self}\e[0m"
    end
  end

  # For each line of the message, use the next shade of colour.
  # When we hit the last shade, reverse the order of colours
  # as to achieve a constant blending rainbow effect.
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
