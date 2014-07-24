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

  # Array of message lines - add as many lines as you like!
  message.push('  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888 ')
  message.push(' d88P  Y88b 888        888              Y88b d88P  d88P" "Y88b 888     888 ')
  message.push('  "Y888b.   8888888    8888888            Y888P    888     888 888     888 ')
  message.push('     "Y88b. 888        888                 888     888     888 888     888 ')
  message.push('       "888 888        888                 888     888     888 888     888 ')
  message.push(' Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P ')
  message.push('  "Y8888P"  8888888888 8888888888          888      "Y88888P"   "Y88888P"  ')
  message.push('  .d8888b.  8888888b.     d8888  .d8888b.  8888888888                      ')
  message.push(' d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888                             ')
  message.push('  "Y888b.   888   d88P d88P 888 888        8888888                         ')
  message.push('     "Y88b. 8888888P" d88P  888 888        888                             ')
  message.push('       "888 888      d88P   888 888    888 888                             ')
  message.push(' Y88b  d88P 888     d8888888888 Y88b  d88P 888                             ')
  message.push('  "Y8888P"  888    d88P     888  "Y8888P"  8888888888                      ')
  message.push('  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P    ')
  message.push(' d88P  Y88b d88P" "Y88b 888   o   888 888  "88b  d88P" "Y88b Y88b d88P     ')
  message.push(' 888        888     888 888 d888b 888 8888888K.  888     888   Y888P       ')
  message.push(' 888        888     888 888d88888b888 888  "Y88b 888     888    888        ')
  message.push(' 888    888 888     888 88888P Y88888 888    888 888     888    888        ')
  message.push(' Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888        ')
  message.push('  "Y8888P"   "Y88888P"  888P     Y888 8888888P"   "Y88888P"     888        ')
  message.push('')
  message.push('  .d8888b.  8888888888 8888888888      Y88b   d88P  .d88888b.  888     888 ')
  message.push(' d88P  Y88b 888        888              Y88b d88P  d88P" "Y88b 888     888 ')
  message.push('  "Y888b.   8888888    8888888            Y888P    888     888 888     888 ')
  message.push('     "Y88b. 888        888                 888     888     888 888     888 ')
  message.push('       "888 888        888                 888     888     888 888     888 ')
  message.push(' Y88b  d88P 888        888                 888     Y88b. .d88P Y88b. .d88P ')
  message.push('  "Y8888P"  8888888888 8888888888          888      "Y88888P"   "Y88888P"  ')
  message.push('  .d8888b.  8888888b.     d8888  .d8888b.  8888888888                      ')
  message.push(' d88P  Y88b 888   Y88b   d88888 d88P  Y88b 888                             ')
  message.push('  "Y888b.   888   d88P d88P 888 888        8888888                         ')
  message.push('     "Y88b. 8888888P" d88P  888 888        888                             ')
  message.push('       "888 888      d88P   888 888    888 888                             ')
  message.push(' Y88b  d88P 888     d8888888888 Y88b  d88P 888                             ')
  message.push('  "Y8888P"  888    d88P     888  "Y8888P"  8888888888                      ')
  message.push('  .d8888b.   .d88888b.  888       888 888888b.    .d88888b. Y88b   d88P    ')
  message.push(' d88P  Y88b d88P" "Y88b 888   o   888 888  "88b  d88P" "Y88b Y88b d88P     ')
  message.push(' 888        888     888 888 d888b 888 8888888K.  888     888   Y888P       ')
  message.push(' 888        888     888 888d88888b888 888  "Y88b 888     888    888        ')
  message.push(' 888    888 888     888 88888P Y88888 888    888 888     888    888        ')
  message.push(' Y88b  d88P Y88b. .d88P 8888P   Y8888 888   d88P Y88b. .d88P    888        ')
  message.push('  "Y8888P"   "Y88888P"  888P     Y888 8888888P"   "Y88888P"     888        ')

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
  # as to achieve a constant rainbow blending effect.
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
